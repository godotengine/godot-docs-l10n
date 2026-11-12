:github_url: hide

.. _class_RegExMatch:

RegExMatch
==========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

包含 :ref:`RegEx<class_RegEx>` 搜索的结果。

.. rst-class:: classref-introduction-group

描述
----

包含由 :ref:`RegEx.search()<class_RegEx_method_search>` 和 :ref:`RegEx.search_all()<class_RegEx_method_search_all>` 返回的单个 :ref:`RegEx<class_RegEx>` 匹配结果。它可以用来查找匹配的位置和范围以及它的捕获组，并且可以提取其子字符串。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------+-------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`names<class_RegExMatch_property_names>`     | ``{}``                  |
   +---------------------------------------------------+---------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`strings<class_RegExMatch_property_strings>` | ``PackedStringArray()`` |
   +---------------------------------------------------+---------------------------------------------------+-------------------------+
   | :ref:`String<class_String>`                       | :ref:`subject<class_RegExMatch_property_subject>` | ``""``                  |
   +---------------------------------------------------+---------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_end<class_RegExMatch_method_get_end>`\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const|       |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_group_count<class_RegExMatch_method_get_group_count>`\ (\ ) |const|                                 |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_start<class_RegExMatch_method_get_start>`\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const|   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_string<class_RegExMatch_method_get_string>`\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RegExMatch_property_names:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **names** = ``{}`` :ref:`🔗<class_RegExMatch_property_names>`

.. rst-class:: classref-property-setget

- :ref:`Dictionary<class_Dictionary>` **get_names**\ (\ )

命名组的字典和它相应的组号。只有被匹配的组才被包括在内。如果多个组有相同的名称，该名称将指第一个匹配的组。

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_property_strings:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **strings** = ``PackedStringArray()`` :ref:`🔗<class_RegExMatch_property_strings>`

.. rst-class:: classref-property-setget

- :ref:`PackedStringArray<class_PackedStringArray>` **get_strings**\ (\ )

匹配项及其捕获组的 :ref:`Array<class_Array>`\ 。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_property_subject:

.. rst-class:: classref-property

:ref:`String<class_String>` **subject** = ``""`` :ref:`🔗<class_RegExMatch_property_subject>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_subject**\ (\ )

与搜索模式一起使用的源字符串，以找到这个匹配结果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RegExMatch_method_get_end:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_end>`

返回源字符串中匹配的结束位置。捕获组的结束位置可以通过提供其组号的整数或其字符串名称（如果它是一个命名组）来检索。默认值为 0，指的是整个表达式。

如果该组没有匹配或不存在，则返回 -1。

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegExMatch_method_get_group_count>`

返回捕获组的数量。

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_start:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_start**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_start>`

返回源字符串中匹配的起始位置。捕获组的起始位置可以通过提供它的组号作为一个整数或它的字符串名称（如果它是一个命名组）来检索。默认值为 0，指的是整个表达式。

如果组没有匹配或不存在，返回 -1。

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_string>`

返回源字符串中匹配的子串。捕获组可以通过提供它的组号作为整数或它的字符串名称（如果它是一个命名组）来检索。默认值为 0，指的是整个表达式。

如果组没有匹配或不存在，则返回一个空字符串。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
