#!/usr/bin/env bash

set -x

# python ./run_aida_ent_updated.py --model_dir "model_dir_ent_updated" \
    # --epochs 1 \
    # --print_loss_steps 2 \
    # --nodo_prime_mask \
    # --nodo_predict_aida \
    # --nouse_type_emb \
    # --train_file "../data/AIDA_sample/aida_train.txt" \
    # --dev_file "../data/AIDA_sample/aida_dev.txt" \
    # --test_file "../data/AIDA_sample/aida_test.txt"

# rm "model_dir_tmp" -rf
modes=(surface mix)
for mode in "${modes[@]}"
do

    python -u ./run_aida_iterative_modify.py --model_dir "model_type_emb_lr_$mode" \
        --lr 2e-5 \
        --nodo_predict_aida \
        --use_type_emb \
        --type_emb_option $mode \
        --use_pos_emb \
        --epochs 4 \
        --null_penalty 1.0 \
        --nodo_prime_mask \
        --decode_iter 1 > ./logs/type_ent_pos_emb_lr${lr}_$mode.log 
        # --train_file "../data/AIDA_sample/aida_train.txt" \
        # --dev_file "../data/AIDA_sample/aida_dev.txt" \
        # --test_file "../data/AIDA_sample/aida_test.txt"
done


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
