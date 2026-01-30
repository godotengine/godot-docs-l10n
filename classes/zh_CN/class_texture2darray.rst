:github_url: hide

.. _class_Texture2DArray:

Texture2DArray
==============

**继承：** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

由多个独立图像构成的单个纹理资源。每个图像的尺寸和 mipmap 级别数都相同。

.. rst-class:: classref-introduction-group

描述
----

Texture2DArray 与 Texture3D 不同：Texture2DArray 不支持在 :ref:`Image<class_Image>` 之间进行三线性插值，即不会进行混合。另见 :ref:`Cubemap<class_Cubemap>` 和 :ref:`CubemapArray<class_CubemapArray>`\ ，这些纹理数组具有针对立方体贴图设计的函数。

Texture2DArray 与 :ref:`AtlasTexture<class_AtlasTexture>` 也不同：Texture2DArray 中的图形都是单独处理的。而在图集中，区域（即单张图像）的大小可以不同。此外，你通常会需要围绕区域添加边距，防止 UV 映射意外进入多个区域。多级渐远纹理 mipmap 也是一样：每一层的 mipmap 链都是单独处理的。而在图集中，需要在片段着色器中手动切片。

要自己创建这样的纹理文件，请使用 Godot 编辑器导入预设重新导入图像文件。要使用代码创建 Texture2DArray，请对 Texture2DArray 类的实例使用 :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Texture2DArray_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Texture2DArray_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture2DArray_method_create_placeholder>`

创建该资源的占位符版本（\ :ref:`PlaceholderTexture2DArray<class_PlaceholderTexture2DArray>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
