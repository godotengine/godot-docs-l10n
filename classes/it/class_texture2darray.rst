:github_url: hide

.. _class_Texture2DArray:

Texture2DArray
==============

**Eredita:** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una singola risorsa texture che consiste di più immagini separate. Ogni immagine ha le stesse dimensioni e lo stesso numero di livelli mipmap.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un Texture2DArray è diverso da un Texture3D: il Texture2DArray non supporta l'interpolazione trilineare tra le :ref:`Image<class_Image>`, ovvero nessuna fusione. Vedi anche :ref:`Cubemap<class_Cubemap>` e :ref:`CubemapArray<class_CubemapArray>`, che sono array di texture con funzioni di cubemap specializzate.

Un Texture2DArray è anche diverso da un :ref:`AtlasTexture<class_AtlasTexture>`: in un Texture2DArray, tutte le immagini sono trattate separatamente. In un atlante, le regioni (ovvero le singole immagini) possono avere dimensioni diverse. Inoltre, di solito è necessario aggiungere un imbottitura attorno alle regioni, per evitare una mappatura UV accidentale su più di una regione. Lo stesso vale per il mipmapping: le catene di mipmap sono gestite separatamente per ogni livello. In un atlante, la suddivisione deve essere eseguita manualmente nello shader dei frammenti.

Per creare autonomamente un file di texture di questo tipo, reimporta i file di immagine attraverso i preset di importazione dell'editor di Godot. Per creare un Texture2DArray da codice, usa :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>` su un'istanza della classe Texture2DArray.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Texture2DArray_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Texture2DArray_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture2DArray_method_create_placeholder>`

Crea una versione segnaposto di questa risorsa (:ref:`PlaceholderTexture2DArray<class_PlaceholderTexture2DArray>`).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
