:github_url: hide

.. _class_CubemapArray:

CubemapArray
============

**Eredita:** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un array di :ref:`Cubemap<class_Cubemap>`, memorizzati insieme e con un singolo riferimento.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

I **CubemapArray** sono composti da un array di :ref:`Cubemap<class_Cubemap>`. Come i :ref:`Cubemap<class_Cubemap>`, sono composti da più texture, la cui quantità deve essere divisibile per 6 (una per ogni faccia del cubo).

Il vantaggio principale dei **CubemapArray** è che è possibile accedervi nel codice di uno shader attraverso un singolo riferimento di texture. In altre parole, è possibile passare più :ref:`Cubemap<class_Cubemap>` in uno shader attraverso un singolo **CubemapArray**. I :ref:`Cubemap<class_Cubemap>` sono allocati in regioni di cache adiacenti sulla GPU, il che rende i **CubemapArray** il modo più efficiente per memorizzare più :ref:`Cubemap<class_Cubemap>`.

Godot utilizza i **CubemapArray** internamente per molti effetti, incluso lo :ref:`Sky<class_Sky>` se :ref:`ProjectSettings.rendering/reflections/sky_reflections/texture_array_reflections<class_ProjectSettings_property_rendering/reflections/sky_reflections/texture_array_reflections>` è impostato su ``true``.

Per creare manualmente un file texture di questo tipo, reimporta i file immagine tramite le preimpostazioni di importazione nel pannello File System. Per creare un CubemapArray da codice, usa :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>` su un'istanza della classe CubemapArray.

L'ordine previsto delle immagini è X+, X-, Y+, Y-, Z+, Z- (nel sistema di coordinate di Godot, quindi Y+ è "su" e Z- è "avanti"). Puoi usare uno dei seguenti modelli come base:

- `Modello di cubemap 2×3 (opzione di layout predefinita) <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp>`__\ 

- `Modello di cubemap 3×2 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp>`__\ 

- `Modello di cubemap 1×6 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp>`__\ 

- `Modello di cubemap 6×1 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp>`__\ 

Più livelli sono impilati uno sopra l'altro quando si utilizza l'opzione di importazione verticale predefinita (con il primo livello in alto). Alternativamente, puoi scegliere un layout orizzontale nelle opzioni di importazione (con il primo livello a sinistra).

\ **Nota:** **CubemapArray** non è supportato nel renderer Compatibilità a causa di limitazioni dell'API grafica.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_CubemapArray_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CubemapArray_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_CubemapArray_method_create_placeholder>`

Crea una versione segnaposto di questa risorsa (:ref:`PlaceholderCubemapArray<class_PlaceholderCubemapArray>`).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
