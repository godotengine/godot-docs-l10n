:github_url: hide

.. _class_EncodedObjectAsID:

EncodedObjectAsID
=================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

保存对 :ref:`Object<class_Object>` 实例 ID 的引用。

.. rst-class:: classref-introduction-group

描述
----

实用程序类，其中包含对 :ref:`Object<class_Object>` 实例的内部标识符的引用，由 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>` 给出。然后可以使用该 ID 通过 :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>` 检索对象实例。

该类由编辑器检查器和脚本调试器在内部使用，但也可用于插件中，以使用其 ID 传递和显示对象。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`object_id<class_EncodedObjectAsID_property_object_id>` | ``0`` |
   +-----------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_EncodedObjectAsID_property_object_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **object_id** = ``0`` :ref:`🔗<class_EncodedObjectAsID_property_object_id>`

.. rst-class:: classref-property-setget

- |void| **set_object_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_object_id**\ (\ )

存储在该 **EncodedObjectAsID** 实例中的 :ref:`Object<class_Object>` 标识符。可以使用 :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>` 检索对象实例。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
