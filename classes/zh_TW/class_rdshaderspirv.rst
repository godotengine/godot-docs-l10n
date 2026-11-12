:github_url: hide

.. _class_RDShaderSPIRV:

RDShaderSPIRV
=============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

SPIR-V 中間表示，是 :ref:`RDShaderFile<class_RDShaderFile>` 的一部分（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

**RDShaderSPIRV** 代表 :ref:`RDShaderFile<class_RDShaderFile>` 不同著色器階段的 `SPIR-V <https://www.khronos.org/spir/>`__ 程式碼，以及可能的編譯錯誤訊息。SPIR-V 是一種低階著色器中間表示。這種中間表示無法直接用於 GPU 渲染，但可以被編譯為 GPU 能夠理解的二進位著色器。與編譯後的著色器不同，SPIR-V 可以在不同 GPU 型號以及驅動版本之間移植。

這個物件由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

屬性
----

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

方法
----

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

屬性說明
--------

.. _class_RDShaderSPIRV_property_bytecode_any_hit:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_any_hit** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_any_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

任意命中著色器階段的 SPIR-V 位元組碼。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_closest_hit:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_closest_hit** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_closest_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

最近命中著色器階段的 SPIR-V 位元組碼。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_compute:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_compute** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_compute>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

計算著色器階段的 SPIR-V 位元組碼。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_fragment:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_fragment** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_fragment>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

片段著色器階段的 SPIR-V 位元組碼。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_intersection:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_intersection** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_intersection>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

相交著色器階段的 SPIR-V 位元組碼。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_miss:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_miss** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_miss>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

未命中著色器階段的 SPIR-V 位元組碼。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_raygen:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_raygen** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_raygen>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

光線生成著色器階段的 SPIR-V 位元組碼。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_tesselation_control:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_tesselation_control** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_tesselation_control>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

曲面細分控制著色器階段的 SPIR-V 位元組碼。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_tesselation_evaluation:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_tesselation_evaluation** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_tesselation_evaluation>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

曲面細分求值著色器階段的 SPIR-V 位元組碼。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_bytecode_vertex:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **bytecode_vertex** = ``PackedByteArray()`` :ref:`🔗<class_RDShaderSPIRV_property_bytecode_vertex>`

.. rst-class:: classref-property-setget

- |void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

頂點著色器階段的 SPIR-V 位元組碼。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_any_hit:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_any_hit** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_any_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

“任意命中”著色器階段的編譯錯誤訊息（由 SPIR-V 編譯器和 Godot 設定）。如果這裡為空，則說明著色器編譯成功。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_closest_hit:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_closest_hit** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_closest_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

“最近命中”著色器階段的編譯錯誤訊息（由 SPIR-V 編譯器和 Godot 引擎提供）。如果此處為空，則說明著色器編譯成功。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_compute:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_compute** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_compute>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

計算著色器階段的編譯錯誤資訊（由 SPIR-V 編譯器和 Godot 設定）。如果為空，則著色器成功編譯。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_fragment:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_fragment** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_fragment>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

片段著色器階段的編譯錯誤資訊（由 SPIR-V 編譯器和 Godot 設定）。如果為空，則著色器成功編譯。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_intersection:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_intersection** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_intersection>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

“相交”著色器階段的編譯錯誤訊息（由 SPIR-V 編譯器和 Godot 引擎提供）。如果此處為空，則說明著色器編譯成功。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_miss:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_miss** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_miss>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

“未命中”著色器階段的編譯錯誤訊息（由 SPIR-V 編譯器和 Godot 引擎提供）。如果此處為空，則說明著色器編譯成功。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_raygen:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_raygen** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_raygen>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

光線生成著色器階段的編譯錯誤訊息（由 SPIR-V 編譯器和 Godot 設定）。如果此處為空，則表示著色器編譯成功。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_tesselation_control:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_tesselation_control** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_tesselation_control>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

曲面細分控制著色器階段的編譯錯誤資訊（由 SPIR-V 編譯器和 Godot 設定）。如果為空，則著色器成功編譯。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_tesselation_evaluation:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_tesselation_evaluation** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_tesselation_evaluation>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

曲面細分求值著色器階段的編譯錯誤資訊（由 SPIR-V 編譯器和 Godot 設定）。如果為空，則著色器成功編譯。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_property_compile_error_vertex:

.. rst-class:: classref-property

:ref:`String<class_String>` **compile_error_vertex** = ``""`` :ref:`🔗<class_RDShaderSPIRV_property_compile_error_vertex>`

.. rst-class:: classref-property-setget

- |void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

頂點著色器階段的編譯錯誤資訊（由 SPIR-V 編譯器和 Godot 設定）。如果為空，則著色器成功編譯。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RDShaderSPIRV_method_get_stage_bytecode:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const| :ref:`🔗<class_RDShaderSPIRV_method_get_stage_bytecode>`

等價於取得 :ref:`bytecode_compute<class_RDShaderSPIRV_property_bytecode_compute>`\ 、\ :ref:`bytecode_fragment<class_RDShaderSPIRV_property_bytecode_fragment>`\ 、\ :ref:`bytecode_tesselation_control<class_RDShaderSPIRV_property_bytecode_tesselation_control>`\ 、\ :ref:`bytecode_tesselation_evaluation<class_RDShaderSPIRV_property_bytecode_tesselation_evaluation>`\ 、\ :ref:`bytecode_vertex<class_RDShaderSPIRV_property_bytecode_vertex>` 的其中之一。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_method_get_stage_compile_error:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const| :ref:`🔗<class_RDShaderSPIRV_method_get_stage_compile_error>`

返回給定著色器階段 ``stage`` 的編譯錯誤訊息。等價於取得 :ref:`compile_error_compute<class_RDShaderSPIRV_property_compile_error_compute>`\ 、\ :ref:`compile_error_fragment<class_RDShaderSPIRV_property_compile_error_fragment>`\ 、\ :ref:`compile_error_tesselation_control<class_RDShaderSPIRV_property_compile_error_tesselation_control>`\ 、\ :ref:`compile_error_tesselation_evaluation<class_RDShaderSPIRV_property_compile_error_tesselation_evaluation>`\ 、\ :ref:`compile_error_vertex<class_RDShaderSPIRV_property_compile_error_vertex>` 的其中之一。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_method_set_stage_bytecode:

.. rst-class:: classref-method

|void| **set_stage_bytecode**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, bytecode\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_RDShaderSPIRV_method_set_stage_bytecode>`

設定給定著色器階段 ``stage`` 的 SPIR-V 位元組碼 ``bytecode``\ 。等價於設定 :ref:`bytecode_compute<class_RDShaderSPIRV_property_bytecode_compute>`\ 、\ :ref:`bytecode_fragment<class_RDShaderSPIRV_property_bytecode_fragment>`\ 、\ :ref:`bytecode_tesselation_control<class_RDShaderSPIRV_property_bytecode_tesselation_control>`\ 、\ :ref:`bytecode_tesselation_evaluation<class_RDShaderSPIRV_property_bytecode_tesselation_evaluation>`\ 、\ :ref:`bytecode_vertex<class_RDShaderSPIRV_property_bytecode_vertex>` 的其中之一。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSPIRV_method_set_stage_compile_error:

.. rst-class:: classref-method

|void| **set_stage_compile_error**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, compile_error\: :ref:`String<class_String>`\ ) :ref:`🔗<class_RDShaderSPIRV_method_set_stage_compile_error>`

將指定著色器階段 ``stage`` 的編譯錯誤訊息設為 ``compile_error``\ 。等價於設定 :ref:`compile_error_compute<class_RDShaderSPIRV_property_compile_error_compute>`\ 、\ :ref:`compile_error_fragment<class_RDShaderSPIRV_property_compile_error_fragment>`\ 、\ :ref:`compile_error_tesselation_control<class_RDShaderSPIRV_property_compile_error_tesselation_control>`\ 、\ :ref:`compile_error_tesselation_evaluation<class_RDShaderSPIRV_property_compile_error_tesselation_evaluation>`\ 、\ :ref:`compile_error_vertex<class_RDShaderSPIRV_property_compile_error_vertex>` 的其中之一。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
