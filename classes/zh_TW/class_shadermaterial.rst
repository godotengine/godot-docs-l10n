:github_url: hide

.. _class_ShaderMaterial:

ShaderMaterial
==============

**繼承：** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

自訂 :ref:`Shader<class_Shader>` 程式定義的材質及其著色器參數的值。

.. rst-class:: classref-introduction-group

說明
----

使用自訂 :ref:`Shader<class_Shader>` 程式算繪視覺專案（畫布專案、網格、天空、霧）或處理粒子的材質。與其他材質相比，\ **ShaderMaterial** 給予對產生的著色器程式碼進行更深入的控制。有關更多信息，請參閱下面的著色器檔案索引。

多個\ **ShaderMaterial**\ 可以使用相同的著色器並為著色器製服配置不同的值。

\ **注意：**\ 基於效能原因，僅當\ :ref:`Resource.resource_name<class_Resource_property_resource_name>`\ 變更時才會發出\ :ref:`Resource.changed<class_Resource_signal_changed>`\ 訊號。僅在編輯器中，它也會針對 :ref:`shader<class_ShaderMaterial_property_shader>` 變更發出。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`著色器文件索引 <../tutorials/shaders/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------+
   | :ref:`Shader<class_Shader>` | :ref:`shader<class_ShaderMaterial_property_shader>` |
   +-----------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_shader_parameter<class_ShaderMaterial_method_get_shader_parameter>`\ (\ param\: :ref:`StringName<class_StringName>`\ ) |const|                                |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_shader_parameter<class_ShaderMaterial_method_set_shader_parameter>`\ (\ param\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ShaderMaterial_property_shader:

.. rst-class:: classref-property

:ref:`Shader<class_Shader>` **shader** :ref:`🔗<class_ShaderMaterial_property_shader>`

.. rst-class:: classref-property-setget

- |void| **set_shader**\ (\ value\: :ref:`Shader<class_Shader>`\ )
- :ref:`Shader<class_Shader>` **get_shader**\ (\ )

用於算繪此材質的 :ref:`Shader<class_Shader>` 程式。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ShaderMaterial_method_get_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ShaderMaterial_method_get_shader_parameter>`

返回在著色器中此 uniform 材質的目前值。

.. rst-class:: classref-item-separator

----

.. _class_ShaderMaterial_method_set_shader_parameter:

.. rst-class:: classref-method

|void| **set_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ShaderMaterial_method_set_shader_parameter>`

Changes the value set for this material of a uniform in the shader.

\ **Note:** ``param`` is case-sensitive and must match the name of the uniform in the code exactly (not the capitalized name in the inspector).

\ **Note:** Changes to the shader uniform will be effective on all instances using this **ShaderMaterial**. To prevent this, use per-instance uniforms with :ref:`CanvasItem.set_instance_shader_parameter()<class_CanvasItem_method_set_instance_shader_parameter>`, :ref:`GeometryInstance3D.set_instance_shader_parameter()<class_GeometryInstance3D_method_set_instance_shader_parameter>` or duplicate the **ShaderMaterial** resource using :ref:`Resource.duplicate()<class_Resource_method_duplicate>`. Per-instance uniforms allow for better shader reuse and are therefore faster, so they should be preferred over duplicating the **ShaderMaterial** when possible.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
