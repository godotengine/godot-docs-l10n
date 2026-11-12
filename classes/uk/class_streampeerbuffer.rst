:github_url: hide

.. _class_StreamPeerBuffer:

StreamPeerBuffer
================

**Успадковує:** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A потік однолітків використовується для обробки бінарних потоків даних.

.. rst-class:: classref-introduction-group

Опис
--------

Перегляд даних, який використовує байтовий масив як потік. Цей об'єкт можна використовувати для обробки бінарних даних з мережевих сеансів. Для обробки даних, що зберігаються в файлах, :ref:`FileAccess<class_FileAccess>` можна використовувати безпосередньо.

Об'єкт **StreamPeerBuffer** зберігає внутрішній курсор, який зміщується в байтах до початку буфера. Отримати і покласти операції на позицію курсора і перемістить курсор відповідно.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`data_array<class_StreamPeerBuffer_property_data_array>` | ``PackedByteArray()`` |
   +-----------------------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методи
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

Описи властивостей
------------------------------------

.. _class_StreamPeerBuffer_property_data_array:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **data_array** = ``PackedByteArray()`` :ref:`🔗<class_StreamPeerBuffer_property_data_array>`

.. rst-class:: classref-property-setget

- |void| **set_data_array**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_data_array**\ (\ )

Основні дані буфера. Налаштування цього значення скидає курсор.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_StreamPeerBuffer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_StreamPeerBuffer_method_clear>`

Очищає :ref:`data_array<class_StreamPeerBuffer_property_data_array>` та скидає курсор.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_duplicate:

.. rst-class:: classref-method

:ref:`StreamPeerBuffer<class_StreamPeerBuffer>` **duplicate**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_duplicate>`

Повертає новий **StreamPeerBuffer** з тим самим :ref:`data_array<class_StreamPeerBuffer_property_data_array>` вмісту.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_get_position:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_position**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_get_position>`

Повертає позицію поточного курсора.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_get_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_size**\ (\ ) |const| :ref:`🔗<class_StreamPeerBuffer_method_get_size>`

Повертає розмір :ref:`data_array<class_StreamPeerBuffer_property_data_array>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_resize:

.. rst-class:: classref-method

|void| **resize**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerBuffer_method_resize>`

Змінює розмір :ref:`data_array<class_StreamPeerBuffer_property_data_array>`. Це *не* оновлює курсор.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerBuffer_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerBuffer_method_seek>`

Переміщує курсор у вказану позицію. ``position`` має бути дійсним індексом :ref:`data_array<class_StreamPeerBuffer_property_data_array>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
