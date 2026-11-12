:github_url: hide

.. _class_OggPacketSequence:

OggPacketSequence
=================

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Послідовність яйцепакетів.

.. rst-class:: classref-introduction-group

Опис
--------

Послідовність яйцепакетів.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_length<class_OggPacketSequence_method_get_length>`\ (\ ) |const| |
   +---------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OggPacketSequence_property_granule_positions:

.. rst-class:: classref-property

:ref:`PackedInt64Array<class_PackedInt64Array>` **granule_positions** = ``PackedInt64Array()`` :ref:`🔗<class_OggPacketSequence_property_granule_positions>`

.. rst-class:: classref-property-setget

- |void| **set_packet_granule_positions**\ (\ value\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )
- :ref:`PackedInt64Array<class_PackedInt64Array>` **get_packet_granule_positions**\ (\ )

Містить позиції гранули для кожної сторінки в цій послідовності пакетів.



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

Містить сирі пакети, які роблять це OggPacketSequence.

.. rst-class:: classref-item-separator

----

.. _class_OggPacketSequence_property_sampling_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **sampling_rate** = ``0.0`` :ref:`🔗<class_OggPacketSequence_property_sampling_rate>`

.. rst-class:: classref-property-setget

- |void| **set_sampling_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sampling_rate**\ (\ )

Утримуйте інформацію про швидкість зразка про цю послідовність. Необхідно встановити інший клас, який фактично розуміє кодека.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OggPacketSequence_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_OggPacketSequence_method_get_length>`

Довжина цього потоку, за секундами.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
