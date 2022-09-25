
lrs=(3e-5)
for lr in "${lrs[@]}"
do
    note="randent_lr_${lr}epoch4_no_prime"
    python -u ./run_aida_iterative_modify_dynamic_surface_emask_uncased_randent.py \
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
