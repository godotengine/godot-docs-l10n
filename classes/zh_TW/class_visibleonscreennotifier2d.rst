:github_url: hide

.. _class_VisibleOnScreenNotifier2D:

VisibleOnScreenNotifier2D
=========================

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>`

A rectangular region of 2D space that detects whether it is visible on screen.

.. rst-class:: classref-introduction-group

說明
----

**VisibleOnScreenNotifier2D** represents a rectangular region of 2D space. When any part of this region becomes visible on screen or in a viewport, it will emit a :ref:`screen_entered<class_VisibleOnScreenNotifier2D_signal_screen_entered>` signal, and likewise it will emit a :ref:`screen_exited<class_VisibleOnScreenNotifier2D_signal_screen_exited>` signal when no part of it remains visible.

If you want a node to be enabled automatically when this region is visible on screen, use :ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>`.

\ **Note:** **VisibleOnScreenNotifier2D** uses the render culling code to determine whether it's visible on screen, so it won't function unless :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` is set to ``true``.

.. rst-class:: classref-introduction-group

教學
----

- `2D Dodge The Creeps 範例 <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+-----------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`rect<class_VisibleOnScreenNotifier2D_property_rect>`           | ``Rect2(-10, -10, 20, 20)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`   | :ref:`show_rect<class_VisibleOnScreenNotifier2D_property_show_rect>` | ``true``                    |
   +---------------------------+----------------------------------------------------------------------+-----------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_on_screen<class_VisibleOnScreenNotifier2D_method_is_on_screen>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_VisibleOnScreenNotifier2D_signal_screen_entered:

.. rst-class:: classref-signal

**screen_entered**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier2D_signal_screen_entered>`

當該 VisibleOnScreenNotifier2D 進入螢幕時發出。

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier2D_signal_screen_exited:

.. rst-class:: classref-signal

**screen_exited**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier2D_signal_screen_exited>`

當該 VisibleOnScreenNotifier2D 退出螢幕時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisibleOnScreenNotifier2D_property_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **rect** = ``Rect2(-10, -10, 20, 20)`` :ref:`🔗<class_VisibleOnScreenNotifier2D_property_rect>`

.. rst-class:: classref-property-setget

- |void| **set_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_rect**\ (\ )

該 VisibleOnScreenNotifier2D 的邊界矩形。

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier2D_property_show_rect:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_rect** = ``true`` :ref:`🔗<class_VisibleOnScreenNotifier2D_property_show_rect>`

.. rst-class:: classref-property-setget

- |void| **set_show_rect**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_showing_rect**\ (\ )

If ``true``, shows the rectangle area of :ref:`rect<class_VisibleOnScreenNotifier2D_property_rect>` in the editor with a translucent magenta fill. Unlike changing the visibility of the VisibleOnScreenNotifier2D, this does not affect the screen culling detection.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VisibleOnScreenNotifier2D_method_is_on_screen:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_screen**\ (\ ) |const| :ref:`🔗<class_VisibleOnScreenNotifier2D_method_is_on_screen>`

If ``true``, the bounding rectangle is on the screen.

\ **Note:** It takes one frame for the **VisibleOnScreenNotifier2D**'s visibility to be determined once added to the scene tree, so this method will always return ``false`` right after it is instantiated, before the draw pass.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
