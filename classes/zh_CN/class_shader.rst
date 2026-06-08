:github_url: hide

.. _class_Shader:

Shader
======

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`VisualShader<class_VisualShader>`

用 Godot 着色语言实现的着色器。

.. rst-class:: classref-introduction-group

描述
----

用 Godot 着色语言实现的自定义着色器程序，使用 ``.gdshader`` 扩展名保存。

这个类由 :ref:`ShaderMaterial<class_ShaderMaterial>` 使用，能够让你编写渲染可视项目或更新粒子信息时的自定义行为。详细解释和用法请参考下列教程链接。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`着色器文档索引 <../tutorials/shaders/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`code<class_Shader_property_code>` | ``""`` |
   +-----------------------------+-----------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture<class_Texture>` | :ref:`get_default_texture_parameter<class_Shader_method_get_default_texture_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, index\: :ref:`int<class_int>` = 0\ ) |const|                                  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mode<enum_Shader_Mode>` | :ref:`get_mode<class_Shader_method_get_mode>`\ (\ ) |const|                                                                                                                                                           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`     | :ref:`get_shader_uniform_list<class_Shader_method_get_shader_uniform_list>`\ (\ get_groups\: :ref:`bool<class_bool>` = false\ )                                                                                       |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`inspect_native_shader_code<class_Shader_method_inspect_native_shader_code>`\ (\ )                                                                                                                               |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_default_texture_parameter<class_Shader_method_set_default_texture_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture<class_Texture>`, index\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Shader_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_Shader_Mode>`

.. _class_Shader_constant_MODE_SPATIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_SPATIAL** = ``0``

用于绘制所有 3D 对象的模式。

.. _class_Shader_constant_MODE_CANVAS_ITEM:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_CANVAS_ITEM** = ``1``

用于绘制所有 2D 对象的模式。

.. _class_Shader_constant_MODE_PARTICLES:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_PARTICLES** = ``2``

用于基于每个粒子计算粒子信息的模式。不用于绘图。

.. _class_Shader_constant_MODE_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_SKY** = ``3``

用于绘制天空的模式。仅适用于附加到 :ref:`Sky<class_Sky>` 对象的着色器。

.. _class_Shader_constant_MODE_FOG:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_FOG** = ``4``

用于设置体积雾效果的颜色和密度的模式。

.. _class_Shader_constant_MODE_TEXTURE_BLIT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_TEXTURE_BLIT** = ``5``

用于通过位块传输（blit）调用绘制到 DrawableTexture 资源的模式。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Shader_property_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **code** = ``""`` :ref:`🔗<class_Shader_property_code>`

.. rst-class:: classref-property-setget

- |void| **set_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_code**\ (\ )

返回用户编写的着色器代码，而不是内部使用的完整生成代码。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Shader_method_get_default_texture_parameter:

.. rst-class:: classref-method

:ref:`Texture<class_Texture>` **get_default_texture_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Shader_method_get_default_texture_parameter>`

返回被设置为指定参数的默认值的纹理。

\ **注意：**\ ``name`` 必须与代码中的 uniform 名称完全匹配。

\ **注意：**\ 如果使用采样器数组，则使用 ``index`` 访问指定的纹理。

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_get_mode:

.. rst-class:: classref-method

:ref:`Mode<enum_Shader_Mode>` **get_mode**\ (\ ) |const| :ref:`🔗<class_Shader_method_get_mode>`

返回着色器的着色器模式。

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_get_shader_uniform_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_shader_uniform_list**\ (\ get_groups\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Shader_method_get_shader_uniform_list>`

返回可以赋值给 :ref:`ShaderMaterial<class_ShaderMaterial>` 的着色器 uniform 列表，可用于 :ref:`ShaderMaterial.set_shader_parameter()<class_ShaderMaterial_method_set_shader_parameter>` 和 :ref:`ShaderMaterial.get_shader_parameter()<class_ShaderMaterial_method_get_shader_parameter>`\ 。返回的参数包含在字典内，与 :ref:`Object.get_property_list()<class_Object_method_get_property_list>` 返回的格式类似。

如果参数 ``get_groups`` 为 ``true``\ ，则列表中还会包含参数分组提示。

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_inspect_native_shader_code:

.. rst-class:: classref-method

|void| **inspect_native_shader_code**\ (\ ) :ref:`🔗<class_Shader_method_inspect_native_shader_code>`

仅在编辑器中运行时可用。打开一个弹出窗口，其中可视化生成的着色器代码，包括所有变体和内部着色器代码。另见 :ref:`Material.inspect_native_shader_code()<class_Material_method_inspect_native_shader_code>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_set_default_texture_parameter:

.. rst-class:: classref-method

|void| **set_default_texture_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture<class_Texture>`, index\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Shader_method_set_default_texture_parameter>`

设置要与纹理 uniform 一起使用的默认纹理。如果未在 :ref:`ShaderMaterial<class_ShaderMaterial>` 中设置纹理，则使用该默认值。

\ **注意：**\ ``name`` 必须与代码中的 uniform 名称完全匹配。

\ **注意：**\ 如果使用采样器数组，则使用 ``index`` 访问指定的纹理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
