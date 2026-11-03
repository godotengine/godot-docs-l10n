:github_url: hide

.. _class_RDPipelineDepthStencilState:

RDPipelineDepthStencilState
===========================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Estado de profundidad/esténcil del pipeline (utilizado por :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

**RDPipelineDepthStencilState** controla la forma en que se realizan las comparaciones de profundidad y esténcil al muestrear esos valores usando :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`   | :ref:`back_op_compare<class_RDPipelineDepthStencilState_property_back_op_compare>`               | ``7``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`back_op_compare_mask<class_RDPipelineDepthStencilState_property_back_op_compare_mask>`     | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`back_op_depth_fail<class_RDPipelineDepthStencilState_property_back_op_depth_fail>`         | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`back_op_fail<class_RDPipelineDepthStencilState_property_back_op_fail>`                     | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`back_op_pass<class_RDPipelineDepthStencilState_property_back_op_pass>`                     | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`back_op_reference<class_RDPipelineDepthStencilState_property_back_op_reference>`           | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`back_op_write_mask<class_RDPipelineDepthStencilState_property_back_op_write_mask>`         | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`   | :ref:`depth_compare_operator<class_RDPipelineDepthStencilState_property_depth_compare_operator>` | ``7``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_range_max<class_RDPipelineDepthStencilState_property_depth_range_max>`               | ``0.0``   |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                      | :ref:`depth_range_min<class_RDPipelineDepthStencilState_property_depth_range_min>`               | ``0.0``   |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_depth_range<class_RDPipelineDepthStencilState_property_enable_depth_range>`         | ``false`` |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_depth_test<class_RDPipelineDepthStencilState_property_enable_depth_test>`           | ``false`` |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_depth_write<class_RDPipelineDepthStencilState_property_enable_depth_write>`         | ``false`` |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                        | :ref:`enable_stencil<class_RDPipelineDepthStencilState_property_enable_stencil>`                 | ``false`` |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`   | :ref:`front_op_compare<class_RDPipelineDepthStencilState_property_front_op_compare>`             | ``7``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`front_op_compare_mask<class_RDPipelineDepthStencilState_property_front_op_compare_mask>`   | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`front_op_depth_fail<class_RDPipelineDepthStencilState_property_front_op_depth_fail>`       | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`front_op_fail<class_RDPipelineDepthStencilState_property_front_op_fail>`                   | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` | :ref:`front_op_pass<class_RDPipelineDepthStencilState_property_front_op_pass>`                   | ``1``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`front_op_reference<class_RDPipelineDepthStencilState_property_front_op_reference>`         | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                          | :ref:`front_op_write_mask<class_RDPipelineDepthStencilState_property_front_op_write_mask>`       | ``0``     |
   +----------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDPipelineDepthStencilState_property_back_op_compare:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **back_op_compare** = ``7`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_compare>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_compare**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_back_op_compare**\ (\ )

El método utilizado para comparar el valor anterior del esténcil trasero y :ref:`back_op_reference<class_RDPipelineDepthStencilState_property_back_op_reference>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_compare_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **back_op_compare_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_compare_mask>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_compare_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_back_op_compare_mask**\ (\ )

Selecciona qué bits del valor de esténcil trasero se compararán.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_depth_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **back_op_depth_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_depth_fail>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_depth_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_back_op_depth_fail**\ (\ )

La operación a realizar en el búfer de esténcil para los píxeles traseros que pasan la prueba de esténcil, pero fallan la prueba de profundidad.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **back_op_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_fail>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_back_op_fail**\ (\ )

La operación a realizar en el búfer de esténcil para los píxeles traseros que fallan la prueba de esténcil.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_pass:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **back_op_pass** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_pass>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_pass**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_back_op_pass**\ (\ )

La operación a realizar en el búfer de esténcil para los píxeles posteriores que pasan la prueba de esténcil.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_reference:

.. rst-class:: classref-property

:ref:`int<class_int>` **back_op_reference** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_reference>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_reference**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_back_op_reference**\ (\ )

El valor con el que se comparará el valor anterior del esténcil posterior.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_back_op_write_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **back_op_write_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_back_op_write_mask>`

.. rst-class:: classref-property-setget

- |void| **set_back_op_write_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_back_op_write_mask**\ (\ )

Selecciona qué bits del valor del esténcil posterior se cambiarán.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_depth_compare_operator:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **depth_compare_operator** = ``7`` :ref:`🔗<class_RDPipelineDepthStencilState_property_depth_compare_operator>`

.. rst-class:: classref-property-setget

- |void| **set_depth_compare_operator**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_depth_compare_operator**\ (\ )

El método utilizado para comparar los valores de profundidad anterior y actual.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_depth_range_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_range_max** = ``0.0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_depth_range_max>`

.. rst-class:: classref-property-setget

- |void| **set_depth_range_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_range_max**\ (\ )

La profundidad máxima que devuelve ``true`` para :ref:`enable_depth_range<class_RDPipelineDepthStencilState_property_enable_depth_range>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_depth_range_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth_range_min** = ``0.0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_depth_range_min>`

.. rst-class:: classref-property-setget

- |void| **set_depth_range_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth_range_min**\ (\ )

La profundidad mínima que devuelve ``true`` para :ref:`enable_depth_range<class_RDPipelineDepthStencilState_property_enable_depth_range>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_depth_range:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_range** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_depth_range>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_range**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_range**\ (\ )

Si es ``true``, cada valor de profundidad será probado para ver si está entre :ref:`depth_range_min<class_RDPipelineDepthStencilState_property_depth_range_min>` y :ref:`depth_range_max<class_RDPipelineDepthStencilState_property_depth_range_max>`. Si está fuera de estos valores, se descarta.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_test** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_test**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_test**\ (\ )

Si es ``true``, habilita la prueba de profundidad que permite que los objetos sean ocultados automáticamente por otros objetos en función de su profundidad. Esto también permite que los objetos sean ocultados parcialmente por otros objetos. Si es ``false``, los objetos aparecerán en el orden en que fueron dibujados (como en el renderizador 2D de Godot).

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_depth_write:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_depth_write** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_depth_write>`

.. rst-class:: classref-property-setget

- |void| **set_enable_depth_write**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_depth_write**\ (\ )

Si es ``true``, escribe en el búfer de profundidad siempre que la prueba de profundidad devuelva ``true``. Solo funciona cuando enable_depth_test también es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_enable_stencil:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_stencil** = ``false`` :ref:`🔗<class_RDPipelineDepthStencilState_property_enable_stencil>`

.. rst-class:: classref-property-setget

- |void| **set_enable_stencil**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_stencil**\ (\ )

Si es ``true``, habilita la prueba de esténcil. Hay búferes de stencil separados para los triángulos orientados hacia delante y los orientados hacia atrás. Véase las propiedades que empiezan con "front_op" y las que tienen "back_op" para cada uno.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_compare:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **front_op_compare** = ``7`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_compare>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_compare**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_front_op_compare**\ (\ )

El método utilizado para comparar el valor de esténcil frontal anterior y :ref:`front_op_reference<class_RDPipelineDepthStencilState_property_front_op_reference>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_compare_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **front_op_compare_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_compare_mask>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_compare_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_front_op_compare_mask**\ (\ )

Selecciona qué bits del valor de esténcil frontal se compararán.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_depth_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **front_op_depth_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_depth_fail>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_depth_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_front_op_depth_fail**\ (\ )

La operación a realizar en el búfer de esténcil para los píxeles frontales que pasan la prueba de esténcil pero fallan la prueba de profundidad.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_fail:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **front_op_fail** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_fail>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_fail**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_front_op_fail**\ (\ )

La operación a realizar en el búfer de esténcil para los píxeles frontales que fallan la prueba de esténcil.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_pass:

.. rst-class:: classref-property

:ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **front_op_pass** = ``1`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_pass>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_pass**\ (\ value\: :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>`\ )
- :ref:`StencilOperation<enum_RenderingDevice_StencilOperation>` **get_front_op_pass**\ (\ )

La operación a realizar en el búfer de esténcil para los píxeles frontales que pasan la prueba de esténcil.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_reference:

.. rst-class:: classref-property

:ref:`int<class_int>` **front_op_reference** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_reference>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_reference**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_front_op_reference**\ (\ )

El valor con el que se comparará el valor de esténcil frontal anterior.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineDepthStencilState_property_front_op_write_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **front_op_write_mask** = ``0`` :ref:`🔗<class_RDPipelineDepthStencilState_property_front_op_write_mask>`

.. rst-class:: classref-property-setget

- |void| **set_front_op_write_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_front_op_write_mask**\ (\ )

Selecciona qué bits del valor de esténcil frontal se cambiarán.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
