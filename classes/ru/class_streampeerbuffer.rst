:github_url: hide

.. _class_StreamPeerBuffer:

StreamPeerBuffer
================

**Наследует:** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Потоковый узел, используемый для обработки двоичных потоков данных.

.. rst-class:: classref-introduction-group

Описание
----------------

Одноранговый узел потока буфера данных, который использует массив байтов в качестве потока. Этот объект может использоваться для обработки двоичных данных из сетевых сеансов. Для обработки двоичных данных, хранящихся в файлах, можно использовать :ref:`FileAccess<class_FileAccess>` напрямую.

Объект **StreamPeerBuffer** хранит внутренний курсор, который является смещением в байтах относительно начала буфера. Операции Get и Put выполняются в позиции курсора и перемещают курсор соответствующим образом.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`data_array<class_StreamPeerBuffer_property_data_array>` | ``PackedByteArray()`` |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_StreamPeerBuffer_method_clear>`\ (\ )                                 |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`StreamPeerBuffer<class_StreamPeerBuffer>` | :ref:`duplicate<class_StreamPeerBuffer_method_duplicate>`\ (\ ) |const|                 |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_position<class_StreamPeerBuffer_method_get_position>`\ (\ ) |const|           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_size<class_StreamPeerBuffer_method_get_size>`\ (\ ) |const|                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`resize<class_StreamPeerBuffer_method_resize>`\ (\ size\: :ref:`int<class_int>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`seek<class_StreamPeerBuffer_method_seek>`\ (\ position\: :ref:`int<class_int>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_StreamPeerBuffer_property_data_array:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **data_array** = ``PackedByteArray()`` :ref:`🔗<class_StreamPeerBuffer_property_data_array>`

.. rst-class:: classref-property-setget

- |void| **set_data_array**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_data_array**\ (\ )

Базовый буфер данных. Установка этого значения сбрасывает курсор.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_StreamPeerBuffer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_StreamPeerBuffer_method_clear>`

Очищает :ref:`data_array<class_StreamPeerBuffer_property_data_array>` и сбрасывает курсор.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_duplicate:

.. rst-class:: classref-method

:ref:`StreamPeerBuffer<class_StreamPeerBuffer>` **duplicate**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_duplicate>`

Возвращает новый **StreamPeerBuffer** с тем же содержимым :ref:`data_array<class_StreamPeerBuffer_property_data_array>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_get_position:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_position**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_get_position>`

Возвращает текущую позицию курсора.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_get_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_size**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_get_size>`

Возвращает размер :ref:`data_array<class_StreamPeerBuffer_property_data_array>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_resize:

.. rst-class:: classref-method

|void| **resize**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerBuffer_method_resize>`

Изменяет размер :ref:`data_array<class_StreamPeerBuffer_property_data_array>`. Это *не* обновляет курсор.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerBuffer_method_seek>`

Перемещает курсор в указанную позицию. ``position`` должен быть допустимым индексом :ref:`data_array<class_StreamPeerBuffer_property_data_array>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
