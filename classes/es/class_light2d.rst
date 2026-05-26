:github_url: hide

.. _class_Light2D:

Light2D
=======

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`DirectionalLight2D<class_DirectionalLight2D>`, :ref:`PointLight2D<class_PointLight2D>`

Emite luz en un entorno 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Emite luz en un entorno 2D. Una luz se define por un color, un valor de energía, un modo (ver constantes) y varios otros parámetros (rango y relacionados con las sombras).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Luces y sombras 2D <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`BlendMode<enum_Light2D_BlendMode>`       | :ref:`blend_mode<class_Light2D_property_blend_mode>`                       | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                      | :ref:`color<class_Light2D_property_color>`                                 | ``Color(1, 1, 1, 1)`` |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                        | :ref:`editor_only<class_Light2D_property_editor_only>`                     | ``false``             |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                        | :ref:`enabled<class_Light2D_property_enabled>`                             | ``true``              |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                      | :ref:`energy<class_Light2D_property_energy>`                               | ``1.0``               |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_item_cull_mask<class_Light2D_property_range_item_cull_mask>`   | ``1``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_layer_max<class_Light2D_property_range_layer_max>`             | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_layer_min<class_Light2D_property_range_layer_min>`             | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_z_max<class_Light2D_property_range_z_max>`                     | ``1024``              |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_z_min<class_Light2D_property_range_z_min>`                     | ``-1024``             |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                      | :ref:`shadow_color<class_Light2D_property_shadow_color>`                   | ``Color(0, 0, 0, 0)`` |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                        | :ref:`shadow_enabled<class_Light2D_property_shadow_enabled>`               | ``false``             |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`ShadowFilter<enum_Light2D_ShadowFilter>` | :ref:`shadow_filter<class_Light2D_property_shadow_filter>`                 | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                      | :ref:`shadow_filter_smooth<class_Light2D_property_shadow_filter_smooth>`   | ``0.0``               |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`shadow_item_cull_mask<class_Light2D_property_shadow_item_cull_mask>` | ``1``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_height<class_Light2D_method_get_height>`\ (\ ) |const|                             |
   +---------------------------+----------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_height<class_Light2D_method_set_height>`\ (\ height\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Light2D_ShadowFilter:

.. rst-class:: classref-enumeration

enum **ShadowFilter**: :ref:`🔗<enum_Light2D_ShadowFilter>`

.. _class_Light2D_constant_SHADOW_FILTER_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **SHADOW_FILTER_NONE** = ``0``

No se aplica ningún filtro al mapa de sombras. Esto proporciona bordes de sombra duros y es lo más rápido de renderizar. Véase :ref:`shadow_filter<class_Light2D_property_shadow_filter>`.

.. _class_Light2D_constant_SHADOW_FILTER_PCF5:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **SHADOW_FILTER_PCF5** = ``1``

El filtrado de porcentaje más cercano (5 muestras) se aplica al mapa de sombras. Esto es más lento en comparación con el renderizado de sombras duras. Véase :ref:`shadow_filter<class_Light2D_property_shadow_filter>`.

.. _class_Light2D_constant_SHADOW_FILTER_PCF13:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **SHADOW_FILTER_PCF13** = ``2``

El filtrado de porcentaje más cercano (13 muestras) se aplica al mapa de sombras. Este es el modo de filtrado de sombras más lento y debe usarse con moderación. Véase :ref:`shadow_filter<class_Light2D_property_shadow_filter>`.

.. rst-class:: classref-item-separator

----

.. _enum_Light2D_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_Light2D_BlendMode>`

.. _class_Light2D_constant_BLEND_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_Light2D_BlendMode>` **BLEND_MODE_ADD** = ``0``

Añade el valor de los píxeles correspondientes a Light2D a los valores de los píxeles que están debajo de él. Este es el comportamiento común de una luz.

.. _class_Light2D_constant_BLEND_MODE_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_Light2D_BlendMode>` **BLEND_MODE_SUB** = ``1``

Resta el valor de los píxeles correspondientes a Light2D a los valores de los píxeles que están debajo de él, lo que resulta en un efecto de luz invertida.

.. _class_Light2D_constant_BLEND_MODE_MIX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_Light2D_BlendMode>` **BLEND_MODE_MIX** = ``2``

Mezcla el valor de los píxeles correspondientes a Light2D con los valores de los píxeles que están debajo de él por interpolación lineal.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Light2D_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_Light2D_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_Light2D_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_Light2D_BlendMode>`\ )
- :ref:`BlendMode<enum_Light2D_BlendMode>` **get_blend_mode**\ (\ )

El modo de fusión de Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Light2D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

El :ref:`Color<class_Color>` de la Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``false`` :ref:`🔗<class_Light2D_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editor_only**\ (\ )

Si es ``true``, Light2D sólo aparecerá cuando se edite la escena.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_Light2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Si es ``true``, Light2D emitirá luz.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy** = ``1.0`` :ref:`🔗<class_Light2D_property_energy>`

.. rst-class:: classref-property-setget

- |void| **set_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy**\ (\ )

El valor energético de Light2D. Cuanto mayor sea el valor, más fuerte es la luz.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_item_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_item_cull_mask** = ``1`` :ref:`🔗<class_Light2D_property_range_item_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_item_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_cull_mask**\ (\ )

La máscara de capa. Solo los objetos con una :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` coincidente se verán afectados por la Light2D. Véase también :ref:`shadow_item_cull_mask<class_Light2D_property_shadow_item_cull_mask>`, que afecta a qué objetos pueden proyectar sombras.

\ **Nota:** :ref:`range_item_cull_mask<class_Light2D_property_range_item_cull_mask>` es ignorado por :ref:`DirectionalLight2D<class_DirectionalLight2D>`, que siempre iluminará un nodo 2D independientemente de la :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` del nodo 2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_layer_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_layer_max** = ``0`` :ref:`🔗<class_Light2D_property_range_layer_max>`

.. rst-class:: classref-property-setget

- |void| **set_layer_range_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_range_max**\ (\ )

Valor máximo de la capa de los objetos afectados por Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_layer_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_layer_min** = ``0`` :ref:`🔗<class_Light2D_property_range_layer_min>`

.. rst-class:: classref-property-setget

- |void| **set_layer_range_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_range_min**\ (\ )

Valor mínimo de la capa de los objetos afectados por Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_z_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_z_max** = ``1024`` :ref:`🔗<class_Light2D_property_range_z_max>`

.. rst-class:: classref-property-setget

- |void| **set_z_range_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_range_max**\ (\ )

Valor máximo de ``z`` de los objetos afectados por Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_z_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_z_min** = ``-1024`` :ref:`🔗<class_Light2D_property_range_z_min>`

.. rst-class:: classref-property-setget

- |void| **set_z_range_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_range_min**\ (\ )

Valor mínimo de ``z`` de los objetos afectados por Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **shadow_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_Light2D_property_shadow_color>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_shadow_color**\ (\ )

:ref:`Color<class_Color>` de las sombras proyectadas por el Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_enabled** = ``false`` :ref:`🔗<class_Light2D_property_shadow_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shadow_enabled**\ (\ )

Si es ``true``, Light2D proyectará sombras.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_filter:

.. rst-class:: classref-property

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **shadow_filter** = ``0`` :ref:`🔗<class_Light2D_property_shadow_filter>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_filter**\ (\ value\: :ref:`ShadowFilter<enum_Light2D_ShadowFilter>`\ )
- :ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **get_shadow_filter**\ (\ )

Tipo de filtro de sombra.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_filter_smooth:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_filter_smooth** = ``0.0`` :ref:`🔗<class_Light2D_property_shadow_filter_smooth>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_smooth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shadow_smooth**\ (\ )

Valor de suavizado para las sombras. Los valores más altos resultarán en sombras más suaves, a costa de rayas visibles que pueden aparecer en el renderizado de sombras. :ref:`shadow_filter_smooth<class_Light2D_property_shadow_filter_smooth>` solo tiene un efecto si :ref:`shadow_filter<class_Light2D_property_shadow_filter>` es :ref:`SHADOW_FILTER_PCF5<class_Light2D_constant_SHADOW_FILTER_PCF5>` o :ref:`SHADOW_FILTER_PCF13<class_Light2D_constant_SHADOW_FILTER_PCF13>`.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_item_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_item_cull_mask** = ``1`` :ref:`🔗<class_Light2D_property_shadow_item_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_item_shadow_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_shadow_cull_mask**\ (\ )

La máscara de sombra. Se usa con :ref:`LightOccluder2D<class_LightOccluder2D>` para proyectar sombras. Solo los oclusores con una :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` coincidente proyectarán sombras. Véase también :ref:`range_item_cull_mask<class_Light2D_property_range_item_cull_mask>`, que afecta a qué objetos pueden *recibir* la luz.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Light2D_method_get_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_height**\ (\ ) |const| :ref:`🔗<class_Light2D_method_get_height>`

Devuelve la altura de la luz, que se utiliza en el mapeo normal 2D. Ver :ref:`PointLight2D.height<class_PointLight2D_property_height>` y :ref:`DirectionalLight2D.height<class_DirectionalLight2D_property_height>`.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_method_set_height:

.. rst-class:: classref-method

|void| **set_height**\ (\ height\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Light2D_method_set_height>`

Establece la altura de la luz, que se utiliza en el mapeo normal 2D. Ver :ref:`PointLight2D.height<class_PointLight2D_property_height>` y :ref:`DirectionalLight2D.height<class_DirectionalLight2D_property_height>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
