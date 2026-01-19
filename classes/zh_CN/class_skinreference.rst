:github_url: hide

.. _class_SkinReference:

SkinReference
=============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

骨架 RID 的引用计数占位对象，\ :ref:`RenderingServer<class_RenderingServer>` 中会使用该 RID。

.. rst-class:: classref-introduction-group

描述
----

包含来自 :ref:`Skin<class_Skin>` （在特定 :ref:`MeshInstance3D<class_MeshInstance3D>` 上下文中使用）的映射的内部对象，用于引用 RenderingServer 中的骨架 :ref:`RID<class_RID>`\ 。

另见 :ref:`MeshInstance3D.get_skin_reference()<class_MeshInstance3D_method_get_skin_reference>` 和 :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`\ 。

请注意，尽管命名相似，但 :ref:`RenderingServer<class_RenderingServer>` 中使用的骨架 RID 与 :ref:`Skeleton3D<class_Skeleton3D>` 节点没有直接的一一对应关系。

特别是，没有 :ref:`MeshInstance3D<class_MeshInstance3D>` 子节点的 :ref:`Skeleton3D<class_Skeleton3D>` 节点可能对 :ref:`RenderingServer<class_RenderingServer>` 来说是未知的。

另一方面，具有多个 :ref:`MeshInstance3D<class_MeshInstance3D>` 节点（每个节点都有不同的 :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>` 对象）的 :ref:`Skeleton3D<class_Skeleton3D>` 可能具有多个 SkinReference 实例（因此，有多个骨架 :ref:`RID<class_RID>`\ ）。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_skeleton<class_SkinReference_method_get_skeleton>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`Skin<class_Skin>` | :ref:`get_skin<class_SkinReference_method_get_skin>`\ (\ ) |const|         |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SkinReference_method_get_skeleton:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skeleton>`

返回该 SkinReference 所拥有的 :ref:`RID<class_RID>`\ ，如 :ref:`RenderingServer.skeleton_create()<class_RenderingServer_method_skeleton_create>` 返回的那样。

.. rst-class:: classref-item-separator

----

.. _class_SkinReference_method_get_skin:

.. rst-class:: classref-method

:ref:`Skin<class_Skin>` **get_skin**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skin>`

返回连接到该 SkinReference 的 :ref:`Skin<class_Skin>`\ 。如果 :ref:`MeshInstance3D<class_MeshInstance3D>` 未分配 :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>`\ ，则这将引用该 :ref:`MeshInstance3D<class_MeshInstance3D>` 拥有的内部默认 :ref:`Skin<class_Skin>`\ 。

请注意，如果单个 :ref:`Skin<class_Skin>` 由多个 :ref:`Skeleton3D<class_Skeleton3D>` 节点之间的网格共享，则它可能具有多个 **SkinReference**\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
