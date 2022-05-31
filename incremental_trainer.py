from entity_typing_framework.dataset_classes.dataset_managers import DatasetManager, IncrementalDatasetManager
from entity_typing_framework.main_module.custom_logger import CustomLogger
from entity_typing_framework.main_module.main_module import IncrementalMainModule, KENNMainModule, MainModule, IncrementalKENNMainModule, IncrementalKENNMultilossMainModule
from pytorch_lightning.utilities.cli import LightningCLI

def dummy_compute_fn(arg):
    return arg

class MyLightningCLI(LightningCLI):
    def add_arguments_to_parser(self, parser):
        parser.add_lightning_class_args(CustomLogger, "logger")

        parser.link_arguments("data.type_number", "model.type_number", apply_on="instantiate")
        parser.link_arguments("data.type2id", "model.type2id", apply_on="instantiate")
        # parser.link_arguments("trainer.smart_save", "model.smart_save", apply_on="parse")
        parser.link_arguments("logger", "model.logger", apply_on="instantiate", compute_fn = dummy_compute_fn)

cli = MyLightningCLI(IncrementalMainModule, IncrementalDatasetManager, save_config_overwrite=True)

# cli.config['fit']['model']['checkpoint_to_load'] = ''
# cli.model.hparams['checkpoint_to_load'] = ''
# load best model
cli.trainer.model.ET_Network = cli.trainer.model.load_ET_Network_for_test(checkpoint_to_load=cli.trainer.checkpoint_callback.best_model_path, ET_Network_params = cli.trainer.model.ET_Network_params)
# test step
cli.trainer.test(cli.trainer.model, cli.trainer.datamodule.test_dataloader())
