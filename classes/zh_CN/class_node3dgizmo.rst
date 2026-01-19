:github_url: hide

.. _class_Node3DGizmo:

Node3DGizmo
===========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`

用于公开 :ref:`Node3D<class_Node3D>` 编辑器小工具的抽象类。

.. rst-class:: classref-introduction-group

描述
----

该抽象类有助于将 :ref:`Node3D<class_Node3D>` 场景与特定于编辑器的 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 类连接起来。

\ **Node3DGizmo** 本身没有公开的 API，请参考 :ref:`Node3D.add_gizmo()<class_Node3D_method_add_gizmo>` 并向其传递一个 :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` 实例。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
