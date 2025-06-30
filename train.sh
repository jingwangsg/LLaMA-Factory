source /etc/workflow_env

NNODES=16

source .venv/bin/activate
set -ex

HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    RAY_ENABLE_RECORD_ACTOR_TASK_LOGGING=1 \
    TORCH_NCCL_TRACE_BUFFER_SIZE=2000 \
    NCCL_DEBUG=INFO \
    DATA=sft_0503_v10_prompt,mm_mathinstruct_gemini_withprompt \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_mathinstruct_onlygemini_ep5 \
    DS=ds_z3_mics_16shards \
    EPOCHS=5 \
    SAVE_STEPS=1000 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh
