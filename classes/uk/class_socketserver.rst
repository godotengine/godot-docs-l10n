:github_url: hide

.. _class_SocketServer:

SocketServer
============

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`TCPServer<class_TCPServer>`, :ref:`UDSServer<class_UDSServer>`

Абстрактний клас для серверів на основі сокетів.

.. rst-class:: classref-introduction-group

Опис
--------

Сокет-сервер.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_connection_available<class_SocketServer_method_is_connection_available>`\ (\ ) |const| |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_listening<class_SocketServer_method_is_listening>`\ (\ ) |const|                       |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`stop<class_SocketServer_method_stop>`\ (\ )                                               |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeerSocket<class_StreamPeerSocket>` | :ref:`take_socket_connection<class_SocketServer_method_take_socket_connection>`\ (\ )           |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SocketServer_method_is_connection_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connection_available**\ (\ ) |const| :ref:`🔗<class_SocketServer_method_is_connection_available>`

Повертаємо ``true``, якщо підключення доступно для прийому.

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_is_listening:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_listening**\ (\ ) |const| :ref:`🔗<class_SocketServer_method_is_listening>`

Повертає ``true``, якщо сервер в даний час слухає для підключення.

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_SocketServer_method_stop>`

Стопи прослуховування.

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_take_socket_connection:

.. rst-class:: classref-method

:ref:`StreamPeerSocket<class_StreamPeerSocket>` **take_socket_connection**\ (\ ) :ref:`🔗<class_SocketServer_method_take_socket_connection>`

Якщо з'єднання доступне, повертає StreamPeerSocket із цим з'єднанням.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
