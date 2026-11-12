:github_url: hide

.. _class_StreamPeerTLS:

StreamPeerTLS
=============

**Успадковує:** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Потоковий одноліток, який ручить підключенням TLS.

.. rst-class:: classref-introduction-group

Опис
--------

A stream peer that handles TLS connections. This object can be used to connect to a TLS server or accept a single TLS client connection.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`сертифікати TLS <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`accept_stream<class_StreamPeerTLS_method_accept_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, server_options\: :ref:`TLSOptions<class_TLSOptions>`\ )                                                           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`connect_to_stream<class_StreamPeerTLS_method_connect_to_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, common_name\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`disconnect_from_stream<class_StreamPeerTLS_method_disconnect_from_stream>`\ (\ )                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerTLS_Status>` | :ref:`get_status<class_StreamPeerTLS_method_get_status>`\ (\ ) |const|                                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeer<class_StreamPeer>`      | :ref:`get_stream<class_StreamPeerTLS_method_get_stream>`\ (\ ) |const|                                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`poll<class_StreamPeerTLS_method_poll>`\ (\ )                                                                                                                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_StreamPeerTLS_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerTLS_Status>`

.. _class_StreamPeerTLS_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_DISCONNECTED** = ``0``

Відключено статус **StreamPeerTLS**.

.. _class_StreamPeerTLS_constant_STATUS_HANDSHAKING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_HANDSHAKING** = ``1``

Статус, що представляє **StreamPeerTLS** під час походів.

.. _class_StreamPeerTLS_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_CONNECTED** = ``2``

Статус, що представляє **StreamPeerTLS**, який підключений до хосту.

.. _class_StreamPeerTLS_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_ERROR** = ``3``

Статус, який представляє **StreamPeerTLS** у стані помилки.

.. _class_StreamPeerTLS_constant_STATUS_ERROR_HOSTNAME_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_ERROR_HOSTNAME_MISMATCH** = ``4``

Статус помилки, який показує невідповідність домену сертифікату TLS, представлений хостом та доменом, який вимагає перевірки.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_StreamPeerTLS_method_accept_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **accept_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_StreamPeerTLS_method_accept_stream>`

Приймає підключення однолітків як сервера за допомогою даного ``server_options``. Див. :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_connect_to_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, common_name\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_StreamPeerTLS_method_connect_to_stream>`

Підключається до однолітків, використовуючи базову :ref:`StreamPeer<class_StreamPeer>` ``stream`` і перевірте віддалений сертифікат правильно підписаний на дану ``total_name``. Ви можете пройти додаткові параметри параметра ``Client_options`` для налаштування перевірених органів з сертифікації або відключення загальної перевірки назв. :ref:`TLSOptions.client()<class_TLSOptions_method_client>` і :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_disconnect_from_stream:

.. rst-class:: classref-method

|void| **disconnect_from_stream**\ (\ ) :ref:`🔗<class_StreamPeerTLS_method_disconnect_from_stream>`

Відключення від господаря.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerTLS_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerTLS_method_get_status>`

Повертає стан з'єднання.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_get_stream:

.. rst-class:: classref-method

:ref:`StreamPeer<class_StreamPeer>` **get_stream**\ (\ ) |const| :ref:`🔗<class_StreamPeerTLS_method_get_stream>`

Повертає базове з'єднання :ref:`StreamPeer<class_StreamPeer>`, що використовується в методі :ref:`accept_stream()<class_StreamPeerTLS_method_accept_stream>` або :ref:`connect_to_stream()<class_StreamPeerTLS_method_connect_to_stream>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_StreamPeerTLS_method_poll>`

Поповніть підключення для перевірки вхідних байтів. Викликайте це прямо перед :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` для його роботи належним чином.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
