:github_url: hide

.. _class_SkeletonProfileHumanoid:

SkeletonProfileHumanoid
=======================

**Наследует:** :ref:`SkeletonProfile<class_SkeletonProfile>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Предустановка гуманоида :ref:`SkeletonProfile<class_SkeletonProfile>`.

.. rst-class:: classref-introduction-group

Описание
----------------

:ref:`SkeletonProfile<class_SkeletonProfile>` — это предустановка, оптимизированная для человеческой формы. Она существует для стандартизации, поэтому все параметры доступны только для чтения.

Профиль скелета гуманоида содержит 56 костей, разделенных на 4 группы: ``"Body"``, ``"Face"``, ``"LeftHand"`` и ``"RightHand"``. Он имеет следующую структуру:

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

Обучающие материалы
--------------------------------------

- :doc:`Ретаргетинг 3D-скелетов <../tutorials/assets_pipeline/retargeting_3d_skeletons>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
