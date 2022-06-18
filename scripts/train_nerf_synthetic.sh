#!/bin/bash

ldif_repo_dirpath="$1"

# define shape names
declare -a scene_names=(
    "chair"
    "drums"
    "ficus"
    "hotdog"
    "lego"
    "materials"
    "mic"
    "ship"
    )

for scene_name in ${scene_names[@]}; do
    python run_nerf.py --config paper_configs/${scene_name}.txt --i_img=10000
done