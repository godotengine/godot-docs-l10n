:github_url: hide

.. _class_OpenXRInteractionProfileEditorBase:

OpenXRInteractionProfileEditorBase
==================================

**继承：** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`OpenXRInteractionProfileEditor<class_OpenXRInteractionProfileEditor>`

对交互配置进行编辑的基类。

.. rst-class:: classref-introduction-group

描述
----

这是 OpenXR 动作映射编辑器所使用的交互配置编辑器的基类。可以用来创建针对特定的交互配置的自定义编辑器。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_horizontal | ``3`` (overrides :ref:`Control<class_Control_property_size_flags_horizontal>`) |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical   | ``3`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`)   |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`setup<class_OpenXRInteractionProfileEditorBase_method_setup>`\ (\ action_map\: :ref:`OpenXRActionMap<class_OpenXRActionMap>`, interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRInteractionProfileEditorBase_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ action_map\: :ref:`OpenXRActionMap<class_OpenXRActionMap>`, interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) :ref:`🔗<class_OpenXRInteractionProfileEditorBase_method_setup>`

使用给定的动作映射 ``action_map`` 和交互配置 ``interaction_profile`` 设置该编辑器。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
