#!/usr/bin/env bash

set -x


wget https://www.cis.uni-muenchen.de/~poerner/blobs/e-bert/wikipedia2vec-base-cased
wget https://www.cis.uni-muenchen.de/~poerner/blobs/e-bert/wikipedia2vec-base-cased.bert-base-cased.linear.npy
mv wikipedia2vec-base-cased resources/wikipedia2vec
mv wikipedia2vec-base-cased.bert-base-cased.linear.npy mappers
