alias cl="clear"
alias rt="reset"
alias cnt="ls -1 | wc -l"
alias python-debug="python -m pdb"
alias nuke="rm -rf *"
alias wnvid="watch -n 0.1 nvidia-smi"
alias find_last='find . -type f -printf '%T@ %p\n' | sort -n | tail -1 | cut -f2- -d" "'
alias hand="cd ~/dev/handtracking"
alias deep="cd ~/dev/deep_sort"
alias cosine="cd ~/dev/deep_sort/lib/cosine_metric_learning"
alias fast="cd ~/dev/tf-faster-rcnn"
alias randf="ls . | shuf -n 1"
alias gpu="gpustat -i .1"
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias vid="/home/drussel1/anaconda3/bin/python2 ~/dev/VideoPlayer/new_test_3.py"
alias add_nvcc="export PATH=${PATH}:/usr/local/cuda-9.0/bin"
alias run_tracker="source activate motmetrics-env; python evaluate_motchallenge.py --mot_dir /home/drussel1/dev/deep_sort/MOT16/ADL18 --detection_dir /home/drussel1/dev/deep_sort/resources/descriptor_detections/ADL_18 --output_dir outputs/ADL/tracks/tracks-ADL_exaustive_search-conf.3-nms0.05-iou0.05-max_cosine_distance0.6 --min_confidence .3 --max_cosine_distance 0.6 --nms_max_overlap 0.15 --min_iou_overlap 0.05    --track_subset_file /home/drussel1/dev/deep_sort/resources/visualization_frame_flags/ADL/ADL18.txt"
alias run_EPIC_tracker="source activate tensorflow; python evaluate_motchallenge.py --mot_dir /home/drussel1/dev/deep_sort/MOT16/EPIC_05 --detection_dir /home/drussel1/dev/deep_sort/resources/descriptor_detections/EPIC05_faster_dets_cosine_descs --min_confidence .3 --max_cosine_distance 0.6 --nms_max_overlap 0.15 --min_iou_overlap 0.05    --track_subset_file /home/drussel1/dev/deep_sort/resources/visualization_frame_flags/EPIC5.txt"
alias print="lp -d scs_public"
alias emacs="emacs -nw"
alias add_cuda="CPATH=/usr/local"
alias cinstall="conda install -y"
alias check_gpus="python -c \"from tensorflow.python.client import device_lib;device_lib.list_local_devices()\""
alias py="python"