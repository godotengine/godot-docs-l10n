:github_url: hide

.. _class_PacketPeerUDP:

PacketPeerUDP
=============

**Успадковує:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Пакет UDP одномісний.

.. rst-class:: classref-introduction-group

Опис
--------

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

Методи
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

Описи методів
--------------------------

.. _class_PacketPeerUDP_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", recv_buf_size\: :ref:`int<class_int>` = 65536\ ) :ref:`🔗<class_PacketPeerUDP_method_bind>`

**PacketPeerUDP** вказаний ``port`` і ``bind_address`` з розмірами буфера ``recv_buf_size``, що дозволяє отримати вхідні пакети.

Якщо ``bind_address`` встановлюється до ``"*"`` (default), то він буде прив'язаний до всіх доступних адрес (both IPv4 і IPv6).

Якщо ``bind_address`` is set to ``"0.0.0.0"`` (для IPv4) або ``:"`` (для IPv6), односторонній зв'язок з усіма доступними адресами, що відповідають типу IP.

Якщо ``bind_address`` встановлюється на будь-яку дійсну адресу (наприклад, ``"192.168.1.101"``, ``::1"`` і т.д.), одноліток буде прив'язаний до інтерфейсу з цією адресою (або не вдається, якщо не існує інтерфейсу з вказаною адресою).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_PacketPeerUDP_method_close>`

Закриває **PacketPeerUDP** під'єм UDP.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PacketPeerUDP_method_connect_to_host>`

Зателефонувавши цей метод з'єднує цей UDP однолітній до заданої ``host``/``port`` пара. UDP знаходиться в режимі реального підключення, тому цей варіант тільки означає, що вхідні пакети з різних адрес автоматично відхиляються, і що вихідні пакети завжди надсилаються на підключену адресу (податкові дзвінки до :ref:`set_dest_address()<class_PacketPeerUDP_method_set_dest_address>` не допускаються). Цей метод не надсилає ніяких даних на пульт дистанційного керування, щоб зробити це, використовувати :ref:`PacketPeer.put_var()<class_PacketPeer_method_put_var>` або :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>` як зазвичай. Дивитися також :ref:`UDPServer<class_UDPServer>`.

\ **Примітка:** Підключення до пульта дистанційного з’єднання не допомагає захистити від шкідливих атак, таких як IP-покриття тощо. Якщо ви відчуваєте, що ваш додаток передається конфіденційною інформацією.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_local_port>`

Повертає локальний порт, до якого зв'язується цей одноліток.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_packet_ip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_packet_ip**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_packet_ip>`

Повертає IP пульта дистанційного зв’язку, який надіслав останній пакет (тобто отримав :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` або :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>`).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_get_packet_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_packet_port**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_get_packet_port>`

Повертає порт віддалених однолітків, який відправив останній пакет (тобто отримав :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>` або :ref:`PacketPeer.get_var()<class_PacketPeer_method_get_var>`).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_is_bound:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bound**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_is_bound>`

Повертаємо вашу увагу на те, чи є це **PacketPeerUDP**, пов'язаної з адресою та може отримувати пакети.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_is_socket_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_socket_connected**\ (\ ) |const| :ref:`🔗<class_PacketPeerUDP_method_is_socket_connected>`

Повертаємо ``true``, якщо розетка UDP відкрита і підключена до віддаленої адреси. Подивитися :ref:`connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_join_multicast_group:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **join_multicast_group**\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PacketPeerUDP_method_join_multicast_group>`

Приєднується до групи мультикастів, зазначеної ``multicast_address`` з використанням інтерфейсу, визначеного ``interface_name``.

Ви можете приєднатися до тієї ж групи з декількома інтерфейсами. Використовуйте :ref:`IP.get_local_interfaces()<class_IP_method_get_local_interfaces>`, щоб дізнатися, які доступні.

\ **Примітка:** Деякі пристрої для Android можуть знадобитися ``CHANGE_WIFI_MULTICAST_STATE`` дозвіл на багатокамерну роботу.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_leave_multicast_group:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **leave_multicast_group**\ (\ multicast_address\: :ref:`String<class_String>`, interface_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PacketPeerUDP_method_leave_multicast_group>`

Видаляє інтерфейс, ідентифікований параметром ``interface_name``, з групи багатоадресної розсилки, визначеної параметром ``multicast_address``.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_set_broadcast_enabled:

.. rst-class:: classref-method

|void| **set_broadcast_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_PacketPeerUDP_method_set_broadcast_enabled>`

Увімкнути або вимкнути відправку трансляційних пакетів (наприклад, ``set_dest_address("255.255.255.255", 4343)``. Ця опція вимкнена за замовчуванням.

\ **Примітка:** Деякі пристрої Android можуть знадобитися ``CHANGE_WIFI_MULTICAST_STATE`` дозвіл і цей варіант, щоб бути ввімкнено, щоб отримати трансляційні пакети.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_set_dest_address:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_dest_address**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PacketPeerUDP_method_set_dest_address>`

Налаштовує адреса призначення та порт для відправки пакетів та змінних. У разі необхідності ввімкнено доменне ім’я.

\ **Примітка:** :ref:`set_broadcast_enabled()<class_PacketPeerUDP_method_set_broadcast_enabled>` повинен бути включений до відправки пакетів на адресу трансляції (наприклад, ``255.255.255.255``).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerUDP_method_wait:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **wait**\ (\ ) :ref:`🔗<class_PacketPeerUDP_method_wait>`

Очікує на прибуття пакета на прив'язану адресу. Див. :ref:`bind()<class_PacketPeerUDP_method_bind>`. 

\ **Примітка:** :ref:`wait()<class_PacketPeerUDP_method_wait>` не може бути перервано після його виклику. Це можна вирішити, дозволивши іншій стороні надіслати певний пакет «пігулки смерті» таким чином: 


.. tabs:: 

 .. code-tab:: gdscript
 
    socket = PacketPeerUDP.new() 
    # Сервер 
    socket.set_dest_address("127.0.0.1", 789) 
    socket.put_packet("Time to stop".to_ascii_buffer()) 

    # Клієнт 
    while socket.wait() == OK: 
        var data = socket.get_packet().get_string_from_ascii() 
        if data == "Time to stop": 
            return  

 .. code-tab:: csharp
 
    var socket = new PacketPeerUdp(); 
    // Сервер 
    socket.SetDestAddress("127.0.0.1", 789); 
    socket.PutPacket("Time to stop".ToAsciiBuffer()); 

    // Клієнт 
    while (socket.Wait() == OK) 
    {
        string data = socket.GetPacket().GetStringFromASCII(); 
        if (data == "Time to stop") 
        { 
            return; 
        } 
    } 



.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
