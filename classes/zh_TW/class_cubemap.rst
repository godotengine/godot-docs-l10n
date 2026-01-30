:github_url: hide

.. _class_Cubemap:

Cubemap
=======

**繼承：** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表立方體的六個方形紋理。通常用作天空盒。

.. rst-class:: classref-introduction-group

說明
----

A cubemap is made of 6 textures organized in layers. They are typically used for faking reflections in 3D rendering (see :ref:`ReflectionProbe<class_ReflectionProbe>`). It can be used to make an object look as if it's reflecting its surroundings. This usually delivers much better performance than other reflection methods.

This resource is typically used as a uniform in custom shaders. Few core Godot methods make use of **Cubemap** resources.

To create such a texture file yourself, reimport your image files using the Godot Editor import presets. To create a Cubemap from code, use :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>` on an instance of the Cubemap class.

The expected image order is X+, X-, Y+, Y-, Z+, Z- (in Godot's coordinate system, so Y+ is "up" and Z- is "forward"). You can use one of the following templates as a base:

- `2×3 cubemap template (default layout option) <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp>`__\ 

- `3×2 cubemap template <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp>`__\ 

- `1×6 cubemap template <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp>`__\ 

- `6×1 cubemap template <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp>`__\ 

\ **Note:** Godot doesn't support using cubemaps in a :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`. To use a cubemap as a skybox, convert the default :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` to a :ref:`ShaderMaterial<class_ShaderMaterial>` using the **Convert to ShaderMaterial** resource dropdown option, then replace its code with the following:

.. code:: text

    shader_type sky;

    uniform samplerCube source_panorama : filter_linear, source_color, hint_default_black;
    uniform float exposure : hint_range(0, 128) = 1.0;

    void sky() {
        // If importing a cubemap from another engine, you may need to flip one of the `EYEDIR` components below
        // by replacing it with `-EYEDIR`.
        vec3 eyedir = vec3(EYEDIR.x, EYEDIR.y, EYEDIR.z);
        COLOR = texture(source_panorama, eyedir).rgb * exposure;
    }

After replacing the shader code and saving, specify the imported Cubemap resource in the Shader Parameters section of the ShaderMaterial in the inspector.

Alternatively, you can use `this tool <https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html>`__ to convert a cubemap to an equirectangular sky map and use :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` as usual.

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

方法說明
--------

.. _class_Cubemap_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Cubemap_method_create_placeholder>`

建立該資源的預留位置版本（\ :ref:`PlaceholderCubemap<class_PlaceholderCubemap>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
