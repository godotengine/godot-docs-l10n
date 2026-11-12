:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationAruco:

OpenXRSpatialCapabilityConfigurationAruco
=========================================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuration header for ArUco markers.

.. rst-class:: classref-introduction-group

說明
----

Configuration header for ArUco markers. Pass this to :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` to create a spatial context that can detect ArUco markers.

.. rst-class:: classref-reftable-group

屬性
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

列舉
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

屬性說明
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

方法說明
--------

.. _class_OpenXRSpatialCapabilityConfigurationAruco_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAruco_method_get_enabled_components>`

回傳該設定啟用的元件。

\ **注意：**\ 僅在該設定用於建立空間情境後有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
