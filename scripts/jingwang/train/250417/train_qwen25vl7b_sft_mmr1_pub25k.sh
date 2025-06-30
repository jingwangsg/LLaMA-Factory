source .venv/bin/activate
set -ex

export OMP_NUM_THREADS=4
export WANDB_PROJECT="qwen25vl_math"
export WANDB_MODE=${WANDB_MODE:-online}
export HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/

MASTER_ADDR=${MASTER_ADDR:-localhost}
MASTER_PORT=${MASTER_PORT:-29500}
NPROC_PER_NODE=${NPROC_PER_NODE:-8}
NODE_RANK=${NODE_RANK:-0}
NNODES=${NNODES:-1}

    # --dataset_dir $HOME/DATASET/mmo1/ \
    # --dataset "tiku_math_no_prompt,tiku_math_prompt,chart_figure_0313,doc_table_0313,general_0313,math_geometry_0313,science_0313,mmo1_v0_text_alpaca" \

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
    --dataset "mmr1_all_sft_pub25k" \
    --template qwen2_vl \
    --cutoff_len 16384 \
    --overwrite_cache \
    --preprocessing_num_workers 32 \
    --output_dir saves/mmo1-math-qwen2.5_vl_7b-sft_mmr1_pub25k \
    --logging_steps 10 \
    --save_strategy epoch \
    --plot_loss \
    --overwrite_output_dir \
    --per_device_train_batch_size 1 \
    --gradient_accumulation_steps 4 \
    --learning_rate 1.0e-5 \
    --num_train_epochs 3 \
    --lr_scheduler_type cosine \
    --warmup_ratio 0.1 \
    --bf16 \
    --ddp_timeout 180000000 \
    --report_to wandb \
    --run_name mmo1-math-qwen2.5_vl_7b-sft_mmr1_pub25k