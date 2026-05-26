:github_url: hide

.. _class_ImageTexture:

ImageTexture
============

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una :ref:`Texture2D<class_Texture2D>` basata su un :ref:`Image<class_Image>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una :ref:`Texture2D<class_Texture2D>` basata su una :ref:`Image<class_Image>`. Per visualizzare un'immagine, è necessario creare una **ImageTexture** da essa attraverso il metodo :ref:`create_from_image()<class_ImageTexture_method_create_from_image>`:

::

    var image = Image.load_from_file("res://icon.svg")
    var texture = ImageTexture.create_from_image(image)
    $Sprite2D.texture = texture

In questo modo, è possibile creare le texture in fase di esecuzione caricando le immagini sia dall'interno dell'editor sia esternamente.

\ **Attenzione:** Si consiglia di caricare le texture importate con :ref:`@GDScript.load()<class_@GDScript_method_load>` invece di caricarle dinamicamente dall'interno del file system con :ref:`Image.load()<class_Image_method_load>`, poiché ciò potrebbe non funzionare nei progetti esportati:

::

    var texture = load("res://icon.svg")
    $Sprite2D.texture = texture

Questo perché le immagini devono essere importate prima come :ref:`CompressedTexture2D<class_CompressedTexture2D>` per essere caricate con :ref:`@GDScript.load()<class_@GDScript_method_load>`. Se si desidera comunque caricare un file immagine come qualsiasi altra :ref:`Resource<class_Resource>`, importarla invece come risorsa :ref:`Image<class_Image>` e poi caricarla normalmente attraverso il metodo :ref:`@GDScript.load()<class_@GDScript_method_load>`.

\ **Nota:** L'immagine può essere recuperata da una texture importata tramite il metodo :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>`, che restituisce una copia dell'immagine:

::

    var texture = load("res://icon.svg")
    var image: Image = texture.get_image()

Una **ImageTexture** non è pensata per essere utilizzata direttamente dall'interfaccia dell'editor, ed è utile soprattutto per il rendering dinamico delle immagini sullo schermo tramite codice. Se è necessario generare immagini proceduralmente dall'editor, considerare di salvare e importare le immagini come risorse texture personalizzate implementando un nuovo :ref:`EditorImportPlugin<class_EditorImportPlugin>`.

\ **Nota:** Le dimensioni massime della texture sono 16384×16384 pixel a causa delle limitazioni degli hardware grafici.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Importare immagini <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ImageTexture<class_ImageTexture>` | :ref:`create_from_image<class_ImageTexture_method_create_from_image>`\ (\ image\: :ref:`Image<class_Image>`\ ) |static| |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_image<class_ImageTexture_method_set_image>`\ (\ image\: :ref:`Image<class_Image>`\ )                          |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_size_override<class_ImageTexture_method_set_size_override>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )     |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`update<class_ImageTexture_method_update>`\ (\ image\: :ref:`Image<class_Image>`\ )                                |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ImageTexture_method_create_from_image:

.. rst-class:: classref-method

:ref:`ImageTexture<class_ImageTexture>` **create_from_image**\ (\ image\: :ref:`Image<class_Image>`\ ) |static| :ref:`🔗<class_ImageTexture_method_create_from_image>`

Crea una nuova **ImageTexture** e la inizializza allocando e impostando i dati da una :ref:`Image<class_Image>`.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_image:

.. rst-class:: classref-method

|void| **set_image**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_set_image>`

Sostituisce i dati della texture con una nuova :ref:`Image<class_Image>`. Ciò riallocherà nuova memoria per la texture.

Se si desidera aggiornare l'immagine, ma c'è bisogno di modificarne i parametri (formato, dimensione), usare :ref:`update()<class_ImageTexture_method_update>` per migliori prestazioni.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_size_override:

.. rst-class:: classref-method

|void| **set_size_override**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_ImageTexture_method_set_size_override>`

Ridimensiona la texture alle dimensioni specificate.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_update>`

Sostituisce i dati della texture con una nuova :ref:`Image<class_Image>`.

\ **Nota:** La texture deve essere creata usando :ref:`create_from_image()<class_ImageTexture_method_create_from_image>` o inizializzata prima con il metodo :ref:`set_image()<class_ImageTexture_method_set_image>` prima di poter essere aggiornata. Le nuove dimensioni dell'immagine, il formato e la configurazione delle mipmap devono corrispondere alla configurazione dell'immagine della texture esistente.

Usa questo metodo invece di :ref:`set_image()<class_ImageTexture_method_set_image>` se è necessario aggiornare la texture frequentemente, il che è più veloce di allocare memoria per una nuova texture ogni volta.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
