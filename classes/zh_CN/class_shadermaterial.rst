:github_url: hide

.. _class_ShaderMaterial:

ShaderMaterial
==============

**继承：** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

由自定义 :ref:`Shader<class_Shader>` 程序定义的材质及其着色器参数的值。

.. rst-class:: classref-introduction-group

描述
----

使用自定义 :ref:`Shader<class_Shader>` 程序来渲染可见项目（画布项目、网格、天空、雾）或处理粒子的材质。与其他材质相比，\ **ShaderMaterial** 可以更深入地控制生成的着色器代码。有关更多信息，请参阅下面的着色器文档索引。

多个 **ShaderMaterial** 可以使用相同的着色器并为着色器 uniform 配置不同的值。

\ **注意：**\ 出于性能原因，仅当 :ref:`Resource.resource_name<class_Resource_property_resource_name>` 更改时才会发出 :ref:`Resource.changed<class_Resource_signal_changed>` 信号。仅在编辑器中，它也会针对 :ref:`shader<class_ShaderMaterial_property_shader>` 更改而发出。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`着色器文档索引 <../tutorials/shaders/index>`

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_ShaderMaterial_property_shader:

.. rst-class:: classref-property

:ref:`Shader<class_Shader>` **shader** :ref:`🔗<class_ShaderMaterial_property_shader>`

.. rst-class:: classref-property-setget

- |void| **set_shader**\ (\ value\: :ref:`Shader<class_Shader>`\ )
- :ref:`Shader<class_Shader>` **get_shader**\ (\ )

用于渲染此材质的 :ref:`Shader<class_Shader>` 程序。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ShaderMaterial_method_get_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ShaderMaterial_method_get_shader_parameter>`

返回在着色器中此 uniform 材质的当前值。

.. rst-class:: classref-item-separator

----

.. _class_ShaderMaterial_method_set_shader_parameter:

.. rst-class:: classref-method

|void| **set_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ShaderMaterial_method_set_shader_parameter>`

更改这个材质的着色器中为某个 uniform 设置的值。

\ **注意：**\ ``param`` 大小写敏感，必须完全匹配代码中 uniform 的名称（不是检查器中首字母大写后的名称）。

\ **注意：**\ 对着色器 uniform 的修改会在使用这个 **ShaderMaterial** 的所有实例上生效。要防止这种行为，请通过 :ref:`GeometryInstance3D.set_instance_shader_parameter()<class_GeometryInstance3D_method_set_instance_shader_parameter>` 使用单实例 uniform，或者使用 :ref:`Resource.duplicate()<class_Resource_method_duplicate>` 制作该 **ShaderMaterial** 的副本。单实例 uniform 可以更好地复用着色器，因此速度也更快，所以应该尽可能优先使用，而不是制作 **ShaderMaterial** 的副本。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
