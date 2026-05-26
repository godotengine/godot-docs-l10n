:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerPeerExtension:

MultiplayerPeerExtension
========================

**Hereda:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase que puede ser heredada para implementar capas de red API multijugador personalizadas a través de GDExtension.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This class is designed to be inherited from a GDExtension plugin to implement custom networking layers for the multiplayer API (such as WebRTC). All the methods below **must** be implemented to have a working custom multiplayer implementation. See also :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_close<class_MultiplayerPeerExtension_private_method__close>`\ (\ ) |virtual| |required|                                                                                        |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_disconnect_peer<class_MultiplayerPeerExtension_private_method__disconnect_peer>`\ (\ peer\: :ref:`int<class_int>`, force\: :ref:`bool<class_bool>`\ ) |virtual| |required|     |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_available_packet_count<class_MultiplayerPeerExtension_private_method__get_available_packet_count>`\ (\ ) |virtual| |required| |const|                                      |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` | :ref:`_get_connection_status<class_MultiplayerPeerExtension_private_method__get_connection_status>`\ (\ ) |virtual| |required| |const|                                                |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_max_packet_size<class_MultiplayerPeerExtension_private_method__get_max_packet_size>`\ (\ ) |virtual| |required| |const|                                                    |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                          | :ref:`_get_packet<class_MultiplayerPeerExtension_private_method__get_packet>`\ (\ r_buffer\: ``const uint8_t **``, r_buffer_size\: ``int32_t*``\ ) |virtual|                          |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_packet_channel<class_MultiplayerPeerExtension_private_method__get_packet_channel>`\ (\ ) |virtual| |required| |const|                                                      |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`         | :ref:`_get_packet_mode<class_MultiplayerPeerExtension_private_method__get_packet_mode>`\ (\ ) |virtual| |required| |const|                                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_packet_peer<class_MultiplayerPeerExtension_private_method__get_packet_peer>`\ (\ ) |virtual| |required| |const|                                                            |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                  | :ref:`_get_packet_script<class_MultiplayerPeerExtension_private_method__get_packet_script>`\ (\ ) |virtual|                                                                           |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_transfer_channel<class_MultiplayerPeerExtension_private_method__get_transfer_channel>`\ (\ ) |virtual| |required| |const|                                                  |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`         | :ref:`_get_transfer_mode<class_MultiplayerPeerExtension_private_method__get_transfer_mode>`\ (\ ) |virtual| |required| |const|                                                        |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                          | :ref:`_get_unique_id<class_MultiplayerPeerExtension_private_method__get_unique_id>`\ (\ ) |virtual| |required| |const|                                                                |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`_is_refusing_new_connections<class_MultiplayerPeerExtension_private_method__is_refusing_new_connections>`\ (\ ) |virtual| |const|                                               |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`_is_server<class_MultiplayerPeerExtension_private_method__is_server>`\ (\ ) |virtual| |required| |const|                                                                        |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`_is_server_relay_supported<class_MultiplayerPeerExtension_private_method__is_server_relay_supported>`\ (\ ) |virtual| |const|                                                   |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_poll<class_MultiplayerPeerExtension_private_method__poll>`\ (\ ) |virtual| |required|                                                                                          |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                          | :ref:`_put_packet<class_MultiplayerPeerExtension_private_method__put_packet>`\ (\ buffer\: ``const uint8_t*``, buffer_size\: :ref:`int<class_int>`\ ) |virtual|                       |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                          | :ref:`_put_packet_script<class_MultiplayerPeerExtension_private_method__put_packet_script>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |virtual|                   |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_set_refuse_new_connections<class_MultiplayerPeerExtension_private_method__set_refuse_new_connections>`\ (\ enable\: :ref:`bool<class_bool>`\ ) |virtual|                       |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_set_target_peer<class_MultiplayerPeerExtension_private_method__set_target_peer>`\ (\ peer\: :ref:`int<class_int>`\ ) |virtual| |required|                                      |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_set_transfer_channel<class_MultiplayerPeerExtension_private_method__set_transfer_channel>`\ (\ channel\: :ref:`int<class_int>`\ ) |virtual| |required|                         |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                         | :ref:`_set_transfer_mode<class_MultiplayerPeerExtension_private_method__set_transfer_mode>`\ (\ mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ ) |virtual| |required| |
   +----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_MultiplayerPeerExtension_private_method__close:

.. rst-class:: classref-method

|void| **_close**\ (\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__close>`

Called when the multiplayer peer should be immediately closed (see :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__disconnect_peer:

.. rst-class:: classref-method

|void| **_disconnect_peer**\ (\ peer\: :ref:`int<class_int>`, force\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__disconnect_peer>`

Called when the connected ``peer`` should be forcibly disconnected (see :ref:`MultiplayerPeer.disconnect_peer()<class_MultiplayerPeer_method_disconnect_peer>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_available_packet_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_available_packet_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_available_packet_count>`

Called when the available packet count is internally requested by the :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_connection_status:

.. rst-class:: classref-method

:ref:`ConnectionStatus<enum_MultiplayerPeer_ConnectionStatus>` **_get_connection_status**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_connection_status>`

Called when the connection status is requested on the :ref:`MultiplayerPeer<class_MultiplayerPeer>` (see :ref:`MultiplayerPeer.get_connection_status()<class_MultiplayerPeer_method_get_connection_status>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_max_packet_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_max_packet_size**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_max_packet_size>`

Called when the maximum allowed packet size (in bytes) is requested by the :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_get_packet**\ (\ r_buffer\: ``const uint8_t **``, r_buffer_size\: ``int32_t*``\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet>`

Called when a packet needs to be received by the :ref:`MultiplayerAPI<class_MultiplayerAPI>`, with ``r_buffer_size`` being the size of the binary ``r_buffer`` in bytes.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_channel:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_packet_channel**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_channel>`

Llamado para obtener el canal por el que se recibió el siguiente paquete disponible. Véase :ref:`MultiplayerPeer.get_packet_channel()<class_MultiplayerPeer_method_get_packet_channel>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_mode:

.. rst-class:: classref-method

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **_get_packet_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_mode>`

Llamado para obtener el modo de transferencia que el par remoto usó para enviar el siguiente paquete disponible. Véase :ref:`MultiplayerPeer.get_packet_mode()<class_MultiplayerPeer_method_get_packet_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_peer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_packet_peer**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_peer>`

Se llama cuando se solicita el ID del :ref:`MultiplayerPeer<class_MultiplayerPeer>` que envió el paquete más reciente (véase :ref:`MultiplayerPeer.get_packet_peer()<class_MultiplayerPeer_method_get_packet_peer>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_packet_script:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_get_packet_script**\ (\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_packet_script>`

Called when a packet needs to be received by the :ref:`MultiplayerAPI<class_MultiplayerAPI>`, if :ref:`_get_packet()<class_MultiplayerPeerExtension_private_method__get_packet>` isn't implemented. Use this when extending this class via GDScript.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_transfer_channel:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_transfer_channel**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_transfer_channel>`

Called when the transfer channel to use is read on this :ref:`MultiplayerPeer<class_MultiplayerPeer>` (see :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_transfer_mode:

.. rst-class:: classref-method

:ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` **_get_transfer_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_transfer_mode>`

Called when the transfer mode to use is read on this :ref:`MultiplayerPeer<class_MultiplayerPeer>` (see :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_unique_id**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__get_unique_id>`

Called when the unique ID of this :ref:`MultiplayerPeer<class_MultiplayerPeer>` is requested (see :ref:`MultiplayerPeer.get_unique_id()<class_MultiplayerPeer_method_get_unique_id>`). The value must be between ``1`` and ``2147483647``.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__is_refusing_new_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_refusing_new_connections**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__is_refusing_new_connections>`

Called when the "refuse new connections" status is requested on this :ref:`MultiplayerPeer<class_MultiplayerPeer>` (see :ref:`MultiplayerPeer.refuse_new_connections<class_MultiplayerPeer_property_refuse_new_connections>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_server**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__is_server>`

Called when the "is server" status is requested on the :ref:`MultiplayerAPI<class_MultiplayerAPI>`. See :ref:`MultiplayerAPI.is_server()<class_MultiplayerAPI_method_is_server>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__is_server_relay_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_server_relay_supported**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerPeerExtension_private_method__is_server_relay_supported>`

Called to check if the server can act as a relay in the current configuration. See :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__poll:

.. rst-class:: classref-method

|void| **_poll**\ (\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__poll>`

Se llama cuando se sondea :ref:`MultiplayerAPI<class_MultiplayerAPI>`. Véase :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__put_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_packet**\ (\ buffer\: ``const uint8_t*``, buffer_size\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__put_packet>`

Called when a packet needs to be sent by the :ref:`MultiplayerAPI<class_MultiplayerAPI>`, with ``buffer_size`` being the size of the binary ``buffer`` in bytes.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__put_packet_script:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_put_packet_script**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__put_packet_script>`

Llamado cuando un paquete necesita ser enviado por la :ref:`MultiplayerAPI<class_MultiplayerAPI>`, si :ref:`_put_packet()<class_MultiplayerPeerExtension_private_method__put_packet>` no está implementado. Usa esto al extender esta clase a través de GDScript.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_refuse_new_connections:

.. rst-class:: classref-method

|void| **_set_refuse_new_connections**\ (\ enable\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_refuse_new_connections>`

Called when the "refuse new connections" status is set on this :ref:`MultiplayerPeer<class_MultiplayerPeer>` (see :ref:`MultiplayerPeer.refuse_new_connections<class_MultiplayerPeer_property_refuse_new_connections>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_target_peer:

.. rst-class:: classref-method

|void| **_set_target_peer**\ (\ peer\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_target_peer>`

Called when the target peer to use is set for this :ref:`MultiplayerPeer<class_MultiplayerPeer>` (see :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_transfer_channel:

.. rst-class:: classref-method

|void| **_set_transfer_channel**\ (\ channel\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_transfer_channel>`

Called when the channel to use is set for this :ref:`MultiplayerPeer<class_MultiplayerPeer>` (see :ref:`MultiplayerPeer.transfer_channel<class_MultiplayerPeer_property_transfer_channel>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerPeerExtension_private_method__set_transfer_mode:

.. rst-class:: classref-method

|void| **_set_transfer_mode**\ (\ mode\: :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`\ ) |virtual| |required| :ref:`🔗<class_MultiplayerPeerExtension_private_method__set_transfer_mode>`

Called when the transfer mode is set on this :ref:`MultiplayerPeer<class_MultiplayerPeer>` (see :ref:`MultiplayerPeer.transfer_mode<class_MultiplayerPeer_property_transfer_mode>`).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
