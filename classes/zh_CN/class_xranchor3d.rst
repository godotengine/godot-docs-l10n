:github_url: hide

.. _class_XRAnchor3D:

XRAnchor3D
==========

**继承：** :ref:`XRNode3D<class_XRNode3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

AR 空间中的锚点。

.. rst-class:: classref-introduction-group

描述
----

**XRAnchor3D** 点是一个 :ref:`XRNode3D<class_XRNode3D>`\ ，它将由 AR 平台识别的真实世界位置映射到游戏世界中的某个位置。例如，只要 ARKit 中的平面检测处于开启状态，ARKit 就会识别和更新平面（桌子、地板等）的位置，并为它们创建锚点。

该节点通过其唯一 ID 映射到其中一个锚点。当收到新锚点可用的信号时，应该将该节点添加到该锚点的场景中。可以预定义节点并设置ID；节点将简单地保持在 ``(0, 0, 0)`` 上，直到识别出一个平面。

请记住，只要启用了平面检测，锚点的大小、位置和方向都会随着检测逻辑了解更多关于真实世界的信息而更新，尤其是在只有部分表面在视野内时。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`     | :ref:`get_plane<class_XRAnchor3D_method_get_plane>`\ (\ ) |const| |
   +-------------------------------+-------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_size<class_XRAnchor3D_method_get_size>`\ (\ ) |const|   |
   +-------------------------------+-------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_XRAnchor3D_method_get_plane:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_plane**\ (\ ) |const| :ref:`🔗<class_XRAnchor3D_method_get_plane>`

返回一个与我们的锚点对齐的平面；方便进行交集测试。

.. rst-class:: classref-item-separator

----

.. _class_XRAnchor3D_method_get_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_size**\ (\ ) |const| :ref:`🔗<class_XRAnchor3D_method_get_size>`

返回检测到的平面的估计尺寸。比如当锚点与现实世界中的一张桌子有关时，这就是该桌子表面的估计尺寸。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
