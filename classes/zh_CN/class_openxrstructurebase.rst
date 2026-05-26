:github_url: hide

.. _class_OpenXRStructureBase:

OpenXRStructureBase
===================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`OpenXRSpatialContextPersistenceConfig<class_OpenXRSpatialContextPersistenceConfig>`

用于存储 OpenXR 结构数据的对象。

.. rst-class:: classref-introduction-group

描述
----

用于存储调用 OpenXR API 时传递的 OpenXR 结构数据的对象。

.. rst-class:: classref-reftable-group

属性
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
   | :ref:`int<class_int>` | :ref:`get_structure_type<class_OpenXRStructureBase_method_get_structure_type>`\ (\ )                                   |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRStructureBase_property_next:

.. rst-class:: classref-property

:ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **next** :ref:`🔗<class_OpenXRStructureBase_property_next>`

.. rst-class:: classref-property-setget

- |void| **set_next**\ (\ value\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ )
- :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **get_next**\ (\ )

在此设置另一个结构对象可以将这些结构链接起来，从而扩展 API 功能。有关哪些结构可以与特定 API 调用一起使用，请参阅 OpenXR 文档。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRStructureBase_private_method__get_header:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_header**\ (\ next\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRStructureBase_private_method__get_header>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRStructureBase_method_get_structure_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_structure_type**\ (\ ) :ref:`🔗<class_OpenXRStructureBase_method_get_structure_type>`

返回该结构使用的结构类型（OpenXR ``XrStructureType``\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
