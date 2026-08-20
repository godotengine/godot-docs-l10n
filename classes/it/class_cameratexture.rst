:github_url: hide

.. _class_CameraTexture:

CameraTexture
=============

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Texture fornita da un :ref:`CameraFeed<class_CameraFeed>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa texture dà accesso alla texture della fotocamera fornita da :ref:`CameraFeed<class_CameraFeed>`.

\ **Nota:** Molte fotocamere forniscono immagini in YCbCr che devono essere convertite in uno shader.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`camera_feed_id<class_CameraTexture_property_camera_feed_id>`     | ``0``                                                                                  |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`camera_is_active<class_CameraTexture_property_camera_is_active>` | ``false``                                                                              |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | resource_local_to_scene                                                | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`FeedImage<enum_CameraServer_FeedImage>` | :ref:`which_feed<class_CameraTexture_property_which_feed>`             | ``0``                                                                                  |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CameraTexture_property_camera_feed_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **camera_feed_id** = ``0`` :ref:`🔗<class_CameraTexture_property_camera_feed_id>`

.. rst-class:: classref-property-setget

- |void| **set_camera_feed_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_camera_feed_id**\ (\ )

L'ID del :ref:`CameraFeed<class_CameraFeed>` per il quale deve essere visualizzata la fotocamera.

.. rst-class:: classref-item-separator

----

.. _class_CameraTexture_property_camera_is_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **camera_is_active** = ``false`` :ref:`🔗<class_CameraTexture_property_camera_is_active>`

.. rst-class:: classref-property-setget

- |void| **set_camera_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_camera_active**\ (\ )

Proprietà di convenienza che dà accesso alla proprietà attiva del :ref:`CameraFeed<class_CameraFeed>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraTexture_property_which_feed:

.. rst-class:: classref-property

:ref:`FeedImage<enum_CameraServer_FeedImage>` **which_feed** = ``0`` :ref:`🔗<class_CameraTexture_property_which_feed>`

.. rst-class:: classref-property-setget

- |void| **set_which_feed**\ (\ value\: :ref:`FeedImage<enum_CameraServer_FeedImage>`\ )
- :ref:`FeedImage<enum_CameraServer_FeedImage>` **get_which_feed**\ (\ )

L'immagine del :ref:`CameraFeed<class_CameraFeed>` a cui vogliamo accedere, importante se l'immagine della fotocamera è divisa in componenti Y e CbCr.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
