:github_url: hide

.. _class_GLTFAccessor:

GLTFAccessor
============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表 glTF 存取器。

.. rst-class:: classref-introduction-group

說明
----

GLTFAccessor 是一種表示 glTF 存取器 ``"accessors"`` 的資料結構，可以在 ``"accessors"`` 陣列中找到。緩衝區是二進位資料塊。緩衝區檢視是緩衝區的切片。存取器是對緩衝區檢視中資料的型別化解釋。

大多數儲存在 glTF 中的自訂資料不需要存取器，只需要緩衝區檢視（見 :ref:`GLTFBufferView<class_GLTFBufferView>`\ ）。存取器適用於更進階的用例，例如為 GPU 編碼的交錯網格資料。

.. rst-class:: classref-introduction-group

教學
----

- `Khronos glTF 規範中的緩衝區、BufferView 和存取器 <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__

- :doc:`執行時檔案載入與儲存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_GLTFAccessor_GLTFAccessorType:

.. rst-class:: classref-enumeration

enum **GLTFAccessorType**: :ref:`🔗<enum_GLTFAccessor_GLTFAccessorType>`

.. _class_GLTFAccessor_constant_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_SCALAR** = ``0``

“SCALAR”存取器型別。在 glTF 物件模型中可映射為單個 float、int、bool 值或單個 float 陣列。

.. _class_GLTFAccessor_constant_TYPE_VEC2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_VEC2** = ``1``

“VEC2”存取器型別。在 glTF 物件模型中可映射為“float2”，在 glTF JSON 中表示為包含兩個 float 的陣列。

.. _class_GLTFAccessor_constant_TYPE_VEC3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_VEC3** = ``2``

“VEC3”存取器型別。在 glTF 物件模型中可映射為“float3”，在 glTF JSON 中表示為包含三個 float 的陣列。

.. _class_GLTFAccessor_constant_TYPE_VEC4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_VEC4** = ``3``

“VEC4”存取器型別。在 glTF 物件模型中可映射為“float4”，在 glTF JSON 中表示為包含四個 float 的陣列。

.. _class_GLTFAccessor_constant_TYPE_MAT2:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_MAT2** = ``4``

“MAT2”存取器型別。在 glTF 物件模型中可映射為“float2x2”，在 glTF JSON 中表示為包含四個 float 的陣列。

.. _class_GLTFAccessor_constant_TYPE_MAT3:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_MAT3** = ``5``

“MAT3”存取器型別。在 glTF 物件模型中可映射為“float3x3”，在 glTF JSON 中表示為包含九個 float 的陣列。

.. _class_GLTFAccessor_constant_TYPE_MAT4:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **TYPE_MAT4** = ``6``

“MAT4”存取器型別。在 glTF 物件模型中可映射為“float4x4”，在 glTF JSON 中表示為包含十六個 float 的陣列。

.. rst-class:: classref-item-separator

----

.. _enum_GLTFAccessor_GLTFComponentType:

.. rst-class:: classref-enumeration

enum **GLTFComponentType**: :ref:`🔗<enum_GLTFAccessor_GLTFComponentType>`

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_NONE** = ``0``

元件型別“NONE”。這不是有效的元件型別，用於表示元件型別未設定。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_BYTE:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_BYTE** = ``5120``

元件型別“BYTE”。取值 ``0x1400`` 來源於 OpenGL。表示資料的儲存形式為 1 位元組即 8 位元有符號整數。這是 glTF 規範的核心部分。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_BYTE:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_BYTE** = ``5121``

元件型別“UNSIGNED_BYTE”。取值 ``0x1401`` 來源於 OpenGL。表示資料的儲存形式為 1 位元組即 8 位元無符號整數。這是 glTF 規範的核心部分。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_SHORT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_SHORT** = ``5122``

元件型別“SHORT”。取值 ``0x1402`` 來源於 OpenGL。表示資料的儲存形式為 2 位元組即 16 位元有符號整數。這是 glTF 規範的核心部分。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_SHORT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_SHORT** = ``5123``

元件型別“UNSIGNED_SHORT”。取值 ``0x1403`` 來源於 OpenGL。表示資料的儲存形式為 2 位元組即 16 位元無符號整數。這是 glTF 規範的核心部分。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_INT** = ``5124``

元件型別“INT”。取值 ``0x1404`` 來源於 OpenGL。表示資料的儲存形式為 4 位元組即 32 位元有符號整數。這不是 glTF 規範的核心部分，可能並不是所有 glTF 匯入器都支援。\ ``KHR_interactivity`` 等擴充可能支援。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_INT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_INT** = ``5125``

元件型別“UNSIGNED_INT”。取值 ``0x1405`` 來源於 OpenGL。表示資料的儲存形式為 4 位元組即 32 位元無符號整數。這是 glTF 規範的核心部分。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SINGLE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SINGLE_FLOAT** = ``5126``

元件型別“FLOAT”。取值 ``0x1406`` 來源於 OpenGL。表示資料的儲存形式為 4 位元組即 32 位元浮點數。這是 glTF 規範的核心部分。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_DOUBLE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_DOUBLE_FLOAT** = ``5130``

元件型別“DOUBLE”。取值 ``0x140A`` 來源於 OpenGL。表示資料的儲存形式為 8 位元組即 64 位元浮點數。這不是 glTF 規範的核心部分，可能並不是所有 glTF 匯入器都支援。\ ``KHR_interactivity`` 等擴充可能支援。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_HALF_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_HALF_FLOAT** = ``5131``

元件型別“HALF_FLOAT”。取值 ``0x140B`` 來源於 OpenGL。表示資料的儲存形式為 2 位元組即 16 位元浮點數。這不是 glTF 規範的核心部分，可能並不是所有 glTF 匯入器都支援。\ ``KHR_interactivity`` 等擴充可能支援。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_SIGNED_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_SIGNED_LONG** = ``5134``

元件型別“LONG”。取值 ``0x140E`` 來源於 OpenGL。表示資料的儲存形式為 8 位元組即 64 位元有符號整數。這不是 glTF 規範的核心部分，可能並不是所有 glTF 匯入器都支援。\ ``KHR_interactivity`` 等擴充可能支援。

.. _class_GLTFAccessor_constant_COMPONENT_TYPE_UNSIGNED_LONG:

.. rst-class:: classref-enumeration-constant

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **COMPONENT_TYPE_UNSIGNED_LONG** = ``5135``

元件型別“UNSIGNED_LONG”。取值 ``0x140F`` 來源於 OpenGL。表示資料的儲存形式為 8 位元組即 64 位元無符號整數。這不是 glTF 規範的核心部分，可能並不是所有 glTF 匯入器都支援。\ ``KHR_interactivity`` 等擴充可能支援。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GLTFAccessor_property_accessor_type:

.. rst-class:: classref-property

:ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **accessor_type** = ``0`` :ref:`🔗<class_GLTFAccessor_property_accessor_type>`

.. rst-class:: classref-property-setget

- |void| **set_accessor_type**\ (\ value\: :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>`\ )
- :ref:`GLTFAccessorType<enum_GLTFAccessor_GLTFAccessorType>` **get_accessor_type**\ (\ )

glTF 存取器型別列舉。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_buffer_view:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffer_view** = ``-1`` :ref:`🔗<class_GLTFAccessor_property_buffer_view>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_view**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffer_view**\ (\ )

該存取器正在參照的緩衝區檢視的索引。如果為 ``-1``\ ，則該存取器未參照任何緩衝區檢視。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_offset** = ``0`` :ref:`🔗<class_GLTFAccessor_property_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_offset**\ (\ )

相對於緩衝檢視起點的偏移量，單位為位元組。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_component_type:

.. rst-class:: classref-property

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **component_type** = ``0`` :ref:`🔗<class_GLTFAccessor_property_component_type>`

.. rst-class:: classref-property-setget

- |void| **set_component_type**\ (\ value\: :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>`\ )
- :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **get_component_type**\ (\ )

glTF 元件型別列舉。可能的取值見 :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>`\ 。核心 glTF 規格中，未通過 mesh.primitive.indices 參照的存取器不能使用 5125 或“UNSIGNED_INT”。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **count** = ``0`` :ref:`🔗<class_GLTFAccessor_property_count>`

.. rst-class:: classref-property-setget

- |void| **set_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_count**\ (\ )

該存取器參照的元素數量。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_max:

.. rst-class:: classref-property

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **max** = ``PackedFloat64Array()`` :ref:`🔗<class_GLTFAccessor_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )
- :ref:`PackedFloat64Array<class_PackedFloat64Array>` **get_max**\ (\ )

該存取器中每個元件的最大值。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat64Array<class_PackedFloat64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_min:

.. rst-class:: classref-property

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **min** = ``PackedFloat64Array()`` :ref:`🔗<class_GLTFAccessor_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )
- :ref:`PackedFloat64Array<class_PackedFloat64Array>` **get_min**\ (\ )

該存取器中每個元件的最小值。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat64Array<class_PackedFloat64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_normalized:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalized** = ``false`` :ref:`🔗<class_GLTFAccessor_property_normalized>`

.. rst-class:: classref-property-setget

- |void| **set_normalized**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_normalized**\ (\ )

指定整數資料值在使用前是否進行了正規化。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_count** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_count>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_count**\ (\ )

儲存在稀疏陣列中的偏差存取器值的數量。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_indices_buffer_view:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_indices_buffer_view** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_indices_buffer_view>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_indices_buffer_view**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_indices_buffer_view**\ (\ )

具有稀疏索引的緩衝檢視的索引。參照的緩衝檢視不得定義其 target 或 byteStride 屬性。緩衝檢視和可選的 byteOffset 必須與 componentType 位元組長度對齊。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_indices_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_indices_byte_offset** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_indices_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_indices_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_indices_byte_offset**\ (\ )

相對於緩衝檢視起點的偏移量，單位為位元組。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_indices_component_type:

.. rst-class:: classref-property

:ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **sparse_indices_component_type** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_indices_component_type>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_indices_component_type**\ (\ value\: :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>`\ )
- :ref:`GLTFComponentType<enum_GLTFAccessor_GLTFComponentType>` **get_sparse_indices_component_type**\ (\ )

索引元件資料型別列舉。取值 5121 為“UNSIGNED_BYTE”、5123 為“UNSIGNED_SHORT”、5125 為“UNSIGNED_INT”。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_values_buffer_view:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_values_buffer_view** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_values_buffer_view>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_values_buffer_view**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_values_buffer_view**\ (\ )

具有稀疏值的 bufferView 的索引。參照的緩衝檢視不得定義其 target 或 byteStride 屬性。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_sparse_values_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **sparse_values_byte_offset** = ``0`` :ref:`🔗<class_GLTFAccessor_property_sparse_values_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sparse_values_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sparse_values_byte_offset**\ (\ )

相對於 bufferView 起始位置的偏移量，單位為位元組。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_property_type:

.. rst-class:: classref-property

:ref:`int<class_int>` **type** :ref:`🔗<class_GLTFAccessor_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_type**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_type**\ (\ )

**已棄用：** Use :ref:`accessor_type<class_GLTFAccessor_property_accessor_type>` instead.

glTF 存取器型別 :ref:`int<class_int>`\ 。取值為 ``0`` 表示“SCALAR”、\ ``1`` 表示“VEC2”、\ ``2`` 表示“VEC3”、\ ``3`` 表示“VEC4”、\ ``4`` 表示“MAT2”、\ ``5`` 表示“MAT3”、\ ``6`` 表示“MAT4”。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GLTFAccessor_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFAccessor<class_GLTFAccessor>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFAccessor_method_from_dictionary>`

通過解析給定的 :ref:`Dictionary<class_Dictionary>` 新建 GLTFAccessor 實例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFAccessor_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFAccessor_method_to_dictionary>`

將這個 GLTFAccessor 實例序列化為 :ref:`Dictionary<class_Dictionary>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
