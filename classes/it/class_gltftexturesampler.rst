:github_url: hide

.. _class_GLTFTextureSampler:

GLTFTextureSampler
==================

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta un campionatore di texture glTF

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Rappresenta un campionatore di texture come definito dalle specificazioni glTF di base. I campionatori di texture in glTF definiscono come campionare i dati dall'immagine base della texture, quando si renderizza la texture su un oggetto.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Caricamento e salvataggio di file a tempo di esecuzione <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`mag_filter<class_GLTFTextureSampler_property_mag_filter>` | ``9729``  |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`min_filter<class_GLTFTextureSampler_property_min_filter>` | ``9987``  |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`wrap_s<class_GLTFTextureSampler_property_wrap_s>`         | ``10497`` |
   +-----------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>` | :ref:`wrap_t<class_GLTFTextureSampler_property_wrap_t>`         | ``10497`` |
   +-----------------------+-----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GLTFTextureSampler_property_mag_filter:

.. rst-class:: classref-property

:ref:`int<class_int>` **mag_filter** = ``9729`` :ref:`🔗<class_GLTFTextureSampler_property_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mag_filter**\ (\ )

Filtro di ingrandimento della texture, utilizzato quando la texture appare più grande sullo schermo rispetto all'immagine sorgente.

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_min_filter:

.. rst-class:: classref-property

:ref:`int<class_int>` **min_filter** = ``9987`` :ref:`🔗<class_GLTFTextureSampler_property_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_min_filter**\ (\ )

Filtro di minimizzazione della texture, utilizzato quando la texture appare più piccola sullo schermo rispetto all'immagine sorgente.

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_wrap_s:

.. rst-class:: classref-property

:ref:`int<class_int>` **wrap_s** = ``10497`` :ref:`🔗<class_GLTFTextureSampler_property_wrap_s>`

.. rst-class:: classref-property-setget

- |void| **set_wrap_s**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_wrap_s**\ (\ )

Modalità di avvolgimento da utilizzare per le coordinate della texture sull'asse S (orizzontale).

.. rst-class:: classref-item-separator

----

.. _class_GLTFTextureSampler_property_wrap_t:

.. rst-class:: classref-property

:ref:`int<class_int>` **wrap_t** = ``10497`` :ref:`🔗<class_GLTFTextureSampler_property_wrap_t>`

.. rst-class:: classref-property-setget

- |void| **set_wrap_t**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_wrap_t**\ (\ )

Modalità di avvolgimento da utilizzare per le coordinate della texture sull'asse T (verticale).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
