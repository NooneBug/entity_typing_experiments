#!/bin/bash

# NOTE: the script has not been tested and needs intermediate comment removal before being executed

# IMPORTANT: the paths must be specified starting from entity_typing_experiments

# 1) EXAMPLE PRETRAIN ON FIGER WITH KENN
python pretraining_trainer.py fit \ # IMPORTANT: instantiate MyLightningCLI with the right modules!

# common parameters
--data official_configs/pretraining/data_pretraining_common.yaml \
--config official_configs/pretraining/trainer_pretraining_common.yaml \ # NOTE: --config due to the seed
--model official_configs/pretraining/model_pretraining_common.yaml \
--logger official_configs/logger.yaml \

# checkpoint settings: it is not possible to redifine single parameters 
--trainer.callbacks=ModelCheckpoint \
--trainer.callbacks.dirpath=trained_models/figer/pretraining \
--trainer.callbacks.filename=kenn \
--trainer.callbacks.monitor=val_loss \

# approach related parameters
--model official_configs/pretraining/model_pretraining_kenn.yaml \

# data related parameters
--data official_configs/pretraining/data_pretraining_figer.yaml \

# wandb settings
--logger.project=figer_pretraining \
--logger.name=kenn \

###########################################

# 2) EXAMPLE INCREMENTAL ON FIGER WITH KENN
python incremental_trainer.py fit \ # IMPORTANT: instantiate MyLightningCLI with the right modules!

# common parameters
--data official_configs/incremental/data_incremental_common.yaml \
--config official_configs/incremental/trainer_incremental_common.yaml \ # NOTE: --config due to the seed
--model official_configs/incremental/model_incremental_common.yaml \
--logger official_configs/logger.yaml \

# checkpoint settings: it is not possible to redifine single parameters 
--trainer.callbacks=ModelCheckpoint \
--trainer.callbacks.dirpath=trained_models/figer/incremental \
--trainer.callbacks.filename=kenn \
--trainer.callbacks.monitor=losses/val_loss \

# approach related parameters
--model official_configs/incremental/model_incremental_kenn.yaml \
# --model.checkpoint_to_load trained_models/figer/pretraining/kenn.ckpt \ 

# data related parameters
--data official_configs/incremental/data_incremental_figer.yaml \

# wandb settings
--logger.project=figer_incremental \
--logger.name=kenn \