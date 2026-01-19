:github_url: hide

.. _class_GLTFObjectModelProperty:

GLTFObjectModelProperty
=======================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

描述如何访问 glTF 对象模型中定义的属性。

.. rst-class:: classref-introduction-group

描述
----

GLTFObjectModelProperty 定义了 glTF 对象模型中的属性和 Godot 场景树中 NodePath 之间的映射，可以用来使用 ``KHR_animation_pointer`` 扩展对属性进行动画，也可以通过与引擎无关的脚本（例如 ``KHR_interactivity`` 扩展定义的行为图）来访问这些属性。

glTF 属性由 :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` 中存储的 JSON 指针标识，对应的 Godot 属性则由 :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` 定义。大多数情况下，\ :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` 和 :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` 都只会有一个元素，不过部分情况下一个 glTF JSON 指针也会对应多个 Godot 属性，一个 Godot 属性也可能对应多个 glTF JSON 指针，还可能会存在多对多的关系。

可以使用 :ref:`Expression<class_Expression>` 对象定义数据之间的转换，例如可能 glTF 中定义夹角时使用弧度而 Godot 则使用角度。\ :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` 属性定义的是 glTF 文件中所存储数据的类型，该类型由对象模型定义，可能的取值见 :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `GLTF 对象模型 <https://github.com/KhronosGroup/glTF/blob/main/specification/2.0/ObjectModel.adoc>`__

- `KHR_animation_pointer GLTF 扩展 <https://github.com/KhronosGroup/glTF/tree/main/extensions/2.0/Khronos/KHR_animation_pointer>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Expression<class_Expression>`                                            | :ref:`gltf_to_godot_expression<class_GLTFObjectModelProperty_property_gltf_to_godot_expression>` |        |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Expression<class_Expression>`                                            | :ref:`godot_to_gltf_expression<class_GLTFObjectModelProperty_property_godot_to_gltf_expression>` |        |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] | :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>`                       | ``[]`` |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]                   | :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`                             | ``[]`` |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`   | :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>`               | ``0``  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+
   | :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`                            | :ref:`variant_type<class_GLTFObjectModelProperty_property_variant_type>`                         | ``0``  |
   +--------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`append_node_path<class_GLTFObjectModelProperty_method_append_node_path>`\ (\ node_path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                         |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`append_path_to_property<class_GLTFObjectModelProperty_method_append_path_to_property>`\ (\ node_path\: :ref:`NodePath<class_NodePath>`, prop_name\: :ref:`StringName<class_StringName>`\ )                                          |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` | :ref:`get_accessor_type<class_GLTFObjectModelProperty_method_get_accessor_type>`\ (\ ) |const|                                                                                                                                            |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`has_json_pointers<class_GLTFObjectModelProperty_method_has_json_pointers>`\ (\ ) |const|                                                                                                                                            |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`has_node_paths<class_GLTFObjectModelProperty_method_has_node_paths>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_types<class_GLTFObjectModelProperty_method_set_types>`\ (\ variant_type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, obj_model_type\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_GLTFObjectModelProperty_GLTFObjectModelType:

.. rst-class:: classref-enumeration

enum **GLTFObjectModelType**: :ref:`🔗<enum_GLTFObjectModelProperty_GLTFObjectModelType>`

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_UNKNOWN** = ``0``

未知或未设置的对象模型类型。如果将对象模型类型设置为该值，则仍需确定真实类型。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_BOOL:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_BOOL** = ``1``

对象模型类型“bool”。在 glTF JSON 中表示为布尔值，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中编码为“SCALAR”。在访问器中编码时 ``0`` 表示 ``false``\ ，任何其他值都表示 ``true``\ 。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT** = ``2``

对象模型类型“float”。在 glTF JSON 中表示为数字，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中编码为“SCALAR”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT_ARRAY** = ``3``

对象模型类型“float\[\]”。在 glTF JSON 中表示为数字数组，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中编码为“SCALAR”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT2** = ``4``

对象模型类型“float2”。在 glTF JSON 中表示为两个数字的数组，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中编码为“VEC2”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT3** = ``5``

对象模型类型“float3”。在 glTF JSON 中表示为三个数字的数组，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中编码为“VEC3”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT4** = ``6``

对象模型类型“float4”。在 glTF JSON 中表示为四个数字的数组，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中编码为“VEC4”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT2X2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT2X2** = ``7``

对象模型类型“float2x2”。在 glTF JSON 中表示为四个数字的数组，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中编码为“MAT2”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT3X3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT3X3** = ``8``

对象模型类型“float3x3”。在 glTF JSON 中表示为九个数字的数组，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中编码为“MAT3”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_FLOAT4X4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_FLOAT4X4** = ``9``

对象模型类型“float4x4”。在 glTF JSON 中表示为十六个数字的数组，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中编码为“MAT4”。

.. _class_GLTFObjectModelProperty_constant_GLTF_OBJECT_MODEL_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **GLTF_OBJECT_MODEL_TYPE_INT** = ``10``

对象模型类型“int”。在 glTF JSON 中表示为数字，在 :ref:`GLTFAccessor<class_GLTFAccessor>` 中编码为“SCALAR”。取值范围仅限于有符号整数。\ ``KHR_interactivity`` 仅支持 32 位整数。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GLTFObjectModelProperty_property_gltf_to_godot_expression:

.. rst-class:: classref-property

:ref:`Expression<class_Expression>` **gltf_to_godot_expression** :ref:`🔗<class_GLTFObjectModelProperty_property_gltf_to_godot_expression>`

.. rst-class:: classref-property-setget

- |void| **set_gltf_to_godot_expression**\ (\ value\: :ref:`Expression<class_Expression>`\ )
- :ref:`Expression<class_Expression>` **get_gltf_to_godot_expression**\ (\ )

如果设置了该 :ref:`Expression<class_Expression>`\ ，则会用来将 glTF 对象模型中的属性值转换为 Godot 属性所需的值。适用于 glTF 对象模型使用不同的单位系统，以及数据需要以某种方式进行转换的场合。如果为 ``null``\ ，则会原样复制属性值。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_godot_to_gltf_expression:

.. rst-class:: classref-property

:ref:`Expression<class_Expression>` **godot_to_gltf_expression** :ref:`🔗<class_GLTFObjectModelProperty_property_godot_to_gltf_expression>`

.. rst-class:: classref-property-setget

- |void| **set_godot_to_gltf_expression**\ (\ value\: :ref:`Expression<class_Expression>`\ )
- :ref:`Expression<class_Expression>` **get_godot_to_gltf_expression**\ (\ )

如果设置了该 :ref:`Expression<class_Expression>`\ ，则会用来将 Godot 属性中的属性值转换为 glTF 对象模型所需的值。适用于 glTF 对象模型使用不同的单位系统，以及数据需要以某种方式进行转换的场合。如果为 ``null``\ ，则会原样复制属性值。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_json_pointers:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **json_pointers** = ``[]`` :ref:`🔗<class_GLTFObjectModelProperty_property_json_pointers>`

.. rst-class:: classref-property-setget

- |void| **set_json_pointers**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **get_json_pointers**\ (\ )

用于在 glTF 对象模型中标识属性的 glTF 对象模型 JSON 指针。大多数情况下该数组中只有一个元素，但某些特定情况可能需要多个指针。这些元素本身也是数组，表示将 JSON 指针拆分成组件。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_node_paths:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **node_paths** = ``[]`` :ref:`🔗<class_GLTFObjectModelProperty_property_node_paths>`

.. rst-class:: classref-property-setget

- |void| **set_node_paths**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_node_paths**\ (\ )

指向 Godot 场景树中一个或多个属性的 :ref:`NodePath<class_NodePath>` 数组。导入时由 :ref:`GLTFDocument<class_GLTFDocument>` 或 :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 类设置。简单情况可以使用 :ref:`append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>` 将属性添加到该数组中。

大多数情况下 :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` 只会有一个元素，但在某些情况下，单个 glTF JSON 指针可能映射到多个 Godot 属性。例如多个 glTF 节点上使用的同一个 :ref:`GLTFCamera<class_GLTFCamera>` 或 :ref:`GLTFLight<class_GLTFLight>` 会表示为多个 Godot 节点。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_object_model_type:

.. rst-class:: classref-property

:ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **object_model_type** = ``0`` :ref:`🔗<class_GLTFObjectModelProperty_property_object_model_type>`

.. rst-class:: classref-property-setget

- |void| **set_object_model_type**\ (\ value\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ )
- :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>` **get_object_model_type**\ (\ )

根据对象模型定义，存储在 glTF 文件中的数据类型。这是可用访问器类型的超集，决定了访问器类型。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_property_variant_type:

.. rst-class:: classref-property

:ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` **variant_type** = ``0`` :ref:`🔗<class_GLTFObjectModelProperty_property_variant_type>`

.. rst-class:: classref-property-setget

- |void| **set_variant_type**\ (\ value\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ )
- :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` **get_variant_type**\ (\ )

存储在 Godot 属性中的数据类型。这是 :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` 指向的属性类型。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GLTFObjectModelProperty_method_append_node_path:

.. rst-class:: classref-method

|void| **append_node_path**\ (\ node_path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_append_node_path>`

将一个 :ref:`NodePath<class_NodePath>` 附加到 :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>`\ 。\ :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` 类可以用它来定义如何将 glTF 对象模型属性映射到一个或或多个 Godot 属性。简单情况建议使用 :ref:`append_path_to_property()<class_GLTFObjectModelProperty_method_append_path_to_property>`\ 。请记得再调用一次 :ref:`set_types()<class_GLTFObjectModelProperty_method_set_types>`\ （顺序无关紧要）。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_append_path_to_property:

.. rst-class:: classref-method

|void| **append_path_to_property**\ (\ node_path\: :ref:`NodePath<class_NodePath>`, prop_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_append_path_to_property>`

对 :ref:`append_node_path()<class_GLTFObjectModelProperty_method_append_node_path>` 的高阶封装，能够处理最常见的情况。它会使用 ``node_path`` 作为基础构造一个新的 :ref:`NodePath<class_NodePath>`\ ，并将 ``prop_name`` 附加到子路径上。请确保再调用一次 :ref:`set_types()<class_GLTFObjectModelProperty_method_set_types>`\ （顺序无关紧要）。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_get_accessor_type:

.. rst-class:: classref-method

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **get_accessor_type**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_get_accessor_type>`

与该属性的 :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` 关联的 GLTF 访问器类型。可能的值见 :ref:`GLTFAccessor.accessor_type<class_GLTFAccessor_property_accessor_type>`\ ，对象模型类型与访问器类型之间的映射见 :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_has_json_pointers:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_json_pointers**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_has_json_pointers>`

如果 :ref:`json_pointers<class_GLTFObjectModelProperty_property_json_pointers>` 非空则返回 ``true``\ 。用于在导出过程中确定 **GLTFObjectModelProperty** 是否能够处理将 Godot 属性转换为 glTF 对象模型属性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_has_node_paths:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node_paths**\ (\ ) |const| :ref:`🔗<class_GLTFObjectModelProperty_method_has_node_paths>`

如果 :ref:`node_paths<class_GLTFObjectModelProperty_property_node_paths>` 非空则返回 ``true``\ 。用于在导入过程中确定 **GLTFObjectModelProperty** 是否能够处理将 glTF 对象模型属性转换为 Godot 属性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFObjectModelProperty_method_set_types:

.. rst-class:: classref-method

|void| **set_types**\ (\ variant_type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, obj_model_type\: :ref:`GLTFObjectModelType<enum_GLTFObjectModelProperty_GLTFObjectModelType>`\ ) :ref:`🔗<class_GLTFObjectModelProperty_method_set_types>`

设置 :ref:`variant_type<class_GLTFObjectModelProperty_property_variant_type>` 和 :ref:`object_model_type<class_GLTFObjectModelProperty_property_object_model_type>` 属性。这是用来同时设置这两个属性的便捷方法，因为两者几乎都是一起确定的。该方法只应该调用一次。再次使用相同的值调用没有效果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
