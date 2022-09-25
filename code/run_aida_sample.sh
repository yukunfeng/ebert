#!/usr/bin/env bash

set -x

python -u ./run_aida_iterative_modify_dynamic_surface_emask_cls_curr_avg.py \
    --model_dir "tmp" \
    --mapper_name "None" \
    --do_prime_mask \
    --nouse_pos_emb \
    --lr 2e-5 \
    --nouse_ebert_emb \
    --warmup_proportion 0.1 \
    --nodo_predict_aida \
    --use_type_emb \
    --type_emb_option 'mix' \
    --epochs 10 \
    --null_penalty 1.0 \
    --decode_iter 1 \
    --train_file "../data/AIDA_sample/aida_train.txt" \
    --dev_file "../data/AIDA_sample/aida_dev.txt" \
    --test_file "../data/AIDA_sample/aida_test.txt"
