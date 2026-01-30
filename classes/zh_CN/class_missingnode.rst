:github_url: hide

.. _class_MissingNode:

MissingNode
===========

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

编辑器内部类，用于保存未知节点的数据。

.. rst-class:: classref-introduction-group

描述
----

这是一种编辑器内部类，用于保存未知类型节点的数据（该类型很有可能是由不再加载的扩展提供的），无法手动实例化，也无法在场景中放置。

\ **警告：**\ 不清楚有什么用就请忽略缺失节点。缺失节点上的已有属性可以在代码中自由修改，无论它们的类型如何。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`original_class<class_MissingNode_property_original_class>`             |
   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`original_scene<class_MissingNode_property_original_scene>`             |
   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`recording_properties<class_MissingNode_property_recording_properties>` |
   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`recording_signals<class_MissingNode_property_recording_signals>`       |
   +-----------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MissingNode_property_original_class:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_class** :ref:`🔗<class_MissingNode_property_original_class>`

.. rst-class:: classref-property-setget

- |void| **set_original_class**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_class**\ (\ )

该节点本来的类名（见 :ref:`Object.get_class()<class_Object_method_get_class>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MissingNode_property_original_scene:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_scene** :ref:`🔗<class_MissingNode_property_original_scene>`

.. rst-class:: classref-property-setget

- |void| **set_original_scene**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_scene**\ (\ )

返回该节点最初是其实例的场景的路径。

.. rst-class:: classref-item-separator

----

.. _class_MissingNode_property_recording_properties:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recording_properties** :ref:`🔗<class_MissingNode_property_recording_properties>`

.. rst-class:: classref-property-setget

- |void| **set_recording_properties**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recording_properties**\ (\ )

如果为 ``true``\ ，则允许将新属性与已有属性一起设置。如果为 ``false``\ ，则只能设置已有属性的值，并且无法添加新属性。

.. rst-class:: classref-item-separator

----

.. _class_MissingNode_property_recording_signals:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recording_signals** :ref:`🔗<class_MissingNode_property_recording_signals>`

.. rst-class:: classref-property-setget

- |void| **set_recording_signals**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recording_signals**\ (\ )

If ``true``, allows new signals to be connected to along with existing ones. If ``false``, only existing signals can be connected to, and new signals cannot be added.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
