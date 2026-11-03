:github_url: hide

.. _class_VisibleOnScreenNotifier2D:

VisibleOnScreenNotifier2D
=========================

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>`

2D 空間的矩形區域，用於檢測其在螢幕上是否可見。

.. rst-class:: classref-introduction-group

說明
----

**VisibleOnScreenNotifier2D** 表示 2D 空間的矩形區塊。當該區塊的任何部分在螢幕或視埠中可見時，它將發出 :ref:`screen_entered<class_VisibleOnScreenNotifier2D_signal_screen_entered>` 訊號，同樣，當其任何部分都不可見時，它將發出 :ref:`screen_exited<class_VisibleOnScreenNotifier2D_signal_screen_exited>` 訊號。

如果希望當該區塊在螢幕上可見時自動啟用節點，請使用 :ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>`\ 。

\ **注意：**\ **VisibleOnScreenNotifier2D** 使用渲染剔除程式碼來確定它在螢幕上是否可見，因此除非 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 被設定為 ``true``\ ，否則它不會起作用。

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

如果為 ``true``\ ，則在編輯器中以半透明的洋紅色填充顯示 :ref:`rect<class_VisibleOnScreenNotifier2D_property_rect>` 的矩形區域。這樣做與更改 VisibleOnScreenNotifier2D 的可見性不同，不會影響螢幕剔除檢測。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_VisibleOnScreenNotifier2D_method_is_on_screen:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_screen**\ (\ ) |const| :ref:`🔗<class_VisibleOnScreenNotifier2D_method_is_on_screen>`

如果為 ``true``\ ，則邊界矩形在螢幕上。

\ **注意：**\ **VisibleOnScreenNotifier2D** 被新增到場景樹後需要一影格才能確定其可見性，因此該方法在它被實例化後，在繪製階段之前，將始終回傳 ``false`` 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
