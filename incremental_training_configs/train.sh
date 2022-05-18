#!/bin/bash

# python pretraining_trainer.py fit \
CUDA_VISIBLE_DEVICES=0 debugpy-run -p :5679 pretraining_trainer.py fit \
--config chronos_experiments/kenn_data.yaml \
--config chronos_experiments/logger.yaml \
--config chronos_experiments/trainer.yaml \
--config chronos_experiments/kenn_model.yaml \
--trainer incremental_training_configs/kenn_bbn_pretraining_location_trainer.yaml \
--data incremental_training_configs/kenn_bbn_pretraining_location_data.yaml \
--model incremental_training_configs/kenn_bbn_pretraining_location_model.yaml \

# python pretraining_trainer.py fit \
# --config ../entity_typing_framework/default_configurations/default_data.yaml \
# --config chronos_experiments/logger.yaml \
# --config chronos_experiments/trainer.yaml \
# --config ../entity_typing_framework/default_configurations/default_model.yaml \
# --trainer incremental_training_configs/kenn_bbn_pretraining_location_trainer.yaml \
# --data incremental_training_configs/kenn_bbn_pretraining_location_data.yaml \
# --model incremental_training_configs/kenn_bbn_pretraining_location_model.yaml \