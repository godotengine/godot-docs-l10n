:github_url: hide

.. _class_StreamPeerTCP:

StreamPeerTCP
=============

**Успадковує:** :ref:`StreamPeerSocket<class_StreamPeerSocket>` **<** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Потоковий одноліток, який ручить з'єднанням TCP.

.. rst-class:: classref-introduction-group

Опис
--------

A stream peer that handles TCP connections. This object can be used to connect to TCP servers, or also is returned by a TCP server.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`bind<class_StreamPeerTCP_method_bind>`\ (\ port\: :ref:`int<class_int>`, host\: :ref:`String<class_String>` = "*"\ )                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`connect_to_host<class_StreamPeerTCP_method_connect_to_host>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_connected_host<class_StreamPeerTCP_method_get_connected_host>`\ (\ ) |const|                                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_connected_port<class_StreamPeerTCP_method_get_connected_port>`\ (\ ) |const|                                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_local_port<class_StreamPeerTCP_method_get_local_port>`\ (\ ) |const|                                                             |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_no_delay<class_StreamPeerTCP_method_set_no_delay>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                      |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_StreamPeerTCP_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ port\: :ref:`int<class_int>`, host\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_StreamPeerTCP_method_bind>`

Відкриваємо розетку TCP, і зв'язує його на вказану локальну адресу.

Цей метод, як правило, не потрібно, і тільки використовується для примусового подальшого виклику до :ref:`connect_to_host()<class_StreamPeerTCP_method_connect_to_host>` для використання зазначеного ``host`` і ``port`` як адреса джерела. Це може знадобитися в деяких методах NAT, або при налаштуванні інтерфейсу мережі.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerTCP_method_connect_to_host>`

Підключення до вказаного ``host:port`` пара. Ім'я буде вирішена при дійсності. Повертаємо вашу увагу на успіх.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_connected_host:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_host**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_connected_host>`

Повертає IP цього однолітків.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_connected_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connected_port**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_connected_port>`

Повертає порт цього однолітків.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_local_port>`

Повертає локальний порт, до якого зв'язується цей одноліток.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_set_no_delay:

.. rst-class:: classref-method

|void| **set_no_delay**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_StreamPeerTCP_method_set_no_delay>`

``true``, пакети будуть відправлені відразу. Якщо ``enabled`` є ``false`` (за замовчуванням), поштові перекази будуть затримані та поєднані за допомогою ` алгоритм Nagle <https://en.wikipedia.org/wiki/Nagle%27s_algorithm>`__.

\ **Note:** Рекомендується залишити це вимкнено для додатків, які надсилають великі пакети або повинні перенести багато даних, оскільки це дозволяє зменшити загальну пропускну здатність.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
