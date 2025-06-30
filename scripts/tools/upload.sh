set -ex

FILENAME=$1
NAME=${NAME:-$(basename $FILENAME)}

huggingface-cli upload-large-folder mm-o1/$NAME --repo-type=model $FILENAME --num-workers=32 --exclude "checkpoint-*" --private
