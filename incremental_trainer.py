from entity_typing_framework.dataset_classes.dataset_managers import DatasetManager, IncrementalTrainingDatasetManager
from entity_typing_framework.main_module.custom_logger import CustomLogger
from entity_typing_framework.main_module.main_module import IncrementalMainModule, KENNMainModule, MainModule
from pytorch_lightning.utilities.cli import LightningCLI

def dummy_compute_fn(arg):
    return arg

class MyLightningCLI(LightningCLI):
    def add_arguments_to_parser(self, parser):
        parser.add_lightning_class_args(CustomLogger, "logger")

        parser.link_arguments("data.type_number", "model.type_number", apply_on="instantiate")
        parser.link_arguments("logger", "model.logger", apply_on="instantiate", compute_fn = dummy_compute_fn)

cli = MyLightningCLI(IncrementalMainModule, IncrementalTrainingDatasetManager)