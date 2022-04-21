#!/usr/bin/env bash

python search_cgan.py \
-gen_bs 128 \
-dis_bs 128 \
--dataset cifar100 \
--bottom_width 4 \
--img_size 32 \
--gen_model shared_cgan_search \
--dis_model shared_cgan_search \
--controller controller \
--latent_dim 128 \
--gf_dim 128 \
--df_dim 64 \
--g_spectral_norm False \
--d_spectral_norm True \
--g_lr 0.0002 \
--d_lr 0.0002 \
--beta1 0.0 \
--beta2 0.9 \
--init_type xavier_uniform \
--n_critic 5 \
--val_freq 20 \
--ctrl_sample_batch 1 \
--num_candidate 30 \
--topk 0 \
--shared_epoch 15 \
--grow_step1 15 \
--grow_step2 35 \
--max_search_iter 65 \
--ctrl_step 30 \
--exp_name autocgan_search_cifar100_topp \
--n_classes 100
