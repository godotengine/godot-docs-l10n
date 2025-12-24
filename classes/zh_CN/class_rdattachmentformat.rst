:github_url: hide

.. _class_RDAttachmentFormat:

RDAttachmentFormat
==================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

附件格式（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

这个对象由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`         | :ref:`format<class_RDAttachmentFormat_property_format>`           | ``36`` |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` | :ref:`samples<class_RDAttachmentFormat_property_samples>`         | ``0``  |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`                                      | :ref:`usage_flags<class_RDAttachmentFormat_property_usage_flags>` | ``0``  |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDAttachmentFormat_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``36`` :ref:`🔗<class_RDAttachmentFormat_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

该附件的数据格式。

.. rst-class:: classref-item-separator

----

.. _class_RDAttachmentFormat_property_samples:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **samples** = ``0`` :ref:`🔗<class_RDAttachmentFormat_property_samples>`

.. rst-class:: classref-property-setget

- |void| **set_samples**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_samples**\ (\ )

对附件进行采样时使用的采样数。

.. rst-class:: classref-item-separator

----

.. _class_RDAttachmentFormat_property_usage_flags:

.. rst-class:: classref-property

:ref:`int<class_int>` **usage_flags** = ``0`` :ref:`🔗<class_RDAttachmentFormat_property_usage_flags>`

.. rst-class:: classref-property-setget

- |void| **set_usage_flags**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_usage_flags**\ (\ )

该附件的用途标志，用于确定能够进行的操作。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
