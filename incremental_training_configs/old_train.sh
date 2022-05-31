#!/bin/bash

# python pretraining_trainer.py fit \
# CUDA_VISIBLE_DEVICES=0 debugpy-run -p :5679 pretraining_trainer.py fit \
# --config chronos_experiments/kenn_data.yaml \
# --config chronos_experiments/logger.yaml \
# --config chronos_experiments/trainer.yaml \
# --config chronos_experiments/kenn_model.yaml \
# --trainer incremental_training_configs/kenn_figer_pretraining_location_trainer.yaml \
# --data incremental_training_configs/kenn_figer_pretraining_location_data.yaml \
# --model incremental_training_configs/kenn_figer_pretraining_location_model.yaml \

# Pretraining Classifier
CUDA_VISIBLE_DEVICES=0 debugpy-run -p :5679 pretraining_trainer.py fit \
--config chronos_experiments/logger.yaml \
--config chronos_experiments/trainer.yaml \
--config ../entity_typing_framework/default_configurations/default_data.yaml \
--config ../entity_typing_framework/default_configurations/default_model.yaml \
--trainer incremental_training_configs/figer_pretraining_location_trainer.yaml \
--trainer.max_epochs=2 \


# CUDA_VISIBLE_DEVICES=0 debugpy-run -p :5679 pretraining_trainer.py fit \
# --config chronos_experiments/kenn_data.yaml \
# --config chronos_experiments/logger.yaml \
# --config chronos_experiments/trainer.yaml \
# --config chronos_experiments/kenn_model.yaml \
# --trainer incremental_training_configs/kenn_figer_pretraining_location_trainer.yaml \
# --trainer.max_epochs=2 \
# --data incremental_training_configs/kenn_figer_pretraining_location_data.yaml \
# --model incremental_training_configs/kenn_figer_pretraining_location_model.yaml \

# CUDA_VISIBLE_DEVICES=0 debugpy-run -p :5679 box_pretraining_trainer.py fit \
# --config ../entity_typing_framework/default_configurations/box_embeddings.yaml \

# # incremental
# CUDA_VISIBLE_DEVICES=0 debugpy-run -p :5679 incremental_trainer.py fit \
# --config chronos_experiments/kenn_data.yaml \
# --config chronos_experiments/logger.yaml \
# --config chronos_experiments/trainer.yaml \
# --config chronos_experiments/kenn_model.yaml \
# --trainer incremental_training_configs/kenn_figer_incremental_location_province_trainer.yaml \
# --trainer.max_epochs=2 \
# --data incremental_training_configs/kenn_figer_incremental_location_province_data.yaml \
# --model incremental_training_configs/kenn_figer_incremental_location_province_model.yaml \

# incremental
# CUDA_VISIBLE_DEVICES=0 debugpy-run -p :5679 incremental_trainer.py fit \
# --config chronos_experiments/kenn_data.yaml \
# --config chronos_experiments/logger.yaml \
# --config chronos_experiments/trainer.yaml \
# --config chronos_experiments/kenn_model.yaml \
# --trainer incremental_training_configs/kenn_figer_incremental_location_province_trainer.yaml \
# --trainer.max_epochs=2 \
# --data incremental_training_configs/kenn_figer_incremental_location_province_data.yaml \
# --model incremental_training_configs/classifier_incremental_location_province_model.yaml \
