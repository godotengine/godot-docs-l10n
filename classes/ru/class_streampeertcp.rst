:github_url: hide

.. _class_StreamPeerTCP:

StreamPeerTCP
=============

**Наследует:** :ref:`StreamPeerSocket<class_StreamPeerSocket>` **<** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Потоковый узел, обрабатывающий TCP-соединения.

.. rst-class:: classref-introduction-group

Описание
----------------

A stream peer that handles TCP connections. This object can be used to connect to TCP servers, or also is returned by a TCP server.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_StreamPeerTCP_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ port\: :ref:`int<class_int>`, host\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_StreamPeerTCP_method_bind>`

Открывает сокет TCP и привязывает его к указанному локальному адресу. 

Этот метод обычно не нужен и используется только для принудительного использования последующего вызова :ref:`connect_to_host()<class_StreamPeerTCP_method_connect_to_host>` указанного ``host`` и ``port`` в качестве исходного адреса. Это может быть желательно в некоторых методах сквозного NAT или при принудительном использовании исходного сетевого интерфейса.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerTCP_method_connect_to_host>`

Подключается к указанной паре ``host:port``. Имя хоста будет разрешено, если оно допустимо. Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_connected_host:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_host**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_connected_host>`

Возвращает IP-адрес этого однорангового узла.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_connected_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connected_port**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_connected_port>`

Возвращает порт данного однорангового узла.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_local_port>`

Возвращает локальный порт, к которому привязан данный одноранговый узел.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_set_no_delay:

.. rst-class:: classref-method

|void| **set_no_delay**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_StreamPeerTCP_method_set_no_delay>`

Если ``enabled`` равно ``true``, пакеты будут отправляться немедленно. Если ``enabled`` равно ``false`` (по умолчанию), передача пакетов будет отложена и объединена с использованием `алгоритма Нагля <https://en.wikipedia.org/wiki/Nagle%27s_algorithm>`__.

\ **Примечание:** Рекомендуется оставить этот параметр отключенным для приложений, которые отправляют большие пакеты или которым необходимо передавать много данных, так как его включение может уменьшить общую доступную пропускную способность.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
