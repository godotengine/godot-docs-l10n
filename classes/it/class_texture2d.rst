:github_url: hide

.. _class_Texture2D:

Texture2D
=========

**Eredita:** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AnimatedTexture<class_AnimatedTexture>`, :ref:`AtlasTexture<class_AtlasTexture>`, :ref:`CameraTexture<class_CameraTexture>`, :ref:`CanvasTexture<class_CanvasTexture>`, :ref:`CompressedTexture2D<class_CompressedTexture2D>`, :ref:`CurveTexture<class_CurveTexture>`, :ref:`CurveXYZTexture<class_CurveXYZTexture>`, :ref:`DPITexture<class_DPITexture>`, :ref:`DrawableTexture2D<class_DrawableTexture2D>`, :ref:`ExternalTexture<class_ExternalTexture>`, :ref:`GradientTexture1D<class_GradientTexture1D>`, :ref:`GradientTexture2D<class_GradientTexture2D>`, :ref:`ImageTexture<class_ImageTexture>`, :ref:`MeshTexture<class_MeshTexture>`, :ref:`NoiseTexture2D<class_NoiseTexture2D>`, :ref:`PlaceholderTexture2D<class_PlaceholderTexture2D>`, :ref:`PortableCompressedTexture2D<class_PortableCompressedTexture2D>`, :ref:`Texture2DRD<class_Texture2DRD>`, :ref:`ViewportTexture<class_ViewportTexture>`

Texture per 2D e 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una texture funziona registrando un'immagine nell'hardware video, che può poi essere utilizzata in modelli 3D, 2D :ref:`Sprite2D<class_Sprite2D>` o :ref:`Control<class_Control>` in una GUI.

Le texture sono spesso create caricandole da un file. Vedi :ref:`@GDScript.load()<class_@GDScript_method_load>`.

\ **Texture2D** è una base per altre risorse. Non può essere utilizzata direttamente.

\ **Nota:** La dimensione massima di una texture è 16384×16384 pixel a causa delle limitazioni dell'hardware grafico. Potrebbe non essere possibile importare texture più grandi.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                           | :ref:`_draw<class_Texture2D_private_method__draw>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                           |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                           | :ref:`_draw_rect<class_Texture2D_private_method__draw_rect>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                    |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                           | :ref:`_draw_rect_region<class_Texture2D_private_method__draw_rect_region>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`, clip_uv\: :ref:`bool<class_bool>`\ ) |virtual| |const|             |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>` | :ref:`_get_format<class_Texture2D_private_method__get_format>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                       |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`            | :ref:`_get_height<class_Texture2D_private_method__get_height>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                            |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`        | :ref:`_get_image<class_Texture2D_private_method__get_image>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                         |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`            | :ref:`_get_mipmap_count<class_Texture2D_private_method__get_mipmap_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                           |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`            | :ref:`_get_width<class_Texture2D_private_method__get_width>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                              |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`          | :ref:`_has_alpha<class_Texture2D_private_method__has_alpha>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                         |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`          | :ref:`_has_mipmaps<class_Texture2D_private_method__has_mipmaps>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                     |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`          | :ref:`_is_pixel_opaque<class_Texture2D_private_method__is_pixel_opaque>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                       |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`  | :ref:`create_placeholder<class_Texture2D_method_create_placeholder>`\ (\ ) |const|                                                                                                                                                                                                                                                           |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                           | :ref:`draw<class_Texture2D_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, position\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                                 |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                           | :ref:`draw_rect<class_Texture2D_method_draw_rect>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                           | :ref:`draw_rect_region<class_Texture2D_method_draw_rect_region>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false, clip_uv\: :ref:`bool<class_bool>` = true\ ) |const| |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>` | :ref:`get_format<class_Texture2D_method_get_format>`\ (\ ) |const|                                                                                                                                                                                                                                                                           |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`            | :ref:`get_height<class_Texture2D_method_get_height>`\ (\ ) |const|                                                                                                                                                                                                                                                                           |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`        | :ref:`get_image<class_Texture2D_method_get_image>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`            | :ref:`get_mipmap_count<class_Texture2D_method_get_mipmap_count>`\ (\ ) |const|                                                                                                                                                                                                                                                               |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`    | :ref:`get_size<class_Texture2D_method_get_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                               |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`            | :ref:`get_width<class_Texture2D_method_get_width>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`          | :ref:`has_alpha<class_Texture2D_method_has_alpha>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`          | :ref:`has_mipmaps<class_Texture2D_method_has_mipmaps>`\ (\ ) |const|                                                                                                                                                                                                                                                                         |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Texture2D_private_method__draw:

.. rst-class:: classref-method

|void| **_draw**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw>`

Chiamato quando si richiede che l'intera **Texture2D** sia disegnata su un :ref:`CanvasItem<class_CanvasItem>`, con l'offset in alto a sinistra specificato in ``pos``. ``modulate`` specifica un moltiplicatore per i colori disegnati, mentre ``transpose`` specifica se il disegno deve essere eseguito in ordine di colonna anziché in ordine di riga (disegnando la texture ruotata di 90 gradi in senso orario).

\ **Nota:** Questo è utilizzato solo nel rendering 2D, non in quello 3D.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__draw_rect:

.. rst-class:: classref-method

|void| **_draw_rect**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw_rect>`

Chiamato quando si richiede che la **Texture2D** sia disegnata nel rettangolo ``rect`` sul :ref:`CanvasItem<class_CanvasItem>` specificato. ``modulate`` specifica un moltiplicatore per i colori disegnati, mentre ``transpose`` specifica se il disegno deve essere eseguito in ordine di colonna anziché in ordine di riga (disegnando la texture ruotata di 90 gradi in senso orario).

\ **Nota:** Questo è utilizzato solo nel rendering 2D, non in quello 3D.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__draw_rect_region:

.. rst-class:: classref-method

|void| **_draw_rect_region**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`, clip_uv\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw_rect_region>`

Chiamato quando una parte della **Texture2D** specificata dalle coordinate di ``src_rect`` deve essere disegnata nel rettangolo ``rect`` sul :ref:`CanvasItem<class_CanvasItem>` specificato. ``modulate`` specifica un moltiplicatore per i colori disegnati, mentre ``transpose`` specifica se il disegno deve essere eseguito in ordine di colonna anziché in ordine di riga (disegnando la texture ruotata di 90 gradi in senso orario).

\ **Nota:** Questo è utilizzato solo nel rendering 2D, non in quello 3D.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **_get_format**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__get_format>`

Chiamato quando :ref:`get_format()<class_Texture2D_method_get_format>` viene chiamato.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture2D_private_method__get_height>`

Chiamato quando viene richiesta l'altezza della **Texture2D**.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **_get_image**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__get_image>`

Chiamato quando :ref:`get_image()<class_Texture2D_method_get_image>` viene chiamato.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_mipmap_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_mipmap_count**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__get_mipmap_count>`

Chiamato quando :ref:`get_mipmap_count()<class_Texture2D_method_get_mipmap_count>` viene chiamato.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture2D_private_method__get_width>`

Chiamato quando viene richiesta la larghezza della **Texture2D**.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__has_alpha:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_alpha**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__has_alpha>`

Chiamato quando viene richiesta la presenza di un canale alfa nella **Texture2D**.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_mipmaps**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__has_mipmaps>`

Chiamato quando :ref:`has_mipmaps()<class_Texture2D_method_has_mipmaps>` viene chiamato.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__is_pixel_opaque:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_pixel_opaque**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__is_pixel_opaque>`

Chiamato quando lo stato opaco di un pixel nella **Texture2D** viene richiesto nella posizione ``(x, y)`` specificata.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_create_placeholder>`

Crea una versione segnaposto di questa risorsa (:ref:`PlaceholderTexture2D<class_PlaceholderTexture2D>`).

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, position\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Texture2D_method_draw>`

Disegna la texture attraverso un :ref:`CanvasItem<class_CanvasItem>` con l'API del :ref:`RenderingServer<class_RenderingServer>` nella posizione ``position``.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw_rect:

.. rst-class:: classref-method

|void| **draw_rect**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Texture2D_method_draw_rect>`

Disegna la texture attraverso un :ref:`CanvasItem<class_CanvasItem>` con l'API del :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw_rect_region:

.. rst-class:: classref-method

|void| **draw_rect_region**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false, clip_uv\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Texture2D_method_draw_rect_region>`

Disegna una parte della texture attraverso un :ref:`CanvasItem<class_CanvasItem>` con l'API del :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_format>`

Restituisce il formato immagine della texture.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_height>`

Restituisce l'altezza della texture in pixel.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_image**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_image>`

Restituisce un':ref:`Image<class_Image>` che è una copia dei dati da questa **Texture2D** (viene creata una nuova :ref:`Image<class_Image>` ogni volta). È possibile accedere alle :ref:`Image<class_Image>` e manipolarle direttamente.

\ **Nota:** Questo restituirà ``null`` se questa **Texture2D** non è valida.

\ **Nota:** Questo recupererà i dati della texture dalla GPU, il che potrebbe causare problemi di prestazioni in caso di uso eccessivo. Evita di chiamare :ref:`get_image()<class_Texture2D_method_get_image>` ad ogni frame, soprattutto su texture di grandi dimensioni.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_mipmap_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_mipmap_count**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_mipmap_count>`

Restituisce il numero di mipmap della texture.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_size>`

Restituisce le dimensioni della texture in pixel.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_width>`

Restituisce la larghezza della texture in pixel.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_has_alpha:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_alpha**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_has_alpha>`

Restituisce ``true`` se questa **Texture2D** ha un canale alfa.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_mipmaps**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_has_mipmaps>`

Restituisce ``true`` se la texture ha mipmap.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
