:github_url: hide

.. _class_Separator:

Separator
=========

**繼承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`HSeparator<class_HSeparator>`, :ref:`VSeparator<class_VSeparator>`

分隔線的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

分隔線的抽象基底類別，用於分隔其他控制項。\ **Separator** 只提供視覺上的分隔，通常用 :ref:`StyleBoxLine<class_StyleBoxLine>` 繪製。

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------+-------+
   | :ref:`int<class_int>`           | :ref:`separation<class_Separator_theme_constant_separation>` | ``0`` |
   +---------------------------------+--------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`separator<class_Separator_theme_style_separator>`      |       |
   +---------------------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_Separator_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``0`` :ref:`🔗<class_Separator_theme_constant_separation>`

分隔器覆蓋區域的高度。效果上和最小高度一致。

.. rst-class:: classref-item-separator

----

.. _class_Separator_theme_style_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **separator** :ref:`🔗<class_Separator_theme_style_separator>`

分隔線的樣式。與 :ref:`StyleBoxLine<class_StyleBoxLine>` 一起使用效果最好（記得要啟用 :ref:`StyleBoxLine.vertical<class_StyleBoxLine_property_vertical>`\ ）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
