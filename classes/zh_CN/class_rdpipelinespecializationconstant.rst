:github_url: hide

.. _class_RDPipelineSpecializationConstant:

RDPipelineSpecializationConstant
================================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

管线特化常量（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

*特化常量*\ 可以创建同一着色器的额外版本，但不会导致实际编译的着色器版本数增加。这样就能减少着色器的版本数、减少 ``if`` 分支，从而提升性能，但与此同时保持着色器能够在不同场合灵活运用。

这个对象由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`         | :ref:`constant_id<class_RDPipelineSpecializationConstant_property_constant_id>` | ``0`` |
   +-------------------------------+---------------------------------------------------------------------------------+-------+
   | :ref:`Variant<class_Variant>` | :ref:`value<class_RDPipelineSpecializationConstant_property_value>`             |       |
   +-------------------------------+---------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDPipelineSpecializationConstant_property_constant_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **constant_id** = ``0`` :ref:`🔗<class_RDPipelineSpecializationConstant_property_constant_id>`

.. rst-class:: classref-property-setget

- |void| **set_constant_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_constant_id**\ (\ )

特化常量的标识符。这个值从 ``0`` 开始，给定着色器中每一个不同的特化常量都会将其递增。

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineSpecializationConstant_property_value:

.. rst-class:: classref-property

:ref:`Variant<class_Variant>` **value** :ref:`🔗<class_RDPipelineSpecializationConstant_property_value>`

.. rst-class:: classref-property-setget

- |void| **set_value**\ (\ value\: :ref:`Variant<class_Variant>`\ )
- :ref:`Variant<class_Variant>` **get_value**\ (\ )

特化常量的值。只有 :ref:`bool<class_bool>`\ 、\ :ref:`int<class_int>`\ 、\ :ref:`float<class_float>` 类型是有效的特化常量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
