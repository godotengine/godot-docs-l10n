:github_url: hide

.. _class_GLTFSpecGloss:

GLTFSpecGloss
=============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Estensione glTF archiviata per materiali speculari/lucidi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

KHR_materials_pbrSpecularGlossiness è un'estensione glTF archiviata. Ciò significa che è deprecata e non consigliata per i nuovi file. Tuttavia, è ancora supportata per il caricamento di vecchi file.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

- `Specifiche sull'estensione glTF KHR_materials_pbrSpecularGlossiness <https://github.com/KhronosGroup/glTF/blob/main/extensions/2.0/Archived/KHR_materials_pbrSpecularGlossiness>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`diffuse_factor<class_GLTFSpecGloss_property_diffuse_factor>`   | ``Color(1, 1, 1, 1)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Image<class_Image>` | :ref:`diffuse_img<class_GLTFSpecGloss_property_diffuse_img>`         |                       |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`gloss_factor<class_GLTFSpecGloss_property_gloss_factor>`       | ``1.0``               |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Image<class_Image>` | :ref:`spec_gloss_img<class_GLTFSpecGloss_property_spec_gloss_img>`   |                       |
   +---------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`specular_factor<class_GLTFSpecGloss_property_specular_factor>` | ``Color(1, 1, 1, 1)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GLTFSpecGloss_property_diffuse_factor:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **diffuse_factor** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_GLTFSpecGloss_property_diffuse_factor>`

.. rst-class:: classref-property-setget

- |void| **set_diffuse_factor**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_diffuse_factor**\ (\ )

Il fattore di diffusione riflessa del materiale.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_diffuse_img:

.. rst-class:: classref-property

:ref:`Image<class_Image>` **diffuse_img** :ref:`🔗<class_GLTFSpecGloss_property_diffuse_img>`

.. rst-class:: classref-property-setget

- |void| **set_diffuse_img**\ (\ value\: :ref:`Image<class_Image>`\ )
- :ref:`Image<class_Image>` **get_diffuse_img**\ (\ )

La texture di diffusione.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_gloss_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **gloss_factor** = ``1.0`` :ref:`🔗<class_GLTFSpecGloss_property_gloss_factor>`

.. rst-class:: classref-property-setget

- |void| **set_gloss_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gloss_factor**\ (\ )

La lucentezza o la levigatezza del materiale.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_spec_gloss_img:

.. rst-class:: classref-property

:ref:`Image<class_Image>` **spec_gloss_img** :ref:`🔗<class_GLTFSpecGloss_property_spec_gloss_img>`

.. rst-class:: classref-property-setget

- |void| **set_spec_gloss_img**\ (\ value\: :ref:`Image<class_Image>`\ )
- :ref:`Image<class_Image>` **get_spec_gloss_img**\ (\ )

La texture con lucentezza speculare.

.. rst-class:: classref-item-separator

----

.. _class_GLTFSpecGloss_property_specular_factor:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **specular_factor** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_GLTFSpecGloss_property_specular_factor>`

.. rst-class:: classref-property-setget

- |void| **set_specular_factor**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_specular_factor**\ (\ )

Il colore RGB speculare del materiale. Il canale alfa non è utilizzato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
