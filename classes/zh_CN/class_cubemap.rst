:github_url: hide

.. _class_Cubemap:

Cubemap
=======

**继承：** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表立方体面的六个正方形纹理。通常用作天空盒。

.. rst-class:: classref-introduction-group

描述
----

立方体贴图由 6 个纹理组成，按层组织，通常用于在 3D 渲染中充当反射（见 :ref:`ReflectionProbe<class_ReflectionProbe>`\ ）。使用立方体贴图可以使物体看起来像是在反射周围的环境。这通常比其他反射方法提供更好的性能。

该资源通常作为自定义着色器中的 uniform 使用。少数核心 Godot 方法会用到 **Cubemap** 资源。

要自己创建这样的纹理文件，请使用 Godot 编辑器的导入预设重新导入图像文件。要使用代码创建 Cubemap，请对 Cubemap 类的实例调用 :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>`\ 。

预期的图像顺序是 X+、X-、Y+、Y-、Z+、Z-（Godot 的坐标系统中 Y+ 是“上”、Z- 是“前”）。你可以从下列模板中挑选一个作为基础：

- `2×3 立方体贴图模板（默认布局选项） <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp>`__\ 

- `3×2 立方体贴图模板 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp>`__\ 

- `1×6 立方体贴图模板 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp>`__\ 

- `6×1 立方体贴图模板 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp>`__\ 

\ **注意：**\ Godot 不支持在 :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` 中使用立方体贴图。要将立方体贴图用作天空盒，请使用 **转换为 ShaderMaterial** 资源下拉选项将默认的 :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` 转换为 :ref:`ShaderMaterial<class_ShaderMaterial>`\ ，然后将其代码替换为：

.. code:: text

    shader_type sky;

    uniform samplerCube source_panorama : filter_linear, source_color, hint_default_black;
    uniform float exposure : hint_range(0, 128) = 1.0;

    void sky() {
        // 如果立方体贴图是从其他引擎导入的，可能需要通过将下面的
        // 某一个 `EYEDIR` 分量替换为 `-EYEDIR` 来进行翻转。
        vec3 eyedir = vec3(EYEDIR.x, EYEDIR.y, EYEDIR.z);
        COLOR = texture(source_panorama, eyedir).rgb * exposure;
    }

替换着色器代码并保存后，请在检查器中 ShaderMaterial 的 Shader Parameters 部分指定导入的立方体贴图资源。

另外，你可以使用 `这个工具 <https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html>`__\ 将立方体贴图转换为等距矩形天空图，这样就可以像往常一样使用 :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` 了。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Cubemap_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Cubemap_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Cubemap_method_create_placeholder>`

创建该资源的占位符版本（\ :ref:`PlaceholderCubemap<class_PlaceholderCubemap>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
