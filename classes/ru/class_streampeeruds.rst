:github_url: hide

.. _class_StreamPeerUDS:

StreamPeerUDS
=============

**Наследует:** :ref:`StreamPeerSocket<class_StreamPeerSocket>` **<** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Узел потока, обрабатывающий соединения UNIX Domain Socket (UDS).

.. rst-class:: classref-introduction-group

Описание
----------------

Объект потока, обрабатывающий соединения UNIX Domain Socket (UDS). Этот объект может использоваться для подключения к серверам UDS или возвращаться к сервером UDS. Сокеты домена Unix обеспечивают межпроцессное взаимодействие на одной машине с использованием пространства имен файловой системы.

\ **Примечание:** Сокеты домена UNIX доступны только в UNIX-подобных системах (Linux, macOS и т. д.) и не поддерживаются в Windows.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`bind<class_StreamPeerUDS_method_bind>`\ (\ path\: :ref:`String<class_String>`\ )                       |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`connect_to_host<class_StreamPeerUDS_method_connect_to_host>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_connected_path<class_StreamPeerUDS_method_get_connected_path>`\ (\ ) |const|                       |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_StreamPeerUDS_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeerUDS_method_bind>`

Открывает UDS-сокет и привязывает его к указанному пути к сокету.

Этот метод, как правило, не требуется и используется только для того, чтобы заставить последующий вызов :ref:`connect_to_host()<class_StreamPeerUDS_method_connect_to_host>` использовать указанный ``path`` в качестве исходного адреса.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerUDS_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeerUDS_method_connect_to_host>`

Устанавливает соединение с указанным путем к сокету домена UNIX. Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerUDS_method_get_connected_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_path**\ (\ ) |const| :ref:`🔗<class_StreamPeerUDS_method_get_connected_path>`

Возвращает путь к сокету этого узла.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
