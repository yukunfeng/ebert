#!/usr/bin/env bash

set -x

python3 run_mapping.py --src wikipedia2vec-base-cased --tgt bert-base-cased --save_out ../mappers/wikipedia2vec-base-cased.bert-base-cased.linear
