:github_url: hide

.. _class_SkeletonProfileHumanoid:

SkeletonProfileHumanoid
=======================

**继承：** :ref:`SkeletonProfile<class_SkeletonProfile>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

人形 :ref:`SkeletonProfile<class_SkeletonProfile>` 预设。

.. rst-class:: classref-introduction-group

描述
----

:ref:`SkeletonProfile<class_SkeletonProfile>` 是针对人形优化的预设。它存在的目的是进行标准化，因此所有参数都是只读的。

人形骨架预设包含了 54 根骨骼，分为 ``"Body"``\ （身体）、\ ``"Face"``\ （面部）、 ``"LeftHand"``\ （左手）、\ ``"RightHand"``\ （右手）4 组。结构如下：

.. code:: text

    Root
    └─ Hips
        ├─ LeftUpperLeg
        │  └─ LeftLowerLeg
        │     └─ LeftFoot
        │        └─ LeftToes
        ├─ RightUpperLeg
        │  └─ RightLowerLeg
        │     └─ RightFoot
        │        └─ RightToes
        └─ Spine
            └─ Chest
                └─ UpperChest
                    ├─ Neck
                    │   └─ Head
                    │       ├─ Jaw
                    │       ├─ LeftEye
                    │       └─ RightEye
                    ├─ LeftShoulder
                    │  └─ LeftUpperArm
                    │     └─ LeftLowerArm
                    │        └─ LeftHand
                    │           ├─ LeftThumbMetacarpal
                    │           │  └─ LeftThumbProximal
                    │           │    └─ LeftThumbDistal
                    │           ├─ LeftIndexProximal
                    │           │  └─ LeftIndexIntermediate
                    │           │    └─ LeftIndexDistal
                    │           ├─ LeftMiddleProximal
                    │           │  └─ LeftMiddleIntermediate
                    │           │    └─ LeftMiddleDistal
                    │           ├─ LeftRingProximal
                    │           │  └─ LeftRingIntermediate
                    │           │    └─ LeftRingDistal
                    │           └─ LeftLittleProximal
                    │              └─ LeftLittleIntermediate
                    │                └─ LeftLittleDistal
                    └─ RightShoulder
                       └─ RightUpperArm
                          └─ RightLowerArm
                             └─ RightHand
                                ├─ RightThumbMetacarpal
                                │  └─ RightThumbProximal
                                │     └─ RightThumbDistal
                                ├─ RightIndexProximal
                                │  └─ RightIndexIntermediate
                                │     └─ RightIndexDistal
                                ├─ RightMiddleProximal
                                │  └─ RightMiddleIntermediate
                                │     └─ RightMiddleDistal
                                ├─ RightRingProximal
                                │  └─ RightRingIntermediate
                                │     └─ RightRingDistal
                                └─ RightLittleProximal
                                   └─ RightLittleIntermediate
                                     └─ RightLittleDistal

.. rst-class:: classref-introduction-group

教程
----

- :doc:`重定向 3D 骨架 <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | bone_size       | ``56`` (overrides :ref:`SkeletonProfile<class_SkeletonProfile_property_bone_size>`)            |
   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | group_size      | ``4`` (overrides :ref:`SkeletonProfile<class_SkeletonProfile_property_group_size>`)            |
   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | root_bone       | ``&"Root"`` (overrides :ref:`SkeletonProfile<class_SkeletonProfile_property_root_bone>`)       |
   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | scale_base_bone | ``&"Hips"`` (overrides :ref:`SkeletonProfile<class_SkeletonProfile_property_scale_base_bone>`) |
   +-------------------------------------+-----------------+------------------------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
