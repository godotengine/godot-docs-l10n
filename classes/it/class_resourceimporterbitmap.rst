:github_url: hide

.. _class_ResourceImporterBitMap:

ResourceImporterBitMap
======================

**Eredita:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa una risorsa :ref:`BitMap<class_BitMap>` (array 2D di valori booleani).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Le risorse :ref:`BitMap<class_BitMap>` sono in genere utilizzate come maschere di clic in :ref:`TextureButton<class_TextureButton>` e :ref:`TouchScreenButton<class_TouchScreenButton>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Importare immagini <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`create_from<class_ResourceImporterBitMap_property_create_from>` | ``0``   |
   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`threshold<class_ResourceImporterBitMap_property_threshold>`     | ``0.5`` |
   +---------------------------+-----------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ResourceImporterBitMap_property_create_from:

.. rst-class:: classref-property

:ref:`int<class_int>` **create_from** = ``0`` :ref:`🔗<class_ResourceImporterBitMap_property_create_from>`

L'origine dei dati da utilizzare per generare la bitmap.

\ **Black & White:** I pixel il cui valore HSV è maggiore della :ref:`threshold<class_ResourceImporterBitMap_property_threshold>` saranno considerati "abilitati" (il bit è ``true``). Se il pixel è inferiore o uguale alla soglia, sarà considerato "disabilitato" (il bit è ``false``).

\ **Alpha:** I pixel il cui valore alfa è maggiore della :ref:`threshold<class_ResourceImporterBitMap_property_threshold>` saranno considerati "abilitati" (il bit è ``true``). Se il pixel è inferiore o uguale alla soglia, sarà considerato "disabilitato" (il bit è ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBitMap_property_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold** = ``0.5`` :ref:`🔗<class_ResourceImporterBitMap_property_threshold>`

La soglia da usare per determinare quali bit bisogna considerare abilitati o disabilitati. Vedi anche :ref:`create_from<class_ResourceImporterBitMap_property_create_from>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
