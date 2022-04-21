# export NCCL_P2P_DISABLE=1
export NGPUS=4
export MASTER_ADDR=localhost
export MASTER_PORT=5678
CUDA_VISIBLE_DEVICES=0,1,2 python3 -m torch.distributed.launch --nproc_per_node=$NGPUS tools/train.py --config_file "config/icdar2015_convnext_FPN_DBhead_polyLR.yaml"