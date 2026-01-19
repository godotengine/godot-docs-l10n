:github_url: hide

.. _class_UDSServer:

UDSServer
=========

**Наследует:** :ref:`SocketServer<class_SocketServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Сервер Unix Domain Socket (UDS).

.. rst-class:: classref-introduction-group

Описание
----------------

Сервер Unix Domain Socket (UDS). Прослушивает соединения по пути сокета и возвращает :ref:`StreamPeerUDS<class_StreamPeerUDS>` при получении входящего соединения. Unix Domain Sockets обеспечивают межпроцессное взаимодействие на одной машине с использованием пространства имен файловой системы.

\ **Примечание:** Unix Domain Sockets доступны только в Unix-подобных системах (Linux, macOS и т. д.) и не поддерживаются в Windows.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`listen<class_UDSServer_method_listen>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`StreamPeerUDS<class_StreamPeerUDS>` | :ref:`take_connection<class_UDSServer_method_take_connection>`\ (\ )                   |
   +-------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_UDSServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_UDSServer_method_listen>`

Прослушивает сокет по адресу ``path``. Файл сокета будет создан по указанному пути.

\ **Примечание:** Файл сокета не должен существовать по указанному пути. Возможно, вам потребуется удалить существующий файл сокета перед вызовом этого метода.

.. rst-class:: classref-item-separator

----

.. _class_UDSServer_method_take_connection:

.. rst-class:: classref-method

:ref:`StreamPeerUDS<class_StreamPeerUDS>` **take_connection**\ (\ ) :ref:`🔗<class_UDSServer_method_take_connection>`

Если соединение доступно, возвращает объект StreamPeerUDS, содержащий информацию о соединении.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
