:github_url: hide

.. _class_Material:

Material
========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`CanvasItemMaterial<class_CanvasItemMaterial>`, :ref:`FogMaterial<class_FogMaterial>`, :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`, :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`, :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`, :ref:`PlaceholderMaterial<class_PlaceholderMaterial>`, :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`, :ref:`ShaderMaterial<class_ShaderMaterial>`

用于将如颜色、粗糙度等视觉属性应用于对象的虚拟基类。

.. rst-class:: classref-introduction-group

描述
----

**Material** 即材质，是一种基础资源，能够为几何体着色。所有的材质都继承自它，几乎所有从 :ref:`VisualInstance3D<class_VisualInstance3D>` 派生的节点都带有 **Material**\ 。有一些标志和参数是在所有材质类型之间共享的，可以在这里进行配置。

重要的是，你可以继承 **Material** 以在脚本或 GDExtension 中创建你自己的自定义材质类型。

.. rst-class:: classref-introduction-group

教程
----

- `3D 材质测试演示 <https://godotengine.org/asset-library/asset/2742>`__

- `第三人称射击（TPS）演示 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

属性
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

常量
----

.. _class_Material_constant_RENDER_PRIORITY_MAX:

.. rst-class:: classref-constant

**RENDER_PRIORITY_MAX** = ``127`` :ref:`🔗<class_Material_constant_RENDER_PRIORITY_MAX>`

:ref:`render_priority<class_Material_property_render_priority>` 参数的最大值。

.. _class_Material_constant_RENDER_PRIORITY_MIN:

.. rst-class:: classref-constant

**RENDER_PRIORITY_MIN** = ``-128`` :ref:`🔗<class_Material_constant_RENDER_PRIORITY_MIN>`

:ref:`render_priority<class_Material_property_render_priority>` 参数的最小值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Material_property_next_pass:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **next_pass** :ref:`🔗<class_Material_property_next_pass>`

.. rst-class:: classref-property-setget

- |void| **set_next_pass**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_next_pass**\ (\ )

设置下一阶段使用的 **Material**\ 。这将使用不同的材质再次渲染对象。

\ **注意：**\ :ref:`next_pass<class_Material_property_next_pass>` 材质不一定是紧接在源 **Material** 之后绘制的。绘制顺序由材质属性、\ :ref:`render_priority<class_Material_property_render_priority>` 和到相机的距离决定。

\ **注意：**\ 仅适用于 :ref:`StandardMaterial3D<class_StandardMaterial3D>` 和“Spatial”类型的 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Material_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** :ref:`🔗<class_Material_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

设置 3D 场景中物体的渲染优先级。优先级高的物体将被排序在优先级低的物体前面。换句话说，所有具有 :ref:`render_priority<class_Material_property_render_priority>` ``1`` 的对象，将在所有具有 :ref:`render_priority<class_Material_property_render_priority>` ``0`` 的对象之上渲染。

\ **注意：**\ 仅适用于 :ref:`StandardMaterial3D<class_StandardMaterial3D>` 和“Spatial”类型的 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

\ **注意：**\ 这不会影响透明对象相对于不透明对象的排序方式，或动态网格体相对于其他不透明网格体的排序方式。这是因为所有透明对象都是在所有不透明对象之后绘制的，并且所有动态不透明网格都是在其他不透明网格之前绘制的。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Material_private_method__can_do_next_pass:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_do_next_pass**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_do_next_pass>`

仅出于覆盖目的而暴露。你不能直接调用该函数。在内部用于确定 :ref:`next_pass<class_Material_property_next_pass>` 是否应显示在编辑器中。

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__can_use_render_priority:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_use_render_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_use_render_priority>`

仅出于覆盖目的而暴露。你不能直接调用该函数。在内部用于确定 :ref:`render_priority<class_Material_property_render_priority>` 是否应显示在编辑器中。

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_mode:

.. rst-class:: classref-method

:ref:`Mode<enum_Shader_Mode>` **_get_shader_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_mode>`

仅出于覆盖目的而暴露。你不能直接调用该函数。由各种编辑器工具内部使用。

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_shader_rid**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_rid>`

仅出于覆盖目的而暴露。你不能直接调用该函数。由各种编辑器工具内部使用。用于访问 **Material** 的 :ref:`Shader<class_Shader>` 的 RID。

.. rst-class:: classref-item-separator

----

.. _class_Material_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Material_method_create_placeholder>`

创建该资源的占位符版本（\ :ref:`PlaceholderMaterial<class_PlaceholderMaterial>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Material_method_inspect_native_shader_code:

.. rst-class:: classref-method

|void| **inspect_native_shader_code**\ (\ ) :ref:`🔗<class_Material_method_inspect_native_shader_code>`

仅在编辑器中运行时可用。打开一个弹出窗口显示生成的着色器代码，包括所有变体和内部着色器代码。另见 :ref:`Shader.inspect_native_shader_code()<class_Shader_method_inspect_native_shader_code>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
