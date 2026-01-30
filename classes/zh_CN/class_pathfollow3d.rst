:github_url: hide

.. _class_PathFollow3D:

PathFollow3D
============

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

:ref:`Path3D<class_Path3D>` 的点采样器。

.. rst-class:: classref-introduction-group

描述
----

这个节点接受它的父节点 :ref:`Path3D<class_Path3D>` 并返回其中一个点的坐标，需要给定到第一个顶点的距离。

在不编码移动图案的情况下，它可以使其他节点遵循一条路径。为此，节点必须是该节点的子节点。在该节点中设置 :ref:`progress<class_PathFollow3D_property_progress>` 后，后代节点会随之移动。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`cubic_interp<class_PathFollow3D_property_cubic_interp>`       | ``true``  |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`h_offset<class_PathFollow3D_property_h_offset>`               | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`loop<class_PathFollow3D_property_loop>`                       | ``true``  |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`progress<class_PathFollow3D_property_progress>`               | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`progress_ratio<class_PathFollow3D_property_progress_ratio>`   | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`RotationMode<enum_PathFollow3D_RotationMode>` | :ref:`rotation_mode<class_PathFollow3D_property_rotation_mode>`     | ``3``     |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`tilt_enabled<class_PathFollow3D_property_tilt_enabled>`       | ``true``  |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`use_model_front<class_PathFollow3D_property_use_model_front>` | ``false`` |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`v_offset<class_PathFollow3D_property_v_offset>`               | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`correct_posture<class_PathFollow3D_method_correct_posture>`\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, rotation_mode\: :ref:`RotationMode<enum_PathFollow3D_RotationMode>`\ ) |static| |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_PathFollow3D_RotationMode:

.. rst-class:: classref-enumeration

enum **RotationMode**: :ref:`🔗<enum_PathFollow3D_RotationMode>`

.. _class_PathFollow3D_constant_ROTATION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_NONE** = ``0``

禁止该 PathFollow3D 旋转。

.. _class_PathFollow3D_constant_ROTATION_Y:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_Y** = ``1``

允许该 PathFollow3D 仅在 Y 轴上旋转。

.. _class_PathFollow3D_constant_ROTATION_XY:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_XY** = ``2``

允许该 PathFollow3D 同时在 X 和 Y 轴上旋转。

.. _class_PathFollow3D_constant_ROTATION_XYZ:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_XYZ** = ``3``

允许该 PathFollow3D 在任意轴上旋转。

.. _class_PathFollow3D_constant_ROTATION_ORIENTED:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_ORIENTED** = ``4``

使用 :ref:`Curve3D<class_Curve3D>` 中的向上向量信息来强制定向。该旋转模式需要将 :ref:`Path3D<class_Path3D>` 的 :ref:`Curve3D.up_vector_enabled<class_Curve3D_property_up_vector_enabled>` 属性设置为 ``true``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PathFollow3D_property_cubic_interp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cubic_interp** = ``true`` :ref:`🔗<class_PathFollow3D_property_cubic_interp>`

.. rst-class:: classref-property-setget

- |void| **set_cubic_interpolation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_cubic_interpolation**\ (\ )

如果为 ``true``\ ，则两个缓存点之间的位置将被三次插值，否则将被线性插值。

沿着 :ref:`Path3D<class_Path3D>` 的 :ref:`Curve3D<class_Curve3D>` 的点在使用前已被预先计算，以便更快地计算。然后在两个相邻缓存点之间，插值计算请求的偏移处的点。如果曲线急转弯，这可能会出现问题，因为缓存的点可能没有足够紧密地跟随曲线。

这个问题有两个答案：要么增加缓存点的数量，并增加内存消耗；要么在两个点之间进行三次插值，代价是（稍微）降低计算速度。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_h_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **h_offset** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_h_offset>`

.. rst-class:: classref-property-setget

- |void| **set_h_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_h_offset**\ (\ )

节点沿曲线的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``true`` :ref:`🔗<class_PathFollow3D_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

如果为 ``true``\ ，路径长度以外的任何偏移都将环绕，而不是在结束时停止。对于循环路径使用它。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_progress>`

.. rst-class:: classref-property-setget

- |void| **set_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress**\ (\ )

到第一个顶点的距离，单位为沿路径经过的 3D 单位数。改变这个值会将这个节点的位置设置为路径上的某个点。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_progress_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress_ratio** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_progress_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_progress_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress_ratio**\ (\ )

到第一个顶点的距离，将 0.0 作为第一个顶点，1.0 作为最后一个顶点。这只是表示路径内偏移量的另一种方式，提供的偏移量在内部会与路径的长度相乘。

\ **PathFollow3D** 为场景树中 :ref:`Path3D<class_Path3D>` 的子节点时才能够设置和获取，该 :ref:`Path3D<class_Path3D>` 中还需要存在长度非零的 :ref:`Curve3D<class_Curve3D>`\ 。否则设置该字段会输出错误，获取该字段则会返回 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_rotation_mode:

.. rst-class:: classref-property

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **rotation_mode** = ``3`` :ref:`🔗<class_PathFollow3D_property_rotation_mode>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_mode**\ (\ value\: :ref:`RotationMode<enum_PathFollow3D_RotationMode>`\ )
- :ref:`RotationMode<enum_PathFollow3D_RotationMode>` **get_rotation_mode**\ (\ )

允许或禁止在一个或多个轴上旋转，这取决于使用的 :ref:`RotationMode<enum_PathFollow3D_RotationMode>` 常量。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_tilt_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tilt_enabled** = ``true`` :ref:`🔗<class_PathFollow3D_property_tilt_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_tilt_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tilt_enabled**\ (\ )

如果为 ``true``\ ，则 :ref:`Curve3D<class_Curve3D>` 的倾斜属性生效。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_use_model_front:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_model_front** = ``false`` :ref:`🔗<class_PathFollow3D_property_use_model_front>`

.. rst-class:: classref-property-setget

- |void| **set_use_model_front**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_model_front**\ (\ )

如果为 ``true``\ ，则沿路径移动的节点会将 +Z 轴作为前方向进行朝向。另见 :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` 和 :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_v_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **v_offset** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_v_offset>`

.. rst-class:: classref-property-setget

- |void| **set_v_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_v_offset**\ (\ )

节点垂直于曲线的偏移量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PathFollow3D_method_correct_posture:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **correct_posture**\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, rotation_mode\: :ref:`RotationMode<enum_PathFollow3D_RotationMode>`\ ) |static| :ref:`🔗<class_PathFollow3D_method_correct_posture>`

校正 ``transform``\ 。\ ``rotation_mode`` 隐式指定如何计算姿势（向前、向上和侧向）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
