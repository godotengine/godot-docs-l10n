:github_url: hide

.. _class_LabelSettings:

LabelSettings
=============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供能夠在 :ref:`Label<class_Label>` 中自訂文字的常見設定。

.. rst-class:: classref-introduction-group

說明
----

**LabelSettings** 是一種提供在 :ref:`Label<class_Label>` 中自訂文字的常見設定的資源。優先於 :ref:`Control.theme<class_Control_property_theme>` 中定義的屬性。該資源可以在多個標籤之間共用，可以隨時替換，因此可以方便、靈活地設定文字樣式。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Font<class_Font>`       | :ref:`font<class_LabelSettings_property_font>`                                                               |                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`font_color<class_LabelSettings_property_font_color>`                                                   | ``Color(1, 1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`font_size<class_LabelSettings_property_font_size>`                                                     | ``16``                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`line_spacing<class_LabelSettings_property_line_spacing>`                                               | ``3.0``               |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`outline_color<class_LabelSettings_property_outline_color>`                                             | ``Color(1, 1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`outline_size<class_LabelSettings_property_outline_size>`                                               | ``0``                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`paragraph_spacing<class_LabelSettings_property_paragraph_spacing>`                                     | ``0.0``               |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`shadow_color<class_LabelSettings_property_shadow_color>`                                               | ``Color(0, 0, 0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`shadow_offset<class_LabelSettings_property_shadow_offset>`                                             | ``Vector2(1, 1)``     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`shadow_size<class_LabelSettings_property_shadow_size>`                                                 | ``1``                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`stacked_outline_count<class_LabelSettings_property_stacked_outline_count>`                             | ``0``                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`stacked_outline_{index}/color<class_LabelSettings_property_stacked_outline_{index}/color>`             | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`stacked_outline_{index}/size<class_LabelSettings_property_stacked_outline_{index}/size>`               | ``0``                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`stacked_shadow_count<class_LabelSettings_property_stacked_shadow_count>`                               | ``0``                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`stacked_shadow_{index}/color<class_LabelSettings_property_stacked_shadow_{index}/color>`               | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`stacked_shadow_{index}/offset<class_LabelSettings_property_stacked_shadow_{index}/offset>`             | ``Vector2i(1, 1)``    |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`stacked_shadow_{index}/outline_size<class_LabelSettings_property_stacked_shadow_{index}/outline_size>` | ``0``                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_stacked_outline<class_LabelSettings_method_add_stacked_outline>`\ (\ index\: :ref:`int<class_int>` = -1\ )                                                  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_stacked_shadow<class_LabelSettings_method_add_stacked_shadow>`\ (\ index\: :ref:`int<class_int>` = -1\ )                                                    |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`     | :ref:`get_stacked_outline_color<class_LabelSettings_method_get_stacked_outline_color>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_stacked_outline_size<class_LabelSettings_method_get_stacked_outline_size>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`     | :ref:`get_stacked_shadow_color<class_LabelSettings_method_get_stacked_shadow_color>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_stacked_shadow_offset<class_LabelSettings_method_get_stacked_shadow_offset>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_stacked_shadow_outline_size<class_LabelSettings_method_get_stacked_shadow_outline_size>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                       |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`move_stacked_outline<class_LabelSettings_method_move_stacked_outline>`\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ )           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`move_stacked_shadow<class_LabelSettings_method_move_stacked_shadow>`\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ )             |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_stacked_outline<class_LabelSettings_method_remove_stacked_outline>`\ (\ index\: :ref:`int<class_int>`\ )                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_stacked_shadow<class_LabelSettings_method_remove_stacked_shadow>`\ (\ index\: :ref:`int<class_int>`\ )                                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_outline_color<class_LabelSettings_method_set_stacked_outline_color>`\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_outline_size<class_LabelSettings_method_set_stacked_outline_size>`\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ )               |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_shadow_color<class_LabelSettings_method_set_stacked_shadow_color>`\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_shadow_offset<class_LabelSettings_method_set_stacked_shadow_offset>`\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`Vector2<class_Vector2>`\ )   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_stacked_shadow_outline_size<class_LabelSettings_method_set_stacked_shadow_outline_size>`\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_LabelSettings_property_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **font** :ref:`🔗<class_LabelSettings_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_font**\ (\ )

文字使用的 :ref:`Font<class_Font>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_font_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **font_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LabelSettings_property_font_color>`

.. rst-class:: classref-property-setget

- |void| **set_font_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_font_color**\ (\ )

文字的顏色。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_size** = ``16`` :ref:`🔗<class_LabelSettings_property_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_size**\ (\ )

文字的大小。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``3.0`` :ref:`🔗<class_LabelSettings_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_outline_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **outline_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LabelSettings_property_outline_color>`

.. rst-class:: classref-property-setget

- |void| **set_outline_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_outline_color**\ (\ )

輪廓的顏色。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_outline_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_LabelSettings_property_outline_size>`

.. rst-class:: classref-property-setget

- |void| **set_outline_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outline_size**\ (\ )

文字輪廓大小。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_paragraph_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **paragraph_spacing** = ``0.0`` :ref:`🔗<class_LabelSettings_property_paragraph_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_paragraph_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_paragraph_spacing**\ (\ )

Vertical space between paragraphs. Added on top of :ref:`line_spacing<class_LabelSettings_property_line_spacing>`.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_shadow_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **shadow_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_LabelSettings_property_shadow_color>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_shadow_color**\ (\ )

陰影效果的顏色。如果 Alpha 為 ``0`` ，則不會繪製陰影。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_shadow_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **shadow_offset** = ``Vector2(1, 1)`` :ref:`🔗<class_LabelSettings_property_shadow_offset>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_shadow_offset**\ (\ )

陰影效果的偏移，單位為圖元。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_shadow_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_size** = ``1`` :ref:`🔗<class_LabelSettings_property_shadow_size>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_size**\ (\ )

陰影效果的大小。

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_outline_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stacked_outline_count** = ``0`` :ref:`🔗<class_LabelSettings_property_stacked_outline_count>`

.. rst-class:: classref-property-setget

- |void| **set_stacked_outline_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stacked_outline_count**\ (\ )

The number of stacked outlines.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_outline_{index}/color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **stacked_outline_{index}/color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LabelSettings_property_stacked_outline_{index}/color>`

The color of the outline at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. stacked_outline_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_outline_{index}/size:

.. rst-class:: classref-property

:ref:`int<class_int>` **stacked_outline_{index}/size** = ``0`` :ref:`🔗<class_LabelSettings_property_stacked_outline_{index}/size>`

The size of the outline at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. stacked_outline_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_shadow_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **stacked_shadow_count** = ``0`` :ref:`🔗<class_LabelSettings_property_stacked_shadow_count>`

.. rst-class:: classref-property-setget

- |void| **set_stacked_shadow_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stacked_shadow_count**\ (\ )

The number of stacked shadows.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_shadow_{index}/color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **stacked_shadow_{index}/color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LabelSettings_property_stacked_shadow_{index}/color>`

The color of the shadow at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. stacked_shadow_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_shadow_{index}/offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **stacked_shadow_{index}/offset** = ``Vector2i(1, 1)`` :ref:`🔗<class_LabelSettings_property_stacked_shadow_{index}/offset>`

The offset of the shadow at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. stacked_shadow_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_property_stacked_shadow_{index}/outline_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **stacked_shadow_{index}/outline_size** = ``0`` :ref:`🔗<class_LabelSettings_property_stacked_shadow_{index}/outline_size>`

The size of the shadow outline at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. stacked_shadow_count - 1`` range.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_LabelSettings_method_add_stacked_outline:

.. rst-class:: classref-method

|void| **add_stacked_outline**\ (\ index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_LabelSettings_method_add_stacked_outline>`

Adds a new stacked outline to the label at the given ``index``. If ``index`` is ``-1``, the new stacked outline will be added at the end of the list.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_add_stacked_shadow:

.. rst-class:: classref-method

|void| **add_stacked_shadow**\ (\ index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_LabelSettings_method_add_stacked_shadow>`

Adds a new stacked shadow to the label at the given ``index``. If ``index`` is ``-1``, the new stacked shadow will be added at the end of the list.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_outline_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_stacked_outline_color**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_outline_color>`

Returns the color of the stacked outline at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_outline_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_stacked_outline_size**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_outline_size>`

Returns the size of the stacked outline at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_shadow_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_stacked_shadow_color**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_shadow_color>`

Returns the color of the stacked shadow at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_shadow_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_stacked_shadow_offset**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_shadow_offset>`

Returns the offset of the stacked shadow at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_get_stacked_shadow_outline_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_stacked_shadow_outline_size**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LabelSettings_method_get_stacked_shadow_outline_size>`

Returns the outline size of the stacked shadow at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_move_stacked_outline:

.. rst-class:: classref-method

|void| **move_stacked_outline**\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_move_stacked_outline>`

Moves the stacked outline at index ``from_index`` to the given position ``to_position`` in the array.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_move_stacked_shadow:

.. rst-class:: classref-method

|void| **move_stacked_shadow**\ (\ from_index\: :ref:`int<class_int>`, to_position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_move_stacked_shadow>`

Moves the stacked shadow at index ``from_index`` to the given position ``to_position`` in the array.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_remove_stacked_outline:

.. rst-class:: classref-method

|void| **remove_stacked_outline**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_remove_stacked_outline>`

Removes the stacked outline at index ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_remove_stacked_shadow:

.. rst-class:: classref-method

|void| **remove_stacked_shadow**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_remove_stacked_shadow>`

Removes the stacked shadow at index ``index``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_outline_color:

.. rst-class:: classref-method

|void| **set_stacked_outline_color**\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_outline_color>`

Sets the color of the stacked outline identified by the given ``index`` to ``color``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_outline_size:

.. rst-class:: classref-method

|void| **set_stacked_outline_size**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_outline_size>`

Sets the size of the stacked outline identified by the given ``index`` to ``size``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_shadow_color:

.. rst-class:: classref-method

|void| **set_stacked_shadow_color**\ (\ index\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_shadow_color>`

Sets the color of the stacked shadow identified by the given ``index`` to ``color``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_shadow_offset:

.. rst-class:: classref-method

|void| **set_stacked_shadow_offset**\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_shadow_offset>`

Sets the offset of the stacked shadow identified by the given ``index`` to ``offset``.

.. rst-class:: classref-item-separator

----

.. _class_LabelSettings_method_set_stacked_shadow_outline_size:

.. rst-class:: classref-method

|void| **set_stacked_shadow_outline_size**\ (\ index\: :ref:`int<class_int>`, size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LabelSettings_method_set_stacked_shadow_outline_size>`

Sets the outline size of the stacked shadow identified by the given ``index`` to ``size``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
