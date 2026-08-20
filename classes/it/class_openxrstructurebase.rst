:github_url: hide

.. _class_OpenXRStructureBase:

OpenXRStructureBase
===================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`OpenXRSpatialContextPersistenceConfig<class_OpenXRSpatialContextPersistenceConfig>`

Oggetto per memorizzare i dati di strutture OpenXR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Oggetto per memorizzare i dati di strutture OpenXR che vengono passati durante le chiamate alle API di OpenXR.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+------------------------------------------------------+
   | :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` | :ref:`next<class_OpenXRStructureBase_property_next>` |
   +-------------------------------------------------------+------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_header<class_OpenXRStructureBase_private_method__get_header>`\ (\ next\: :ref:`int<class_int>`\ ) |virtual| |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_structure_type<class_OpenXRStructureBase_method_get_structure_type>`\ (\ )                                   |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRStructureBase_property_next:

.. rst-class:: classref-property

:ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **next** :ref:`🔗<class_OpenXRStructureBase_property_next>`

.. rst-class:: classref-property-setget

- |void| **set_next**\ (\ value\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ )
- :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **get_next**\ (\ )

Impostando un altro oggetto struttura in questo punto, è possibile incatenare tra loro queste strutture per estendere la funzionalità dell'API. Consulta la documentazione di OpenXR per sapere quali strutture si possono usare con una determinata chiamata all'API.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRStructureBase_private_method__get_header:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_header**\ (\ next\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRStructureBase_private_method__get_header>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRStructureBase_method_get_structure_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_structure_type**\ (\ ) :ref:`🔗<class_OpenXRStructureBase_method_get_structure_type>`

Restituisce il tipo di struttura (``XrStructureType`` di OpenXR) utilizzatoper questa struttura.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
