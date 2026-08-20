:github_url: hide

.. _class_GLTFTexture:

GLTFTexture
===========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

GLTFTexture rappresenta una texture in un file glTF.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`sampler<class_GLTFTexture_property_sampler>`     | ``-1`` |
   +-----------------------+--------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`src_image<class_GLTFTexture_property_src_image>` | ``-1`` |
   +-----------------------+--------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GLTFTexture_property_sampler:

.. rst-class:: classref-property

:ref:`int<class_int>` **sampler** = ``-1`` :ref:`🔗<class_GLTFTexture_property_sampler>`

.. rst-class:: classref-property-setget

- |void| **set_sampler**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sampler**\ (\ )

ID del campionatore di texture da usare quando si campiona l'immagine. Se -1, viene usato il campionatore di texture predefinito (con il filtraggio lineare e la ripetizione dell'avvolgimento su entrambi gli assi).

.. rst-class:: classref-item-separator

----

.. _class_GLTFTexture_property_src_image:

.. rst-class:: classref-property

:ref:`int<class_int>` **src_image** = ``-1`` :ref:`🔗<class_GLTFTexture_property_src_image>`

.. rst-class:: classref-property-setget

- |void| **set_src_image**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_src_image**\ (\ )

L'indice dell'immagine associata a questa texture, vedi :ref:`GLTFState.get_images()<class_GLTFState_method_get_images>`. Se -1, questa texture non ha un'immagine assegnata.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
