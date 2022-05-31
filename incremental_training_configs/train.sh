#!/bin/bash

# Pretraining AdapterDistilbertClassifier
# CUDA_VISIBLE_DEVICES=0 debugpy-run -p :5679 pretraining_trainer.py fit \
# --config chronos_experiments/logger.yaml \
# --config chronos_experiments/trainer.yaml \
# --config ../entity_typing_framework/default_configurations/default_data.yaml \
# --config ../entity_typing_framework/default_configurations/default_model.yaml \
# --trainer incremental_training_configs/figer_pretraining_location_trainer.yaml \
# --trainer.max_epochs=2 \

# Incremental AdapterDistilbertClassifier
# CUDA_VISIBLE_DEVICES=0 debugpy-run -p :5679 incremental_trainer.py fit \
# --config chronos_experiments/logger.yaml \
# --config chronos_experiments/trainer.yaml \
# --config ../entity_typing_framework/default_configurations/default_data.yaml \
# --config ../entity_typing_framework/default_configurations/default_model.yaml \
# --trainer incremental_training_configs/figer_incremental_location_province_trainer.yaml \
# --trainer.max_epochs=2 \
# --data ../entity_typing_framework/default_configurations/incremental_configurations/dataloader_params_incremental.yaml \
# --data ../entity_typing_framework/default_configurations/incremental_configurations/incremental_data.yaml \
# --model ../entity_typing_framework/default_configurations/incremental_configurations/incremental_model.yaml \

# Pretraining KENNAdapterDistilbertClassifier
CUDA_VISIBLE_DEVICES=0 debugpy-run -p :5679 pretraining_trainer.py fit \
--config chronos_experiments/logger.yaml \
--config chronos_experiments/trainer.yaml \
--config ../entity_typing_framework/default_configurations/default_data.yaml \
--config ../entity_typing_framework/default_configurations/default_model.yaml \
--trainer incremental_training_configs/figer_pretraining_location_trainer.yaml \
--trainer.max_epochs=2 \
