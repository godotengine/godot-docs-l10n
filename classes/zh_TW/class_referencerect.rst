:github_url: hide

.. _class_ReferenceRect:

ReferenceRect
=============

**繼承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A rectangular box for designing UIs.

.. rst-class:: classref-introduction-group

說明
----

A rectangular box that displays only a colored border around its rectangle (see :ref:`Control.get_rect()<class_Control_method_get_rect>`). It can be used to visualize the extents of a :ref:`Control<class_Control>` node, for testing purposes.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`border_color<class_ReferenceRect_property_border_color>` | ``Color(1, 0, 0, 1)`` |
   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`border_width<class_ReferenceRect_property_border_width>` | ``1.0``               |
   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`editor_only<class_ReferenceRect_property_editor_only>`   | ``true``              |
   +---------------------------+----------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ReferenceRect_property_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **border_color** = ``Color(1, 0, 0, 1)`` :ref:`🔗<class_ReferenceRect_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

設定該 **ReferenceRect** 的邊框顏色。

.. rst-class:: classref-item-separator

----

.. _class_ReferenceRect_property_border_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_width** = ``1.0`` :ref:`🔗<class_ReferenceRect_property_border_width>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_width**\ (\ )

設定該 **ReferenceRect** 的邊框寬度。邊界相對於矩形框同時向內向外伸長。

.. rst-class:: classref-item-separator

----

.. _class_ReferenceRect_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``true`` :ref:`🔗<class_ReferenceRect_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_editor_only**\ (\ )

如果為 ``true``\ ，則 **ReferenceRect** 僅在編輯器中可見。否則，\ **ReferenceRect** 將在正在運作的專案中可見。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
