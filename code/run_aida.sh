#!/usr/bin/env bash

set -x

lrs=(3e-5)
for lr in "${lrs[@]}"
do
    note="all_dynamic_search_lr_${lr}epoch4_no_prime"
    python -u ./run_aida_iterative_modify_dynamic_all_emask_uncased.py \
        --model_dir "./model_dirs/model_${note}" \
        --mapper_name "None" \
        --nodo_prime_mask \
        --use_pos_emb \
        --lr $lr \
        --nouse_ebert_emb \
        --warmup_proportion 0.1 \
        --nodo_predict_aida \
        --use_type_emb \
        --type_emb_option "mix" \
        --epochs 4 \
        --null_penalty 1.0 \
        --decode_iter 1 > ./logs/${note}.log 
done

# note="uncased_ebert"
# python -u ./run_aida_ebert_uncased.py \
    # --model_dir "./model_dirs/model_${note}" \
    # --nodo_prime_mask \
    # --use_pos_emb \
    # --lr 2e-5 \
    # --nouse_type_emb \
    # --use_ebert_emb \
    # --warmup_proportion 0.1 \
    # --nodo_predict_aida \
    # --type_emb_option "mix" \
    # --epochs 10 \
    # --null_penalty 1.0 \
    # --decode_iter 1 > ./logs/${note}.log 

# lrs=(1e-5 3e-5 4e-5)
# for lr in "${lrs[@]}"
# do
    # note="search_lr${lr}epoch6"
    # python -u ./run_aida_iterative_modify_dynamic_surface_emask_uncased.py \
        # --model_dir "./model_dirs/model_${note}" \
        # --mapper_name "None" \
        # --do_prime_mask \
        # --use_pos_emb \
        # --lr $lr \
        # --nouse_ebert_emb \
        # --warmup_proportion 0.1 \
        # --nodo_predict_aida \
        # --use_type_emb \
        # --type_emb_option "mix" \
        # --epochs 6 \
        # --null_penalty 1.0 \
        # --decode_iter 1 > ./logs/${note}.log 
# done

# epochs=(2 3 4 5 6)
# for epoch in "${epochs[@]}"
# do
    # note="search_epoch${epoch}"
    # python -u ./run_aida_iterative_modify_dynamic_surface_emask_uncased.py \
        # --model_dir "./model_dirs/model_${note}" \
        # --mapper_name "None" \
        # --do_prime_mask \
        # --use_pos_emb \
        # --lr 2e-5 \
        # --nouse_ebert_emb \
        # --warmup_proportion 0.1 \
        # --nodo_predict_aida \
        # --use_type_emb \
        # --type_emb_option "mix" \
        # --epochs $epoch \
        # --null_penalty 1.0 \
        # --decode_iter 1 > ./logs/${note}.log 
# done

# note="search_no_prime"
# python -u ./run_aida_iterative_modify_dynamic_surface_emask_uncased.py \
    # --model_dir "./model_dirs/model_${note}" \
    # --mapper_name "None" \
    # --nodo_prime_mask \
    # --use_pos_emb \
    # --lr 2e-5 \
    # --nouse_ebert_emb \
    # --warmup_proportion 0.1 \
    # --nodo_predict_aida \
    # --use_type_emb \
    # --type_emb_option "mix" \
    # --epochs 10 \
    # --null_penalty 1.0 \
    # --decode_iter 1 > ./logs/${note}.log 

# note="uncased_ebert"
# python -u ./run_aida_ebert_uncased.py \
    # --model_dir "./model_dirs/model_${note}" \
    # --nodo_prime_mask \
    # --use_pos_emb \
    # --lr 2e-5 \
    # --nouse_type_emb \
    # --use_ebert_emb \
    # --warmup_proportion 0.1 \
    # --nodo_predict_aida \
    # --type_emb_option "mix" \
    # --epochs 10 \
    # --null_penalty 1.0 \
    # --decode_iter 1 > ./logs/${note}.log 

# note="param_mix_type_surface_dynamic_emask"
# python -u ./run_aida_iterative_modify_dynamic_surface_emask.py \
    # --model_dir "./model_dirs/model_type_emb_lr_${mode}${note}" \
    # --mapper_name "None" \
    # --do_prime_mask \
    # --use_pos_emb \
    # --lr 2e-5 \
    # --nouse_ebert_emb \
    # --warmup_proportion 0.1 \
    # --nodo_predict_aida \
    # --use_type_emb \
    # --type_emb_option $mode \
    # --epochs 10 \
    # --null_penalty 1.0 \
    # --decode_iter 1 > ./logs/type_ent_pos_emb_lr${lr}_${mode}${note}.log 

# note="param_mix_type_surface_dynamic_emask_uncased_cls_curr_avg"
# python -u ./run_aida_iterative_modify_dynamic_surface_emask_uncased_cls_curr_avg.py \
    # --model_dir "./model_dirs/model_type_emb_lr_${note}" \
    # --mapper_name "None" \
    # --do_prime_mask \
    # --use_pos_emb \
    # --lr 2e-5 \
    # --nouse_ebert_emb \
    # --warmup_proportion 0.1 \
    # --nodo_predict_aida \
    # --use_type_emb \
    # --type_emb_option 'mix' \
    # --epochs 10 \
    # --null_penalty 1.0 \
    # --decode_iter 1 > ./logs/type_ent_pos_emb_lr${lr}_${mode}${note}.log 

# note="param_mix_type_surface_dynamic_emask_uncased_randent"
# python -u ./run_aida_iterative_modify_dynamic_surface_emask_uncased_randent.py \
    # --model_dir "./model_dirs/model_type_emb_lr_${note}" \
    # --mapper_name "None" \
    # --do_prime_mask \
    # --use_pos_emb \
    # --lr 2e-5 \
    # --nouse_ebert_emb \
    # --warmup_proportion 0.1 \
    # --nodo_predict_aida \
    # --use_type_emb \
    # --type_emb_option 'mix' \
    # --epochs 10 \
    # --null_penalty 1.0 \
    # --decode_iter 1 > ./logs/type_ent_pos_emb_lr${lr}_${mode}${note}.log 


# python ./run_aida_iterative_modify.py --model_dir "model_dir_ebert_default_update_randoment" \
    # --nodo_prime_mask \
    # --decode_iter 1

# python ./run_aida.py --model_dir "model_dir_ebert_default_randomentemb_noprimemask" --nodo_prime_mask

# python ./run_aida.py --model_dir "model_dir_noprime_mask" --nodo_prime_mask

# python ./run_aida.py --model_dir "model_dir_ebert_default" --nodo_train --decode_iter 1

# python ./run_aida.py --model_dir "model_dir_ebert_nomap_noprimemask" --nodo_prime_mask --mapper_name "None"

# Predict
# python ./run_aida.py --model_dir "./model_dir_ebert_nomap_noprimemask" --nodo_train --decode_iter 1
# python ./run_aida.py --model_dir "./model_dir_noprime_mask" --nodo_train --decode_iter 1

# scoring
# model_dir="./model_dir_ebert_nomap_noprimemask/"
# python ./score_aida.py --gold ./$model_dir/aida_dev.txt.gold.txt --pred ./$model_dir/aida_dev.txt.pred_iter3.txt
# python ./score_aida.py --gold ./$model_dir/aida_test.txt.gold.txt --pred ./$model_dir/aida_test.txt.pred_iter3.txt
# python ./score_aida.py --gold ./$model_dir/aida_dev.txt.gold.txt --pred ./$model_dir/aida_dev.txt.pred.txt
# python ./score_aida.py --gold ./$model_dir/aida_test.txt.gold.txt --pred ./$model_dir/aida_test.txt.pred.txt
