:github_url: hide

.. _class_RDShaderSource:

RDShaderSource
==============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

着色器源代码（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

文本形式的着色器源代码。

另见 :ref:`RDShaderFile<class_RDShaderFile>`\ 。\ **RDShaderSource** 应该仅用于 :ref:`RenderingDevice<class_RenderingDevice>` API。不应将其与 Godot 自己的 :ref:`Shader<class_Shader>` 资源，Godot 的各种节点会使用后者来进行高阶着色器编程。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` | :ref:`language<class_RDShaderSource_property_language>`                                           | ``0``  |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_any_hit<class_RDShaderSource_property_source_any_hit>`                               | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_closest_hit<class_RDShaderSource_property_source_closest_hit>`                       | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_compute<class_RDShaderSource_property_source_compute>`                               | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`                             | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_intersection<class_RDShaderSource_property_source_intersection>`                     | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_miss<class_RDShaderSource_property_source_miss>`                                     | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_raygen<class_RDShaderSource_property_source_raygen>`                                 | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`       | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`                                 | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_stage_source<class_RDShaderSource_method_get_stage_source>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|                               |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_stage_source<class_RDShaderSource_method_set_stage_source>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDShaderSource_property_language:

.. rst-class:: classref-property

:ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` **language** = ``0`` :ref:`🔗<class_RDShaderSource_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>`\ )
- :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` **get_language**\ (\ )

着色器的编写语言。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_any_hit:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_any_hit** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_any_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

着色器“任意命中”阶段的源代码。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_closest_hit:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_closest_hit** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_closest_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

着色器“最近命中”阶段的源代码。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_compute:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_compute** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_compute>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

着色器计算阶段的源代码。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_fragment:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_fragment** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_fragment>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

着色器片段阶段的源代码。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_intersection:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_intersection** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_intersection>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

着色器“相交”阶段的源代码。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_miss:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_miss** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_miss>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

着色器“未命中”阶段的源代码。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_raygen:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_raygen** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_raygen>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

着色器“光线生成”阶段的源代码。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_tesselation_control:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_tesselation_control** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_tesselation_control>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

着色器曲面细分控制阶段的源代码。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_tesselation_evaluation:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_tesselation_evaluation** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_tesselation_evaluation>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

着色器曲面细分求值阶段的源代码。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_vertex:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_vertex** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_vertex>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

着色器顶点阶段的源代码。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RDShaderSource_method_get_stage_source:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const| :ref:`🔗<class_RDShaderSource_method_get_stage_source>`

返回着色器阶段 ``stage`` 的源代码。等价于获取 :ref:`source_compute<class_RDShaderSource_property_source_compute>`\ 、\ :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`\ 、\ :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`\ 、\ :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` 或 :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_method_set_stage_source:

.. rst-class:: classref-method

|void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ ) :ref:`🔗<class_RDShaderSource_method_set_stage_source>`

设置着色器阶段 ``stage`` 的源代码 ``source``\ 。等价于设置 :ref:`source_compute<class_RDShaderSource_property_source_compute>`\ 、\ :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`\ 、\ :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`\ 、\ :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` 或 :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`\ 。

\ **注意：**\ 如果直接使用该方法设置计算着色器的源代码，请记得移除 Godot 专有的 ``#[compute]`` 提示。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
