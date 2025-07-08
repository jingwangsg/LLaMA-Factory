source ../.venv/bin/activate
set -ex

export OMP_NUM_THREADS=4
export WANDB_PROJECT="qwen25vl_math"
export WANDB_MODE=${WANDB_MODE:-online}
export HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/
# Disable dataset caching by pointing to temp directory
# export HF_DATASETS_CACHE=/tmp/hf_datasets_cache_$$
# export HF_MODULES_CACHE=/tmp/hf_modules_cache_$$
# mkdir -p $HF_DATASETS_CACHE $HF_MODULES_CACHE

MASTER_ADDR=${MASTER_ADDR:-localhost}
MASTER_PORT=${MASTER_PORT:-29500}
NPROC_PER_NODE=${NPROC_PER_NODE:-8}
NODE_RANK=${NODE_RANK:-0}
NNODES=${NNODES:-1}

    # --dataset_dir $HOME/DATASET/mmo1/ \
    # --dataset "tiku_math_no_prompt,tiku_math_prompt,chart_figure_0313,doc_table_0313,general_0313,math_geometry_0313,science_0313,mmo1_v0_text_alpaca" \

# assert DATA is set
if [ -z "$DATA" ]; then
    echo "DATA is not set"
    exit 1
fi

if [ -z "$RUN_NAME" ]; then
    echo "RUN_NAME is not set"
    exit 1
fi

EPOCHS=${EPOCHS:-1}
DS=${DS:-ds_z3_mics_8shards}
MODEL=${MODEL:-Qwen/Qwen2.5-VL-7B-Instruct}

if [ -z "$SAVE_STEPS" ]; then
    save_args="--save_strategy epoch"
else
    save_args="--save_strategy steps --save_steps $SAVE_STEPS --save_total_limit 5"
fi

DEBUGPY=${DEBUGPY:-0}
if [ $DEBUGPY -eq 1 ]; then
    LAUNCHER="python -m debugpy --listen 5678 --wait-for-client -m torch.distributed.run"
else
    LAUNCHER="torchrun"
fi

$LAUNCHER --nnodes $NNODES \
    --nproc_per_node $NPROC_PER_NODE \
    --master_addr=$MASTER_ADDR \
    --master_port=$MASTER_PORT \
    --node_rank $NODE_RANK \
    src/train.py \
    --model_name_or_path $MODEL \
    --stage sft \
    --do_train \
    --finetuning_type full \
    --deepspeed examples/deepspeed/$DS.json \
    --dataset_dir $HOME/DATASET/mmo1/ \
    --dataset $DATA \
    --template qwen2_vl \
    --cutoff_len 16384 \
    --preprocessing_num_workers 32 \
    --output_dir saves/$RUN_NAME \
    --logging_steps 10 \
    $save_args \
    --plot_loss \
    --overwrite_output_dir \
    --per_device_train_batch_size 1 \
    --gradient_accumulation_steps 4 \
    --learning_rate 1.0e-5 \
    --num_train_epochs $EPOCHS \
    --lr_scheduler_type cosine \
    --warmup_ratio 0.1 \
    --bf16 \
    --ddp_timeout 180000000 \
    --report_to wandb \
    --run_name $RUN_NAME \
    $@