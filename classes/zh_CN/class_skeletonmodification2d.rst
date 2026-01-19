:github_url: hide

.. _class_SkeletonModification2D:

SkeletonModification2D
======================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`SkeletonModification2DCCDIK<class_SkeletonModification2DCCDIK>`, :ref:`SkeletonModification2DFABRIK<class_SkeletonModification2DFABRIK>`, :ref:`SkeletonModification2DJiggle<class_SkeletonModification2DJiggle>`, :ref:`SkeletonModification2DLookAt<class_SkeletonModification2DLookAt>`, :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>`, :ref:`SkeletonModification2DStackHolder<class_SkeletonModification2DStackHolder>`, :ref:`SkeletonModification2DTwoBoneIK<class_SkeletonModification2DTwoBoneIK>`

对 :ref:`Skeleton2D<class_Skeleton2D>` 中的 :ref:`Bone2D<class_Bone2D>` 进行操作的资源的基类。

.. rst-class:: classref-introduction-group

描述
----

该资源提供了一个可以扩展的接口，因此在 :ref:`Skeleton2D<class_Skeleton2D>` 中的 :ref:`Bone2D<class_Bone2D>` 节点上运行的代码可以被混合并匹配在一起，以创建复杂的交互。

这用于为 Godot 提供一套灵活而强大的反向运动学解决方案，该解决方案可以适用许多不同的用途。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`enabled<class_SkeletonModification2D_property_enabled>`               | ``true`` |
   +-------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`execution_mode<class_SkeletonModification2D_property_execution_mode>` | ``0``    |
   +-------------------------+-----------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_draw_editor_gizmo<class_SkeletonModification2D_private_method__draw_editor_gizmo>`\ (\ ) |virtual|                                                                                                        |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_execute<class_SkeletonModification2D_private_method__execute>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                                                                         |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_setup_modification<class_SkeletonModification2D_private_method__setup_modification>`\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |virtual|          |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`clamp_angle<class_SkeletonModification2D_method_clamp_angle>`\ (\ angle\: :ref:`float<class_float>`, min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, invert\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_editor_draw_gizmo<class_SkeletonModification2D_method_get_editor_draw_gizmo>`\ (\ ) |const|                                                                                                            |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_is_setup<class_SkeletonModification2D_method_get_is_setup>`\ (\ ) |const|                                                                                                                              |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_modification_stack<class_SkeletonModification2D_method_get_modification_stack>`\ (\ )                                                                                                                  |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_editor_draw_gizmo<class_SkeletonModification2D_method_set_editor_draw_gizmo>`\ (\ draw_gizmo\: :ref:`bool<class_bool>`\ )                                                                              |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_is_setup<class_SkeletonModification2D_method_set_is_setup>`\ (\ is_setup\: :ref:`bool<class_bool>`\ )                                                                                                  |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SkeletonModification2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_SkeletonModification2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

如果为 ``true``\ ，则该修改器的 :ref:`_execute()<class_SkeletonModification2D_private_method__execute>` 函数将被该 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` 调用。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_property_execution_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **execution_mode** = ``0`` :ref:`🔗<class_SkeletonModification2D_property_execution_mode>`

.. rst-class:: classref-property-setget

- |void| **set_execution_mode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_execution_mode**\ (\ )

修改器的执行模式。会告诉修改器栈何时执行该修改器。某修修改器存在只能在特定执行模式下可用的设置。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SkeletonModification2D_private_method__draw_editor_gizmo:

.. rst-class:: classref-method

|void| **_draw_editor_gizmo**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__draw_editor_gizmo>`

用于绘制\ **编辑器专用**\ 的修改器小工具。此函数只会在 Godot 编辑器中调用，并且可以被覆盖，来绘制自定义小工具。

\ **注意：**\ 你需要使用来自 :ref:`SkeletonModificationStack2D.get_skeleton()<class_SkeletonModificationStack2D_method_get_skeleton>` 的 Skeleton2D 及其绘制函数，因为 **SkeletonModification2D** 资源本身无法进行绘制。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_private_method__execute:

.. rst-class:: classref-method

|void| **_execute**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__execute>`

执行给定的修改器。修改器在此时执行应执行的函数。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_private_method__setup_modification:

.. rst-class:: classref-method

|void| **_setup_modification**\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__setup_modification>`

安装修改器时调用。修改器在此时执行初始化。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_clamp_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **clamp_angle**\ (\ angle\: :ref:`float<class_float>`, min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_clamp_angle>`

接受角度并将其钳制在传入的 ``min`` 和 ``max`` 范围内。\ ``invert`` 会逆向钳制该角度，将其钳制在给定范围之外。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_editor_draw_gizmo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_editor_draw_gizmo**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2D_method_get_editor_draw_gizmo>`

返回这个修改器是否会在 Godot 编辑器中调用 :ref:`_draw_editor_gizmo()<class_SkeletonModification2D_private_method__draw_editor_gizmo>` 绘制针对修改器的小工具。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_is_setup:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_setup**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2D_method_get_is_setup>`

返回此修改器是否已被成功安装。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_modification_stack**\ (\ ) :ref:`🔗<class_SkeletonModification2D_method_get_modification_stack>`

返回该修改器绑定的 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ 。你可以通过这个修改器栈来访问修改器所操作的 Skeleton2D。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_set_editor_draw_gizmo:

.. rst-class:: classref-method

|void| **set_editor_draw_gizmo**\ (\ draw_gizmo\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_set_editor_draw_gizmo>`

设置这个修改器是否会在 Godot 编辑器中调用 :ref:`_draw_editor_gizmo()<class_SkeletonModification2D_private_method__draw_editor_gizmo>` 绘制针对修改器的小工具。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_set_is_setup:

.. rst-class:: classref-method

|void| **set_is_setup**\ (\ is_setup\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_set_is_setup>`

允许你手动设置该修改器的安装状态。这个函数应很少使用，因为该修改器所绑定的 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` 应该对该修改器进行安装。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
