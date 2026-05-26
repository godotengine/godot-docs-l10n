:github_url: hide

.. _class_OpenXRSpatialMarkerTrackingCapability:

OpenXRSpatialMarkerTrackingCapability
=====================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Implementación para manejar la lógica de rastreo de marcadores de entidad espacial.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase maneja la extensión de entidad espacial de rastreo de marcadores de OpenXR.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_april_tag_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported>`\ (\ )       |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_aruco_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported>`\ (\ )               |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_micro_qrcode_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported>`\ (\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_qrcode_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported>`\ (\ )             |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_april_tag_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported>`

Devuelve ``true`` si el rastreo de marcadores April tag es compatible con el dispositivo actual.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_aruco_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported>`

Devuelve ``true`` si el rastreo de marcadores Aruco es compatible con el dispositivo actual.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_micro_qrcode_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported>`

Devuelve ``true`` si el rastreo de marcadores de código micro QR es compatible con el dispositivo actual.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_qrcode_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported>`

Devuelve ``true`` si el rastreo de marcadores de código QR es compatible con el dispositivo actual.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
