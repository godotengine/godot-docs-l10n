:github_url: hide

.. _class_ImageTexture3D:

ImageTexture3D
==============

**Eredita:** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una texture a 3 dimensioni.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**ImageTexture3D** è una :ref:`ImageTexture<class_ImageTexture>` tridimensionale che ha larghezza, altezza e profondità. Vedi anche :ref:`ImageTextureLayered<class_ImageTextureLayered>`.

Le texture 3D sono in genere utilizzate per memorizzare mappe di densità per :ref:`FogMaterial<class_FogMaterial>`, LUT di correzione colore per :ref:`Environment<class_Environment>`, campi vettoriali per :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>` e mappe di collisione per :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>`. Le texture 3D possono anche essere utilizzate in shader personalizzati.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create<class_ImageTexture3D_method_create>`\ (\ format\: :ref:`Format<enum_Image_Format>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, use_mipmaps\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`update<class_ImageTexture3D_method_update>`\ (\ data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ )                                                                                                                                                                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ImageTexture3D_method_create:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create**\ (\ format\: :ref:`Format<enum_Image_Format>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, use_mipmaps\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTexture3D_method_create>`

Crea l'**ImageTexture3D** con il formato (``format``), la larghezza (``width``), l'altezza (``height``) e la profondità (``depth``) specificati. Se ``use_mipmaps`` è ``true``, genera mipmap per l'**ImageTexture3D**.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture3D_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTexture3D_method_update>`

Sostituisce i dati esistenti della texture con i livelli specificati in ``data``. La dimensione di ``data`` deve corrispondere ai parametri utilizzati per :ref:`create()<class_ImageTexture3D_method_create>`. In altre parole, la texture non può essere ridimensionata o avere il suo formato modificato chiamando :ref:`update()<class_ImageTexture3D_method_update>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
