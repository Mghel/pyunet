IMG_WIDTH=128
IMG_HEIGHT=128
DEVICE=cuda
GPU_INDEX=0
INPUT_IMG_DIR=~/workspace/pyunet/notebooks/images/kvasir-capsule/test/images
INPUT_MASK_DIR=~/workspace/pyunet/notebooks/images/kvasir-capsule/test/masks
MODEL_TYPE=unet_rd
MODEL_FILE=~/workspace/pyunet/notebooks/images/kvasir-capsule/unet_rd.pth
IN_CHANNELS=3
OUT_CHANNELS=2

python -m pyunet --mode benchmark \
  --img-width $IMG_WIDTH \
  --img-height $IMG_HEIGHT \
  --device $DEVICE \
  --gpu-index $GPU_INDEX \
  --input-img-dir $INPUT_IMG_DIR \
  --input-mask-dir $INPUT_MASK_DIR \
  --model-type $MODEL_TYPE \
  --model-file $MODEL_FILE \
  --in-channels $IN_CHANNELS \
  --out-channels $OUT_CHANNELS
