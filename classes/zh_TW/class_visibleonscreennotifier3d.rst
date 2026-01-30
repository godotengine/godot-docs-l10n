:github_url: hide

.. _class_VisibleOnScreenNotifier3D:

VisibleOnScreenNotifier3D
=========================

**繼承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>`

A box-shaped region of 3D space that detects whether it is visible on screen.

.. rst-class:: classref-introduction-group

說明
----

**VisibleOnScreenNotifier3D** represents a box-shaped region of 3D space. When any part of this region becomes visible on screen or in a :ref:`Camera3D<class_Camera3D>`'s view, it will emit a :ref:`screen_entered<class_VisibleOnScreenNotifier3D_signal_screen_entered>` signal, and likewise it will emit a :ref:`screen_exited<class_VisibleOnScreenNotifier3D_signal_screen_exited>` signal when no part of it remains visible.

If you want a node to be enabled automatically when this region is visible on screen, use :ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>`.

\ **Note:** **VisibleOnScreenNotifier3D** uses an approximate heuristic that doesn't take walls and other occlusion into account, unless occlusion culling is used. It also won't function unless :ref:`Node3D.visible<class_Node3D_property_visible>` is set to ``true``.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------+-------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`aabb<class_VisibleOnScreenNotifier3D_property_aabb>` | ``AABB(-1, -1, -1, 2, 2, 2)`` |
   +-------------------------+------------------------------------------------------------+-------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_on_screen<class_VisibleOnScreenNotifier3D_method_is_on_screen>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_VisibleOnScreenNotifier3D_signal_screen_entered:

.. rst-class:: classref-signal

**screen_entered**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier3D_signal_screen_entered>`

Emitted when the **VisibleOnScreenNotifier3D** enters the screen.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier3D_signal_screen_exited:

.. rst-class:: classref-signal

**screen_exited**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier3D_signal_screen_exited>`

Emitted when the **VisibleOnScreenNotifier3D** exits the screen.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisibleOnScreenNotifier3D_property_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **aabb** = ``AABB(-1, -1, -1, 2, 2, 2)`` :ref:`🔗<class_VisibleOnScreenNotifier3D_property_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_aabb**\ (\ )

The **VisibleOnScreenNotifier3D**'s bounding box.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VisibleOnScreenNotifier3D_method_is_on_screen:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_screen**\ (\ ) |const| :ref:`🔗<class_VisibleOnScreenNotifier3D_method_is_on_screen>`

Returns ``true`` if the bounding box is on the screen.

\ **Note:** It takes one frame for the **VisibleOnScreenNotifier3D**'s visibility to be assessed once added to the scene tree, so this method will always return ``false`` right after it is instantiated.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
