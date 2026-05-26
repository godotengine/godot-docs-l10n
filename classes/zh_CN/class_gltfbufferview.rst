:github_url: hide

.. _class_GLTFBufferView:

GLTFBufferView
==============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表 glTF 缓冲区视图。

.. rst-class:: classref-introduction-group

描述
----

GLTFBufferView 是一种表示 glTF 缓冲区视图 ``bufferView`` 的数据结构，可以在 ``"bufferViews"`` 数组中找到。缓冲区是二进制数据块。缓冲区视图是缓冲区的切片，可用于识别缓冲区并从缓冲区中提取数据。

大多数缓冲区的自定义用途只需要使用 :ref:`buffer<class_GLTFBufferView_property_buffer>`\ 、\ :ref:`byte_length<class_GLTFBufferView_property_byte_length>` 和 :ref:`byte_offset<class_GLTFBufferView_property_byte_offset>`\ 。\ :ref:`byte_stride<class_GLTFBufferView_property_byte_stride>` 和 :ref:`indices<class_GLTFBufferView_property_indices>` 属性适用于更高级的用例，例如为 GPU 编码的交错网格数据。

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

   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`buffer<class_GLTFBufferView_property_buffer>`                       | ``-1``    |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`byte_length<class_GLTFBufferView_property_byte_length>`             | ``0``     |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`byte_offset<class_GLTFBufferView_property_byte_offset>`             | ``0``     |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`byte_stride<class_GLTFBufferView_property_byte_stride>`             | ``-1``    |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`indices<class_GLTFBufferView_property_indices>`                     | ``false`` |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`vertex_attributes<class_GLTFBufferView_property_vertex_attributes>` | ``false`` |
   +-------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFBufferView<class_GLTFBufferView>`   | :ref:`from_dictionary<class_GLTFBufferView_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static|     |
   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`load_buffer_view_data<class_GLTFBufferView_method_load_buffer_view_data>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |const| |
   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`           | :ref:`to_dictionary<class_GLTFBufferView_method_to_dictionary>`\ (\ ) |const|                                                            |
   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GLTFBufferView_property_buffer:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffer** = ``-1`` :ref:`🔗<class_GLTFBufferView_property_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_buffer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffer**\ (\ )

这个缓冲视图所引用的缓冲索引。如果为 ``-1``\ ，则这个缓冲视图并没有引用任何缓冲。

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_byte_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_length** = ``0`` :ref:`🔗<class_GLTFBufferView_property_byte_length>`

.. rst-class:: classref-property-setget

- |void| **set_byte_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_length**\ (\ )

这个缓冲视图的长度，单位为字节。如果为 ``0``\ ，则这个缓冲视图为空。

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_offset** = ``0`` :ref:`🔗<class_GLTFBufferView_property_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_offset**\ (\ )

这个缓冲视图的起点相对于缓冲起点的偏移量，单位为字节。

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_byte_stride:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_stride** = ``-1`` :ref:`🔗<class_GLTFBufferView_property_byte_stride>`

.. rst-class:: classref-property-setget

- |void| **set_byte_stride**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_stride**\ (\ )

交错数据的步幅，单位为字节。如果为 ``-1``\ ，则这个缓冲视图不是交错的。

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_indices:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **indices** = ``false`` :ref:`🔗<class_GLTFBufferView_property_indices>`

.. rst-class:: classref-property-setget

- |void| **set_indices**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_indices**\ (\ )

如果 GLTFBufferView 的 OpenGL GPU 缓冲区类型是用于顶点索引的 ``ELEMENT_ARRAY_BUFFER``\ （整数常量 ``34963``\ ），则为 ``true``\ 。如果该缓冲区类型是任何其他值，则为 ``false``\ 。有关可能的值，请参阅 `Buffers、BufferViews 和 Accessors <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__\ 。该属性在导入时设置，并在导出时使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_vertex_attributes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertex_attributes** = ``false`` :ref:`🔗<class_GLTFBufferView_property_vertex_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_attributes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_vertex_attributes**\ (\ )

如果 GLTFBufferView 的 OpenGL GPU 缓冲区类型是用于顶点属性的 ``ARRAY_BUFFER``\ （整数常量 ``34962``\ ），则为 ``true``\ 。如果该缓冲区类型是任何其他值，则为 ``false``\ 。有关可能的值，请参阅 `Buffers、BufferViews 和 Accessors <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__\ 。该属性在导入时设置，在导出时使用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GLTFBufferView_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFBufferView<class_GLTFBufferView>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFBufferView_method_from_dictionary>`

通过解析给定的 :ref:`Dictionary<class_Dictionary>` 新建 GLTFBufferView 实例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_method_load_buffer_view_data:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **load_buffer_view_data**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |const| :ref:`🔗<class_GLTFBufferView_method_load_buffer_view_data>`

从给定 :ref:`GLTFState<class_GLTFState>` 中该缓冲区视图引用的缓冲区加载缓冲区视图数据。该方法尚不支持具有字节步幅的交错数据。数据以 :ref:`PackedByteArray<class_PackedByteArray>` 形式返回。

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFBufferView_method_to_dictionary>`

将这个 GLTFBufferView 实例序列化为 :ref:`Dictionary<class_Dictionary>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
