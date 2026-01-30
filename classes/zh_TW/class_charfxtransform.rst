:github_url: hide

.. _class_CharFXTransform:

CharFXTransform
===============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

控制單個字元在 :ref:`RichTextEffect<class_RichTextEffect>` 中的顯示方式。

.. rst-class:: classref-introduction-group

說明
----

通過在此物件上設定各種屬性，可以控制單個字元在 :ref:`RichTextEffect<class_RichTextEffect>` 中的顯示方式。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`RichTextLabel 中的 BBCode <../tutorials/ui/bbcode_in_richtextlabel>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`color<class_CharFXTransform_property_color>`                   | ``Color(0, 0, 0, 1)``             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`elapsed_time<class_CharFXTransform_property_elapsed_time>`     | ``0.0``                           |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`env<class_CharFXTransform_property_env>`                       | ``{}``                            |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`font<class_CharFXTransform_property_font>`                     | ``RID()``                         |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`glyph_count<class_CharFXTransform_property_glyph_count>`       | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`glyph_flags<class_CharFXTransform_property_glyph_flags>`       | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`glyph_index<class_CharFXTransform_property_glyph_index>`       | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`offset<class_CharFXTransform_property_offset>`                 | ``Vector2(0, 0)``                 |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`outline<class_CharFXTransform_property_outline>`               | ``false``                         |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2i<class_Vector2i>`       | :ref:`range<class_CharFXTransform_property_range>`                   | ``Vector2i(0, 0)``                |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`relative_index<class_CharFXTransform_property_relative_index>` | ``0``                             |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_CharFXTransform_property_transform>`           | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`visible<class_CharFXTransform_property_visible>`               | ``true``                          |
   +---------------------------------------+----------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CharFXTransform_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CharFXTransform_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

繪製字元所用的顏色。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_elapsed_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **elapsed_time** = ``0.0`` :ref:`🔗<class_CharFXTransform_property_elapsed_time>`

.. rst-class:: classref-property-setget

- |void| **set_elapsed_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_elapsed_time**\ (\ )

自 :ref:`RichTextLabel<class_RichTextLabel>` 被新增到場景樹以來經過的時間（單位：秒）。時間在 :ref:`RichTextLabel<class_RichTextLabel>` 暫停時停止（參見 :ref:`Node.process_mode<class_Node_property_process_mode>`\ ）。在 :ref:`RichTextLabel<class_RichTextLabel>` 中的文字改變時重設。

\ **注意：**\ 當 :ref:`RichTextLabel<class_RichTextLabel>` 被隱藏時，時間仍在流逝。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_env:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **env** = ``{}`` :ref:`🔗<class_CharFXTransform_property_env>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_environment**\ (\ )

包含在開頭的 BBCode 標記中傳遞的參數。預設情況下，參數是字串。如果它們的內容與 :ref:`bool<class_bool>`\ 、\ :ref:`int<class_int>`\ 、\ :ref:`float<class_float>` 之類的型別配對，它們將被自動轉換。格式為 ``#rrggbb`` 或 ``#rgb`` 的顏色程式碼將轉換為不透明的 :ref:`Color<class_Color>`\ 。字串參數即使使用引號也不能包含空格。如果存在，引號也將出現在最終字符串中。

例如，開頭的 BBCode 標籤 ``[example foo = hello bar = true baz = 42 color =＃ffffff]`` 將對應到以下 :ref:`Dictionary<class_Dictionary>`\ ：

::

    {"foo": "hello", "bar": true, "baz": 42, "color": Color(1, 1, 1, 1)}

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_font:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **font** = ``RID()`` :ref:`🔗<class_CharFXTransform_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_font**\ (\ )

:ref:`TextServer<class_TextServer>` RID of the font used to render glyph, this value can be used with ``TextServer.font_*`` methods to retrieve font information.

\ **Note:** Read-only. Setting this property won't affect drawing.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_glyph_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **glyph_count** = ``0`` :ref:`🔗<class_CharFXTransform_property_glyph_count>`

.. rst-class:: classref-property-setget

- |void| **set_glyph_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_glyph_count**\ (\ )

Number of glyphs in the grapheme cluster. This value is set in the first glyph of a cluster.

\ **Note:** Read-only. Setting this property won't affect drawing.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_glyph_flags:

.. rst-class:: classref-property

:ref:`int<class_int>` **glyph_flags** = ``0`` :ref:`🔗<class_CharFXTransform_property_glyph_flags>`

.. rst-class:: classref-property-setget

- |void| **set_glyph_flags**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_glyph_flags**\ (\ )

Glyph flags. See :ref:`GraphemeFlag<enum_TextServer_GraphemeFlag>` for more info.

\ **Note:** Read-only. Setting this property won't affect drawing.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_glyph_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **glyph_index** = ``0`` :ref:`🔗<class_CharFXTransform_property_glyph_index>`

.. rst-class:: classref-property-setget

- |void| **set_glyph_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_glyph_index**\ (\ )

Glyph index specific to the :ref:`font<class_CharFXTransform_property_font>`. If you want to replace this glyph, use :ref:`TextServer.font_get_glyph_index()<class_TextServer_method_font_get_glyph_index>` with :ref:`font<class_CharFXTransform_property_font>` to get a new glyph index for a single character.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_CharFXTransform_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

繪製字元的位置偏移量（單位：圖元）。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_outline:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **outline** = ``false`` :ref:`🔗<class_CharFXTransform_property_outline>`

.. rst-class:: classref-property-setget

- |void| **set_outline**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_outline**\ (\ )

If ``true``, FX transform is called for outline drawing.

\ **Note:** Read-only. Setting this property won't affect drawing.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_range:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **range** = ``Vector2i(0, 0)`` :ref:`🔗<class_CharFXTransform_property_range>`

.. rst-class:: classref-property-setget

- |void| **set_range**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_range**\ (\ )

Absolute character range in the string, corresponding to the glyph.

\ **Note:** Read-only. Setting this property won't affect drawing.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_relative_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **relative_index** = ``0`` :ref:`🔗<class_CharFXTransform_property_relative_index>`

.. rst-class:: classref-property-setget

- |void| **set_relative_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_relative_index**\ (\ )

The character offset of the glyph, relative to the current :ref:`RichTextEffect<class_RichTextEffect>` custom block.

\ **Note:** Read-only. Setting this property won't affect drawing.

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_CharFXTransform_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

目前字形的目前變換。它可以被覆寫（例如，透過從曲線驅動位置和旋轉）。您還可以更改現有值以在頂部應用變換其他影響。

.. rst-class:: classref-item-separator

----

.. _class_CharFXTransform_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_CharFXTransform_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visibility**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

如果為 ``true``\ ，將繪製字元。如果為 ``false``\ ，則隱藏字元。隱藏字元周圍的字元將回流以佔用隱藏字元的空間。如果不希望這樣做，可以將它們的 :ref:`color<class_CharFXTransform_property_color>` 設定為\ ``Color(1, 1, 1, 0)``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
