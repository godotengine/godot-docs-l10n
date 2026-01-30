:github_url: hide

.. _class_CompressedTexture2D:

CompressedTexture2D
===================

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

二维纹理，可选择压缩。

.. rst-class:: classref-introduction-group

描述
----

一种从 ``.ctex`` 文件加载的纹理。这种文件格式是 Godot 内部使用的；它是通过导入系统导入其他图像格式创建的。\ **CompressedTexture2D** 可以使用 4 种压缩方法中的一种（包括没有任何压缩）：

- 无损（WebP 或 PNG，在 GPU 上不压缩）

- 有损（WebP，在 GPU 上不压缩）

- VRAM 压缩（在 GPU 上压缩）

- VRAM 未压缩（在 GPU 上不压缩）

- Basis Universal（在 GPU 上压缩。与 VRAM 压缩相比，文件更小，但压缩速度更慢、质量更低）

只有 **VRAM 压缩**\ 实际上减少了 GPU 上的内存使用。\ **无损**\ 和\ **有损**\ 压缩方法将减少磁盘上所需的存储空间，但它们不会减少 GPU 上的内存使用，因为纹理未经压缩地被发送到 GPU。

使用 **VRAM 压缩**\ 还可以缩短加载时间，因为与使用无损或有损压缩的纹理相比，VRAM 压缩的纹理加载速度更快。VRAM 压缩会表现出明显的伪影，并且它旨在用于 3D 渲染，而不是 2D。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`load_path<class_CompressedTexture2D_property_load_path>` | ``""``                                                                                 |
   +-----------------------------+----------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | resource_local_to_scene                                        | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------+----------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_CompressedTexture2D_method_load>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CompressedTexture2D_property_load_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **load_path** = ``""`` :ref:`🔗<class_CompressedTexture2D_property_load_path>`

.. rst-class:: classref-property-setget

- :ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_load_path**\ (\ )

该 **CompressedTexture2D** 的文件路径，指向 ``.ctex`` 文件。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_CompressedTexture2D_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CompressedTexture2D_method_load>`

从指定的路径 ``path`` 加载纹理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
