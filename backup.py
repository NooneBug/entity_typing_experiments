# logger_params_default_dict = {
#     'class_path' : 'entity_typing_framework.main_module.custom_logger.CustomLogger',
#     'init_args':{
#         'project' : 'entity_typing_framework',
#         'entity' : 'noonebug'
#     }
# }

# loss_default_dict = {
#     'class_path' : 'entity_typing_framework.main_module.losses.BCELossForET'
# }

# def get_layers_dict(**kwargs):
#     return {list(args.keys())[0]: args[list(args.keys())[0]] for _, args in kwargs.items()}

# def get_layer_args(layer_name, 
#                     in_features = 'encoder_dim', 
#                     out_features = 'type_number',
#                     use_dropout = True,
#                     dropout_p = .1,
#                     activation = 'relu',
#                     use_batch_norm = False):
#     return {layer_name : {
#         'in_features' : in_features,
#         'out_features' : out_features,
#         'use_dropout' : use_dropout,
#         'dropout_p' : dropout_p,
#         'activation' : activation,
#         'use_batch_norm' : use_batch_norm}
#         }

# input_projector_default_dict = {
#     'class_path' : 'entity_typing_framework.EntityTypingNetwork_classes.input_projectors.Classifier',
#     'init_args' : get_layers_dict(first_layer = get_layer_args(layer_name='0',
#                                                             out_features=512),
#                                 second_layer = get_layer_args(layer_name='1',
#                                                             in_features=512,
#                                                             use_dropout=False,
#                                                             activation='Sigmoid'))
# }

# type_encoder_params_default_dict = {
#     'class_path' : 'entity_typing_framework.EntityTypingNetwork_classes.type_encoders.OneHotTypeEncoder',
#     'init_args' : {
#         'trainable' : False
#     }
# }

# encoder_params_default_dict = {
#     'class_path' : 'entity_typing_framework.EntityTypingNetwork_classes.input_encoders.DistilBERTEncoder',
#     'init_args' : {
#         'bertlike_model_name' : 'distilbert-base-uncased',
#         'freeze_encoder' : True
#     }
# }

# ET_Network_default_dict = {
#     'class_path' : 'entity_typing_framework.EntityTypingNetwork_classes.base_network.BaseEntityTypingNetwork',
#     'init_args' : {
#         'network_params' : {
#             'encoder_params' : encoder_params_default_dict,
#             'type_encoder_params' : type_encoder_params_default_dict,
#             'input_projector_params' : input_projector_default_dict
#         },
#     }
# }

# BASE_DATALOADER_CLASS = 'torch.utils.data.dataloader.DataLoader'
# def get_dataloader_params_dict(class_path, **kwargs):
#     return {'class_path' : class_path, 
#             'init_args': kwargs}

# dataloader_params_default_dict = {
#     'train' : get_dataloader_params_dict(class_path = BASE_DATALOADER_CLASS, 
#                                         batch_size = 64,
#                                         shuffle = True),
#     'dev' : get_dataloader_params_dict(class_path = BASE_DATALOADER_CLASS,
#                                         batch_size = 8),
#     'test' : get_dataloader_params_dict(class_path = BASE_DATALOADER_CLASS,
#                                         batch_size = 8)
# }

# tokenizer_params_default_dict = {
#     'class_path' : 'entity_typing_framework.dataset_classes.tokenized_datasets.BaseBERTTokenizedDataset',
#     'init_args' : {
#         'bertlike_model_name' : 'distilbert-base-uncased',
#         'max_mention_words' : 1,
#         'max_right_words' : 2,
#         'max_left_words' : 2
#     }
# }

# default_toy_paths_dict = {
#     'train' : 'datasets/toy_datasets/toy_bbn_train.json',
#     'dev' : 'datasets/toy_datasets/toy_bbn_dev.json',
#     'test' : 'datasets/toy_datasets/toy_bbn_test-12k.json'
# }

# default_bbn_paths_dict = {
#     'train' : 'datasets/ren_et_al/bbn/train.json',
#     'dev' : 'datasets/ren_et_al/bbn/dev.json',
#     'test' : 'datasets/ren_et_al/bbn/test-12k.json'
# } 

# dataset_paths_default_dict = {
#     'class_path': 'entity_typing_framework.dataset_classes.datasets.BaseDataset',
#     'init_args' : {
#         'toy' : default_toy_paths_dict,
#         'bbn' : default_bbn_paths_dict
#     }
# }

# dataset_manager_default_dict = {
#     'class_path': 'entity_typing_framework.dataset_classes.dataset_managers.DatasetManager',
#     'init_args' : {
#         'dataset_paths' : dataset_paths_default_dict,
#         'tokenizer_params' : tokenizer_params_default_dict,
#         'dataloader_params' : dataloader_params_default_dict
#     }
# }

# main_module_default_dict = {
#     'class_path': 'entity_typing_framework.main_module.main_module.MainModule',
#     'init_args' : {
#         'dataset_manager' : dataset_manager_default_dict,
#         'ET_Network_params' : ET_Network_default_dict,
#         'loss' : loss_default_dict,
#         'logger_params' : logger_params_default_dict
#     }
# }
