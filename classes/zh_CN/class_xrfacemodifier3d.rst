:github_url: hide

.. _class_XRFaceModifier3D:

XRFaceModifier3D
================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于从 :ref:`XRFaceTracker<class_XRFaceTracker>` 权重驱动标准面部网格的节点。

.. rst-class:: classref-introduction-group

描述
----

该节点将 :ref:`XRFaceTracker<class_XRFaceTracker>` 的权重应用于具有支持面部混合形状的网格。

支持\ `统一表情 <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/unified-blendshapes>`__\ 混合形状，以及 ARKit 和 SRanipal 混合形状。

该节点尝试根据名称匹配来识别混合形状。混合形状应与\ `统一表情兼容性 <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/compatibility/overview>`__\ 图表中列出的名称匹配。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------+---------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`face_tracker<class_XRFaceModifier3D_property_face_tracker>` | ``&"/user/face_tracker"`` |
   +-------------------------------------+-------------------------------------------------------------------+---------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`target<class_XRFaceModifier3D_property_target>`             | ``NodePath("")``          |
   +-------------------------------------+-------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_XRFaceModifier3D_property_face_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **face_tracker** = ``&"/user/face_tracker"`` :ref:`🔗<class_XRFaceModifier3D_property_face_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_face_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_face_tracker**\ (\ )

:ref:`XRFaceTracker<class_XRFaceTracker>` 路径。

.. rst-class:: classref-item-separator

----

.. _class_XRFaceModifier3D_property_target:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target** = ``NodePath("")`` :ref:`🔗<class_XRFaceModifier3D_property_target>`

.. rst-class:: classref-property-setget

- |void| **set_target**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target**\ (\ )

面部 :ref:`MeshInstance3D<class_MeshInstance3D>` 的 :ref:`NodePath<class_NodePath>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
