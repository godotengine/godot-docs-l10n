:github_url: hide

.. _class_ShaderGlobalsOverride:

ShaderGlobalsOverride
=====================

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

在场景中覆盖全局着色器参数取值的节点。

.. rst-class:: classref-introduction-group

描述
----

就像 :ref:`WorldEnvironment<class_WorldEnvironment>` 能够在加载指定场景时覆盖环境一样，\ **ShaderGlobalsOverride** 能够临时覆盖全局着色器参数。移除该节点后，就会恢复项目范围的全局着色器参数。详见 :ref:`RenderingServer<class_RenderingServer>` 的 ``global_shader_parameter_*`` 方法。

\ **注意：**\ 一个场景只能用一个 **ShaderGlobalsOverride**\ 。如果场景树中存在多个 **ShaderGlobalsOverride**\ ，则只会考虑第一个节点（按照树顺序）。

\ **注意：**\ 所有 **ShaderGlobalsOverride** 节点在添加至场景树时都会加入 ``"shader_overrides_group"`` 分组。当前活动的 **ShaderGlobalsOverride** 还会加入 ``"shader_overrides_group_active"`` 分组。你可以据此来检查当前活动的 **ShaderGlobalsOverride** 节点是哪一个。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`着色语言 <../tutorials/shaders/shader_reference/shading_language>`

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
