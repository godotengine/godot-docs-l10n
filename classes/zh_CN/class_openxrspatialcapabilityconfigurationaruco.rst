:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationAruco:

OpenXRSpatialCapabilityConfigurationAruco
=========================================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuration header for ArUco markers.

.. rst-class:: classref-introduction-group

描述
----

Configuration header for ArUco markers. Pass this to :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` to create a spatial context that can detect ArUco markers.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+--------+
   | :ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` | :ref:`aruco_dict<class_OpenXRSpatialCapabilityConfigurationAruco_property_aruco_dict>` | ``16`` |
   +----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`get_enabled_components<class_OpenXRSpatialCapabilityConfigurationAruco_method_get_enabled_components>`\ (\ ) |const| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict:

.. rst-class:: classref-enumeration

enum **ArucoDict**: :ref:`🔗<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>`

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_4X4_50:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_4X4_50** = ``1``

4 by 4 pixel ArUco marker dictionary with 50 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_4X4_100:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_4X4_100** = ``2``

4 by 4 pixel ArUco marker dictionary with 100 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_4X4_250:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_4X4_250** = ``3``

4 by 4 pixel ArUco marker dictionary with 250 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_4X4_1000:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_4X4_1000** = ``4``

4 by 4 pixel ArUco marker dictionary with 1000 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_5X5_50:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_5X5_50** = ``5``

5 by 5 pixel ArUco marker dictionary with 50 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_5X5_100:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_5X5_100** = ``6``

5 by 5 pixel ArUco marker dictionary with 100 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_5X5_250:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_5X5_250** = ``7``

5 by 5 pixel ArUco marker dictionary with 250 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_5X5_1000:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_5X5_1000** = ``8``

5 by 5 pixel ArUco marker dictionary with 1000 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_6X6_50:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_6X6_50** = ``9``

6 by 6 pixel ArUco marker dictionary with 50 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_6X6_100:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_6X6_100** = ``10``

6 by 6 pixel ArUco marker dictionary with 100 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_6X6_250:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_6X6_250** = ``11``

6 by 6 pixel ArUco marker dictionary with 250 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_6X6_1000:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_6X6_1000** = ``12``

6 by 6 pixel ArUco marker dictionary with 1000 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_7X7_50:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_7X7_50** = ``13``

7 by 7 pixel ArUco marker dictionary with 50 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_7X7_100:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_7X7_100** = ``14``

7 by 7 pixel ArUco marker dictionary with 100 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_7X7_250:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_7X7_250** = ``15``

7 by 7 pixel ArUco marker dictionary with 250 IDs.

.. _class_OpenXRSpatialCapabilityConfigurationAruco_constant_ARUCO_DICT_7X7_1000:

.. rst-class:: classref-enumeration-constant

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **ARUCO_DICT_7X7_1000** = ``16``

7 by 7 pixel ArUco marker dictionary with 1000 IDs.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRSpatialCapabilityConfigurationAruco_property_aruco_dict:

.. rst-class:: classref-property

:ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **aruco_dict** = ``16`` :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAruco_property_aruco_dict>`

.. rst-class:: classref-property-setget

- |void| **set_aruco_dict**\ (\ value\: :ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>`\ )
- :ref:`ArucoDict<enum_OpenXRSpatialCapabilityConfigurationAruco_ArucoDict>` **get_aruco_dict**\ (\ )

Dictionary to use to decode ArUco markers.

\ **Note:** Must be set before using this configuration to create a spatial context.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRSpatialCapabilityConfigurationAruco_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAruco_method_get_enabled_components>`

返回该配置启用的组件。

\ **注意：**\ 仅在该配置用于创建空间上下文后有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
