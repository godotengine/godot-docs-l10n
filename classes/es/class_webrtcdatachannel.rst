:github_url: hide

.. _class_WebRTCDataChannel:

WebRTCDataChannel
=================

**Hereda:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`WebRTCDataChannelExtension<class_WebRTCDataChannelExtension>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------+-------+
   | :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` | :ref:`write_mode<class_WebRTCDataChannel_property_write_mode>` | ``1`` |
   +----------------------------------------------------+----------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`close<class_WebRTCDataChannel_method_close>`\ (\ )                                               |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_buffered_amount<class_WebRTCDataChannel_method_get_buffered_amount>`\ (\ ) |const|           |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_id<class_WebRTCDataChannel_method_get_id>`\ (\ ) |const|                                     |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                              | :ref:`get_label<class_WebRTCDataChannel_method_get_label>`\ (\ ) |const|                               |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_max_packet_life_time<class_WebRTCDataChannel_method_get_max_packet_life_time>`\ (\ ) |const| |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_max_retransmits<class_WebRTCDataChannel_method_get_max_retransmits>`\ (\ ) |const|           |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                              | :ref:`get_protocol<class_WebRTCDataChannel_method_get_protocol>`\ (\ ) |const|                         |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` | :ref:`get_ready_state<class_WebRTCDataChannel_method_get_ready_state>`\ (\ ) |const|                   |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_negotiated<class_WebRTCDataChannel_method_is_negotiated>`\ (\ ) |const|                       |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_ordered<class_WebRTCDataChannel_method_is_ordered>`\ (\ ) |const|                             |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                    | :ref:`poll<class_WebRTCDataChannel_method_poll>`\ (\ )                                                 |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`was_string_packet<class_WebRTCDataChannel_method_was_string_packet>`\ (\ ) |const|               |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_WebRTCDataChannel_WriteMode:

.. rst-class:: classref-enumeration

enum **WriteMode**: :ref:`🔗<enum_WebRTCDataChannel_WriteMode>`

.. _class_WebRTCDataChannel_constant_WRITE_MODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **WRITE_MODE_TEXT** = ``0``

Indica al canal que mande los datos como texto. Un compañero externo (non-Godot) lo recibiría como una string.

.. _class_WebRTCDataChannel_constant_WRITE_MODE_BINARY:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **WRITE_MODE_BINARY** = ``1``

Le dice al canal que envíe datos por este canal en binario. Un par externo (no Godot) recibiría esto como un búfer o blob del array.

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCDataChannel_ChannelState:

.. rst-class:: classref-enumeration

enum **ChannelState**: :ref:`🔗<enum_WebRTCDataChannel_ChannelState>`

.. _class_WebRTCDataChannel_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CONNECTING** = ``0``

El canal fue creado, pero todavía está tratando de conectarse.

.. _class_WebRTCDataChannel_constant_STATE_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_OPEN** = ``1``

El canal está actualmente abierto, y los datos pueden fluir sobre él.

.. _class_WebRTCDataChannel_constant_STATE_CLOSING:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CLOSING** = ``2``

El canal se está cerrando, no se aceptarán nuevos mensajes, pero los que ya están en cola serán eliminados.

.. _class_WebRTCDataChannel_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CLOSED** = ``3``

El canal se cerró, o la conexión falló.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_WebRTCDataChannel_property_write_mode:

.. rst-class:: classref-property

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **write_mode** = ``1`` :ref:`🔗<class_WebRTCDataChannel_property_write_mode>`

.. rst-class:: classref-property-setget

- |void| **set_write_mode**\ (\ value\: :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>`\ )
- :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **get_write_mode**\ (\ )

Modo de transferencia a usar cuando se mande el paquete de salido. Puede ser texto o binario.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_WebRTCDataChannel_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_WebRTCDataChannel_method_close>`

Cierra este canal de datos, notificando al otro par.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_buffered_amount:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_buffered_amount**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_buffered_amount>`

Devuelve la cantidad de bytes actualmente en cola para ser enviados a través de este canal.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_id>`

Devuelve el ID asignado a este canal durante la creación (o asignado automáticamente durante la negociación).

Si el canal no se negocia fuera de banda, el ID solo estará disponible después de establecer la conexión (hasta entonces, devolverá ``65535``).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_label**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_label>`

Devuelve la etiqueta asignada al canal durante su creación.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_max_packet_life_time:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_packet_life_time**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_max_packet_life_time>`

Devuelve el valor ``maxPacketLifeTime`` asignado a este canal durante la creación.

Será ``65535`` si no se especifica.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_max_retransmits:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_retransmits**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_max_retransmits>`

Devuelve el valor ``maxRetransmits`` asignado a este canal durante la creación.

Será ``65535`` si no se especifica.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_protocol**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_protocol>`

Devuelve el sub-protocolo asignado a este canal durante la creación. Una string vacía si no se especifica.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_ready_state:

.. rst-class:: classref-method

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **get_ready_state**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_ready_state>`

Devuelve el estado actual de este canal.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_is_negotiated:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_negotiated**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_is_negotiated>`

Devuelve ``true`` si este canal fue creado con una configuración fuera de banda.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_is_ordered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_ordered**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_is_ordered>`

Devuelve ``true`` si este canal fue creado con el ordenamiento activado (por defecto).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_WebRTCDataChannel_method_poll>`

Reservado, pero sin uso de momento.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_was_string_packet:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **was_string_packet**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_was_string_packet>`

Devuelve ``true`` si el último paquete recibido se transfirió como texto. Véase :ref:`write_mode<class_WebRTCDataChannel_property_write_mode>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
