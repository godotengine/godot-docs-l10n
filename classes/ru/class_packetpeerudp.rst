:github_url: hide

.. _class_PacketPeerUDP:

PacketPeerUDP
=============

**Наследует:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Одноранговый UDP-пакет.

.. rst-class:: classref-introduction-group

Описание
----------------

UDP packet peer. Can be used to send and receive raw UDP packets as well as :ref:`Variant<class_Variant>`\ s.

\ **Example:** Send a packet:

::

    var peer = PacketPeerUDP.new()

    # Optionally, you can select the local port used to send the packet.
    peer.bind(4444)

    peer.set_dest_address("1.1.1.1", 4433)
    peer.put_packet("hello".to_utf8_buffer())

\ **Example:** Listen for packets:

::

    var peer

    func _ready():
        peer = PacketPeerUDP.new()
        peer.bind(4433)


    func _process(_delta):
        if peer.get_available_packet_count() > 0:
            var array_bytes = peer.get_packet()
            var packet_string = array_bytes.get_string_from_ascii()
            print("Received message: ", packet_string)

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`bind<class_PacketPeerUDP_method_bind>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", recv_buf_size\: :ref:`int<class_int>` = 65536\ )   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`close<class_PacketPeerUDP_method_close>`\ (\ )                                                                                                                                |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`connect_to_host<class_PacketPeerUDP_method_connect_to_host>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                          |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_local_port<class_PacketPeerUDP_method_get_local_port>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_packet_ip<class_PacketPeerUDP_method_get_packet_ip>`\ (\ ) |const|                                                                                                        |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_packet_port<class_PacketPeerUDP_method_get_packet_port>`\ (\ ) |const|                                                                                                    |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_bound<class_PacketPeerUDP_method_is_bound>`\ (\ ) |const|                                                                                                                  |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_socket_connected<class_PacketPeerUDP_method_is_socket_connected>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`join_multicast_group<class_PacketPeerUDP_method_join_multicast_group>`\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ )   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`leave_multicast_group<class_PacketPeerUDP_method_leave_multicast_group>`\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_broadcast_enabled<class_PacketPeerUDP_method_set_broadcast_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                             |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`set_dest_address<class_PacketPeerUDP_method_set_dest_address>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ )                                        |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`wait<class_PacketPeerUDP_method_wait>`\ (\ )                                                                                                                                  |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PacketPeerUDP_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", recv_buf_size\: :ref:`int<class_int>` = 65536\ ) :ref:`🔗<class_PacketPeerUDP_method_bind>`

Связывает этот **PacketPeerUDP** с указанным ``port`` и ``bind_address`` с размером буфера ``recv_buf_size``, что позволяет ему принимать входящие пакеты.

Если ``bind_address`` установлен на ``"*"`` (по умолчанию), одноранговый узел будет привязан ко всем доступным адресам (как IPv4, так и IPv6).

Если ``bind_address`` установлен на ``"0.0.0.0"`` (для IPv4) или ``"::"`` (для IPv6), одноранговый узел будет привязан ко всем доступным адресам, соответствующим этому типу IP.

Если ``bind_address`` установлен на любой допустимый адрес (например, ``"192.168.1.101"``, ``"::1"`` и т. д.), одноранговый узел будет привязан только к интерфейсу с этим адресом (или потерпит неудачу, если интерфейс с указанным адресом не существует).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_PacketPeerUDP_method_close>`

Закрывает базовый UDP-сокет **PacketPeerUDP**.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PacketPeerUDP_method_connect_to_host>`

Вызов этого метода подключает этот одноранговый узел UDP к заданной паре ``host``/``port``. UDP на самом деле не требует установления соединения, поэтому эта опция означает только то, что входящие пакеты с разных адресов автоматически отбрасываются, а исходящие пакеты всегда отправляются на подключенный адрес (будущие вызовы :ref:`set_dest_address()<class_PacketPeerUDP_method_set_dest_address>` не разрешены). Этот метод не отправляет никаких данных удаленному одноранговому узлу, для этого используйте :ref:`PacketPeer.put_var()<class_PacketPeer_method_put_var>` или :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>`, как обычно. См. также :ref:`UDPServer<class_UDPServer>`.

\ **Примечание:** Подключение к удаленному одноранговому узлу не помогает защититься от вредоносных атак, таких как подмена IP-адреса и т. д. Подумайте об использовании метода шифрования, такого как TLS или DTLS, если вы чувствуете, что ваше приложение передает конфиденциальную информацию.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_local_port>`

Возвращает локальный порт, к которому привязан данный одноранговый узел.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_packet_ip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_packet_ip**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_packet_ip>`

Возвращает IP-адрес удаленного узла, отправившего последний пакет (который был получен с помощью :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` или :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>`).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_packet_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_port**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_packet_port>`

Возвращает порт удаленного узла, отправившего последний пакет (который был получен с помощью :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` или :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>`).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_is_bound:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bound**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_is_bound>`

Возвращает, привязан ли этот **PacketPeerUDP** к адресу и может ли он принимать пакеты.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_is_socket_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_socket_connected**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_is_socket_connected>`

Возвращает ``true``, если сокет UDP открыт и подключен к удаленному адресу. См. :ref:`connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_join_multicast_group:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **join_multicast_group**\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PacketPeerUDP_method_join_multicast_group>`

Присоединяется к группе многоадресной рассылки, указанной ``multicast_address``, используя интерфейс, идентифицированный ``interface_name``.

Вы можете присоединиться к той же группе многоадресной рассылки с несколькими интерфейсами. Используйте :ref:`IP.get_local_interfaces()<class_IP_method_get_local_interfaces>`, чтобы узнать, какие из них доступны.

\ **Примечание:** Для работы многоадресной рассылки некоторым устройствам Android может потребоваться разрешение ``CHANGE_WIFI_MULTICAST_STATE``.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_leave_multicast_group:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **leave_multicast_group**\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PacketPeerUDP_method_leave_multicast_group>`

Удаляет интерфейс, идентифицированный ``interface_name``, из группы многоадресной рассылки, указанной ``multicast_address``.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_set_broadcast_enabled:

.. rst-class:: classref-method

|void| **set_broadcast_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_PacketPeerUDP_method_set_broadcast_enabled>`

Включите или отключите отправку широковещательных пакетов (например, ``set_dest_address("255.255.255.255", 4343)``. Эта опция отключена по умолчанию.

\ **Примечание:** Для некоторых устройств Android может потребоваться разрешение ``CHANGE_WIFI_MULTICAST_STATE`` и включение этой опции для приема широковещательных пакетов.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_set_dest_address:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_dest_address**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PacketPeerUDP_method_set_dest_address>`

Устанавливает адрес назначения и порт для отправки пакетов и переменных. Имя хоста будет разрешено с помощью DNS, если необходимо.

\ **Примечание:** :ref:`set_broadcast_enabled()<class_PacketPeerUDP_method_set_broadcast_enabled>` должен быть включен перед отправкой пакетов на широковещательный адрес (например, ``255.255.255.255``).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_wait:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **wait**\ (\ ) :ref:`🔗<class_PacketPeerUDP_method_wait>`

Ожидает прибытия пакета на привязанный адрес. См. :ref:`bind()<class_PacketPeerUDP_method_bind>`.

\ **Примечание:** :ref:`wait()<class_PacketPeerUDP_method_wait>` не может быть прерван после вызова. Это можно обойти, разрешив другой стороне отправить определенный пакет «пилюли смерти», например:


.. tabs::

 .. code-tab:: gdscript

    socket = PacketPeerUDP.new()
    # Server
    socket.set_dest_address("127.0.0.1", 789)
    socket.put_packet("Time to stop".to_ascii_buffer())

    # Client
    while socket.wait() == OK:
        var data = socket.get_packet().get_string_from_ascii()
        if data == "Time to stop":
            return

 .. code-tab:: csharp

    var socket = new PacketPeerUdp();
    // Server
    socket.SetDestAddress("127.0.0.1", 789);
    socket.PutPacket("Time to stop".ToAsciiBuffer());

    // Client
    while (socket.Wait() == OK)
    {
        string data = socket.GetPacket().GetStringFromASCII();
        if (data == "Time to stop")
        {
            return;
        }
    }



.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
