#!/usr/bin/env bash

set -x

# infer entity
# python3 run_lama.py --wikiname wikipedia2vec-base-cased \
    # --modelname bert-base-cased \
    # --data_dir ../data/LAMA/data \
    # --output_dir ../outputs/LAMA --infer_entity

# do not infer
python3 run_lama.py --wikiname wikipedia2vec-base-cased \
    --modelname bert-base-cased \
    --data_dir ../data/LAMA/data \
    --output_dir ../outputs/LAMA

# python3 score_lama.py --file ../outputs/LAMA/all.bert-base-cased.wikipedia2vec-base-cased_infer.jsonl
# python3 score_lama.py --file ../outputs/LAMA/all.bert-base-cased.wikipedia2vec-base-cased.jsonl
