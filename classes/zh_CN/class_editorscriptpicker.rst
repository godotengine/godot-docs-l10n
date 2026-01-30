:github_url: hide

.. _class_EditorScriptPicker:

EditorScriptPicker
==================

**继承：** :ref:`EditorResourcePicker<class_EditorResourcePicker>` **<** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Godot 编辑器的控件，用于选择节点 :ref:`Node<class_Node>` 的脚本 ``script`` 属性。

.. rst-class:: classref-introduction-group

描述
----

与 :ref:`EditorResourcePicker<class_EditorResourcePicker>` 类似，这个 :ref:`Control<class_Control>` 节点在编辑器的检查器面板中使用，但只用于编辑 :ref:`Node<class_Node>` 的 ``script`` 属性。创建包含所有可能子类型的新资源的默认选项 被替换为打开“附加节点脚本”对话框的专用按钮。可以与 :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` 一起使用以重新创建相同的行为。

\ **注意：**\ 你必须设置 :ref:`script_owner<class_EditorScriptPicker_property_script_owner>` 才能让自定义的上下文菜单项发挥作用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------+
   | :ref:`Node<class_Node>` | :ref:`script_owner<class_EditorScriptPicker_property_script_owner>` |
   +-------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_EditorScriptPicker_property_script_owner:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **script_owner** :ref:`🔗<class_EditorScriptPicker_property_script_owner>`

.. rst-class:: classref-property-setget

- |void| **set_script_owner**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_script_owner**\ (\ )

持有被编辑资源的脚本属性的所有者 :ref:`Node<class_Node>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
