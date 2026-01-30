:github_url: hide

.. _class_HScrollBar:

HScrollBar
==========

**繼承：** :ref:`ScrollBar<class_ScrollBar>` **<** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

水平捲軸，從左側（最小）滾動到右側（最大）。

.. rst-class:: classref-introduction-group

說明
----

水平捲軸，通常用於為超出控制項可見寬度的內容進行導覽。這是基於 :ref:`Range<class_Range>` 的控件，從左側（最小）滾動到右側（最大）。

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_bottom<class_HScrollBar_theme_constant_padding_bottom>` | ``0`` |
   +-----------------------+-----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_top<class_HScrollBar_theme_constant_padding_top>`       | ``0`` |
   +-----------------------+-----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_HScrollBar_theme_constant_padding_bottom:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_bottom** = ``0`` :ref:`🔗<class_HScrollBar_theme_constant_padding_bottom>`

Padding between the bottom of the :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` element and the :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Note:** To apply horizontal padding, modify the left/right content margins of :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` instead.

.. rst-class:: classref-item-separator

----

.. _class_HScrollBar_theme_constant_padding_top:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_top** = ``0`` :ref:`🔗<class_HScrollBar_theme_constant_padding_top>`

Padding between the top of the :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` element and the :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Note:** To apply horizontal padding, modify the left/right content margins of :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` instead.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
