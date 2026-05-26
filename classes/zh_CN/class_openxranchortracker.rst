:github_url: hide

.. _class_OpenXRAnchorTracker:

OpenXRAnchorTracker
===================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRSpatialEntityTracker<class_OpenXRSpatialEntityTracker>` **<** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于我们的空间实体锚点扩展的位置跟踪器。

.. rst-class:: classref-introduction-group

描述
----

我们的 OpenXR 空间实体锚点扩展的位置跟踪器，它可以跟踪用户在现实空间中定义的位置，并将其映射到我们的虚拟空间。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`uuid<class_OpenXRAnchorTracker_property_uuid>` | ``""`` |
   +-----------------------------+------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_uuid<class_OpenXRAnchorTracker_method_has_uuid>`\ (\ ) |const| |
   +-------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_OpenXRAnchorTracker_signal_uuid_changed:

.. rst-class:: classref-signal

**uuid_changed**\ (\ ) :ref:`🔗<class_OpenXRAnchorTracker_signal_uuid_changed>`

当该锚点的 UUID 发生更改时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRAnchorTracker_property_uuid:

.. rst-class:: classref-property

:ref:`String<class_String>` **uuid** = ``""`` :ref:`🔗<class_OpenXRAnchorTracker_property_uuid>`

.. rst-class:: classref-property-setget

- |void| **set_uuid**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_uuid**\ (\ )

为持久锚点提供的 UUID。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRAnchorTracker_method_has_uuid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_uuid**\ (\ ) |const| :ref:`🔗<class_OpenXRAnchorTracker_method_has_uuid>`

如果设置了非零的 UUID，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
