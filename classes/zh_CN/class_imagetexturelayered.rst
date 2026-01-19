:github_url: hide

.. _class_ImageTextureLayered:

ImageTextureLayered
===================

**继承：** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>`

纹理类型的基类，包含多个 :ref:`ImageTexture<class_ImageTexture>` 的数据。各个图像具有相同的大小和格式。

.. rst-class:: classref-introduction-group

描述
----

:ref:`Texture2DArray<class_Texture2DArray>`\ 、\ :ref:`Cubemap<class_Cubemap>` 和 :ref:`CubemapArray<class_CubemapArray>` 的基类。不能直接使用，但包含了访问派生资源类型所需的所有函数。另见 :ref:`Texture3D<class_Texture3D>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_from_images<class_ImageTextureLayered_method_create_from_images>`\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`update_layer<class_ImageTextureLayered_method_update_layer>`\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ )            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ImageTextureLayered_method_create_from_images:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_from_images**\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTextureLayered_method_create_from_images>`

根据 :ref:`Image<class_Image>` 数组创建 **ImageTextureLayered**\ ，所需的数据格式见 :ref:`Image.create()<class_Image_method_create>`\ 。宽度、高度、图像格式、Mipmap 等设置由第一个图像决定，其他图像\ *必须*\ 保持一致。

每个 :ref:`Image<class_Image>` 都代表一层 ``layer``\ 。

::

    # 为数组中的图像填充不同的颜色。
    var images = []
    const LAYERS = 6
    for i in LAYERS:
        var image = Image.create_empty(128, 128, false, Image.FORMAT_RGB8)
        if i % 3 == 0:
            image.fill(Color.RED)
        elif i % 3 == 1:
            image.fill(Color.GREEN)
        else:
            image.fill(Color.BLUE)
        images.push_back(image)

    # 创建并保存 2D 纹理数组。图像数组中必须至少有 1 个图像。
    var texture_2d_array = Texture2DArray.new()
    texture_2d_array.create_from_images(images)
    ResourceSaver.save(texture_2d_array, "res://texture_2d_array.res", ResourceSaver.FLAG_COMPRESS)

    # 创建并保存立方体贴图。图像数组中图像的数量必须为 6。
    # 立方体贴图图像的顺序为：X+、X-、Y+、Y-、Z+、Z-
    # （使用 Godot 的坐标系，因此 Y+ 是“上”、Z- 是“前”）。
    var cubemap = Cubemap.new()
    cubemap.create_from_images(images)
    ResourceSaver.save(cubemap, "res://cubemap.res", ResourceSaver.FLAG_COMPRESS)

    # 创建并保存立方体贴图数组。图像数组中图像的数量必须为 6 的倍数。
    # 每个立方体贴图图像的顺序为：X+、X-、Y+、Y-、Z+、Z-
    # （使用 Godot 的坐标系，因此 Y+ 是“上”、Z- 是“前”）。
    var cubemap_array = CubemapArray.new()
    cubemap_array.create_from_images(images)
    ResourceSaver.save(cubemap_array, "res://cubemap_array.res", ResourceSaver.FLAG_COMPRESS)

.. rst-class:: classref-item-separator

----

.. _class_ImageTextureLayered_method_update_layer:

.. rst-class:: classref-method

|void| **update_layer**\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ImageTextureLayered_method_update_layer>`

用这个新图像替换给定 ``layer`` 的现有 :ref:`Image<class_Image>` 数据。

给定的 :ref:`Image<class_Image>` 必须与其余引用的图像具有相同的宽度、高度、图像格式和多级渐远纹理标志。

如果图像格式不受支持，它将被解压缩并转换为一个相似且受支持的 :ref:`Format<enum_Image_Format>`\ 。

更新是即时的：它与绘制同步。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
