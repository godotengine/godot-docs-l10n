:github_url: hide

.. _class_SkinReference:

SkinReference
=============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A reference-counted holder object for a skeleton RID used in the :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-introduction-group

說明
----

An internal object containing a mapping from a :ref:`Skin<class_Skin>` used within the context of a particular :ref:`MeshInstance3D<class_MeshInstance3D>` to refer to the skeleton's :ref:`RID<class_RID>` in the RenderingServer.

See also :ref:`MeshInstance3D.get_skin_reference()<class_MeshInstance3D_method_get_skin_reference>` and :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`.

Note that despite the similar naming, the skeleton RID used in the :ref:`RenderingServer<class_RenderingServer>` does not have a direct one-to-one correspondence to a :ref:`Skeleton3D<class_Skeleton3D>` node.

In particular, a :ref:`Skeleton3D<class_Skeleton3D>` node with no :ref:`MeshInstance3D<class_MeshInstance3D>` children may be unknown to the :ref:`RenderingServer<class_RenderingServer>`.

On the other hand, a :ref:`Skeleton3D<class_Skeleton3D>` with multiple :ref:`MeshInstance3D<class_MeshInstance3D>` nodes which each have different :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>` objects may have multiple SkinReference instances (and hence, multiple skeleton :ref:`RID<class_RID>`\ s).

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

方法說明
--------

.. _class_SkinReference_method_get_skeleton:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skeleton>`

Returns the :ref:`RID<class_RID>` owned by this SkinReference, as returned by :ref:`RenderingServer.skeleton_create()<class_RenderingServer_method_skeleton_create>`.

.. rst-class:: classref-item-separator

----

.. _class_SkinReference_method_get_skin:

.. rst-class:: classref-method

:ref:`Skin<class_Skin>` **get_skin**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skin>`

Returns the :ref:`Skin<class_Skin>` connected to this SkinReference. In the case of :ref:`MeshInstance3D<class_MeshInstance3D>` with no :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>` assigned, this will reference an internal default :ref:`Skin<class_Skin>` owned by that :ref:`MeshInstance3D<class_MeshInstance3D>`.

Note that a single :ref:`Skin<class_Skin>` may have more than one **SkinReference** in the case that it is shared by meshes across multiple :ref:`Skeleton3D<class_Skeleton3D>` nodes.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
