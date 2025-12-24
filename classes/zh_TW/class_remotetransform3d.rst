:github_url: hide

.. _class_RemoteTransform3D:

RemoteTransform3D
=================

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

RemoteTransform3D 會將自己的 :ref:`Transform3D<class_Transform3D>` 推送到場景中另一個衍生自 :ref:`Node3D<class_Node3D>` 的節點。

.. rst-class:: classref-introduction-group

說明
----

RemoteTransform3D 會將自己的 :ref:`Transform3D<class_Transform3D>` 推送到場景中另一個衍生自 :ref:`Node3D<class_Node3D>` 的節點（稱為遠端節點）。

可以設定更新另一個 Node 的位置、旋轉和/或比例。可以使用全域座標，也可以使用局部座標。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`remote_path<class_RemoteTransform3D_property_remote_path>`                       | ``NodePath("")`` |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`update_position<class_RemoteTransform3D_property_update_position>`               | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`update_rotation<class_RemoteTransform3D_property_update_rotation>`               | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`update_scale<class_RemoteTransform3D_property_update_scale>`                     | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`use_global_coordinates<class_RemoteTransform3D_property_use_global_coordinates>` | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------+
   | |void| | :ref:`force_update_cache<class_RemoteTransform3D_method_force_update_cache>`\ (\ ) |
   +--------+------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RemoteTransform3D_property_remote_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **remote_path** = ``NodePath("")`` :ref:`🔗<class_RemoteTransform3D_property_remote_path>`

.. rst-class:: classref-property-setget

- |void| **set_remote_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_remote_node**\ (\ )

到遠端節點的 :ref:`NodePath<class_NodePath>`\ ，相對於 RemoteTransform3D 在場景中的位置。

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform3D_property_update_position:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_position** = ``true`` :ref:`🔗<class_RemoteTransform3D_property_update_position>`

.. rst-class:: classref-property-setget

- |void| **set_update_position**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_position**\ (\ )

如果為 ``true``\ ，則更新遠端節點的位置。

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform3D_property_update_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_rotation** = ``true`` :ref:`🔗<class_RemoteTransform3D_property_update_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_update_rotation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_rotation**\ (\ )

如果為 ``true``\ ，則更新遠端節點的旋轉。

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform3D_property_update_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_scale** = ``true`` :ref:`🔗<class_RemoteTransform3D_property_update_scale>`

.. rst-class:: classref-property-setget

- |void| **set_update_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_scale**\ (\ )

如果為 ``true``\ ，則更新遠端節點的比例。

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform3D_property_use_global_coordinates:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_global_coordinates** = ``true`` :ref:`🔗<class_RemoteTransform3D_property_use_global_coordinates>`

.. rst-class:: classref-property-setget

- |void| **set_use_global_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_global_coordinates**\ (\ )

如果為 ``true``\ ，則使用全域座標。如果 ``false``\ ，則使用本地座標。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RemoteTransform3D_method_force_update_cache:

.. rst-class:: classref-method

|void| **force_update_cache**\ (\ ) :ref:`🔗<class_RemoteTransform3D_method_force_update_cache>`

**RemoteTransform3D** 快取了遠端節點。如果遠端節點消失了，它可能不會通知；\ :ref:`force_update_cache()<class_RemoteTransform3D_method_force_update_cache>` 強制它再次更新快取。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
