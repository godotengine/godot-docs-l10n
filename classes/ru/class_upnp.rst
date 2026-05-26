:github_url: hide

.. _class_UPNP:

UPNP
====

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Функции Universal Plug and Play (UPnP) для обнаружения сетевых устройств, запросов и переадресации портов.

.. rst-class:: classref-introduction-group

Описание
----------------

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

Свойства
----------------

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

Методы
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

Перечисления
------------------------

.. _enum_UPNP_UPNPResult:

.. rst-class:: classref-enumeration

enum **UPNPResult**: :ref:`🔗<enum_UPNP_UPNPResult>`

.. _class_UPNP_constant_UPNP_RESULT_SUCCESS:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SUCCESS** = ``0``

Команда UPNP или обнаружение прошли успешно.

.. _class_UPNP_constant_UPNP_RESULT_NOT_AUTHORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NOT_AUTHORIZED** = ``1``

Не авторизовано для использования команды на :ref:`UPNPDevice<class_UPNPDevice>`. Может быть возвращено, если пользователь отключил UPNP на своем маршрутизаторе.

.. _class_UPNP_constant_UPNP_RESULT_PORT_MAPPING_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_PORT_MAPPING_NOT_FOUND** = ``2``

Для указанного порта и комбинации протоколов на указанном :ref:`UPNPDevice<class_UPNPDevice>` сопоставление портов не найдено.

.. _class_UPNP_constant_UPNP_RESULT_INCONSISTENT_PARAMETERS:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INCONSISTENT_PARAMETERS** = ``3``

Несоответствующие параметры.

.. _class_UPNP_constant_UPNP_RESULT_NO_SUCH_ENTRY_IN_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_SUCH_ENTRY_IN_ARRAY** = ``4``

Такой записи в массиве нет. Может быть возвращён, если заданная комбинация порта и протокола не найдена на :ref:`UPNPDevice<class_UPNPDevice>`.

.. _class_UPNP_constant_UPNP_RESULT_ACTION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_ACTION_FAILED** = ``5``

Действие не удалось.

.. _class_UPNP_constant_UPNP_RESULT_SRC_IP_WILDCARD_NOT_PERMITTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SRC_IP_WILDCARD_NOT_PERMITTED** = ``6``

:ref:`UPNPDevice<class_UPNPDevice>` не допускает использования подстановочных знаков для исходного IP-адреса.

.. _class_UPNP_constant_UPNP_RESULT_EXT_PORT_WILDCARD_NOT_PERMITTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_EXT_PORT_WILDCARD_NOT_PERMITTED** = ``7``

:ref:`UPNPDevice<class_UPNPDevice>` не допускает использования подстановочных знаков для внешнего порта.

.. _class_UPNP_constant_UPNP_RESULT_INT_PORT_WILDCARD_NOT_PERMITTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INT_PORT_WILDCARD_NOT_PERMITTED** = ``8``

:ref:`UPNPDevice<class_UPNPDevice>` не допускает использования подстановочных знаков для внутреннего порта.

.. _class_UPNP_constant_UPNP_RESULT_REMOTE_HOST_MUST_BE_WILDCARD:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_REMOTE_HOST_MUST_BE_WILDCARD** = ``9``

Значение удаленного хоста должно быть подстановочным знаком.

.. _class_UPNP_constant_UPNP_RESULT_EXT_PORT_MUST_BE_WILDCARD:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_EXT_PORT_MUST_BE_WILDCARD** = ``10``

Значение внешнего порта должно быть подстановочным знаком.

.. _class_UPNP_constant_UPNP_RESULT_NO_PORT_MAPS_AVAILABLE:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_PORT_MAPS_AVAILABLE** = ``11``

Карты портов недоступны. Также может быть возвращен, если функция сопоставления портов недоступна.

.. _class_UPNP_constant_UPNP_RESULT_CONFLICT_WITH_OTHER_MECHANISM:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_CONFLICT_WITH_OTHER_MECHANISM** = ``12``

Конфликт с другим механизмом. Может быть возвращено вместо :ref:`UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING<class_UPNP_constant_UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING>`, если сопоставление портов конфликтует с существующим.

.. _class_UPNP_constant_UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING** = ``13``

Конфликт с существующим сопоставлением портов.

.. _class_UPNP_constant_UPNP_RESULT_SAME_PORT_VALUES_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SAME_PORT_VALUES_REQUIRED** = ``14``

Значения внешнего и внутреннего порта должны быть одинаковыми.

.. _class_UPNP_constant_UPNP_RESULT_ONLY_PERMANENT_LEASE_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_ONLY_PERMANENT_LEASE_SUPPORTED** = ``15``

Поддерживаются только постоянные аренды. Не используйте параметр ``duration`` при добавлении сопоставлений портов.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_GATEWAY** = ``16``

Неверный шлюз.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_PORT** = ``17``

Неверный порт.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_PROTOCOL:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_PROTOCOL** = ``18``

Неверный протокол.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_DURATION:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_DURATION** = ``19``

Неверная продолжительность.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_ARGS:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_ARGS** = ``20``

Недопустимые аргументы.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_RESPONSE:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_RESPONSE** = ``21``

Неверный ответ.

.. _class_UPNP_constant_UPNP_RESULT_INVALID_PARAM:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_PARAM** = ``22``

Недопустимый параметр.

.. _class_UPNP_constant_UPNP_RESULT_HTTP_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_HTTP_ERROR** = ``23``

Ошибка HTTP.

.. _class_UPNP_constant_UPNP_RESULT_SOCKET_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SOCKET_ERROR** = ``24``

Ошибка сокета.

.. _class_UPNP_constant_UPNP_RESULT_MEM_ALLOC_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_MEM_ALLOC_ERROR** = ``25``

Ошибка выделения памяти.

.. _class_UPNP_constant_UPNP_RESULT_NO_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_GATEWAY** = ``26``

Нет доступного шлюза. Возможно, сначала нужно вызвать :ref:`discover()<class_UPNP_method_discover>`, или discovery не обнаружил ни одного допустимого IGD (InternetGatewayDevices).

.. _class_UPNP_constant_UPNP_RESULT_NO_DEVICES:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_DEVICES** = ``27``

Нет доступных устройств. Возможно, сначала нужно вызвать :ref:`discover()<class_UPNP_method_discover>`, или discovery не обнаружил ни одного из допустимых :ref:`UPNPDevice<class_UPNPDevice>`-ов.

.. _class_UPNP_constant_UPNP_RESULT_UNKNOWN_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_UNKNOWN_ERROR** = ``28``

Неизвестная ошибка.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_UPNP_property_discover_ipv6:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **discover_ipv6** = ``false`` :ref:`🔗<class_UPNP_property_discover_ipv6>`

.. rst-class:: classref-property-setget

- |void| **set_discover_ipv6**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_discover_ipv6**\ (\ )

Если ``true``, IPv6 используется для обнаружения :ref:`UPNPDevice<class_UPNPDevice>`.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_property_discover_local_port:

.. rst-class:: classref-property

:ref:`int<class_int>` **discover_local_port** = ``0`` :ref:`🔗<class_UPNP_property_discover_local_port>`

.. rst-class:: classref-property-setget

- |void| **set_discover_local_port**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_discover_local_port**\ (\ )

Если ``0``, локальный порт для использования при обнаружении выбирается системой автоматически. Если ``1``, обнаружение будет выполнено с исходного порта 1900 (тот же, что и порт назначения). В противном случае в качестве порта будет использовано значение.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_property_discover_multicast_if:

.. rst-class:: classref-property

:ref:`String<class_String>` **discover_multicast_if** = ``""`` :ref:`🔗<class_UPNP_property_discover_multicast_if>`

.. rst-class:: classref-property-setget

- |void| **set_discover_multicast_if**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_discover_multicast_if**\ (\ )

Интерфейс многоадресной рассылки для использования при обнаружении. Использует интерфейс многоадресной рассылки по умолчанию, если он пуст.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_UPNP_method_add_device:

.. rst-class:: classref-method

|void| **add_device**\ (\ device\: :ref:`UPNPDevice<class_UPNPDevice>`\ ) :ref:`🔗<class_UPNP_method_add_device>`

Добавляет указанное :ref:`UPNPDevice<class_UPNPDevice>` в список обнаруженных устройств.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_add_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_port_mapping**\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_UPNP_method_add_port_mapping>`

Добавляет сопоставление для переадресации внешнего ``port`` (от 1 до 65535, хотя рекомендуется использовать порт 1024 или выше) на шлюзе по умолчанию (см. :ref:`get_gateway()<class_UPNP_method_get_gateway>`) на ``port_internal`` на локальной машине для указанного протокола ``proto`` (либо ``"TCP"``, либо ``"UDP"``, где UDP является значением по умолчанию). Если сопоставление портов для указанной комбинации порта и протокола уже существует на этом шлюзовом устройстве, этот метод пытается перезаписать его. Если это нежелательно, вы можете получить шлюз вручную с помощью :ref:`get_gateway()<class_UPNP_method_get_gateway>` и вызвать :ref:`add_port_mapping()<class_UPNP_method_add_port_mapping>` на нем, если таковой имеется. Обратите внимание, что переадресация известного порта (ниже 1024) с помощью UPnP может завершиться неудачей в зависимости от устройства.

В зависимости от шлюзового устройства, если сопоставление для этого порта уже существует, оно либо будет обновлено, либо отклонит эту команду из-за этого конфликта, особенно если существующее сопоставление для этого порта не было создано через UPnP или указывает на другой сетевой адрес (или устройство), нежели этот.

Если ``port_internal`` равен ``0`` (по умолчанию), то для внешнего и внутреннего порта используется один и тот же номер порта (значение ``port``).

Описание (``desc``) отображается в некоторых пользовательских интерфейсах управления маршрутизаторами и может использоваться для указания того, какое приложение добавило сопоставление.

Аренда ``duration`` сопоставления может быть ограничена указанием продолжительности в секундах. Значение по умолчанию ``0`` означает отсутствие продолжительности, т. е. постоянную аренду, и, в частности, некоторые устройства поддерживают только эти постоянные аренды. Обратите внимание, что независимо от того, постоянная она или нет, это всего лишь запрос, и шлюз все равно может в любой момент решить удалить сопоставление (что обычно происходит при перезагрузке шлюза, при изменении его внешнего IP-адреса или на некоторых моделях, когда он обнаруживает, что сопоставление портов стало неактивным, т. е. не имело трафика в течение нескольких минут). Если не ``0`` (постоянно), допустимый диапазон согласно спецификации составляет от ``120`` (2 минуты) до ``86400`` секунд (24 часа).

Возможные возвращаемые значения см. в :ref:`UPNPResult<enum_UPNP_UPNPResult>`.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_clear_devices:

.. rst-class:: classref-method

|void| **clear_devices**\ (\ ) :ref:`🔗<class_UPNP_method_clear_devices>`

Очищает список обнаруженных устройств.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_delete_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **delete_port_mapping**\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const| :ref:`🔗<class_UPNP_method_delete_port_mapping>`

Удаляет сопоставление портов для заданной комбинации порта и протокола на шлюзе по умолчанию (см. :ref:`get_gateway()<class_UPNP_method_get_gateway>`), если таковое существует. ``port`` должен быть допустимым портом от 1 до 65535, ``proto`` может быть либо ``"TCP"`` либо ``"UDP"``. Может быть отклонено для сопоставлений, указывающих на адреса, отличные от этого, для известных портов (ниже 1024) или для сопоставлений, не добавленных через UPnP. См. :ref:`UPNPResult<enum_UPNP_UPNPResult>` для возможных возвращаемых значений.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_discover:

.. rst-class:: classref-method

:ref:`int<class_int>` **discover**\ (\ timeout\: :ref:`int<class_int>` = 2000, ttl\: :ref:`int<class_int>` = 2, device_filter\: :ref:`String<class_String>` = "InternetGatewayDevice"\ ) :ref:`🔗<class_UPNP_method_discover>`

Обнаруживает локальные :ref:`UPNPDevice<class_UPNPDevice>`. Очищает список ранее обнаруженных устройств.

Фильтры для устройств типа IGD (InternetGatewayDevice) по умолчанию, так как они управляют переадресацией портов. ``timeout`` — это время ожидания ответов в миллисекундах. ``ttl`` — это время жизни; касайтесь этого, только если вы знаете, что делаете.

См. :ref:`UPNPResult<enum_UPNP_UPNPResult>` для возможных возвращаемых значений.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_get_device:

.. rst-class:: classref-method

:ref:`UPNPDevice<class_UPNPDevice>` **get_device**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_UPNP_method_get_device>`

Возвращает :ref:`UPNPDevice<class_UPNPDevice>` по указанному ``index``.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_get_device_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_device_count**\ (\ ) |const| :ref:`🔗<class_UPNP_method_get_device_count>`

Возвращает количество обнаруженных :ref:`UPNPDevice<class_UPNPDevice>`.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_get_gateway:

.. rst-class:: classref-method

:ref:`UPNPDevice<class_UPNPDevice>` **get_gateway**\ (\ ) |const| :ref:`🔗<class_UPNP_method_get_gateway>`

Возвращает шлюз по умолчанию. Это первый обнаруженный :ref:`UPNPDevice<class_UPNPDevice>`, который также является допустимым IGD (InternetGatewayDevice).

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_query_external_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_external_address**\ (\ ) |const| :ref:`🔗<class_UPNP_method_query_external_address>`

Возвращает внешний :ref:`IP<class_IP>` адрес шлюза по умолчанию (см. :ref:`get_gateway()<class_UPNP_method_get_gateway>`) в виде строки. Возвращает пустую строку в случае ошибки.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_remove_device:

.. rst-class:: classref-method

|void| **remove_device**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_UPNP_method_remove_device>`

Удаляет устройство с адресом ``index`` из списка обнаруженных устройств.

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_set_device:

.. rst-class:: classref-method

|void| **set_device**\ (\ index\: :ref:`int<class_int>`, device\: :ref:`UPNPDevice<class_UPNPDevice>`\ ) :ref:`🔗<class_UPNP_method_set_device>`

Устанавливает устройство с индексом ``index`` из списка обнаруженных устройств на ``device``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
