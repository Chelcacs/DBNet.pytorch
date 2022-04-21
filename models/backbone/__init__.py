# -*- coding: utf-8 -*-
# @Time    : 2022/3/12
# @Author  : Chaosheng HU

from .resnet import *
from .resnest import *
# from .shufflenetv2 import *
# from .MobilenetV3 import MobileNetV3
# from .convnext import *
from .resnext import *

__all__ = ['build_backbone']

#ConvNeXt models added by Chel
support_backbone = ['resnet18', 'deformable_resnet18', 'deformable_resnet50',
                    'resnet50', 'resnet34', 'resnet101', 'resnet152',
                    'resnest50', 'resnest101', 'resnest200', 'resnest269',
                    'resnext18', 'resnext34', 'resnext50','resnext101', 'resnext152',
                    'shufflenet_v2_x0_5', 'shufflenet_v2_x1_0', 'shufflenet_v2_x1_5', 'shufflenet_v2_x2_0',
                    'MobileNetV3','convnext_tiny','convnext_small','convnext_base','convnext_large','convnext_xlarge']


def build_backbone(backbone_name, **kwargs):
    assert backbone_name in support_backbone, f'all support backbone is {support_backbone}'
    backbone = eval(backbone_name)(**kwargs)
    return backbone
