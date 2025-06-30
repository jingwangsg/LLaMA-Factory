rayexec --nnodes 4 --cmd "bash scripts/jingwang/train/250417/train_qwen25vl7b_sft_mmr1_pub25k.sh"
rayexec --nnodes 4 --cmd "bash scripts/jingwang/train/250417/train_qwen25vl7b_sft_mmr1_pub25k_tiku25k.sh"
sleep 20
rayexec --nnodes 4 --cmd "bash scripts/jingwang/train/250417/train_qwen25vl7b_sft_mmr1_pub85k_tiku25k.sh"
rayexec --nnodes 4 --cmd "bash scripts/jingwang/train/250417/train_qwen25vl7b_sft_mmr1_pub140k_tiku25k.sh"
