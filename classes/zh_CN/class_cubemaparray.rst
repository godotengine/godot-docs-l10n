:github_url: hide

.. _class_CubemapArray:

CubemapArray
============

**继承：** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Cubemap<class_Cubemap>` 数组，存储在一起并使用单个引用。

.. rst-class:: classref-introduction-group

描述
----

**CubemapArray** 由 :ref:`Cubemap<class_Cubemap>` 数组组成。与 :ref:`Cubemap<class_Cubemap>` 一样由多个纹理组成，纹理的数量必须能被 6 整除（对应立方体的各个面）。

\ **CubemapArray** 的主要优点是可以使用单个纹理引用在着色器代码中访问。换句话说，你可以使用单个 **CubemapArray** 将多个 :ref:`Cubemap<class_Cubemap>` 传递到着色器中。这些 :ref:`Cubemap<class_Cubemap>` 在 GPU 上会被分配到相邻缓存区域中，因此用 **CubemapArray** 存储多个 :ref:`Cubemap<class_Cubemap>` 最为高效。

Godot 内部使用 **CubemapArray** 来实现许多效果，例如将 :ref:`ProjectSettings.rendering/reflections/sky_reflections/texture_array_reflections<class_ProjectSettings_property_rendering/reflections/sky_reflections/texture_array_reflections>` 设置为 ``true`` 时的 :ref:`Sky<class_Sky>`\ 。

要自己创建这样的纹理文件，请使用 Godot 编辑器的导入预设重新导入图像文件。要使用代码创建 CubemapArray，请在 CubemapArray 类的实例上使用 :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>`\ 。

预期的图像顺序是 X+、X-、Y+、Y-、Z+、Z-（Godot 的坐标系中 Y+ 是“上”、Z- 是“前”）。你可以从下列模板中挑选一个作为基础：

- `2×3 立方体贴图模板（默认布局选项） <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp>`__\ 

- `3×2 立方体贴图模板 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp>`__\ 

- `1×6 立方体贴图模板 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp>`__\ 

- `6×1 立方体贴图模板 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp>`__\ 

使用默认垂直导入选项时多个图层会相互堆叠（第一个图层位于顶部）。你也可以在导入选项中选择水平布局（第一个图层位于左侧）。

\ **注意：**\ 由于图形 API 限制，兼容性渲染器不支持 **CubemapArray**\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_CubemapArray_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_CubemapArray_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_CubemapArray_method_create_placeholder>`

创建该资源的占位符版本（\ :ref:`PlaceholderCubemapArray<class_PlaceholderCubemapArray>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
