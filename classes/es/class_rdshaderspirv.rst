:github_url: hide

.. _class_RDShaderSPIRV:

RDShaderSPIRV
=============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

SPIR-V intermediate representation as part of an :ref:`RDShaderFile<class_RDShaderFile>` (used by :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

**RDShaderSPIRV** represents an :ref:`RDShaderFile<class_RDShaderFile>`'s `SPIR-V <https://www.khronos.org/spir/>`__ code for various shader stages, as well as possible compilation error messages. SPIR-V is a low-level intermediate shader representation. This intermediate representation is not used directly by GPUs for rendering, but it can be compiled into binary shaders that GPUs can understand. Unlike compiled shaders, SPIR-V is portable across GPU models and driver versions.

This object is used by :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`bytecode_any_hit<class_RDShaderSPIRV_property_bytecode_any_hit>`                                         | ``PackedByteArray()`` |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`bytecode_closest_hit<class_RDShaderSPIRV_property_bytecode_closest_hit>`                                 | ``PackedByteArray()`` |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`bytecode_compute<class_RDShaderSPIRV_property_bytecode_compute>`                                         | ``PackedByteArray()`` |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`bytecode_fragment<class_RDShaderSPIRV_property_bytecode_fragment>`                                       | ``PackedByteArray()`` |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`bytecode_intersection<class_RDShaderSPIRV_property_bytecode_intersection>`                               | ``PackedByteArray()`` |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`bytecode_miss<class_RDShaderSPIRV_property_bytecode_miss>`                                               | ``PackedByteArray()`` |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`bytecode_raygen<class_RDShaderSPIRV_property_bytecode_raygen>`                                           | ``PackedByteArray()`` |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`bytecode_tesselation_control<class_RDShaderSPIRV_property_bytecode_tesselation_control>`                 | ``PackedByteArray()`` |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`bytecode_tesselation_evaluation<class_RDShaderSPIRV_property_bytecode_tesselation_evaluation>`           | ``PackedByteArray()`` |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`bytecode_vertex<class_RDShaderSPIRV_property_bytecode_vertex>`                                           | ``PackedByteArray()`` |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                   | :ref:`compile_error_any_hit<class_RDShaderSPIRV_property_compile_error_any_hit>`                               | ``""``                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                   | :ref:`compile_error_closest_hit<class_RDShaderSPIRV_property_compile_error_closest_hit>`                       | ``""``                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                   | :ref:`compile_error_compute<class_RDShaderSPIRV_property_compile_error_compute>`                               | ``""``                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                   | :ref:`compile_error_fragment<class_RDShaderSPIRV_property_compile_error_fragment>`                             | ``""``                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                   | :ref:`compile_error_intersection<class_RDShaderSPIRV_property_compile_error_intersection>`                     | ``""``                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                   | :ref:`compile_error_miss<class_RDShaderSPIRV_property_compile_error_miss>`                                     | ``""``                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                   | :ref:`compile_error_raygen<class_RDShaderSPIRV_property_compile_error_raygen>`                                 | ``""``                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                   | :ref:`compile_error_tesselation_control<class_RDShaderSPIRV_property_compile_error_tesselation_control>`       | ``""``                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                   | :ref:`compile_error_tesselation_evaluation<class_RDShaderSPIRV_property_compile_error_tesselation_evaluation>` | ``""``                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                   | :ref:`compile_error_vertex<class_RDShaderSPIRV_property_compile_error_vertex>`                                 | ``""``                |
   +-----------------------------------------------+----------------------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`get_stage_bytecode<class_RDShaderSPIRV_method_get_stage_bytecode>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|                                                   |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`get_stage_compile_error<class_RDShaderSPIRV_method_get_stage_compile_error>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|                                         |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`set_stage_bytecode<class_RDShaderSPIRV_method_set_stage_bytecode>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`set_stage_compile_error<class_RDShaderSPIRV_method_set_stage_compile_error>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )    |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDShaderSPIRV_property_bytecode_any_hit:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_any_hit** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_any_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

The SPIR-V bytecode for the any hit shader stage.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_closest_hit:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_closest_hit** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_closest_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

The SPIR-V bytecode for the closest hit shader stage.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_compute:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_compute** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_compute>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

El bytecode SPIR-V para la etapa de shader de cómputo.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_fragment:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_fragment** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_fragment>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

El bytecode SPIR-V para la etapa de shader de fragmentos.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_intersection:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_intersection** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_intersection>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

The SPIR-V bytecode for the intersection shader stage.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_miss:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_miss** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_miss>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

The SPIR-V bytecode for the miss shader stage.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_raygen:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_raygen** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_raygen>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

The SPIR-V bytecode for the ray generation shader stage.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_tesselation_control:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_tesselation_control** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_tesselation_control>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

El bytecode SPIR-V para la etapa de shader de control de teselación.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_tesselation_evaluation:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_tesselation_evaluation** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_tesselation_evaluation>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

El bytecode SPIR-V para la etapa de shader de evaluación de teselación.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_vertex:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_vertex** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_vertex>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

El bytecode SPIR-V para la etapa de shader de vértices.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_any_hit:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_any_hit** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_any_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

The compilation error message for the any hit shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_closest_hit:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_closest_hit** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_closest_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

The compilation error message for the closest hit shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_compute:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_compute** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_compute>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

El mensaje de error de compilación para la etapa de shader de cómputo (establecido por el compilador SPIR-V y Godot). Si está vacío, la compilación del shader fue exitosa.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_fragment:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_fragment** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_fragment>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

El mensaje de error de compilación para la etapa de shader de fragmentos (establecido por el compilador SPIR-V y Godot). Si está vacío, la compilación del shader fue exitosa.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_intersection:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_intersection** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_intersection>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

The compilation error message for the intersection shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_miss:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_miss** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_miss>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

The compilation error message for the miss shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_raygen:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_raygen** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_raygen>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

The compilation error message for the ray generation shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_tesselation_control:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_tesselation_control** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_tesselation_control>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

El mensaje de error de compilación para la etapa de shader de control de teselación (establecido por el compilador SPIR-V y Godot). Si está vacío, la compilación del shader fue exitosa.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_tesselation_evaluation:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_tesselation_evaluation** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_tesselation_evaluation>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

El mensaje de error de compilación para la etapa de shader de evaluación de teselación (establecido por el compilador SPIR-V y Godot). Si está vacío, la compilación del shader fue exitosa.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_vertex:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_vertex** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_vertex>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

El mensaje de error de compilación para la etapa de shader de vértices (establecido por el compilador SPIR-V y Godot). Si está vacío, la compilación del shader fue exitosa.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RDShaderSPIRV_method_get_stage_bytecode:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const| :ref:`🔗<class_RDShaderSPIRV_method_get_stage_bytecode>`

Equivalent to getting one of :ref:`bytecode_compute<class_RDShaderSPIRV_property_bytecode_compute>`, :ref:`bytecode_fragment<class_RDShaderSPIRV_property_bytecode_fragment>`, :ref:`bytecode_tesselation_control<class_RDShaderSPIRV_property_bytecode_tesselation_control>`, :ref:`bytecode_tesselation_evaluation<class_RDShaderSPIRV_property_bytecode_tesselation_evaluation>`, :ref:`bytecode_vertex<class_RDShaderSPIRV_property_bytecode_vertex>`.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_method_get_stage_compile_error:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const| :ref:`🔗<class_RDShaderSPIRV_method_get_stage_compile_error>`

Returns the compilation error message for the given shader ``stage``. Equivalent to getting one of :ref:`compile_error_compute<class_RDShaderSPIRV_property_compile_error_compute>`, :ref:`compile_error_fragment<class_RDShaderSPIRV_property_compile_error_fragment>`, :ref:`compile_error_tesselation_control<class_RDShaderSPIRV_property_compile_error_tesselation_control>`, :ref:`compile_error_tesselation_evaluation<class_RDShaderSPIRV_property_compile_error_tesselation_evaluation>`, :ref:`compile_error_vertex<class_RDShaderSPIRV_property_compile_error_vertex>`.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_method_set_stage_bytecode:

.. rst-class:: classref-method

|void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_RDShaderSPIRV_method_set_stage_bytecode>`

Sets the SPIR-V ``bytecode`` for the given shader ``stage``. Equivalent to setting one of :ref:`bytecode_compute<class_RDShaderSPIRV_property_bytecode_compute>`, :ref:`bytecode_fragment<class_RDShaderSPIRV_property_bytecode_fragment>`, :ref:`bytecode_tesselation_control<class_RDShaderSPIRV_property_bytecode_tesselation_control>`, :ref:`bytecode_tesselation_evaluation<class_RDShaderSPIRV_property_bytecode_tesselation_evaluation>`, :ref:`bytecode_vertex<class_RDShaderSPIRV_property_bytecode_vertex>`.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_method_set_stage_compile_error:

.. rst-class:: classref-method

|void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ ) :ref:`🔗<class_RDShaderSPIRV_method_set_stage_compile_error>`

Sets the compilation error message for the given shader ``stage`` to ``compile_error``. Equivalent to setting one of :ref:`compile_error_compute<class_RDShaderSPIRV_property_compile_error_compute>`, :ref:`compile_error_fragment<class_RDShaderSPIRV_property_compile_error_fragment>`, :ref:`compile_error_tesselation_control<class_RDShaderSPIRV_property_compile_error_tesselation_control>`, :ref:`compile_error_tesselation_evaluation<class_RDShaderSPIRV_property_compile_error_tesselation_evaluation>`, :ref:`compile_error_vertex<class_RDShaderSPIRV_property_compile_error_vertex>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
