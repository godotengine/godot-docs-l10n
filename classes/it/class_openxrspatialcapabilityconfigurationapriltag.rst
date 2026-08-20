:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag:

OpenXRSpatialCapabilityConfigurationAprilTag
============================================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Intestazione di configurazione per i marcatori April tag.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Intestazione di configurazione per i marcatori April tag. Passala a :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` per creare un contesto spaziale in grado di rilevare gli April tag.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-------+
   | :ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` | :ref:`april_dict<class_OpenXRSpatialCapabilityConfigurationAprilTag_property_april_dict>` | ``4`` |
   +-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`get_enabled_components<class_OpenXRSpatialCapabilityConfigurationAprilTag_method_get_enabled_components>`\ (\ ) |const| |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict:

.. rst-class:: classref-enumeration

enum **AprilTagDict**: :ref:`🔗<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>`

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_16H5:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_16H5** = ``1``

4 per 4 bit, distanza di Hamming minima tra due codici qualsiasi = 5, 30 codici.

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_25H9:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_25H9** = ``2``

5 per 5 bit, distanza di Hamming minima tra due codici qualsiasi = 9, 35 codici.

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_36H10:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_36H10** = ``3``

6 by 6 bits, minimum Hamming distance between any two codes = 10, 2320 codes.

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_36H11:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_36H11** = ``4``

6 per 6 bit, distanza di Hamming minima tra due codici qualsiasi = 11, 587 codici.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_property_april_dict:

.. rst-class:: classref-property

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **april_dict** = ``4`` :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAprilTag_property_april_dict>`

.. rst-class:: classref-property-setget

- |void| **set_april_dict**\ (\ value\: :ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>`\ )
- :ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **get_april_dict**\ (\ )

Dizionario da utilizzare per decodificare gli April tag.

\ **Nota:** Deve essere impostato prima di utilizzare questa configurazione per creare un contesto spaziale.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAprilTag_method_get_enabled_components>`

Restituisce i componenti abilitati da questa configurazione.

\ **Nota:** Valido solo dopo che questa configurazione è stata utilizzata per creare un contesto spaziale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
