:github_url: hide

.. _class_OggPacketSequence:

OggPacketSequence
=================

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Последовательность пакетов Ogg.

.. rst-class:: classref-introduction-group

Описание
----------------

Последовательность пакетов Ogg.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_length<class_OggPacketSequence_method_get_length>`\ (\ ) |const| |
   +---------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OggPacketSequence_property_granule_positions:

.. rst-class:: classref-property

:ref:`PackedInt64Array<class_PackedInt64Array>` **granule_positions** = ``PackedInt64Array()`` :ref:`🔗<class_OggPacketSequence_property_granule_positions>`

.. rst-class:: classref-property-setget

- |void| **set_packet_granule_positions**\ (\ value\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )
- :ref:`PackedInt64Array<class_PackedInt64Array>` **get_packet_granule_positions**\ (\ )

Содержит позиции гранул для каждой страницы в этой последовательности пакетов.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt64Array<class_PackedInt64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_OggPacketSequence_property_packet_data:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **packet_data** = ``[]`` :ref:`🔗<class_OggPacketSequence_property_packet_data>`

.. rst-class:: classref-property-setget

- |void| **set_packet_data**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **get_packet_data**\ (\ )

Содержит необработанные пакеты, составляющие этот OggPacketSequence.

.. rst-class:: classref-item-separator

----

.. _class_OggPacketSequence_property_sampling_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **sampling_rate** = ``0.0`` :ref:`🔗<class_OggPacketSequence_property_sampling_rate>`

.. rst-class:: classref-property-setget

- |void| **set_sampling_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sampling_rate**\ (\ )

Содержит информацию о частоте дискретизации этой последовательности. Должен быть установлен другим классом, который фактически понимает кодек.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OggPacketSequence_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_OggPacketSequence_method_get_length>`

Продолжительность этого потока в секундах.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
