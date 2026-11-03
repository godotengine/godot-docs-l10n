:github_url: hide

.. _class_SkinReference:

SkinReference
=============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

骨架 RID 的參照計數佔位物件，\ :ref:`RenderingServer<class_RenderingServer>` 中會使用該 RID。

.. rst-class:: classref-introduction-group

說明
----

包含來自 :ref:`Skin<class_Skin>` （在特定 :ref:`MeshInstance3D<class_MeshInstance3D>` 情境中使用）的映射的內部物件，用於參照 RenderingServer 中的骨架 :ref:`RID<class_RID>`\ 。

另見 :ref:`MeshInstance3D.get_skin_reference()<class_MeshInstance3D_method_get_skin_reference>` 和 :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`\ 。

請注意，儘管命名相似，但 :ref:`RenderingServer<class_RenderingServer>` 中使用的骨架 RID 與 :ref:`Skeleton3D<class_Skeleton3D>` 節點沒有直接的一一對應關係。

特別是，沒有 :ref:`MeshInstance3D<class_MeshInstance3D>` 子節點的 :ref:`Skeleton3D<class_Skeleton3D>` 節點可能對 :ref:`RenderingServer<class_RenderingServer>` 來說是未知的。

另一方面，具有多個 :ref:`MeshInstance3D<class_MeshInstance3D>` 節點（每個節點都有不同的 :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>` 物件）的 :ref:`Skeleton3D<class_Skeleton3D>` 可能具有多個 SkinReference 實例（因此，有多個骨架 :ref:`RID<class_RID>`\ ）。

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

回傳該 SkinReference 所擁有的 :ref:`RID<class_RID>`\ ，如 :ref:`RenderingServer.skeleton_create()<class_RenderingServer_method_skeleton_create>` 回傳的那樣。

.. rst-class:: classref-item-separator

----

.. _class_SkinReference_method_get_skin:

.. rst-class:: classref-method

:ref:`Skin<class_Skin>` **get_skin**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skin>`

回傳連接到該 SkinReference 的 :ref:`Skin<class_Skin>`\ 。如果 :ref:`MeshInstance3D<class_MeshInstance3D>` 未分配 :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>`\ ，則這將參照該 :ref:`MeshInstance3D<class_MeshInstance3D>` 擁有的內部預設 :ref:`Skin<class_Skin>`\ 。

請注意，如果單個 :ref:`Skin<class_Skin>` 由多個 :ref:`Skeleton3D<class_Skeleton3D>` 節點之間的網格共享，則它可能具有多個 **SkinReference**\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
