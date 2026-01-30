:github_url: hide

.. _class_Material:

Material
========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`CanvasItemMaterial<class_CanvasItemMaterial>`, :ref:`FogMaterial<class_FogMaterial>`, :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`, :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`, :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`, :ref:`PlaceholderMaterial<class_PlaceholderMaterial>`, :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`, :ref:`ShaderMaterial<class_ShaderMaterial>`

Virtual base class for applying visual properties to an object, such as color and roughness.

.. rst-class:: classref-introduction-group

說明
----

**Material** is a base resource used for coloring and shading geometry. All materials inherit from it and almost all :ref:`VisualInstance3D<class_VisualInstance3D>` derived nodes carry a **Material**. A few flags and parameters are shared between all material types and are configured here.

Importantly, you can inherit from **Material** to create your own custom material type in script or in GDExtension.

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

Sets the **Material** to be used for the next pass. This renders the object again using a different material.

\ **Note:** :ref:`next_pass<class_Material_property_next_pass>` materials are not necessarily drawn immediately after the source **Material**. Draw order is determined by material properties, :ref:`render_priority<class_Material_property_render_priority>`, and distance to camera.

\ **Note:** This only applies to :ref:`StandardMaterial3D<class_StandardMaterial3D>`\ s and :ref:`ShaderMaterial<class_ShaderMaterial>`\ s with type "Spatial".

.. rst-class:: classref-item-separator

----

.. _class_Material_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** :ref:`🔗<class_Material_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

Sets the render priority for objects in 3D scenes. Higher priority objects will be sorted in front of lower priority objects. In other words, all objects with :ref:`render_priority<class_Material_property_render_priority>` ``1`` will render on top of all objects with :ref:`render_priority<class_Material_property_render_priority>` ``0``.

\ **Note:** This only applies to :ref:`StandardMaterial3D<class_StandardMaterial3D>`\ s and :ref:`ShaderMaterial<class_ShaderMaterial>`\ s with type "Spatial".

\ **Note:** This will not impact how transparent objects are sorted relative to opaque objects or how dynamic meshes will be sorted relative to other opaque meshes. This is because all transparent objects are drawn after all opaque objects and all dynamic opaque meshes are drawn before other opaque meshes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Material_private_method__can_do_next_pass:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_do_next_pass**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_do_next_pass>`

Only exposed for the purpose of overriding. You cannot call this function directly. Used internally to determine if :ref:`next_pass<class_Material_property_next_pass>` should be shown in the editor or not.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__can_use_render_priority:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_use_render_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_use_render_priority>`

Only exposed for the purpose of overriding. You cannot call this function directly. Used internally to determine if :ref:`render_priority<class_Material_property_render_priority>` should be shown in the editor or not.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_mode:

.. rst-class:: classref-method

:ref:`Mode<enum_Shader_Mode>` **_get_shader_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_mode>`

Only exposed for the purpose of overriding. You cannot call this function directly. Used internally by various editor tools.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_shader_rid**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_rid>`

Only exposed for the purpose of overriding. You cannot call this function directly. Used internally by various editor tools. Used to access the RID of the **Material**'s :ref:`Shader<class_Shader>`.

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

Only available when running in the editor. Opens a popup that visualizes the generated shader code, including all variants and internal shader code. See also :ref:`Shader.inspect_native_shader_code()<class_Shader_method_inspect_native_shader_code>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
