:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationAnchor:

OpenXRSpatialCapabilityConfigurationAnchor
==========================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Cabecera de configuración para anclas espaciales.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Cabecera de configuración para anclas espaciales. Pásalo a :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` para crear un contexto espacial con capacidades de ancla espacial.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`get_enabled_components<class_OpenXRSpatialCapabilityConfigurationAnchor_method_get_enabled_components>`\ (\ ) |const| |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationAnchor_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAnchor_method_get_enabled_components>`

Devuelve los componentes habilitados por esta configuración.

\ **Nota:** Solo válido después de que esta configuración se haya utilizado para crear un contexto espacial.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
