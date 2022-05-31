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

# pretraining
# CUDA_VISIBLE_DEVICES=0 debugpy-run -p :5680 pretraining_trainer.py fit \
# --config chronos_experiments/kenn_data.yaml \
# --config chronos_experiments/logger_cbe.yaml \
# --config chronos_experiments/trainer.yaml \
# --config chronos_experiments/kenn_model.yaml \
# --trainer incremental_training_configs/kenn_figer_pretraining_location_trainer.yaml \
# --trainer.max_epochs=2 \
# --data incremental_training_configs/kenn_figer_pretraining_location_data.yaml \
# --model incremental_training_configs/kenn_figer_pretraining_location_model.yaml \

# incremental
CUDA_VISIBLE_DEVICES=0 debugpy-run -p :5680 incremental_trainer.py fit \
--config chronos_experiments/kenn_data.yaml \
--config chronos_experiments/logger_cbe.yaml \
--config chronos_experiments/trainer.yaml \
--config chronos_experiments/kenn_model.yaml \
--trainer incremental_training_configs/kenn_figer_incremental_location_province_trainer.yaml \
--trainer.max_epochs=2 \
--data incremental_training_configs/kenn_figer_incremental_location_province_data.yaml \
--model incremental_training_configs/kenn_figer_incremental_location_province_model.yaml \
--logger.name=prova_dataloader \
--data incremental_training_configs/dataloader_params_incremental.yaml

# se si tocca la callback va ridefinita tutta
# --trainer.callbacks=ModelCheckpoint \
# --trainer.callbacks.dirpath=juan_batista \
