:github_url: hide

.. _class_GLTFAccessor:

GLTFAccessor
============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表 glTF 访问器。

.. rst-class:: classref-introduction-group

描述
----

GLTFAccessor 是一种表示 glTF 访问器 ``"accessors"`` 的数据结构，可以在 ``"accessors"`` 数组中找到。缓冲区是二进制数据块。缓冲区视图是缓冲区的切片。访问器是对缓冲区视图中数据的类型化解释。

大多数存储在 glTF 中的自定义数据不需要访问器，只需要缓冲区视图（见 :ref:`GLTFBufferView<class_GLTFBufferView>`\ ）。访问器适用于更高级的用例，例如为 GPU 编码的交错网格数据。

.. rst-class:: classref-introduction-group

教程
----

- `Khronos glTF 规范中的缓冲区、BufferView 和访问器 <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__

- :doc:`运行时文件加载与保存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>`   | :ref:`accessor_type<class_GLTFAccessor_property_accessor_type>`                                 | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`buffer_view<class_GLTFAccessor_property_buffer_view>`                                     | ``-1``                   |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`byte_offset<class_GLTFAccessor_property_byte_offset>`                                     | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` | :ref:`component_type<class_GLTFAccessor_property_component_type>`                               | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`count<class_GLTFAccessor_property_count>`                                                 | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>`           | :ref:`max<class_GLTFAccessor_property_max>`                                                     | ``PackedFloat64Array()`` |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>`           | :ref:`min<class_GLTFAccessor_property_min>`                                                     | ``PackedFloat64Array()`` |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`normalized<class_GLTFAccessor_property_normalized>`                                       | ``false``                |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_count<class_GLTFAccessor_property_sparse_count>`                                   | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_indices_buffer_view<class_GLTFAccessor_property_sparse_indices_buffer_view>`       | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_indices_byte_offset<class_GLTFAccessor_property_sparse_indices_byte_offset>`       | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` | :ref:`sparse_indices_component_type<class_GLTFAccessor_property_sparse_indices_component_type>` | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_values_buffer_view<class_GLTFAccessor_property_sparse_values_buffer_view>`         | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`sparse_values_byte_offset<class_GLTFAccessor_property_sparse_values_byte_offset>`         | ``0``                    |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                         | :ref:`type<class_GLTFAccessor_property_type>`                                                   |                          |
   +---------------------------------------------------------------+-------------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFAccessor<class_GLTFAccessor>` | :ref:`from_dictionary<class_GLTFAccessor_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| |
   +-----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`     | :ref:`to_dictionary<class_GLTFAccessor_method_to_dictionary>`\ (\ ) |const|                                                        |
   +-----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_GLTFAccessor_GLTFAccessorType:

.. rst-class:: classref-enumeration

enum **GLTFAccessorType**: :ref:`🔗<enum_GLTFAccessor_GLTFAccessorType>`

.. _class_GLTFAccessor_constant_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_SCALAR** = ``0``

“SCALAR”访问器类型。在 glTF 对象模型中可映射为单个 float、int、bool 值或单个 float 数组。

.. _class_GLTFAccessor_constant_TYPE_VEC2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_VEC2** = ``1``

“VEC2”访问器类型。在 glTF 对象模型中可映射为“float2”，在 glTF JSON 中表示为包含两个 float 的数组。

.. _class_GLTFAccessor_constant_TYPE_VEC3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_VEC3** = ``2``

“VEC3”访问器类型。在 glTF 对象模型中可映射为“float3”，在 glTF JSON 中表示为包含三个 float 的数组。

.. _class_GLTFAccessor_constant_TYPE_VEC4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_VEC4** = ``3``

“VEC4”访问器类型。在 glTF 对象模型中可映射为“float4”，在 glTF JSON 中表示为包含四个 float 的数组。

.. _class_GLTFAccessor_constant_TYPE_MAT2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_MAT2** = ``4``

“MAT2”访问器类型。在 glTF 对象模型中可映射为“float2x2”，在 glTF JSON 中表示为包含四个 float 的数组。

.. _class_GLTFAccessor_constant_TYPE_MAT3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_MAT3** = ``5``

“MAT3”访问器类型。在 glTF 对象模型中可映射为“float3x3”，在 glTF JSON 中表示为包含九个 float 的数组。

.. _class_GLTFAccessor_constant_TYPE_MAT4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_MAT4** = ``6``

“MAT4”访问器类型。在 glTF 对象模型中可映射为“float4x4”，在 glTF JSON 中表示为包含十六个 float 的数组。

.. rst-class:: classref-item-separator

----

.. _enum_GLTFAccessor_GLTFComponentType:

.. rst-class:: classref-enumeration

enum **GLTFComponentType**: :ref:`🔗<enum_GLTFAccessor_GLTFComponentType>`

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_NONE** = ``0``

组件类型“NONE”。这不是有效的组件类型，用于表示组件类型未设置。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_BYTE:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_BYTE** = ``5120``

组件类型“BYTE”。取值 ``0x1400`` 来源于 OpenGL。表示数据的存储形式为 1 字节即 8 位有符号整数。这是 glTF 规范的核心部分。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_BYTE:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_BYTE** = ``5121``

组件类型“UNSIGNED_BYTE”。取值 ``0x1401`` 来源于 OpenGL。表示数据的存储形式为 1 字节即 8 位无符号整数。这是 glTF 规范的核心部分。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_SHORT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_SHORT** = ``5122``

组件类型“SHORT”。取值 ``0x1402`` 来源于 OpenGL。表示数据的存储形式为 2 字节即 16 位有符号整数。这是 glTF 规范的核心部分。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_SHORT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_SHORT** = ``5123``

组件类型“UNSIGNED_SHORT”。取值 ``0x1403`` 来源于 OpenGL。表示数据的存储形式为 2 字节即 16 位无符号整数。这是 glTF 规范的核心部分。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_INT** = ``5124``

组件类型“INT”。取值 ``0x1404`` 来源于 OpenGL。表示数据的存储形式为 4 字节即 32 位有符号整数。这不是 glTF 规范的核心部分，可能并不是所有 glTF 导入器都支持。\ ``KHR_interactivity`` 等扩展可能支持。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_INT** = ``5125``

组件类型“UNSIGNED_INT”。取值 ``0x1405`` 来源于 OpenGL。表示数据的存储形式为 4 字节即 32 位无符号整数。这是 glTF 规范的核心部分。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SINGLE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SINGLE_FLOAT** = ``5126``

组件类型“FLOAT”。取值 ``0x1406`` 来源于 OpenGL。表示数据的存储形式为 4 字节即 32 位浮点数。这是 glTF 规范的核心部分。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_DOUBLE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_DOUBLE_FLOAT** = ``5130``

组件类型“DOUBLE”。取值 ``0x140A`` 来源于 OpenGL。表示数据的存储形式为 8 字节即 64 位浮点数。这不是 glTF 规范的核心部分，可能并不是所有 glTF 导入器都支持。\ ``KHR_interactivity`` 等扩展可能支持。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_HALF_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_HALF_FLOAT** = ``5131``

组件类型“HALF_FLOAT”。取值 ``0x140B`` 来源于 OpenGL。表示数据的存储形式为 2 字节即 16 位浮点数。这不是 glTF 规范的核心部分，可能并不是所有 glTF 导入器都支持。\ ``KHR_interactivity`` 等扩展可能支持。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_LONG** = ``5134``

组件类型“LONG”。取值 ``0x140E`` 来源于 OpenGL。表示数据的存储形式为 8 字节即 64 位有符号整数。这不是 glTF 规范的核心部分，可能并不是所有 glTF 导入器都支持。\ ``KHR_interactivity`` 等扩展可能支持。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_LONG** = ``5135``

组件类型“UNSIGNED_LONG”。取值 ``0x140F`` 来源于 OpenGL。表示数据的存储形式为 8 字节即 64 位无符号整数。这不是 glTF 规范的核心部分，可能并不是所有 glTF 导入器都支持。\ ``KHR_interactivity`` 等扩展可能支持。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GLTFAccessor_property_accessor_type:

.. rst-class:: classref-property

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **accessor_type** = ``0`` :ref:`🔗<class_GLTFAccessor_property_accessor_type>`

.. rst-class:: classref-property-setget

- |void| **set_accessor_type**\ (\ value\: :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>`\ )
- :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **get_accessor_type**\ (\ )

glTF 访问器类型枚举。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_buffer_view:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffer_view** = ``-1`` :ref:`🔗<class_GLTFAccessor_property_buffer_view>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_view**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffer_view**\ (\ )

该访问器正在引用的缓冲区视图的索引。如果为 ``-1``\ ，则该访问器未引用任何缓冲区视图。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_offset** = ``0`` :ref:`🔗<class_GLTFAccessor_property_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_offset**\ (\ )

相对于缓冲视图起点的偏移量，单位为字节。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_component_type:

.. rst-class:: classref-property

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **component_type** = ``0`` :ref:`🔗<class_GLTFAccessor_property_component_type>`

.. rst-class:: classref-property-setget

- |void| **set_component_type**\ (\ value\: :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>`\ )
- :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **get_component_type**\ (\ )

glTF 组件类型枚举。可能的取值见 :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>`\ 。核心 glTF 规格中，未通过 mesh.primitive.indices 引用的访问器不能使用 5125 或“UNSIGNED_INT”。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **count** = ``0`` :ref:`🔗<class_GLTFAccessor_property_count>`

.. rst-class:: classref-property-setget

- |void| **set_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_count**\ (\ )

该访问器引用的元素数量。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_max:

.. rst-class:: classref-property

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **max** = ``PackedFloat64Array()`` :ref:`🔗<class_GLTFAccessor_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )
- :ref:`PackedFloat64Array<class_PackedFloat64Array>` **get_max**\ (\ )

该访问器中每个组件的最大值。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat64Array<class_PackedFloat64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_min:

.. rst-class:: classref-property

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **min** = ``PackedFloat64Array()`` :ref:`🔗<class_GLTFAccessor_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )
- :ref:`PackedFloat64Array<class_PackedFloat64Array>` **get_min**\ (\ )

该访问器中每个组件的最小值。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat64Array<class_PackedFloat64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_normalized:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalized** = ``false`` :ref:`🔗<class_GLTFAccessor_property_normalized>`

.. rst-class:: classref-property-setget

- |void| **set_normalized**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_normalized**\ (\ )

指定整数数据值在使用前是否进行了归一化。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_count** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_count>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_count**\ (\ )

存储在稀疏数组中的偏差访问器值的数量。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_indices_buffer_view:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_indices_buffer_view** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_indices_buffer_view>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_indices_buffer_view**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_indices_buffer_view**\ (\ )

具有稀疏索引的缓冲视图的索引。引用的缓冲视图不得定义其 target 或 byteStride 属性。缓冲视图和可选的 byteOffset 必须与 componentType 字节长度对齐。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_indices_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_indices_byte_offset** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_indices_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_indices_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_indices_byte_offset**\ (\ )

相对于缓冲视图起点的偏移量，单位为字节。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_indices_component_type:

.. rst-class:: classref-property

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **sparse_indices_component_type** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_indices_component_type>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_indices_component_type**\ (\ value\: :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>`\ )
- :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **get_sparse_indices_component_type**\ (\ )

索引组件数据类型枚举。取值 5121 为“UNSIGNED_BYTE”、5123 为“UNSIGNED_SHORT”、5125 为“UNSIGNED_INT”。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_values_buffer_view:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_values_buffer_view** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_values_buffer_view>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_values_buffer_view**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_values_buffer_view**\ (\ )

具有稀疏值的 bufferView 的索引。引用的缓冲视图不得定义其 target 或 byteStride 属性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_values_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_values_byte_offset** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_values_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_values_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_values_byte_offset**\ (\ )

相对于 bufferView 起始位置的偏移量，单位为字节。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_type:

.. rst-class:: classref-property

:ref:`int<class_int>` **type** :ref:`🔗<class_GLTFAccessor_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_type**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_type**\ (\ )

**已弃用：** Use :ref:`accessor_type<class_GLTFAccessor_property_accessor_type>` instead.

glTF 访问器类型 :ref:`int<class_int>`\ 。取值为 ``0`` 表示“SCALAR”、\ ``1`` 表示“VEC2”、\ ``2`` 表示“VEC3”、\ ``3`` 表示“VEC4”、\ ``4`` 表示“MAT2”、\ ``5`` 表示“MAT3”、\ ``6`` 表示“MAT4”。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GLTFAccessor_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFAccessor<class_GLTFAccessor>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFAccessor_method_from_dictionary>`

Creates a new GLTFAccessor instance by parsing the given :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFAccessor_method_to_dictionary>`

Serializes this GLTFAccessor instance into a :ref:`Dictionary<class_Dictionary>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
