:github_url: hide

.. _class_PacketPeerStream:

PacketPeerStream
================

**Hereda:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Envoltura para usar un PacketPeer sobre un StreamPeer.

.. rst-class:: classref-introduction-group

Descripción
----------------------

PacketStreamPeer proporciona un envoltorio para trabajar usando paquetes sobre un flujo. Esto permite usar código basado en paquetes con StreamPeers. PacketPeerStream implementa un protocolo personalizado sobre el StreamPeer, por lo que no debes leer o escribir directamente en el StreamPeer envuelto.

\ **Nota:** Al exportar a Android, asegúrate de habilitar el permiso ``INTERNET`` en el ajuste preestablecido de exportación de Android antes de exportar el proyecto o usar el despliegue con un solo clic. De lo contrario, Android bloqueará cualquier tipo de comunicación de red.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`input_buffer_max_size<class_PacketPeerStream_property_input_buffer_max_size>`   | ``65532`` |
   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`output_buffer_max_size<class_PacketPeerStream_property_output_buffer_max_size>` | ``65532`` |
   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+
   | :ref:`StreamPeer<class_StreamPeer>` | :ref:`stream_peer<class_PacketPeerStream_property_stream_peer>`                       |           |
   +-------------------------------------+---------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PacketPeerStream_property_input_buffer_max_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **input_buffer_max_size** = ``65532`` :ref:`🔗<class_PacketPeerStream_property_input_buffer_max_size>`

.. rst-class:: classref-property-setget

- |void| **set_input_buffer_max_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_input_buffer_max_size**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerStream_property_output_buffer_max_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **output_buffer_max_size** = ``65532`` :ref:`🔗<class_PacketPeerStream_property_output_buffer_max_size>`

.. rst-class:: classref-property-setget

- |void| **set_output_buffer_max_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_output_buffer_max_size**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerStream_property_stream_peer:

.. rst-class:: classref-property

:ref:`StreamPeer<class_StreamPeer>` **stream_peer** :ref:`🔗<class_PacketPeerStream_property_stream_peer>`

.. rst-class:: classref-property-setget

- |void| **set_stream_peer**\ (\ value\: :ref:`StreamPeer<class_StreamPeer>`\ )
- :ref:`StreamPeer<class_StreamPeer>` **get_stream_peer**\ (\ )

El objeto envoltorio :ref:`StreamPeer<class_StreamPeer>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
