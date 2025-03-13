source .venv/bin/activate
set -ex

export OMP_NUM_THREADS=1
export WANDB_PROJECT="qwen25vl_math"
export WANDB_MODE=online
export HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/

WORLD_SIZE=${WORLD_SIZE:-1}
MASTER_ADDR=${MASTER_ADDR:-localhost}
MASTER_PORT=${MASTER_PORT:-29500}
NPROC_PER_NODE=${NPROC_PER_NODE:-8}
NODE_RANK=${NODE_RANK:-0}
NNODES=${NNODES:-1}

EXP=mmo1-math-qwen2.5_vl_7b-sft-hard_w_ds_nv

torchrun --nnodes $NNODES \
    --nproc_per_node $NPROC_PER_NODE \
    --master_addr=$MASTER_ADDR \
    --master_port=$MASTER_PORT \
    --node_rank $NODE_RANK \
    src/train.py \
    --model_name_or_path Qwen/Qwen2.5-VL-7B-Instruct \
    --stage sft \
    --do_train \
    --finetuning_type full \
    --deepspeed examples/deepspeed/ds_z3_config.json \
    --dataset_dir $HOME/DATASET/mmo1/ \
    --dataset "mmo1-math-hard_w_ds,mmo1-math-language-only-filtered" \
    --template qwen2_vl \
    --cutoff_len 16384 \
    --max_samples 400000 \
    --overwrite_cache \
    --preprocessing_num_workers 32 \
    --output_dir saves/$EXP \
    --logging_steps 10 \
    --save_steps 100000 \
    --plot_loss \
    --overwrite_output_dir \
    --per_device_train_batch_size 1 \
    --gradient_accumulation_steps 4 \
    --learning_rate 1.0e-5 \
    --num_train_epochs 1.0 \
    --lr_scheduler_type cosine \
    --warmup_ratio 0.1 \
    --bf16 \
    --ddp_timeout 180000000 \
    --report_to wandb \
    --run_name $EXP
