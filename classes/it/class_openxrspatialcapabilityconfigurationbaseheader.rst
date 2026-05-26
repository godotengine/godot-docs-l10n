:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader:

OpenXRSpatialCapabilityConfigurationBaseHeader
==============================================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`OpenXRSpatialCapabilityConfigurationAnchor<class_OpenXRSpatialCapabilityConfigurationAnchor>`, :ref:`OpenXRSpatialCapabilityConfigurationAprilTag<class_OpenXRSpatialCapabilityConfigurationAprilTag>`, :ref:`OpenXRSpatialCapabilityConfigurationAruco<class_OpenXRSpatialCapabilityConfigurationAruco>`, :ref:`OpenXRSpatialCapabilityConfigurationMicroQrCode<class_OpenXRSpatialCapabilityConfigurationMicroQrCode>`, :ref:`OpenXRSpatialCapabilityConfigurationPlaneTracking<class_OpenXRSpatialCapabilityConfigurationPlaneTracking>`, :ref:`OpenXRSpatialCapabilityConfigurationQrCode<class_OpenXRSpatialCapabilityConfigurationQrCode>`

Wrapper base class for OpenXR Spatial Capability Configuration headers.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Wrapper base class for OpenXR Spatial Capability Configuration headers. This class needs to be implemented for each capability configuration structure usable within OpenXR's spatial entities system.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`_get_configuration<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__get_configuration>`\ (\ ) |virtual|                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_has_valid_configuration<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__has_valid_configuration>`\ (\ ) |virtual| |const| |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_configuration<class_OpenXRSpatialCapabilityConfigurationBaseHeader_method_get_configuration>`\ (\ )                                         |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_valid_configuration<class_OpenXRSpatialCapabilityConfigurationBaseHeader_method_has_valid_configuration>`\ (\ ) |const|                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__get_configuration:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_configuration**\ (\ ) |virtual| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__get_configuration>`

Return a pointer (encoded as an ``int64_t``) to a struct holding the spatial capability configuration data. The memory for this struct should remain accessible as long as this object remains instantiated.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__has_valid_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_configuration**\ (\ ) |virtual| |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__has_valid_configuration>`

Return ``true`` if this object contains a valid configuration that can be retrieved when calling :ref:`_get_configuration()<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__get_configuration>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader_method_get_configuration:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_configuration**\ (\ ) :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationBaseHeader_method_get_configuration>`

Gets a pointer to the ``XrSpatialCapabilityConfigurationBaseHeaderEXT`` struct.

\ **Note:** This method is intended to be used from GDExtensions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader_method_has_valid_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_valid_configuration**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationBaseHeader_method_has_valid_configuration>`

Returns ``true`` if this object contains a valid configuration that can be used when calling :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
