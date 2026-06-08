:github_url: hide

.. _class_UDPServer:

UDPServer
=========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Допоможець класу для реалізації сервера UDP.

.. rst-class:: classref-introduction-group

Опис
--------

Простий сервер, який відкриває UDP-сокет і повертає підключений :ref:`PacketPeerUDP<class_PacketPeerUDP>` після отримання нових пакетів. Дивіться також :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`. 

Після запуску сервера (:ref:`listen()<class_UDPServer_method_listen>`) вам потрібно буде :ref:`poll()<class_UDPServer_method_poll>` проводити його через регулярні проміжки часу (наприклад, усередині :ref:`Node._process()<class_Node_private_method__process>`), щоб він обробляв нові пакети, доставляючи їх до відповідного :ref:`PacketPeerUDP<class_PacketPeerUDP>` і встановлюючи нові з’єднання. 

Нижче наведено невеликий приклад того, як це можна використовувати: 


.. tabs:: 

 .. code-tab:: gdscript
 
    # server_node.gd 
    class_name ServerNode 
    extenda Node 

    var server = UDPServer.new() 
    var peers = [] 

    func _ready(): 
        server.listen(4242) 

    func _process(delta): 
        server.poll() # Важливо! 
        if server.is_connection_available(): 
            var peer = server.take_connection() 
            var packet = peer.get_packet() 
            print("Прийнятий вузол: %s:%s" % [peer.get_packet_ip(), peer.get_packet_port()]) 
            print("Отримано дані: %s" % [packet.get_string_from_utf8()]) 
            # Відповісти, щоб знати, що ми отримали повідомлення. 
            peer.put_packet(пакет) 
            # Зберігайте посилання, щоб ми могли продовжувати зв’язуватися з віддаленим партнером. 
            peers.append(peer) 

        for i in range(0, peers.size()): 
            pass # Зробіть щось із підключеними одноранговими вузлами.  

 .. code-tab:: csharp
 
    // ServerNode.cs 
    using Godot
    using System.Collections.Generic; 

    public partial class ServerNode : Node 
    {
        private UdpServer _server = new UdpServer(); 
        private List<PacketPeerUdp> _peers = new список<PacketPeerUdp>(); 

        public override void _Ready() 
        { 
            _server.Listen(4242); 
        } 

        public override void _Process (double delta) 
        { 
            _server.Poll(); // Важливо! 
            if (_server.IsConnectionAvailable()) 
            { 
                PacketPeerUdp peer = _server.TakeConnection(); 
                byte[] packet = peer.GetPacket(); 
                GD.Print($"Прийнятий вузол: {peer.GetPacketIP()}:{peer.GetPacketPort()}"); 
                GD.Print($"Отримані дані: {packet.GetStringFromUtf8()}"); 
                // Відповісти, щоб знати, що ми отримали повідомлення. 
                peer.PutPacket(пакет); 
                // Зберігайте посилання, щоб ми могли продовжувати зв’язуватися з віддаленим партнером. 
                _peers.Add(peer); 
            } 
            foreach (var peer in _peers)) 
            { 
                // Робити щось з однолітками. 
            } 
        } 
    } 

 


.. tabs:: 

 .. code-tab:: gdscript
 
    # client_node.gd 
    class_name ClientNode 
    extends Node

    var udp = PacketPeerUDP.new() 
    varconnected = false 

    func _ready(): 
        udp.connect_to_host("127.0.0.1", 4242) 

    func _process(delta): 
        if !connected: 
            # Спробуйте зв'язатися з сервером 
            udp.put_packet("Відповідь... 42!".to_utf8_buffer()) 
        if udp.get_available_packet_count() > 0: 
            print("Підключено: %s" % udp.get_packet().get_string_from_utf8()) 
            connected = ture  

 .. code-tab:: csharp
 
    // ClientNode.cs 
    using Godot; 

    public partial class ClientNode : Node 
    {
        private PacketPeerUdp _udp = new PacketPeerUdp(); 
        private bool _connected = false; 

        public override void _Ready() 
        { 
            _udp.ConnectToHost("127.0.0.1", 4242); 
        } 

        public override void _Process (подвійна дельта) 
        { 
            if (!connected) 
            { 
                // Спроба зв'язатися з сервером 
                _udp.PutPacket("Відповідь...42!".ToUtf8Buffer()); 
            } 
            if (_udp.GetAvailablePacketCount() > 0) 
            { 
                GD.Print($"Підключено: {_udp.GetPacket().GetStringFromUtf8()}"); 
                _connected = ture; 
            } 
        } 
    } 



.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_pending_connections<class_UDPServer_property_max_pending_connections>` | ``16`` |
   +-----------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_local_port<class_UDPServer_method_get_local_port>`\ (\ ) |const|                                                         |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_connection_available<class_UDPServer_method_is_connection_available>`\ (\ ) |const|                                       |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_listening<class_UDPServer_method_is_listening>`\ (\ ) |const|                                                             |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`listen<class_UDPServer_method_listen>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`poll<class_UDPServer_method_poll>`\ (\ )                                                                                     |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`stop<class_UDPServer_method_stop>`\ (\ )                                                                                     |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PacketPeerUDP<class_PacketPeerUDP>` | :ref:`take_connection<class_UDPServer_method_take_connection>`\ (\ )                                                               |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_UDPServer_property_max_pending_connections:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_pending_connections** = ``16`` :ref:`🔗<class_UDPServer_property_max_pending_connections>`

.. rst-class:: classref-property-setget

- |void| **set_max_pending_connections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_pending_connections**\ (\ )

Визначте максимальну кількість кінцевих з'єднань, під час ``методичного опитування``, будь-яке нове з'єднання, що перевищує це значення буде автоматично скидати. Налаштування цього значення ``0`` ефективно запобігає будь-якому новому з'єднанню згинання (наприклад, коли всі ваші гравці підключені).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_UDPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_get_local_port>`

Повертає локальний порт на цей сервер.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_connection_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connection_available**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_connection_available>`

Повертаємо ``true``, якщо було отримано пакет з новою адресною/портовою комбінацією.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_listening:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_listening**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_listening>`

Повертає ``true``, якщо розетка відкрита і слухає на порт.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_UDPServer_method_listen>`

Почати сервер, відкривши розетку UDP, прослуховуючи на даній ``port``. Ви можете додатково вказати ``bind_address`` для лише прослуховування пакетів, відправлених на цю адресу. Дивитися також :ref:`PacketPeerUDP.bind()<class_PacketPeerUDP_method_bind>`.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_UDPServer_method_poll>`

Викликайте цей метод через регулярні проміжки часу (наприклад, всередині :ref:`Node._process()<class_Node_private_method__process>`) для обробки нових пакетів. Будь-який пакет з відомої пари адреса/порт буде доставлено до відповідного :ref:`PacketPeerUDP<class_PacketPeerUDP>`, тоді як будь-який пакет, отриманий з невідомої пари адреса/порт, буде додано як очікуване з'єднання (див. :ref:`is_connection_available()<class_UDPServer_method_is_connection_available>` та :ref:`take_connection()<class_UDPServer_method_take_connection>`). Максимальна кількість очікуваних з'єднань визначається за допомогою :ref:`max_pending_connections<class_UDPServer_property_max_pending_connections>`.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_UDPServer_method_stop>`

Зупиняє сервер, закриваючи UDP-сокет, якщо він відкритий. Закриє всі підключені :ref:`PacketPeerUDP<class_PacketPeerUDP>`, прийняті через :ref:`take_connection()<class_UDPServer_method_take_connection>` (віддалені вузли не будуть повідомлені).

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`PacketPeerUDP<class_PacketPeerUDP>` **take_connection**\ (\ ) :ref:`🔗<class_UDPServer_method_take_connection>`

Повертаємо перше з'єднання з попереднім записом (включається до відповідної адреси/порту). Поверніть ``null``, якщо немає нового підключення. ``method_connection_1``, :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
