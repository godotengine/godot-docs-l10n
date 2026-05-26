:github_url: hide

.. _class_RDUniform:

RDUniform
=========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

着色器 Uniform（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

这个对象由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                                | :ref:`binding<class_RDUniform_property_binding>`           | ``0`` |
   +------------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`UniformType<enum_RenderingDevice_UniformType>` | :ref:`uniform_type<class_RDUniform_property_uniform_type>` | ``3`` |
   +------------------------------------------------------+------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | |void|                                             | :ref:`add_id<class_RDUniform_method_add_id>`\ (\ id\: :ref:`RID<class_RID>`\ ) |
   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | |void|                                             | :ref:`clear_ids<class_RDUniform_method_clear_ids>`\ (\ )                       |
   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`get_ids<class_RDUniform_method_get_ids>`\ (\ ) |const|                   |
   +----------------------------------------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDUniform_property_binding:

.. rst-class:: classref-property

:ref:`int<class_int>` **binding** = ``0`` :ref:`🔗<class_RDUniform_property_binding>`

.. rst-class:: classref-property-setget

- |void| **set_binding**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_binding**\ (\ )

Uniform 的绑定。

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_property_uniform_type:

.. rst-class:: classref-property

:ref:`UniformType<enum_RenderingDevice_UniformType>` **uniform_type** = ``3`` :ref:`🔗<class_RDUniform_property_uniform_type>`

.. rst-class:: classref-property-setget

- |void| **set_uniform_type**\ (\ value\: :ref:`UniformType<enum_RenderingDevice_UniformType>`\ )
- :ref:`UniformType<enum_RenderingDevice_UniformType>` **get_uniform_type**\ (\ )

Uniform 的数据类型。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RDUniform_method_add_id:

.. rst-class:: classref-method

|void| **add_id**\ (\ id\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RDUniform_method_add_id>`

将给定的 id 绑定到该 uniform（统一变量）上。随后，当该 uniform 被传递给着色器时，就会使用与该 id 相关联的数据。

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_method_clear_ids:

.. rst-class:: classref-method

|void| **clear_ids**\ (\ ) :ref:`🔗<class_RDUniform_method_clear_ids>`

解除当前绑定到该 uniform（统一变量）上的所有 id。

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_method_get_ids:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_ids**\ (\ ) |const| :ref:`🔗<class_RDUniform_method_get_ids>`

返回当前绑定到该 uniform 的所有 id 的数组。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
