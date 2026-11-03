:github_url: hide

.. _class_Material:

Material
========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BlitMaterial<class_BlitMaterial>`, :ref:`CanvasItemMaterial<class_CanvasItemMaterial>`, :ref:`FogMaterial<class_FogMaterial>`, :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`, :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`, :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`, :ref:`PlaceholderMaterial<class_PlaceholderMaterial>`, :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`, :ref:`ShaderMaterial<class_ShaderMaterial>`

用於將如顏色、粗糙度等視覺屬性套用至物件的虛擬基底類別。

.. rst-class:: classref-introduction-group

說明
----

**Material** 即材質，是一種基礎資源，能夠為幾何體著色。所有的材質都繼承自它，幾乎所有從 :ref:`VisualInstance3D<class_VisualInstance3D>` 派生的節點都帶有 **Material**\ 。有一些標誌和參數是在所有材質型別之間共享的，可以在這裡進行設定。

重要的是，你可以繼承 **Material** 以在腳本或 GDExtension 中建立你自己的自訂材質型別。

.. rst-class:: classref-introduction-group

教學
----

- `3D 材質測試演示 <https://godotengine.org/asset-library/asset/2742>`__

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------+
   | :ref:`Material<class_Material>` | :ref:`next_pass<class_Material_property_next_pass>`             |
   +---------------------------------+-----------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`render_priority<class_Material_property_render_priority>` |
   +---------------------------------+-----------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_can_do_next_pass<class_Material_private_method__can_do_next_pass>`\ (\ ) |virtual| |const|               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_can_use_render_priority<class_Material_private_method__can_use_render_priority>`\ (\ ) |virtual| |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Mode<enum_Shader_Mode>`   | :ref:`_get_shader_mode<class_Material_private_method__get_shader_mode>`\ (\ ) |virtual| |required| |const|      |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`           | :ref:`_get_shader_rid<class_Material_private_method__get_shader_rid>`\ (\ ) |virtual| |required| |const|        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Material_method_create_placeholder>`\ (\ ) |const|                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`inspect_native_shader_code<class_Material_method_inspect_native_shader_code>`\ (\ )                       |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Material_constant_RENDER_PRIORITY_MAX:

.. rst-class:: classref-constant

**RENDER_PRIORITY_MAX** = ``127`` :ref:`🔗<class_Material_constant_RENDER_PRIORITY_MAX>`

:ref:`render_priority<class_Material_property_render_priority>` 參數的最大值。

.. _class_Material_constant_RENDER_PRIORITY_MIN:

.. rst-class:: classref-constant

**RENDER_PRIORITY_MIN** = ``-128`` :ref:`🔗<class_Material_constant_RENDER_PRIORITY_MIN>`

:ref:`render_priority<class_Material_property_render_priority>` 參數的最小值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Material_property_next_pass:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **next_pass** :ref:`🔗<class_Material_property_next_pass>`

.. rst-class:: classref-property-setget

- |void| **set_next_pass**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_next_pass**\ (\ )

設定下一階段使用的 **Material**\ 。這將使用不同的材質再次渲染物件。

\ **注意：**\ :ref:`next_pass<class_Material_property_next_pass>` 材質不一定是緊接在源 **Material** 之後繪製的。繪製順序由材質屬性、\ :ref:`render_priority<class_Material_property_render_priority>` 和到相機的距離決定。

\ **注意：**\ 僅適用於 :ref:`StandardMaterial3D<class_StandardMaterial3D>` 和“Spatial”型別的 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Material_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** :ref:`🔗<class_Material_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

設定 3D 場景中物體的渲染優先級。優先級高的物體將被排序在優先級低的物體前面。換句話說，所有具有 :ref:`render_priority<class_Material_property_render_priority>` ``1`` 的物件，將在所有具有 :ref:`render_priority<class_Material_property_render_priority>` ``0`` 的物件之上渲染。

\ **注意：**\ 僅適用於 :ref:`StandardMaterial3D<class_StandardMaterial3D>` 和“Spatial”型別的 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

\ **注意：**\ 這不會影響透明物件相對於不透明物件的排序方式，或動態網格體相對於其他不透明網格體的排序方式。這是因為所有透明物件都是在所有不透明物件之後繪製的，並且所有動態不透明網格都是在其他不透明網格之前繪製的。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Material_private_method__can_do_next_pass:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_do_next_pass**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_do_next_pass>`

僅出於覆蓋目的而暴露。你不能直接呼叫該函式。在內部用於確定 :ref:`next_pass<class_Material_property_next_pass>` 是否應顯示在編輯器中。

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__can_use_render_priority:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_use_render_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_use_render_priority>`

僅出於覆蓋目的而暴露。你不能直接呼叫該函式。在內部用於確定 :ref:`render_priority<class_Material_property_render_priority>` 是否應顯示在編輯器中。

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_mode:

.. rst-class:: classref-method

:ref:`Mode<enum_Shader_Mode>` **_get_shader_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_mode>`

僅出於覆蓋目的而暴露。你不能直接呼叫該函式。由各種編輯器工具內部使用。

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_shader_rid**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_rid>`

僅出於覆蓋目的而暴露。你不能直接呼叫該函式。由各種編輯器工具內部使用。用於存取 **Material** 的 :ref:`Shader<class_Shader>` 的 RID。

.. rst-class:: classref-item-separator

----

.. _class_Material_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Material_method_create_placeholder>`

建立該資源的預留位置版本（\ :ref:`PlaceholderMaterial<class_PlaceholderMaterial>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Material_method_inspect_native_shader_code:

.. rst-class:: classref-method

|void| **inspect_native_shader_code**\ (\ ) :ref:`🔗<class_Material_method_inspect_native_shader_code>`

僅在編輯器中執行時可用。打開一個彈出視窗顯示生成的著色器程式碼，包括所有變體和內部著色器程式碼。另見 :ref:`Shader.inspect_native_shader_code()<class_Shader_method_inspect_native_shader_code>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
