:github_url: hide

.. _class_CameraAttributes:

CameraAttributes
================

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`CameraAttributesPhysical<class_CameraAttributesPhysical>`, :ref:`CameraAttributesPractical<class_CameraAttributesPractical>`

Clase antecesora para la configuración de la cámara.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Controla los atributos específicos de la cámara, como la profundidad de campo (depth of field) y la anulación de la exposición (exposure override).

Cuando se utiliza en un :ref:`WorldEnvironment<class_WorldEnvironment>`, proporciona los ajustes predeterminados de exposición, exposición automática y profundidad de campo que usarán todas las cámaras que no tengan sus propios **CameraAttributes**, incluida la cámara del editor. Cuando se usa en un :ref:`Camera3D<class_Camera3D>`, anulará cualquier **CameraAttributes** configurado en el :ref:`WorldEnvironment<class_WorldEnvironment>`. Al usarse en :ref:`VoxelGI<class_VoxelGI>` o :ref:`LightmapGI<class_LightmapGI>`, solo se utilizarán los ajustes de exposición.

Consulta también :ref:`Environment<class_Environment>` para los ajustes generales del entorno 3D.

Esta es una clase virtual pura heredada por :ref:`CameraAttributesPhysical<class_CameraAttributesPhysical>` y :ref:`CameraAttributesPractical<class_CameraAttributesPractical>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`auto_exposure_enabled<class_CameraAttributes_property_auto_exposure_enabled>` | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_scale<class_CameraAttributes_property_auto_exposure_scale>`     | ``0.4``   |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_speed<class_CameraAttributes_property_auto_exposure_speed>`     | ``0.5``   |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`exposure_multiplier<class_CameraAttributes_property_exposure_multiplier>`     | ``1.0``   |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`exposure_sensitivity<class_CameraAttributes_property_exposure_sensitivity>`   | ``100.0`` |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CameraAttributes_property_auto_exposure_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_exposure_enabled** = ``false`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_exposure_enabled**\ (\ )

If ``true``, enables the tonemapping auto exposure mode of the scene renderer. If ``true``, the renderer will automatically determine the exposure setting to adapt to the scene's illumination and the observed light.

\ **Note:** Auto-exposure is only supported in the Forward+ rendering method, not Mobile or Compatibility.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_auto_exposure_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_scale** = ``0.4`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_scale>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_scale**\ (\ )

La escala del efecto de la exposición automática. Afecta a la intensidad de la exposición automática.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_auto_exposure_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_speed** = ``0.5`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_speed>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_speed**\ (\ )

La velocidad del efecto de la exposición automática. Afecta al tiempo necesario para que la cámara realice la exposición automática.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_exposure_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_multiplier** = ``1.0`` :ref:`🔗<class_CameraAttributes_property_exposure_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_exposure_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_exposure_multiplier**\ (\ )

Multiplicador para la cantidad de exposición. Un valor más alto da como resultado una imagen más brillante.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_exposure_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_sensitivity** = ``100.0`` :ref:`🔗<class_CameraAttributes_property_exposure_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_exposure_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_exposure_sensitivity**\ (\ )

Sensibilidad de los sensores de cámara, medida en ISO. Una sensibilidad mayor produce una imagen más brillante.

Si :ref:`auto_exposure_enabled<class_CameraAttributes_property_auto_exposure_enabled>` está ``true``, esto puede utilizarse como método de compensación de exposición; duplicar el valor aumentará el valor de exposición (medido en EV100) en 1 parada.

\ **Nota:** Solo disponible cuando :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` está habilitado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
