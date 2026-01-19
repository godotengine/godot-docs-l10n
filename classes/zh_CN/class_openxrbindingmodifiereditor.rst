:github_url: hide

.. _class_OpenXRBindingModifierEditor:

OpenXRBindingModifierEditor
===========================

**继承：** :ref:`PanelContainer<class_PanelContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

绑定修改器编辑器。

.. rst-class:: classref-introduction-group

描述
----

OpenXR 动作映射所使用的默认绑定修改器编辑器。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_horizontal | ``3`` (overrides :ref:`Control<class_Control_property_size_flags_horizontal>`) |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRBindingModifierEditor_method_get_binding_modifier>`\ (\ ) |const|                                                                                                     |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`setup<class_OpenXRBindingModifierEditor_method_setup>`\ (\ action_map\: :ref:`OpenXRActionMap<class_OpenXRActionMap>`, binding_modifier\: :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`\ ) |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_OpenXRBindingModifierEditor_signal_binding_modifier_removed:

.. rst-class:: classref-signal

**binding_modifier_removed**\ (\ binding_modifier_editor\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_OpenXRBindingModifierEditor_signal_binding_modifier_removed>`

当用户按下该修改器的删除绑定修改器按钮时发出的信号。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRBindingModifierEditor_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` **get_binding_modifier**\ (\ ) |const| :ref:`🔗<class_OpenXRBindingModifierEditor_method_get_binding_modifier>`

返回当前正在编辑的 :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRBindingModifierEditor_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ action_map\: :ref:`OpenXRActionMap<class_OpenXRActionMap>`, binding_modifier\: :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`\ ) :ref:`🔗<class_OpenXRBindingModifierEditor_method_setup>`

针对给定的 ``action_map`` 和 ``binding_modifier`` 设置该编辑器。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
