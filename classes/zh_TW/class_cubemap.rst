:github_url: hide

.. _class_Cubemap:

Cubemap
=======

**繼承：** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表立方體的六個方形紋理。通常用作天空盒。

.. rst-class:: classref-introduction-group

說明
----

立方體貼圖由 6 個紋理組成，按層組織，通常用於在 3D 渲染中充當反射（見 :ref:`ReflectionProbe<class_ReflectionProbe>`\ ）。使用立方體貼圖可以使物體看起來像是在反射周圍的環境。這通常比其他反射方法提供更好的效能。

該資源通常作為自訂著色器中的 uniform 使用。少數核心 Godot 方法會用到 **Cubemap** 資源。

要自己建立這樣的紋理檔案，請使用 Godot 編輯器的匯入預設重新匯入影像檔案。要使用程式碼建立 Cubemap，請對 Cubemap 類的實例呼叫 :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>`\ 。

預期的影像順序是 X+、X-、Y+、Y-、Z+、Z-（Godot 的座標系統中 Y+ 是“上”、Z- 是“前”）。你可以從下列範本中挑選一個作為基礎：

- `2×3 立方體貼圖範本（預設版面配置選項） <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp>`__\ 

- `3×2 立方體貼圖範本 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp>`__\ 

- `1×6 立方體貼圖範本 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp>`__\ 

- `6×1 立方體貼圖範本 <https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp>`__\ 

\ **注意：**\ Godot 不支援在 :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` 中使用立方體貼圖。要將立方體貼圖用作天空盒，請使用 **轉換為 ShaderMaterial** 資源下拉選項將預設的 :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` 轉換為 :ref:`ShaderMaterial<class_ShaderMaterial>`\ ，然後將其程式碼替換為：

.. code:: text

    shader_type sky;

    uniform samplerCube source_panorama : filter_linear, source_color, hint_default_black;
    uniform float exposure : hint_range(0, 128) = 1.0;

    void sky() {
        // 如果立方體貼圖是從其他引擎匯入的，可能需要通過將下面的
        // 某一個 `EYEDIR` 分量替換為 `-EYEDIR` 來進行翻轉。
        vec3 eyedir = vec3(EYEDIR.x, EYEDIR.y, EYEDIR.z);
        COLOR = texture(source_panorama, eyedir).rgb * exposure;
    }

替換著色器程式碼並儲存後，請在屬性檢視器中 ShaderMaterial 的 Shader Parameters 部分指定匯入的立方體貼圖資源。

另外，你可以使用 `這個工具 <https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html>`__\ 將立方體貼圖轉換為等距矩形天空圖，這樣就可以像往常一樣使用 :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>` 了。

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
