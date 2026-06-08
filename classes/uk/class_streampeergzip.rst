:github_url: hide

.. _class_StreamPeerGZIP:

StreamPeerGZIP
==============

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Потоковий одноліток, який ручить стиснення GZIP і дефлат.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас дозволяє стискати або розпаковувати дані за допомогою GZIP/deflate у потоковому режимі. Це особливо корисно під час стиснення або розпаковування файлів, які потрібно надсилати через мережу без необхідності розподіляти їх усі в пам'яті.

Після запуску потоку через :ref:`start_compression()<class_StreamPeerGZIP_method_start_compression>` (або :ref:`start_decompression()<class_StreamPeerGZIP_method_start_decompression>`), виклик :ref:`StreamPeer.put_partial_data()<class_StreamPeer_method_put_partial_data>` для цього потоку стисне (або розпаковує) дані, записуючи їх у внутрішній буфер. Виклик :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` поверне байти, що очікують обробки, у внутрішньому буфері, а :ref:`StreamPeer.get_partial_data()<class_StreamPeer_method_get_partial_data>` отримає стиснуті (або розпаковані) байти з нього. Коли потік завершиться, необхідно викликати :ref:`finish()<class_StreamPeerGZIP_method_finish>`, щоб переконатися, що внутрішній буфер належним чином очищено (обов'язково викликайте :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` востаннє, щоб перевірити, чи потрібно після цього зчитати ще дані).

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear<class_StreamPeerGZIP_method_clear>`\ (\ )                                                                                                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`finish<class_StreamPeerGZIP_method_finish>`\ (\ )                                                                                                                       |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_compression<class_StreamPeerGZIP_method_start_compression>`\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ )     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_decompression<class_StreamPeerGZIP_method_start_decompression>`\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_StreamPeerGZIP_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_StreamPeerGZIP_method_clear>`

Очищає цей потік, скидаючи внутрішній стан.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_finish:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **finish**\ (\ ) :ref:`🔗<class_StreamPeerGZIP_method_finish>`

Фіналізує потік, стискаючи будь-які буферизовані фрагменти, що залишилися.

Викликати його потрібно лише під час стиснення.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_start_compression:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_compression**\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) :ref:`🔗<class_StreamPeerGZIP_method_start_compression>`

Почати потік в режим стиснення з вказаною ``buffer_size``, якщо ``use_deflate`` є ``true`` використовує дефлат замість GZIP.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerGZIP_method_start_decompression:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_decompression**\ (\ use_deflate\: :ref:`bool<class_bool>` = false, buffer_size\: :ref:`int<class_int>` = 65535\ ) :ref:`🔗<class_StreamPeerGZIP_method_start_decompression>`

Почати потік в режимі декомпресії з вказаною ``buffer_size``, якщо ``use_deflate`` ``true`` використовує дефлат замість GZIP.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
