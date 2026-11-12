:github_url: hide

.. _class_TCPServer:

TCPServer
=========

**Успадковує:** :ref:`SocketServer<class_SocketServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Сервер TCP.

.. rst-class:: classref-introduction-group

Опис
--------

A TCP server. Listens to connections on a port and returns a :ref:`StreamPeerTCP<class_StreamPeerTCP>` when it gets an incoming connection.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_local_port<class_TCPServer_method_get_local_port>`\ (\ ) |const|                                                         |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`listen<class_TCPServer_method_listen>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeerTCP<class_StreamPeerTCP>` | :ref:`take_connection<class_TCPServer_method_take_connection>`\ (\ )                                                               |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_TCPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_TCPServer_method_get_local_port>`

Повертає локальний порт на цей сервер.

.. rst-class:: classref-item-separator

----

.. _class_TCPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_TCPServer_method_listen>`

Слухати ``port`` зв'язування ``bind_address``.

Якщо ``bind_address`` встановлюється як ``"*"`` (default), сервер буде слухати всі доступні адреси (both IPv4 і IPv6).

Якщо ``bind_address`` встановлюється як ``"0.0.0.0"`` (для IPv4) або ``:"`` (для IPv6), сервер буде слухати всі доступні адреси, що відповідають типу IP.

Якщо ``bind_address`` встановлюється на будь-яку дійсну адресу (наприклад, ``"192.168.1.101"``, ``::1"`` і т.д.), сервер буде слухати тільки інтерфейс з цією адресою (або не вдалося, якщо не існує інтерфейсу з вказаною адресою).

.. rst-class:: classref-item-separator

----

.. _class_TCPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`StreamPeerTCP<class_StreamPeerTCP>` **take_connection**\ (\ ) :ref:`🔗<class_TCPServer_method_take_connection>`

Якщо є підключення, повертає StreamPeerTCP з підключенням.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
