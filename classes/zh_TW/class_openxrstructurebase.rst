:github_url: hide

.. _class_OpenXRStructureBase:

OpenXRStructureBase
===================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`OpenXRSpatialContextPersistenceConfig<class_OpenXRSpatialContextPersistenceConfig>`

用於儲存 OpenXR 結構資料的物件。

.. rst-class:: classref-introduction-group

說明
----

用於儲存呼叫 OpenXR API 時傳遞的 OpenXR 結構資料的物件。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------+------------------------------------------------------+
   | :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` | :ref:`next<class_OpenXRStructureBase_property_next>` |
   +-------------------------------------------------------+------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_header<class_OpenXRStructureBase_private_method__get_header>`\ (\ next\: :ref:`int<class_int>`\ ) |virtual| |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_header<class_OpenXRStructureBase_method_get_header>`\ (\ next\: :ref:`int<class_int>`\ )                     |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_structure_type<class_OpenXRStructureBase_method_get_structure_type>`\ (\ )                                   |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRStructureBase_property_next:

.. rst-class:: classref-property

:ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **next** :ref:`🔗<class_OpenXRStructureBase_property_next>`

.. rst-class:: classref-property-setget

- |void| **set_next**\ (\ value\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ )
- :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **get_next**\ (\ )

在此設定另一個結構物件可以將這些結構連結起來，從而擴充 API 功能。有關哪些結構可以與特定 API 呼叫一起使用，請參閱 OpenXR 文件。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRStructureBase_private_method__get_header:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_header**\ (\ next\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRStructureBase_private_method__get_header>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRStructureBase_method_get_header:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_header**\ (\ next\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRStructureBase_method_get_header>`

Returns the structure pointer (any OpenXR structure that has an ``XrStructureType``) used for this structure. The pointer is valid as long as the instance exists.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRStructureBase_method_get_structure_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_structure_type**\ (\ ) :ref:`🔗<class_OpenXRStructureBase_method_get_structure_type>`

回傳該結構使用的結構型別（OpenXR ``XrStructureType``\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
