:github_url: hide

.. _class_CodeHighlighter:

CodeHighlighter
===============

**继承：** :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于代码的语法高亮器。

.. rst-class:: classref-introduction-group

描述
----

通过调整该资源的各种属性，可以更改 :ref:`TextEdit<class_TextEdit>` 控件内的字符串、注释、数字和其他文本图案的颜色。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`color_regions<class_CodeHighlighter_property_color_regions>`                 | ``{}``                |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`function_color<class_CodeHighlighter_property_function_color>`               | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`keyword_colors<class_CodeHighlighter_property_keyword_colors>`               | ``{}``                |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`member_keyword_colors<class_CodeHighlighter_property_member_keyword_colors>` | ``{}``                |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`member_variable_color<class_CodeHighlighter_property_member_variable_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`number_color<class_CodeHighlighter_property_number_color>`                   | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`symbol_color<class_CodeHighlighter_property_symbol_color>`                   | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_color_region<class_CodeHighlighter_method_add_color_region>`\ (\ start_key\: :ref:`String<class_String>`, end_key\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, line_only\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_keyword_color<class_CodeHighlighter_method_add_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ )                                                                                     |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_member_keyword_color<class_CodeHighlighter_method_add_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ )                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_color_regions<class_CodeHighlighter_method_clear_color_regions>`\ (\ )                                                                                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_keyword_colors<class_CodeHighlighter_method_clear_keyword_colors>`\ (\ )                                                                                                                                                         |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_member_keyword_colors<class_CodeHighlighter_method_clear_member_keyword_colors>`\ (\ )                                                                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_keyword_color<class_CodeHighlighter_method_get_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_member_keyword_color<class_CodeHighlighter_method_get_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const|                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`has_color_region<class_CodeHighlighter_method_has_color_region>`\ (\ start_key\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`has_keyword_color<class_CodeHighlighter_method_has_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`has_member_keyword_color<class_CodeHighlighter_method_has_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const|                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_color_region<class_CodeHighlighter_method_remove_color_region>`\ (\ start_key\: :ref:`String<class_String>`\ )                                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_keyword_color<class_CodeHighlighter_method_remove_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`\ )                                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_member_keyword_color<class_CodeHighlighter_method_remove_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`\ )                                                                                             |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CodeHighlighter_property_color_regions:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_regions** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_color_regions>`

.. rst-class:: classref-property-setget

- |void| **set_color_regions**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_color_regions**\ (\ )

设置颜色区域。现有区域都将被移除。\ :ref:`Dictionary<class_Dictionary>` 的键为该区域的开始键和结束键，用空格隔开。对应的值为区域的颜色。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_function_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **function_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_function_color>`

.. rst-class:: classref-property-setget

- |void| **set_function_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_function_color**\ (\ )

设置函数的颜色。函数是后跟“(”的非关键字字符串。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_keyword_colors:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **keyword_colors** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_keyword_colors>`

.. rst-class:: classref-property-setget

- |void| **set_keyword_colors**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_keyword_colors**\ (\ )

设置关键字的颜色。现有关键字都将被移除。\ :ref:`Dictionary<class_Dictionary>` 的键为关键字。对应的值为关键字的颜色。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_member_keyword_colors:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **member_keyword_colors** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_member_keyword_colors>`

.. rst-class:: classref-property-setget

- |void| **set_member_keyword_colors**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_member_keyword_colors**\ (\ )

设置成员关键字的颜色。现有成员关键字都将被移除。\ :ref:`Dictionary<class_Dictionary>` 的键为成员关键字。对应的值为成员关键字的颜色。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_member_variable_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **member_variable_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_member_variable_color>`

.. rst-class:: classref-property-setget

- |void| **set_member_variable_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_member_variable_color**\ (\ )

设置成员变量的颜色。成员变量是以“.”开头的非关键字、非函数字符串。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_number_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **number_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_number_color>`

.. rst-class:: classref-property-setget

- |void| **set_number_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_number_color**\ (\ )

设置数字的颜色。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_symbol_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **symbol_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_symbol_color>`

.. rst-class:: classref-property-setget

- |void| **set_symbol_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_symbol_color**\ (\ )

设置符号的颜色。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_CodeHighlighter_method_add_color_region:

.. rst-class:: classref-method

|void| **add_color_region**\ (\ start_key\: :ref:`String<class_String>`, end_key\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, line_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CodeHighlighter_method_add_color_region>`

添加从 ``start_key`` 到 ``end_key`` 的颜色区块（例如注释或字符串）。两个键都应该是符号，并且 ``start_key`` 不得与其他分隔符共享。

如果 ``line_only`` 为 ``true`` 或 ``end_key`` 为空 :ref:`String<class_String>`\ ，则该区块不会延续到下一行。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_add_keyword_color:

.. rst-class:: classref-method

|void| **add_keyword_color**\ (\ keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_CodeHighlighter_method_add_keyword_color>`

设置关键字的颜色。

关键字不能包含除“\_”之外的任何符号。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_add_member_keyword_color:

.. rst-class:: classref-method

|void| **add_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_CodeHighlighter_method_add_member_keyword_color>`

设置成员关键字的颜色。

成员关键字不能包含除“\_”之外的任何符号。

如果前面有“.”，则不会高亮显示。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_color_regions:

.. rst-class:: classref-method

|void| **clear_color_regions**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_color_regions>`

移除所有颜色区域。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_keyword_colors:

.. rst-class:: classref-method

|void| **clear_keyword_colors**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_keyword_colors>`

移除所有关键字。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_member_keyword_colors:

.. rst-class:: classref-method

|void| **clear_member_keyword_colors**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_member_keyword_colors>`

移除所有成员关键字。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_get_keyword_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_get_keyword_color>`

返回某个关键字的颜色。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_get_member_keyword_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_get_member_keyword_color>`

返回某个成员关键字的颜色。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_color_region:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_color_region**\ (\ start_key\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_color_region>`

如果开始键存在则返回 ``true``\ ，否则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_keyword_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_keyword_color>`

如果关键字存在则返回 ``true``\ ，否则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_member_keyword_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_member_keyword_color>`

如果成员关键字存在则返回 ``true``\ ，否则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_color_region:

.. rst-class:: classref-method

|void| **remove_color_region**\ (\ start_key\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_color_region>`

移除使用该开始键的颜色区域。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_keyword_color:

.. rst-class:: classref-method

|void| **remove_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_keyword_color>`

移除关键字。

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_member_keyword_color:

.. rst-class:: classref-method

|void| **remove_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_member_keyword_color>`

移除成员关键字。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
