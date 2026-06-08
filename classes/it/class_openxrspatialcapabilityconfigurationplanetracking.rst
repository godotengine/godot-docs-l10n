:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking:

OpenXRSpatialCapabilityConfigurationPlaneTracking
=================================================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Intestazione di configurazione per il tracciamento dei piani.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Intestazione di configurazione per il tracciamento dei piani. Passala a :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` per creare un contesto spaziale con capacità di tracciamento dei piani.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`get_enabled_components<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_get_enabled_components>`\ (\ ) |const| |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`supports_labels<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_labels>`\ (\ )                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`supports_mesh_2d<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_mesh_2d>`\ (\ )                     |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`supports_polygons<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_polygons>`\ (\ )                   |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_get_enabled_components>`

Returns the components enabled by this configuration.

\ **Note:** Only valid after this configuration was used to create a spatial context.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_labels:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_labels**\ (\ ) :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_labels>`

Returns ``true`` if we support the plane semantic label component (only valid after the OpenXR session has started). You can query these using the :ref:`OpenXRSpatialComponentPlaneSemanticLabelList<class_OpenXRSpatialComponentPlaneSemanticLabelList>` data object.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_mesh_2d:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_mesh_2d**\ (\ ) :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_mesh_2d>`

Returns ``true`` if we support the mesh 2D component (only valid after the OpenXR session has started). You can query these using the :ref:`OpenXRSpatialComponentMesh2DList<class_OpenXRSpatialComponentMesh2DList>` data object.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_polygons:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_polygons**\ (\ ) :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_polygons>`

Returns ``true`` if we support the polygon 2D component (only valid after the OpenXR session has started). You can query these using the :ref:`OpenXRSpatialComponentPolygon2DList<class_OpenXRSpatialComponentPolygon2DList>` data object.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
