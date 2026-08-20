:github_url: hide

.. _class_TextureLayered:

TextureLayered
==============

**Eredita:** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`CompressedTextureLayered<class_CompressedTextureLayered>`, :ref:`ImageTextureLayered<class_ImageTextureLayered>`, :ref:`PlaceholderTextureLayered<class_PlaceholderTextureLayered>`, :ref:`TextureLayeredRD<class_TextureLayeredRD>`

Classe di base per tipi di texture che contengono i dati di più :ref:`Image<class_Image>`. Ogni immagine ha le stesse dimensioni e lo stesso formato.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe di base per :ref:`ImageTextureLayered<class_ImageTextureLayered>` e :ref:`CompressedTextureLayered<class_CompressedTextureLayered>`. Non può essere utilizzata direttamente, ma contiene tutte le funzioni necessarie per accedere ai tipi di risorse derivati. Vedi anche :ref:`Texture3D<class_Texture3D>`.

I dati sono impostati per livello. Per :ref:`Texture2DArray<class_Texture2DArray>`, il livello specifica il livello dell'array.

Tutte le immagini devono avere la stessa larghezza, altezza e numero di livelli mipmap.

Un **TextureLayered** può essere caricato con :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`.

Internamente, Godot mappa questi file alle rispettive controparti nel driver di rendering di destinazione (Vulkan, OpenGL3).

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                    | :ref:`_get_format<class_TextureLayered_private_method__get_format>`\ (\ ) |virtual| |required| |const|                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_height<class_TextureLayered_private_method__get_height>`\ (\ ) |virtual| |required| |const|                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                           | :ref:`_get_layer_data<class_TextureLayered_private_method__get_layer_data>`\ (\ layer_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_layered_type<class_TextureLayered_private_method__get_layered_type>`\ (\ ) |virtual| |required| |const|                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_layers<class_TextureLayered_private_method__get_layers>`\ (\ ) |virtual| |required| |const|                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_width<class_TextureLayered_private_method__get_width>`\ (\ ) |virtual| |required| |const|                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_has_mipmaps<class_TextureLayered_private_method__has_mipmaps>`\ (\ ) |virtual| |required| |const|                                            |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                    | :ref:`get_format<class_TextureLayered_method_get_format>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_height<class_TextureLayered_method_get_height>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                           | :ref:`get_layer_data<class_TextureLayered_method_get_layer_data>`\ (\ layer\: :ref:`int<class_int>`\ ) |const|                                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LayeredType<enum_TextureLayered_LayeredType>` | :ref:`get_layered_type<class_TextureLayered_method_get_layered_type>`\ (\ ) |const|                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_layers<class_TextureLayered_method_get_layers>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_width<class_TextureLayered_method_get_width>`\ (\ ) |const|                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has_mipmaps<class_TextureLayered_method_has_mipmaps>`\ (\ ) |const|                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_TextureLayered_LayeredType:

.. rst-class:: classref-enumeration

enum **LayeredType**: :ref:`🔗<enum_TextureLayered_LayeredType>`

.. _class_TextureLayered_constant_LAYERED_TYPE_2D_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_2D_ARRAY** = ``0``

La texture è un :ref:`Texture2DArray<class_Texture2DArray>` generico.

.. _class_TextureLayered_constant_LAYERED_TYPE_CUBEMAP:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_CUBEMAP** = ``1``

La texture è una :ref:`Cubemap<class_Cubemap>`, con ogni lato nel proprio livello (6 in totale).

.. _class_TextureLayered_constant_LAYERED_TYPE_CUBEMAP_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_CUBEMAP_ARRAY** = ``2``

La texture è un :ref:`CubemapArray<class_CubemapArray>`, in cui ogni cubemap è composta da 6 livelli.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TextureLayered_private_method__get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **_get_format**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_format>`

Chiamato quando il formato del **TextureLayered** viene richiesto.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_height>`

Chiamato quando l'altezza del **TextureLayered** viene richiesta.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layer_data:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **_get_layer_data**\ (\ layer_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layer_data>`

Chiamato quando i dati per un livello nel **TextureLayered** vengono richiesti.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layered_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_layered_type**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layered_type>`

Chiamato quando il tipo di livello nel **TextureLayered** viene richiesto.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_layers**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layers>`

Chiamato quando il numero di livelli nel **TextureLayered** viene richiesto.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_width>`

Chiamato quando la larghezza del **TextureLayered** viene richiesta.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_mipmaps**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__has_mipmaps>`

Chiamato quando la presenza di mipmap nel **TextureLayered** viene richiesta.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_format>`

Restituisce il formato attuale utilizzato da questa texture.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_height>`

Restituisce l'altezza della texture in pixel. L'altezza è solitamente rappresentata dall'asse Y.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layer_data:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_layer_data**\ (\ layer\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layer_data>`

Restituisce una risorsa :ref:`Image<class_Image>` con i dati dal livello ``layer``.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layered_type:

.. rst-class:: classref-method

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **get_layered_type**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layered_type>`

Restituisce il tipo del **TextureLayered**. Il tipo determina come si accede ai dati, con cubemap che hanno tipi speciali.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_layers**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layers>`

Restituisce il numero di :ref:`Image<class_Image>` referenziate.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_width>`

Restituisce la larghezza della texture in pixel. La larghezza è solitamente rappresentata dall'asse X.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_mipmaps**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_has_mipmaps>`

Restituisce ``true`` se i livelli hanno mipmap generate.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
