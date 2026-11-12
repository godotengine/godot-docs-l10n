:github_url: hide

.. _class_TCPServer:

TCPServer
=========

**Наследует:** :ref:`SocketServer<class_SocketServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

TCP-сервер.

.. rst-class:: classref-introduction-group

Описание
----------------

A TCP server. Listens to connections on a port and returns a :ref:`StreamPeerTCP<class_StreamPeerTCP>` when it gets an incoming connection.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_TCPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_TCPServer_method_get_local_port>`

Возвращает локальный порт, который прослушивает этот сервер.

.. rst-class:: classref-item-separator

----

.. _class_TCPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_TCPServer_method_listen>`

Прослушивание на ``port``, привязанному к ``bind_address``.

Если ``bind_address`` установлен как ``"*"`` (по умолчанию), сервер будет прослушивать все доступные адреса (как IPv4, так и IPv6).

Если ``bind_address`` установлен как ``"0.0.0.0"`` (для IPv4) или ``"::"`` (для IPv6), сервер будет прослушивать все доступные адреса, соответствующие этому типу IP.

Если ``bind_address`` установлен на любой допустимый адрес (например, ``"192.168.1.101"``, ``"::1"`` и т. д.), сервер будет прослушивать только интерфейс с этим адресом (или выдаст ошибку, если интерфейса с указанным адресом не существует).

.. rst-class:: classref-item-separator

----

.. _class_TCPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`StreamPeerTCP<class_StreamPeerTCP>` **take_connection**\ (\ ) :ref:`🔗<class_TCPServer_method_take_connection>`

Если соединение доступно, возвращает StreamPeerTCP с соединением.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
