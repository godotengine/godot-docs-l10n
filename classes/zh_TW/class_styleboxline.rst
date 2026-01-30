:github_url: hide

.. _class_StyleBoxLine:

StyleBoxLine
============

**繼承：** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

顯示一條線的 :ref:`StyleBox<class_StyleBox>`\ ，可以給定顏色和粗細。

.. rst-class:: classref-introduction-group

說明
----

顯示一條線的 :ref:`StyleBox<class_StyleBox>`\ ，可以給定顏色和粗細。可以是橫線也可以是分隔號。可用作分隔符。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`color<class_StyleBoxLine_property_color>`           | ``Color(0, 0, 0, 1)`` |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`grow_begin<class_StyleBoxLine_property_grow_begin>` | ``1.0``               |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`grow_end<class_StyleBoxLine_property_grow_end>`     | ``1.0``               |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`     | :ref:`thickness<class_StyleBoxLine_property_thickness>`   | ``1``                 |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`vertical<class_StyleBoxLine_property_vertical>`     | ``false``             |
   +---------------------------+-----------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_StyleBoxLine_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_StyleBoxLine_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

線的顏色。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_grow_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **grow_begin** = ``1.0`` :ref:`🔗<class_StyleBoxLine_property_grow_begin>`

.. rst-class:: classref-property-setget

- |void| **set_grow_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_grow_begin**\ (\ )

線將在 **StyleBoxLine** 的邊界之前延伸的圖元數。如果設定為負值，則該線將從 **StyleBoxLine** 的邊界內開始。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_grow_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **grow_end** = ``1.0`` :ref:`🔗<class_StyleBoxLine_property_grow_end>`

.. rst-class:: classref-property-setget

- |void| **set_grow_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_grow_end**\ (\ )

線將超出 **StyleBoxLine** 邊界的圖元數。如果設定為負值，則該線將在 **StyleBoxLine** 的邊界內結束。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_thickness:

.. rst-class:: classref-property

:ref:`int<class_int>` **thickness** = ``1`` :ref:`🔗<class_StyleBoxLine_property_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_thickness**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_thickness**\ (\ )

線條的粗細（以圖元為單位）。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_StyleBoxLine_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

如果為 ``true``\ ，則該線將是垂直的。如果 ``false``\ ，該線將是水平的。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
