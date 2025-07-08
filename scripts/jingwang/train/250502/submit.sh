RUN_NAMES=(
    mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v1
    mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v2
    mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v3
    mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v4
    mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v5
    mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v6
    mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v7
    mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v2_rlvr5k
    mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v3_rlvr10k
    mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v8_rlvr50k
)

DATA_LIST=(
    sft_0502_v1
    sft_0502_v2
    sft_0502_v3
    sft_0502_v4
    sft_0502_v5
    sft_0502_v6
    sft_0502_v7
    sft_0502_v2,RLVR_data_5k
    sft_0502_v3,RLVR_data_10k
    sft_0502_v8,RLVR_data_50k
)

rayexec -n 4 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v1 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0502_v1 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v1 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 4 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v2 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0502_v2 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v2 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 4 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v3 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0502_v3 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v3 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 4 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v4 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0502_v4 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v4 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 4 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v5 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0502_v5 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v5 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 4 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v6 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0502_v6 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v6 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 4 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v7 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0502_v7 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v7 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 4 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v2_rlvr5k \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0502_v2,RLVR_data_5k \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v2_rlvr5k \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 4 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v3_rlvr10k \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0502_v3,RLVR_data_10k \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v3_rlvr10k \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 8 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    CUDA_LAUNCH_BLOCKING=1 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v8_rlvr50k \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0502_v8,RLVR_data_50k \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0502_v8_rlvr50k \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 8 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v9 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0503_v9 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v9 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 8 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0503_v10 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 8 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v11 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0503_v11 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v11 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 8 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v12 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0503_v12 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v12 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 4 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v9_ep3 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0503_v9 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v9 \
    EPOCHS=3 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 4 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v12_ep3 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0503_v12 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v12 \
    EPOCHS=3 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh


rayexec -n 8 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_raven_ep5 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0503_v10,raven_data \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_raven_ep5 \
    EPOCHS=5 \
    DS=ds_z3_mics_8shards \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh

rayexec -n 8 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_ep5 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd \
    DATA=sft_0503_v10 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_ep5 \
    EPOCHS=5 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh


rayexec -n 8 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_raven_lora5_ep5 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd """
    DATA=sft_0503_v10,raven_data \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_raven_lora5_ep5 \
    EPOCHS=5 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh \
    --finetuning_type lora \
    --lora_rank 5 \
    --lora_target all
    """

rayexec -n 8 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_lora5_ep5 \
    --venv /mnt/amlfs-01/home/jingwang/PROJECTS/mmo1/LLaMA-Factory/.venv \
    --cmd """
    DATA=sft_0503_v10 \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_lora5_ep5_1 \
    EPOCHS=5 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh \
    --finetuning_type lora \
    --lora_rank 5 \
    --lora_target all
    """


rayexec -n 32 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    RAY_ENABLE_RECORD_ACTOR_TASK_LOGGING=1 \
    TORCH_NCCL_TRACE_BUFFER_SIZE=2000 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_mathinstruct_ep5 \
    --cmd """
    DATA=sft_0503_v10_prompt,mm_mathinstruct_noprompt \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_mathinstruct_ep5 \
    EPOCHS=5 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh
    """

rayexec -n 16 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    RAY_ENABLE_RECORD_ACTOR_TASK_LOGGING=1 \
    TORCH_NCCL_TRACE_BUFFER_SIZE=2000 \
    --submission_id mmo1-math-qwen2.5_vl_32b-sft_mmr1_sft_0503_v10_ep5 \
    --cmd """
    DATA=sft_0503_v10 \
    MODEL=Qwen/Qwen2.5-VL-32B-Instruct \
    DS=ds_z3_mics_32shards \
    RUN_NAME=mmo1-math-qwen2.5_vl_32b-sft_mmr1_sft_0503_v10_ep5 \
    EPOCHS=5 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh
    """


rayexec -n 32 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    RAY_ENABLE_RECORD_ACTOR_TASK_LOGGING=1 \
    TORCH_NCCL_TRACE_BUFFER_SIZE=2000 \
    NCCL_DEBUG=INFO \
    --max_retries 20 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_mathinstruct_plusgemini_ep5 \
    --cmd """
    DATA=sft_0503_v10_prompt,mm_mathinstruct_noprompt,mm_mathinstruct_gemini_withprompt \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_mathinstruct_plusgemini_ep5 \
    DS=ds_z3_mics_16shards \
    EPOCHS=5 \
    SAVE_STEPS=1000 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh
    """

rayexec -n 64 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    RAY_ENABLE_RECORD_ACTOR_TASK_LOGGING=1 \
    TORCH_NCCL_TRACE_BUFFER_SIZE=2000 \
    NCCL_DEBUG=INFO \
    PYTORCH_CUDA_ALLOC_CONF=expandable_segments:False \
    NCCL_CUMEM_ENABLE=0 \
    NCCL_P2P_LEVEL=NVL \
    --max_retries 20 \
    --submission_id mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_mathinstruct_onlygemini_ep5 \
    --cmd """
    DATA=sft_0503_v10_prompt,mm_mathinstruct_gemini_withprompt \
    RUN_NAME=mmo1-math-qwen2.5_vl_7b-sft_mmr1_sft_0503_v10_mathinstruct_onlygemini_ep5 \
    DS=ds_z3_mics_16shards \
    EPOCHS=5 \
    SAVE_STEPS=1000 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh
    """

rayexec -n 32 \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    RAY_ENABLE_RECORD_ACTOR_TASK_LOGGING=1 \
    TORCH_NCCL_TRACE_BUFFER_SIZE=2000 \
    NCCL_DEBUG=INFO \
    NCCL_CUMEM_ENABLE=0 \
    NCCL_P2P_LEVEL=NVL \
    --max_retries 20 \
    --submission_id mmo1-math-qwen2.5_vl_32b-sft_mmr1_sft_0503_v10_mathinstruct_plusgemini_ep5 \
    --cmd """
    DATA=sft_0503_v10_prompt,mm_mathinstruct_noprompt,mm_mathinstruct_gemini_withprompt \
    RUN_NAME=mmo1-math-qwen2.5_vl_32b-sft_mmr1_sft_0503_v10_mathinstruct_plusgemini_ep5 \
    MODEL=Qwen/Qwen2.5-VL-32B-Instruct \
    DS=ds_z3_mics_32shards \
    EPOCHS=5 \
    SAVE_STEPS=1000 \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh
    """


rayexec -n 32 \
    --venv /mnt/amlfs-03/shared/jingwang/PROJECTS/mmo1/finetune/.venv \
    --env_vars \
    HF_HUB_CACHE=/mnt/amlfs-02/shared/ckpts/mmc/ \
    WANDB_API_KEY=26dcd5fab9afa1c6f127a04db6e0af6521affbbb \
    WANDB_ENTITY=mmo1 \
    WANDB_PROJECT=mmr1_sft_0502 \
    RAY_ENABLE_RECORD_ACTOR_TASK_LOGGING=1 \
    TORCH_NCCL_TRACE_BUFFER_SIZE=2000 \
    NCCL_DEBUG=INFO \
    PYTORCH_CUDA_ALLOC_CONF=expandable_segments:False \
    NCCL_CUMEM_ENABLE=0 \
    NCCL_P2P_LEVEL=NVL \
    --max_retries 20 \
    --submission_id mmo1-math-qwen2.5_vl_3b-sft_mmr1_sft_0503_v10_mathinstruct_onlygemini_ep5 \
    --cmd """
    DATA=sft_0503_v10_prompt,mm_mathinstruct_gemini_withprompt \
    RUN_NAME=mmo1-math-qwen2.5_vl_3b-sft_mmr1_sft_0503_v10_mathinstruct_onlygemini_ep5 \
    DS=ds_z2_config \
    EPOCHS=5 \
    SAVE_STEPS=1000 \
    MODEL=/mnt/amlfs-02/shared/ckpts/models--Qwen--Qwen2.5-VL-3B-Instruct/snapshots/66285546d2b821cf421d4f5eb2576359d3770cd3/ \
    bash scripts/jingwang/train/250502/train_qwen25vl7b_sft_mmr1.sh
    """

