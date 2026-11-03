:github_url: hide

.. _class_ResourceImporterImageFont:

ResourceImporterImageFont
=========================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

匯入點陣圖字型，所有字形使用的都是相同的寬高。

.. rst-class:: classref-introduction-group

說明
----

這種基於影像的工作流程比 :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>` 更易於使用，但它要求所有字形具有相同的寬度和高度，字形前進和繪製偏移可以自訂。這使得 **ResourceImporterImageFont** 最適合固定寬度的字型。

另見 :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- `點陣字型——使用字形 <../tutorials/ui/gui_using_fonts.html#bitmap-fonts>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`ascent<class_ResourceImporterImageFont_property_ascent>`                     | ``0``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Rect2i<class_Rect2i>`                       | :ref:`character_margin<class_ResourceImporterImageFont_property_character_margin>` | ``Rect2i(0, 0, 0, 0)``  |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`character_ranges<class_ResourceImporterImageFont_property_character_ranges>` | ``PackedStringArray()`` |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`columns<class_ResourceImporterImageFont_property_columns>`                   | ``1``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`compress<class_ResourceImporterImageFont_property_compress>`                 | ``true``                |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`descent<class_ResourceImporterImageFont_property_descent>`                   | ``0``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Array<class_Array>`                         | :ref:`fallbacks<class_ResourceImporterImageFont_property_fallbacks>`               | ``[]``                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Rect2i<class_Rect2i>`                       | :ref:`image_margin<class_ResourceImporterImageFont_property_image_margin>`         | ``Rect2i(0, 0, 0, 0)``  |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`kerning_pairs<class_ResourceImporterImageFont_property_kerning_pairs>`       | ``PackedStringArray()`` |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`rows<class_ResourceImporterImageFont_property_rows>`                         | ``1``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`scaling_mode<class_ResourceImporterImageFont_property_scaling_mode>`         | ``2``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ResourceImporterImageFont_property_ascent:

.. rst-class:: classref-property

:ref:`int<class_int>` **ascent** = ``0`` :ref:`🔗<class_ResourceImporterImageFont_property_ascent>`

字型的上高（基線上方的像素數）。如果設為 ``0`` 則使用字元高度的一半。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_character_margin:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **character_margin** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_ResourceImporterImageFont_property_character_margin>`

在每個匯入的字形周圍套用邊距。如果您的字型影像包含參考線（以字形之間的線的形式）或字元之間的間距看起來不正確，請嘗試調整\ :ref:`character_margin<class_ResourceImporterImageFont_property_character_margin>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_character_ranges:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **character_ranges** = ``PackedStringArray()`` :ref:`🔗<class_ResourceImporterImageFont_property_character_ranges>`

從字型影像匯入的字元範圍。這是一個陣列，能夠對影像上的每一個位置做映射（使用圖塊座標，而非像素座標）。字型圖集是從左到右、從上到下遍歷的。可以使用十進位數字（126）、十六進位數字（\ ``0x007e`` 或 ``U+007e``\ ）、單引號（\ ``'~'``\ ）來指定字元。在字元之間加上連字元指定的就是一個範圍。

例如 ``0-127`` 表示的是完整的 ASCII 範圍。這個範圍也可以寫作 ``0x0000-0x007f``\ （或者 ``U+0000-U+007f``\ ）。再比如，\ ``' '-'~'`` 等價於 ``32-126``\ ，表示的是可輸出（可見）ASCII 字元的範圍。

指定範圍時如果在後面加上三個用空白分隔的整數值，就可以自訂字元的前進量和偏移（額外前進量、X 偏移量、Y 偏移量）。例如 ``'a'-'b' 4 5 2`` 就是將 `a` 和 `b` 這兩個字元的前進量設為 ``char_width + 4`` 並將偏移量設為 ``Vector2(5, 2)``\ 。

\ **注意：**\ 總字元數必須不超過 :ref:`columns<class_ResourceImporterImageFont_property_columns>` 與 :ref:`rows<class_ResourceImporterImageFont_property_rows>` 的乘積。否則字型將無法匯入。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_columns:

.. rst-class:: classref-property

:ref:`int<class_int>` **columns** = ``1`` :ref:`🔗<class_ResourceImporterImageFont_property_columns>`

字型影像中的列數。另見 :ref:`rows<class_ResourceImporterImageFont_property_rows>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterImageFont_property_compress>`

如果為 ``true``\ ，則對二進位資源使用無失真壓縮。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_descent:

.. rst-class:: classref-property

:ref:`int<class_int>` **descent** = ``0`` :ref:`🔗<class_ResourceImporterImageFont_property_descent>`

字型的下深（基線下方的像素數）。如果設為 ``0`` 則使用字元高度的一半。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterImageFont_property_fallbacks>`

如果在此點陣字形中找不到字形，則要使用的字形後備列表。首先嘗試陣列開頭的字形。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_image_margin:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **image_margin** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_ResourceImporterImageFont_property_image_margin>`

在整個影像兩側進行剪切的邊距。這可用於剪切包含屬性資訊或類似資訊的影像部分。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_kerning_pairs:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **kerning_pairs** = ``PackedStringArray()`` :ref:`🔗<class_ResourceImporterImageFont_property_kerning_pairs>`

字型中的字偶清單。字偶的作用是調整特定的兩個字元的間距。

每個字串都是由空白分隔的三個值：“from”字串、“to”字串、整數偏移量。兩個字串中的字元兩兩組合成字偶，例如 ``ab cd -3`` 會建立字偶 ``ac``\ 、\ ``ad``\ 、\ ``bc``\ 、\ ``bd``\ ，這些字偶的偏移量都是 ``-3``\ 。可以使用跳脫序列 ``\uXXXX`` 新增 Unicode 字元。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_rows:

.. rst-class:: classref-property

:ref:`int<class_int>` **rows** = ``1`` :ref:`🔗<class_ResourceImporterImageFont_property_rows>`

字型映像中的行數。另請參閱 :ref:`columns<class_ResourceImporterImageFont_property_columns>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_scaling_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **scaling_mode** = ``2`` :ref:`🔗<class_ResourceImporterImageFont_property_scaling_mode>`

字型縮放模式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
