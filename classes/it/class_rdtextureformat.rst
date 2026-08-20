:github_url: hide

.. _class_RDTextureFormat:

RDTextureFormat
===============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Formato di texture (utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto è utilizzato dal :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`array_layers<class_RDTextureFormat_property_array_layers>`           | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`depth<class_RDTextureFormat_property_depth>`                         | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`                           | :ref:`format<class_RDTextureFormat_property_format>`                       | ``8``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`height<class_RDTextureFormat_property_height>`                       | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                      | :ref:`is_discardable<class_RDTextureFormat_property_is_discardable>`       | ``false`` |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                      | :ref:`is_resolve_buffer<class_RDTextureFormat_property_is_resolve_buffer>` | ``false`` |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`mipmaps<class_RDTextureFormat_property_mipmaps>`                     | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`                   | :ref:`samples<class_RDTextureFormat_property_samples>`                     | ``0``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`TextureType<enum_RenderingDevice_TextureType>`                         | :ref:`texture_type<class_RDTextureFormat_property_texture_type>`           | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] | :ref:`usage_bits<class_RDTextureFormat_property_usage_bits>`               | ``0``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`width<class_RDTextureFormat_property_width>`                         | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_shareable_format<class_RDTextureFormat_method_add_shareable_format>`\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )       |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_shareable_format<class_RDTextureFormat_method_remove_shareable_format>`\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDTextureFormat_property_array_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **array_layers** = ``1`` :ref:`🔗<class_RDTextureFormat_property_array_layers>`

.. rst-class:: classref-property-setget

- |void| **set_array_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_array_layers**\ (\ )

Il numero di strati nella texture. Rilevante solo per gli array di texture 2D.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth** = ``1`` :ref:`🔗<class_RDTextureFormat_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth**\ (\ )

La profondità della texture (in pixel). Per le texture 2D è sempre ``1``.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``8`` :ref:`🔗<class_RDTextureFormat_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

Il formato dei dati pixel della texture.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``1`` :ref:`🔗<class_RDTextureFormat_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

L'altezza della texture (in pixel).

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_is_discardable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_discardable** = ``false`` :ref:`🔗<class_RDTextureFormat_property_is_discardable>`

.. rst-class:: classref-property-setget

- |void| **set_is_discardable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_discardable**\ (\ )

Se una texture è scartabile, non è necessario mantenere il suo contenuto tra un frame e l'altro. Questo flag è rilevante solo quando la texture è utilizzata come destinazione in una draw list.

Questa informazione è utilizzata da :ref:`RenderingDevice<class_RenderingDevice>` per determinare se è possibile scartare il contenuto di una texture, eliminando scritture inutili in memoria e migliorando le prestazioni.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_is_resolve_buffer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_resolve_buffer** = ``false`` :ref:`🔗<class_RDTextureFormat_property_is_resolve_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_is_resolve_buffer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_resolve_buffer**\ (\ )

La texture sarà utilizzata come destinazione di un'operazione di risoluzione.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_mipmaps:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps** = ``1`` :ref:`🔗<class_RDTextureFormat_property_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_mipmaps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mipmaps**\ (\ )

Il numero di mipmap disponibili nella texture.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_samples:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **samples** = ``0`` :ref:`🔗<class_RDTextureFormat_property_samples>`

.. rst-class:: classref-property-setget

- |void| **set_samples**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_samples**\ (\ )

Il numero di campioni utilizzati durante il campionamento della texture.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_RenderingDevice_TextureType>` **texture_type** = ``1`` :ref:`🔗<class_RDTextureFormat_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_RenderingDevice_TextureType>`\ )
- :ref:`TextureType<enum_RenderingDevice_TextureType>` **get_texture_type**\ (\ )

Il tipo di texture.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_usage_bits:

.. rst-class:: classref-property

|bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] **usage_bits** = ``0`` :ref:`🔗<class_RDTextureFormat_property_usage_bits>`

.. rst-class:: classref-property-setget

- |void| **set_usage_bits**\ (\ value\: |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\]\ )
- |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] **get_usage_bits**\ (\ )

I bit di utilizzo della texture, che determinano cosa può essere fatto utilizzando la texture.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``1`` :ref:`🔗<class_RDTextureFormat_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

La larghezza della texture (in pixel).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RDTextureFormat_method_add_shareable_format:

.. rst-class:: classref-method

|void| **add_shareable_format**\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) :ref:`🔗<class_RDTextureFormat_method_add_shareable_format>`

Aggiunge ``format`` come formato valido per la proprietà :ref:`RDTextureView.format_override<class_RDTextureView_property_format_override>` del corrispondente :ref:`RDTextureView<class_RDTextureView>`. Se un qualsiasi formato viene aggiunto come condivisibile, è necessario aggiungere anche il formato principale :ref:`format<class_RDTextureFormat_property_format>`.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_method_remove_shareable_format:

.. rst-class:: classref-method

|void| **remove_shareable_format**\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) :ref:`🔗<class_RDTextureFormat_method_remove_shareable_format>`

Rimuove ``format`` dall'elenco dei formati validi su cui può essere impostata la proprietà :ref:`RDTextureView.format_override<class_RDTextureView_property_format_override>` del corrispondente :ref:`RDTextureView<class_RDTextureView>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
