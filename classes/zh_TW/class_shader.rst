:github_url: hide

.. _class_Shader:

Shader
======

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VisualShader<class_VisualShader>`

用 Godot 著色語言實作的著色器。

.. rst-class:: classref-introduction-group

說明
----

用 Godot 著色語言實作的自訂著色器程式，使用 ``.gdshader`` 副檔名保存。

這個類由 :ref:`ShaderMaterial<class_ShaderMaterial>` 使用，能夠讓你編寫算繪可視專案或更新粒子資訊時的自定義行為。詳細解釋和用法請參考下列教學連結。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`著色器文件索引 <../tutorials/shaders/index>`

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_Shader_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_Shader_Mode>`

.. _class_Shader_constant_MODE_SPATIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_SPATIAL** = ``0``

用於繪製所有 3D 物件的模式。

.. _class_Shader_constant_MODE_CANVAS_ITEM:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_CANVAS_ITEM** = ``1``

用於繪製所有 2D 物件的模式。

.. _class_Shader_constant_MODE_PARTICLES:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_PARTICLES** = ``2``

用於基於每個粒子計算粒子資訊的模式。不用於繪圖。

.. _class_Shader_constant_MODE_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_SKY** = ``3``

用於繪製天空的模式。僅適用於附加到 :ref:`Sky<class_Sky>` 對象的著色器。

.. _class_Shader_constant_MODE_FOG:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_FOG** = ``4``

用於設定體積霧效果的顏色和密度的模式。

.. _class_Shader_constant_MODE_TEXTURE_BLIT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_TEXTURE_BLIT** = ``5``

Mode used for drawing to DrawableTexture resources via blit calls.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Shader_property_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **code** = ``""`` :ref:`🔗<class_Shader_property_code>`

.. rst-class:: classref-property-setget

- |void| **set_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_code**\ (\ )

返回使用者編寫的著色器程式碼，而不是內部使用的完整生成程式碼。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Shader_method_get_default_texture_parameter:

.. rst-class:: classref-method

:ref:`Texture<class_Texture>` **get_default_texture_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Shader_method_get_default_texture_parameter>`

返回被設定為指定參數的預設值的紋理。

\ **注意：**\ ``name`` 必須與程式碼中的 uniform 名稱完全配對。

\ **注意：**\ 如果使用取樣器陣列，則使用 ``index`` 存取指定的紋理。

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_get_mode:

.. rst-class:: classref-method

:ref:`Mode<enum_Shader_Mode>` **get_mode**\ (\ ) |const| :ref:`🔗<class_Shader_method_get_mode>`

返回著色器的著色器模式。

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_get_shader_uniform_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_shader_uniform_list**\ (\ get_groups\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Shader_method_get_shader_uniform_list>`

Returns the list of shader uniforms that can be assigned to a :ref:`ShaderMaterial<class_ShaderMaterial>`, for use with :ref:`ShaderMaterial.set_shader_parameter()<class_ShaderMaterial_method_set_shader_parameter>` and :ref:`ShaderMaterial.get_shader_parameter()<class_ShaderMaterial_method_get_shader_parameter>`. The parameters returned are contained in dictionaries in a similar format to the ones returned by :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

If argument ``get_groups`` is ``true``, parameter grouping hints are also included in the list.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_inspect_native_shader_code:

.. rst-class:: classref-method

|void| **inspect_native_shader_code**\ (\ ) :ref:`🔗<class_Shader_method_inspect_native_shader_code>`

Only available when running in the editor. Opens a popup that visualizes the generated shader code, including all variants and internal shader code. See also :ref:`Material.inspect_native_shader_code()<class_Material_method_inspect_native_shader_code>`.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_set_default_texture_parameter:

.. rst-class:: classref-method

|void| **set_default_texture_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture<class_Texture>`, index\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Shader_method_set_default_texture_parameter>`

設定要與紋理 uniform 一起使用的預設紋理。如果未在 :ref:`ShaderMaterial<class_ShaderMaterial>` 中設定紋理，則使用該預設值。

\ **注意：**\ ``name`` 必須與程式碼中的 uniform 名稱完全配對。

\ **注意：**\ 如果使用取樣器陣列，則使用 ``index`` 存取指定的紋理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
