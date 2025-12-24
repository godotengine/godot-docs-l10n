:github_url: hide

.. _class_OggPacketSequence:

OggPacketSequence
=================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Ogg 数据包序列。

.. rst-class:: classref-introduction-group

描述
----

Ogg 数据包序列。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`        | :ref:`granule_positions<class_OggPacketSequence_property_granule_positions>` | ``PackedInt64Array()`` |
   +--------------------------------------------------------+------------------------------------------------------------------------------+------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] | :ref:`packet_data<class_OggPacketSequence_property_packet_data>`             | ``[]``                 |
   +--------------------------------------------------------+------------------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`                              | :ref:`sampling_rate<class_OggPacketSequence_property_sampling_rate>`         | ``0.0``                |
   +--------------------------------------------------------+------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_length<class_OggPacketSequence_method_get_length>`\ (\ ) |const| |
   +---------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OggPacketSequence_property_granule_positions:

.. rst-class:: classref-property

:ref:`PackedInt64Array<class_PackedInt64Array>` **granule_positions** = ``PackedInt64Array()`` :ref:`🔗<class_OggPacketSequence_property_granule_positions>`

.. rst-class:: classref-property-setget

- |void| **set_packet_granule_positions**\ (\ value\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )
- :ref:`PackedInt64Array<class_PackedInt64Array>` **get_packet_granule_positions**\ (\ )

包含该数据包序列中每个页面的粒度位置。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt64Array<class_PackedInt64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_OggPacketSequence_property_packet_data:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **packet_data** = ``[]`` :ref:`🔗<class_OggPacketSequence_property_packet_data>`

.. rst-class:: classref-property-setget

- |void| **set_packet_data**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **get_packet_data**\ (\ )

包含构成此 OggPacketSequence 的原始数据包。

.. rst-class:: classref-item-separator

----

.. _class_OggPacketSequence_property_sampling_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **sampling_rate** = ``0.0`` :ref:`🔗<class_OggPacketSequence_property_sampling_rate>`

.. rst-class:: classref-property-setget

- |void| **set_sampling_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sampling_rate**\ (\ )

保存有关该序列的采样率信息。必须由另一个真正理解编解码器的类设置。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OggPacketSequence_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_OggPacketSequence_method_get_length>`

该流的长度，以秒为单位。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
