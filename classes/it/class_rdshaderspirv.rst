:github_url: hide

.. _class_RDShaderSPIRV:

RDShaderSPIRV
=============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresentazione intermedia in SPIR-V, come parte di un :ref:`RDShaderFile<class_RDShaderFile>` (utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**RDShaderSPIRV** rappresenta il codice `SPIR-V <https://www.khronos.org/spir/>`__ di un :ref:`RDShaderFile<class_RDShaderFile>` per le varie fasi di uno shader, nonché possibili messaggi di errore di compilazione. SPIR-V è una rappresentazione intermedia di basso livello per gli shader. Questa rappresentazione intermedia non è utilizzata direttamente dalle GPU per il rendering, ma è possibile compilarla in shader binari che le GPU possono comprendere. A differenza degli shader compilati, SPIR-V è portabile tra modelli di GPU e versioni di driver.

Questo oggetto è utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

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

Descrizioni delle proprietà
------------------------------------------------------

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

Il bytecode in SPIR-V per la fase di calcolo dello shader.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_fragment:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_fragment** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_fragment>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Il bytecode in SPIR-V per la fase di frammento dello shader.

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

Il bytecode in SPIR-V per la fase di controllo della tassellatura dello shader.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_tesselation_evaluation:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_tesselation_evaluation** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_tesselation_evaluation>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Il bytecode in SPIR-V per la fase di valutazione della tassellatura dello shader.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_vertex:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_vertex** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_vertex>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Il bytecode in SPIR-V per la fase di vertice dello shader.

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

Il messaggio di errore di compilazione per la fase di calcolo dello shader (impostato dal compilatore SPIR-V e da Godot). Se vuoto, la compilazione dello shader è riuscita.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_fragment:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_fragment** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_fragment>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Il messaggio di errore di compilazione per la fase di frammento dello shader (impostato dal compilatore SPIR-V e da Godot). Se vuoto, la compilazione dello shader è riuscita.

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

Il messaggio di errore di compilazione per la fase di controllo della tassellatura dello shader (impostato dal compilatore SPIR-V e da Godot). Se vuoto, la compilazione dello shader è riuscita.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_tesselation_evaluation:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_tesselation_evaluation** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_tesselation_evaluation>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Il messaggio di errore di compilazione per la fase di valutazione della tassellatura dello shader (impostato dal compilatore SPIR-V e da Godot). Se vuoto, la compilazione dello shader è riuscita.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_vertex:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_vertex** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_vertex>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Il messaggio di errore di compilazione per la fase di vertice dello shader (impostato dal compilatore SPIR-V e da Godot). Se vuoto, la compilazione dello shader è riuscita.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RDShaderSPIRV_method_get_stage_bytecode:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const| :ref:`🔗<class_RDShaderSPIRV_method_get_stage_bytecode>`

Equivale a ottenere uno tra :ref:`bytecode_compute<class_RDShaderSPIRV_property_bytecode_compute>`, :ref:`bytecode_fragment<class_RDShaderSPIRV_property_bytecode_fragment>`, :ref:`bytecode_tesselation_control<class_RDShaderSPIRV_property_bytecode_tesselation_control>`, :ref:`bytecode_tesselation_evaluation<class_RDShaderSPIRV_property_bytecode_tesselation_evaluation>`, :ref:`bytecode_vertex<class_RDShaderSPIRV_property_bytecode_vertex>`.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_method_get_stage_compile_error:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const| :ref:`🔗<class_RDShaderSPIRV_method_get_stage_compile_error>`

Restituisce il messaggio di errore di compilazione per la fase ``stage`` dello shader. Equivale a ottenere uno tra :ref:`compile_error_compute<class_RDShaderSPIRV_property_compile_error_compute>`, :ref:`compile_error_fragment<class_RDShaderSPIRV_property_compile_error_fragment>`, :ref:`compile_error_tesselation_control<class_RDShaderSPIRV_property_compile_error_tesselation_control>`, :ref:`compile_error_tesselation_evaluation<class_RDShaderSPIRV_property_compile_error_tesselation_evaluation>`, :ref:`compile_error_vertex<class_RDShaderSPIRV_property_compile_error_vertex>`.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_method_set_stage_bytecode:

.. rst-class:: classref-method

|void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_RDShaderSPIRV_method_set_stage_bytecode>`

Imposta il bytecode in SPIR-V per la fase ``stage`` dello shader su ``bytecode``. Equivale a impostare uno tra :ref:`bytecode_compute<class_RDShaderSPIRV_property_bytecode_compute>`, :ref:`bytecode_fragment<class_RDShaderSPIRV_property_bytecode_fragment>`, :ref:`bytecode_tesselation_control<class_RDShaderSPIRV_property_bytecode_tesselation_control>`, :ref:`bytecode_tesselation_evaluation<class_RDShaderSPIRV_property_bytecode_tesselation_evaluation>`, :ref:`bytecode_vertex<class_RDShaderSPIRV_property_bytecode_vertex>`.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_method_set_stage_compile_error:

.. rst-class:: classref-method

|void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ ) :ref:`🔗<class_RDShaderSPIRV_method_set_stage_compile_error>`

Imposta il messaggio di errore di compilazione per la fase ``stage`` dello shader su ``compile_error``. Equivale a impostare uno tra :ref:`compile_error_compute<class_RDShaderSPIRV_property_compile_error_compute>`, :ref:`compile_error_fragment<class_RDShaderSPIRV_property_compile_error_fragment>`, :ref:`compile_error_tesselation_control<class_RDShaderSPIRV_property_compile_error_tesselation_control>`, :ref:`compile_error_tesselation_evaluation<class_RDShaderSPIRV_property_compile_error_tesselation_evaluation>`, :ref:`compile_error_vertex<class_RDShaderSPIRV_property_compile_error_vertex>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
