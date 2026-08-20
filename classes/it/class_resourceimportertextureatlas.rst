:github_url: hide

.. _class_ResourceImporterTextureAtlas:

ResourceImporterTextureAtlas
============================

**Eredita:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa una raccolta di texture da un'immagine PNG in un :ref:`AtlasTexture<class_AtlasTexture>` ottimizzato per il rendering 2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo importa una raccolta di texture da un'immagine PNG in un :ref:`AtlasTexture<class_AtlasTexture>` o :ref:`ArrayMesh<class_ArrayMesh>` 2D. Può essere usato per risparmiare memoria quando si importano animazioni 2D da spritesheet. Gli atlanti delle texture sono supportati solo nel rendering 2D, non in quello 3D. Vedi anche :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` e :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`.

\ **Nota:** **ResourceImporterTextureAtlas** non gestisce l'importazione di :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`, il quale viene creato tramite l'editor di :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`atlas_file<class_ResourceImporterTextureAtlas_property_atlas_file>`                                       | ``""``    |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`                               | ``false`` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>`                                     | ``0``     |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>` | ``true``  |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ResourceImporterTextureAtlas_property_atlas_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **atlas_file** = ``""`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_atlas_file>`

Percorso per lo spritesheet dell'atlante. È *necessario* impostarlo su un percorso valido per un'immagine PNG. Altrimenti, l'atlante non verrà importato.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_crop_to_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **crop_to_region** = ``false`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_crop_to_region>`

Se ``true``, scarta le aree vuote dall'atlante. Ciò influisce solo sul posizionamento finale dello sprite, non sulla memorizzazione. Vedi anche :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`.

\ **Nota:** Efficace solo se :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` è **Region**.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_import_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **import_mode** = ``0`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_import_mode>`

**Region:** Importa l'atlante in una risorsa :ref:`AtlasTexture<class_AtlasTexture>`, che è renderizzata come un rettangolo. Questo è veloce da renderizzare, ma le aree trasparenti devono comunque essere renderizzate se non possono essere ritagliate in modo efficace da :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`. Questo può ridurre le prestazioni durante il rendering di sprite di grandi dimensioni sullo schermo.

\ **Mesh:** Importa l'atlante come una risorsa :ref:`ArrayMesh<class_ArrayMesh>`, mantenendo visibile la bitmap originale (ma renderizzata come un poligono). Questo può essere utilizzato per ridurre il fill rate durante il rendering di sprite trasparenti di grandi dimensioni, a costo di un rendering più lento se ci sono poche o nessuna area trasparente nello sprite.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trim_alpha_border_from_region** = ``true`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`

Se ``true``, ritaglia la regione per escludere i pixel completamente trasparenti usando un rettangolo di ritaglio (che non viene mai ruotato). Questo può essere usato per risparmiare memoria. Vedi anche :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`.

\ **Nota:** Efficace solo se :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` è **Region**.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
