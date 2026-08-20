:github_url: hide

.. _class_Texture3D:

Texture3D
=========

**Eredita:** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`CompressedTexture3D<class_CompressedTexture3D>`, :ref:`ImageTexture3D<class_ImageTexture3D>`, :ref:`NoiseTexture3D<class_NoiseTexture3D>`, :ref:`PlaceholderTexture3D<class_PlaceholderTexture3D>`, :ref:`Texture3DRD<class_Texture3DRD>`

Classe di base per le texture a 3 dimensioni.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe di base per :ref:`ImageTexture3D<class_ImageTexture3D>` e :ref:`CompressedTexture3D<class_CompressedTexture3D>`. Non può essere utilizzata direttamente, ma contiene tutte le funzioni necessarie per accedere ai tipi di risorse derivati. **Texture3D** è la classe base per tutti i tipi di texture tridimensionali. Vedi anche :ref:`TextureLayered<class_TextureLayered>`.

Tutte le immagini devono avere la stessa larghezza, altezza e numero di livelli mipmap.

Per creare autonomamente un file di texture di questo tipo, reimporta i file immagine attraverso i preset di importazione del Godot Editor.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`_get_data<class_Texture3D_private_method__get_data>`\ (\ ) |virtual| |required| |const|       |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`_get_depth<class_Texture3D_private_method__get_depth>`\ (\ ) |virtual| |required| |const|     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                       | :ref:`_get_format<class_Texture3D_private_method__get_format>`\ (\ ) |virtual| |required| |const|   |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`_get_height<class_Texture3D_private_method__get_height>`\ (\ ) |virtual| |required| |const|   |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`_get_width<class_Texture3D_private_method__get_width>`\ (\ ) |virtual| |required| |const|     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`_has_mipmaps<class_Texture3D_private_method__has_mipmaps>`\ (\ ) |virtual| |required| |const| |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                        | :ref:`create_placeholder<class_Texture3D_method_create_placeholder>`\ (\ ) |const|                  |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`get_data<class_Texture3D_method_get_data>`\ (\ ) |const|                                      |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_depth<class_Texture3D_method_get_depth>`\ (\ ) |const|                                    |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                       | :ref:`get_format<class_Texture3D_method_get_format>`\ (\ ) |const|                                  |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_height<class_Texture3D_method_get_height>`\ (\ ) |const|                                  |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_width<class_Texture3D_method_get_width>`\ (\ ) |const|                                    |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`has_mipmaps<class_Texture3D_method_has_mipmaps>`\ (\ ) |const|                                |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Texture3D_private_method__get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **_get_data**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_data>`

Chiamato quando i dati della **Texture3D** vengono richiesti.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_depth:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_depth**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_depth>`

Chiamato quando la profondità della **Texture3D** viene richiesta.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **_get_format**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_format>`

Chiamato quando il formato della **Texture3D** viene richiesto.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_height>`

Chiamato quando l'altezza della **Texture3D** viene richiesta.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_width>`

Chiamato quando la larghezza della **Texture3D** viene richiesta.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_mipmaps**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__has_mipmaps>`

Chiamato quando la presenza di mipmap nella **Texture3D** viene richiesta.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_create_placeholder>`

Crea una versione segnaposto di questa risorsa (:ref:`PlaceholderTexture3D<class_PlaceholderTexture3D>`).

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **get_data**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_data>`

Restituisce i dati della **Texture3D** come un array di :ref:`Image<class_Image>`. Ogni :ref:`Image<class_Image>` rappresenta una *fetta* di **Texture3D**, con diverse fette mappate a diversi livelli di profondità (asse Z).

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_depth:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_depth**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_depth>`

Restituisce la profondità della **Texture3D** in pixel. La profondità è in genere rappresentata dall'asse Z (una dimensione non presente in :ref:`Texture2D<class_Texture2D>`).

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_format>`

Restituisce il formato attuale utilizzato da questa texture.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_height>`

Restituisce l'altezza della **Texture3D** in pixel. La larghezza è in genere rappresentata dall'asse Y.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_width>`

Restituisce la larghezza della **Texture3D** in pixel. La larghezza è solitamente rappresentata dall'asse X.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_mipmaps**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_has_mipmaps>`

Restituisce ``true`` se la **Texture3D** ha mipmap generate.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
