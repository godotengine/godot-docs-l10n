:github_url: hide

.. _class_UPNP:

UPNP
====

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Універсальні функції плагіна та Play (UPnP) для відкриття мережевого пристрою, запиту та переадресації портів.

.. rst-class:: classref-introduction-group

Опис
--------

This class can be used to discover compatible :ref:`UPNPDevice<class_UPNPDevice>`\ s on the local network and execute commands on them, like managing port mappings (for port forwarding/NAT traversal) and querying the local and remote network IP address. Note that methods on this class are synchronous and block the calling thread.

To forward a specific port (here ``7777``, note both :ref:`discover()<class_UPNP_method_discover>` and :ref:`add_port_mapping()<class_UPNP_method_add_port_mapping>` can return errors that should be checked):

::

    var upnp = UPNP.new()
    upnp.discover()
    upnp.add_port_mapping(7777)

To close a specific port (e.g. after you have finished using it):

::

    upnp.delete_port_mapping(port)

\ **Note:** UPnP discovery blocks the current thread. To perform discovery without blocking the main thread, use :ref:`Thread<class_Thread>`\ s like this:

::

    # Emitted when UPnP port mapping setup is completed (regardless of success or failure).
    signal upnp_completed(error)

    # Replace this with your own server port number between 1024 and 65535.
    const SERVER_PORT = 3928
    var thread = null

    func _upnp_setup(server_port):
        # UPNP queries take some time.
        var upnp = UPNP.new()
        var err = upnp.discover()

        if err != UPNP.UPNP_RESULT_SUCCESS:
            push_error(str(err))
            upnp_completed.emit(err)
            return

        if upnp.get_gateway() and upnp.get_gateway().is_valid_gateway():
            upnp.add_port_mapping(server_port, server_port, ProjectSettings.get_setting("application/config/name"), "UDP")
            upnp.add_port_mapping(server_port, server_port, ProjectSettings.get_setting("application/config/name"), "TCP")
            upnp_completed.emit(UPNP.UPNP_RESULT_SUCCESS)

    func _ready():
        thread = Thread.new()
        thread.start(_upnp_setup.bind(SERVER_PORT))

    func _exit_tree():
        # Wait for thread finish here to handle game exit while the thread is running.
        thread.wait_to_finish()

\ **Terminology:** In the context of UPnP networking, "gateway" (or "internet gateway device", short IGD) refers to network devices that allow computers in the local network to access the internet ("wide area network", WAN). These gateways are often also called "routers".

\ **Pitfalls:**\ 

- As explained above, these calls are blocking and shouldn't be run on the main thread, especially as they can block for multiple seconds at a time. Use threading!

- Networking is physical and messy. Packets get lost in transit or get filtered, addresses, free ports and assigned mappings change, and devices may leave or join the network at any time. Be mindful of this, be diligent when checking and handling errors, and handle these gracefully if you can: add clear error UI, timeouts and re-try handling.

- Port mappings may change (and be removed) at any time, and the remote/external IP address of the gateway can change likewise. You should consider re-querying the external IP and try to update/refresh the port mapping periodically (for example, every 5 minutes and on networking failures).

- Not all devices support UPnP, and some users disable UPnP support. You need to handle this (e.g. documenting and requiring the user to manually forward ports, or adding alternative methods of NAT traversal, like a relay/mirror server, or NAT hole punching, STUN/TURN, etc.).

- Consider what happens on mapping conflicts. Maybe multiple users on the same network would like to play your game at the same time, or maybe another application uses the same port. Make the port configurable, and optimally choose a port automatically (re-trying with a different port on failure).

\ **Further reading:** If you want to know more about UPnP (and the Internet Gateway Device (IGD) and Port Control Protocol (PCP) specifically), `Wikipedia <https://en.wikipedia.org/wiki/Universal_Plug_and_Play>`__ is a good first stop, the specification can be found at the `Open Connectivity Foundation <https://openconnectivity.org/developer/specifications/upnp-resources/upnp/>`__ and Godot's implementation is based on the `MiniUPnP client <https://github.com/miniupnp/miniupnp>`__.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`discover_ipv6<class_UPNP_property_discover_ipv6>`                 | ``false`` |
   +-----------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`discover_local_port<class_UPNP_property_discover_local_port>`     | ``0``     |
   +-----------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`discover_multicast_if<class_UPNP_property_discover_multicast_if>` | ``""``    |
   +-----------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`add_device<class_UPNP_method_add_device>`\ (\ device\: :ref:`UPNPDevice<class_UPNPDevice>`\ )                                                                                                                                                                            |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`add_port_mapping<class_UPNP_method_add_port_mapping>`\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`clear_devices<class_UPNP_method_clear_devices>`\ (\ )                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`delete_port_mapping<class_UPNP_method_delete_port_mapping>`\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const|                                                                                                                     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`discover<class_UPNP_method_discover>`\ (\ timeout\: :ref:`int<class_int>` = 2000, ttl\: :ref:`int<class_int>` = 2, device_filter\: :ref:`String<class_String>` = "InternetGatewayDevice"\ )                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`UPNPDevice<class_UPNPDevice>` | :ref:`get_device<class_UPNP_method_get_device>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_device_count<class_UPNP_method_get_device_count>`\ (\ ) |const|                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`UPNPDevice<class_UPNPDevice>` | :ref:`get_gateway<class_UPNP_method_get_gateway>`\ (\ ) |const|                                                                                                                                                                                                                |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`query_external_address<class_UPNP_method_query_external_address>`\ (\ ) |const|                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`remove_device<class_UPNP_method_remove_device>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                                                                                                     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_device<class_UPNP_method_set_device>`\ (\ index\: :ref:`int<class_int>`, device\: :ref:`UPNPDevice<class_UPNPDevice>`\ )                                                                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_UPNP_UPNPResult:

.. rst-class:: classref-enumeration

enum **UPNPResult**: :ref:`🔗<enum_UPNP_UPNPResult>`

.. _class_UPNP_constant_UPNP_RESULT_SUCCESS:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SUCCESS** = ``0``

Команда UPNP або відкриття було успішним.

.. _class_UPNP_constant_UPNP_RESULT_NOT_AUTHORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NOT_AUTHORIZED** = ``1``

Не уповноважено використовувати команду на :ref:`UPNPDevice<class_UPNPDevice>`. Може бути повернено, коли користувач відключений UPNP на своєму маршрутизаторі.

.. _class_UPNP_constant_UPNP_RESULT_PORT_MAPPING_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_PORT_MAPPING_NOT_FOUND** = ``2``

Для даного порту було знайдено зображення протоколу :ref:`UPNPDevice<class_UPNPDevice>`.

.. _class_UPNP_constant_UPNP_RESULT_INCONSISTENT_PARAMETERS:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INCONSISTENT_PARAMETERS** = ``3``

Невідповідні параметри.

.. _class_UPNP_constant_UPNP_RESULT_NO_SUCH_ENTRY_IN_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_SUCH_ENTRY_IN_ARRAY** = ``4``

Такого запису в масиві немає. Може бути повернуто, якщо задана комбінація порту та протоколу не знайдена на :ref:`UPNPDevice<class_UPNPDevice>`.

.. _class_UPNP_constant_UPNP_RESULT_ACTION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_ACTION_FAILED** = ``5``

Не вдалося.

.. _class_UPNP_constant_UPNP_RESULT_SRC_IP_WILDCARD_NOT_PERMITTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SRC_IP_WILDCARD_NOT_PERMITTED** = ``6``

:ref:`UPNPDevice<class_UPNPDevice>` не дозволяє значенням диких карток для джерела IP-адреси.

.. _class_UPNP_constant_UPNP_RESULT_EXT_PORT_WILDCARD_NOT_PERMITTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_EXT_PORT_WILDCARD_NOT_PERMITTED** = ``7``

:ref:`UPNPDevice<class_UPNPDevice>` не дозволяє значенням диких карток для зовнішнього порту.

.. _class_UPNP_constant_UPNP_RESULT_INT_PORT_WILDCARD_NOT_PERMITTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INT_PORT_WILDCARD_NOT_PERMITTED** = ``8``

:ref:`UPNPDevice<class_UPNPDevice>` не дозволяє значення диких карток для внутрішнього порту.

.. _class_UPNP_constant_UPNP_RESULT_REMOTE_HOST_MUST_BE_WILDCARD:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_REMOTE_HOST_MUST_BE_WILDCARD** = ``9``

Вартість дистанційного хосту повинна бути дикою карткою.

.. _class_UPNP_constant_UPNP_RESULT_EXT_PORT_MUST_BE_WILDCARD:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_EXT_PORT_MUST_BE_WILDCARD** = ``10``

Зовнішня вартість порту повинна бути дикоюкартою.

.. _class_UPNP_constant_UPNP_RESULT_NO_PORT_MAPS_AVAILABLE:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_PORT_MAPS_AVAILABLE** = ``11``

Доступні карти портів. Може також повернутися, якщо не доступна функція копіювання портів.

.. _class_UPNP_constant_UPNP_RESULT_CONFLICT_WITH_OTHER_MECHANISM:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_CONFLICT_WITH_OTHER_MECHANISM** = ``12``

Налаштування з іншим механізмом. Повернутися замість :ref:`UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING<class_UPNP_constant_UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING>`, якщо порт картографування конфліктів з існуючим.

.. _class_UPNP_constant_UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING** = ``13``

Конфлікт з існуючим портовим картуванням.

.. _class_UPNP_constant_UPNP_RESULT_SAME_PORT_VALUES_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SAME_PORT_VALUES_REQUIRED** = ``14``

Зовнішні та внутрішні значення порту повинні бути однаковими.

.. _class_UPNP_constant_UPNP_RESULT_ONLY_PERMANENT_LEASE_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_ONLY_PERMANENT_LEASE_SUPPORTED** = ``15``

Підтримуються тільки постійні орендні витрати. Не використовуйте параметр ``duration`` при додаванні портових карт.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_GATEWAY** = ``16``

Інвалідний шлюз.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_PORT** = ``17``

Неточний порт.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_PROTOCOL:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_PROTOCOL** = ``18``

Інвалідний протокол.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_DURATION:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_DURATION** = ``19``

Термін дії.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_ARGS:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_ARGS** = ``20``

Неточні аргументи.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_RESPONSE:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_RESPONSE** = ``21``

Інвалідна відповідь.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_PARAM:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_PARAM** = ``22``

Неточний параметр.

.. _class_UPNP_constant_UPNP_RESULT_HTTP_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_HTTP_ERROR** = ``23``

Помилка HTTP.

.. _class_UPNP_constant_UPNP_RESULT_SOCKET_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SOCKET_ERROR** = ``24``

Похибка розетки.

.. _class_UPNP_constant_UPNP_RESULT_MEM_ALLOC_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_MEM_ALLOC_ERROR** = ``25``

Пам'ять про помилку.

.. _class_UPNP_constant_UPNP_RESULT_NO_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_GATEWAY** = ``26``

Немає доступних воріт. Якщо ви не виявите будь-які дійсні IGDs (InternetGatewayDevices).

.. _class_UPNP_constant_UPNP_RESULT_NO_DEVICES:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_DEVICES** = ``27``

Немає доступних пристроїв. Якщо ви не виявите будь-які дії :ref:`UPNPDevice<class_UPNPDevice>`.

.. _class_UPNP_constant_UPNP_RESULT_UNKNOWN_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_UNKNOWN_ERROR** = ``28``

Невідома помилка.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_UPNP_property_discover_ipv6:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **discover_ipv6** = ``false`` :ref:`🔗<class_UPNP_property_discover_ipv6>`

.. rst-class:: classref-property-setget

- |void| **set_discover_ipv6**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_discover_ipv6**\ (\ )

Якщо ``true``, IPv6 використовується для відкриття :ref:`UPNPDevice<class_UPNPDevice>`.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_property_discover_local_port:

.. rst-class:: classref-property

:ref:`int<class_int>` **discover_local_port** = ``0`` :ref:`🔗<class_UPNP_property_discover_local_port>`

.. rst-class:: classref-property-setget

- |void| **set_discover_local_port**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_discover_local_port**\ (\ )

Якщо ``0``, локальний порт використовувати для відкриття автоматично обирається системою. Якщо ``1``, відкриття буде зроблено з порту джерела 1900 (наприклад, порт призначення). В іншому випадку значення буде використовуватися як порт.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_property_discover_multicast_if:

.. rst-class:: classref-property

:ref:`String<class_String>` **discover_multicast_if** = ``""`` :ref:`🔗<class_UPNP_property_discover_multicast_if>`

.. rst-class:: classref-property-setget

- |void| **set_discover_multicast_if**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_discover_multicast_if**\ (\ )

Інтерфейс Multicast для використання для відкриття. Використовуйте інтерфейс за замовчуванням, якщо порожній.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_UPNP_method_add_device:

.. rst-class:: classref-method

|void| **add_device**\ (\ device\: :ref:`UPNPDevice<class_UPNPDevice>`\ ) :ref:`🔗<class_UPNP_method_add_device>`

Додає задану :ref:`UPNPDevice<class_UPNPDevice>` до списку відкритих пристроїв.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_add_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_port_mapping**\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_UPNP_method_add_port_mapping>`

Додавання картографування на переадресацію зовнішнього ``port`` (between 1 і 65535, хоча рекомендується використовувати порт 1024 або вище) на шлюзу за замовчуванням (див. :ref:`get_gateway()<class_UPNP_method_get_gateway>`) до ``port_internal`` на локальній машині для заданого протоколу ``proto`` (надалі ``"TCP"`` або ``"UDP"``, з UDP будучи за замовчуванням). Якщо портове картування для даного порту і поєднання протоколу вже існує на цьому пристрої для шлюзу, цей метод намагається переписати його. Якщо це не потрібно, ви можете отримати шлюзу вручну за допомогою :ref:`get_gateway()<class_UPNP_method_get_gateway>` і виклику :ref:`add_port_mapping()<class_UPNP_method_add_port_mapping>` на ньому, якщо будь-який. Зауважте, що переадресація відомого порту (до 1024) з UPnP може не в залежності від пристрою.

Залежно від пристрою шлюзу, якщо вже існує карта для цього порту, вона буде оновлена або вона відмовляється від цієї команди через цей конфлікт, особливо якщо існуюча карта для цього порту не була створена через UPnP або точки на інший мережевий адрес (або пристрій), ніж це.

Якщо ``port_internal`` є ``0`` (за замовчуванням), той самий номер порту використовується як для зовнішнього, так і внутрішнього порту ( значення ``port``).

Опис (``desc``) відображається в деяких маршрутизаторах управління UIs і може бути використаний для позначення, яку додаток додано картографування.

Здається в оренду картографування ``duration`` може бути обмежена, вказавши тривалість за секундами. За замовчуванням ``0`` означає, що немає тривалості, тобто постійне орендодавство і неможливі деякі пристрої тільки підтримують ці постійні оренди. Зауважте, чи є постійним або не постійним, це тільки запит, і шлюз все ще може вирішити в будь-якій точці, щоб видалити картографію (що зазвичай відбувається на перезавантаження шлюзу, коли його зовнішні зміни IP-адреси, або на деяких моделях, коли він виявить портову картографію стала неактивним, тобто не було трафіку за кілька хвилин). Якщо не ``0`` (перманент), допустимий діапазон за специфікацією між ``120`` (2 хвилини) і ``86400`` секунд (24 годин).

Див. :ref:`UPNPResult<enum_UPNP_UPNPResult>` для можливих значень повернення.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_clear_devices:

.. rst-class:: classref-method

|void| **clear_devices**\ (\ ) :ref:`🔗<class_UPNP_method_clear_devices>`

Очистити список відкритих пристроїв.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_delete_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **delete_port_mapping**\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const| :ref:`🔗<class_UPNP_method_delete_port_mapping>`

Видаляє портову картографію для вказаного порту та комбінації протоколів за умовчанням (див. :ref:`get_gateway()<class_UPNP_method_get_gateway>`) якщо існує один. ``port`` повинен бути дійсним портом між 1 і 65535, ``proto`` може бути як ``"TCP"`` або ``"UDP""``. Може бути відмовлено в картографуваннях, що вказують на адреси, крім цього, для відомих портів (до 1024), або для картування не додано через UPnP. Див. :ref:`UPNPResult<enum_UPNP_UPNPResult>` для можливих значень повернення.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_discover:

.. rst-class:: classref-method

:ref:`int<class_int>` **discover**\ (\ timeout\: :ref:`int<class_int>` = 2000, ttl\: :ref:`int<class_int>` = 2, device_filter\: :ref:`String<class_String>` = "InternetGatewayDevice"\ ) :ref:`🔗<class_UPNP_method_discover>`

Виставки місцевих :ref:`UPNPDevice<class_UPNPDevice>`\ s. Очистити список раніше відкритих пристроїв.

Фільтри для пристроїв типу IGD (InternetGatewayDevice) за замовчуванням, оскільки переадресація портів керування. ``timeout`` – час очікування відповіді на мілісекунди. ``ttl`` це часово-живий; тільки доторкнутися до цього, якщо ви знаєте, що ви робите.

Див. :ref:`UPNPResult<enum_UPNP_UPNPResult>` для можливих значень повернення.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_get_device:

.. rst-class:: classref-method

:ref:`UPNPDevice<class_UPNPDevice>` **get_device**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_UPNP_method_get_device>`

Повертає :ref:`UPNPDevice<class_UPNPDevice>` на поданому ``index``.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_get_device_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_device_count**\ (\ ) |const| :ref:`🔗<class_UPNP_method_get_device_count>`

Повертає кількість виявлених :ref:`UPNPDevice<class_UPNPDevice>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_get_gateway:

.. rst-class:: classref-method

:ref:`UPNPDevice<class_UPNPDevice>` **get_gateway**\ (\ ) |const| :ref:`🔗<class_UPNP_method_get_gateway>`

Повернення за замовчуванням воріт. Це перший відкритий :ref:`UPNPDevice<class_UPNPDevice>`, який також є дійсним IGD (InternetGatewayDevice).

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_query_external_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_external_address**\ (\ ) |const| :ref:`🔗<class_UPNP_method_query_external_address>`

Повертає зовнішній :ref:`IP<class_IP>` адресу за замовчуванням шлюзу (див. :ref:`get_gateway()<class_UPNP_method_get_gateway>`) як рядок. Повертає порожній рядок на помилку.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_remove_device:

.. rst-class:: classref-method

|void| **remove_device**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_UPNP_method_remove_device>`

Видаліть пристрій в індексі ``index`` з переліку відкритих пристроїв.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_set_device:

.. rst-class:: classref-method

|void| **set_device**\ (\ index\: :ref:`int<class_int>`, device\: :ref:`UPNPDevice<class_UPNPDevice>`\ ) :ref:`🔗<class_UPNP_method_set_device>`

Налаштовує пристрій в індексі ``index`` з переліку відкритих пристроїв до ``device``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
