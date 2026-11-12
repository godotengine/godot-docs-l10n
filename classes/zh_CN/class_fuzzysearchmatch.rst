:github_url: hide

.. _class_FuzzySearchMatch:

FuzzySearchMatch
================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Result returned by :ref:`FuzzySearch<class_FuzzySearch>` containing match information.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`       | :ref:`original_index<class_FuzzySearchMatch_property_original_index>` | ``-1`` |
   +-----------------------------+-----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`       | :ref:`score<class_FuzzySearchMatch_property_score>`                   | ``0``  |
   +-----------------------------+-----------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`target<class_FuzzySearchMatch_property_target>`                 | ``""`` |
   +-----------------------------+-----------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_matched_substrings<class_FuzzySearchMatch_method_get_matched_substrings>`\ (\ ) |const| |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_FuzzySearchMatch_property_original_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **original_index** = ``-1`` :ref:`🔗<class_FuzzySearchMatch_property_original_index>`

.. rst-class:: classref-property-setget

- |void| **set_original_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_original_index**\ (\ )

The original index of :ref:`target<class_FuzzySearchMatch_property_target>` in the provided array of targets when using :ref:`FuzzySearch.search_all()<class_FuzzySearch_method_search_all>` otherwise ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_FuzzySearchMatch_property_score:

.. rst-class:: classref-property

:ref:`int<class_int>` **score** = ``0`` :ref:`🔗<class_FuzzySearchMatch_property_score>`

.. rst-class:: classref-property-setget

- |void| **set_score**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_score**\ (\ )

Match score determined by :ref:`FuzzySearch<class_FuzzySearch>`. Scores are not normalized and generally should not be directly compared between different queries.

.. rst-class:: classref-item-separator

----

.. _class_FuzzySearchMatch_property_target:

.. rst-class:: classref-property

:ref:`String<class_String>` **target** = ``""`` :ref:`🔗<class_FuzzySearchMatch_property_target>`

.. rst-class:: classref-property-setget

- |void| **set_target**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_target**\ (\ )

Target string which was matched against.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_FuzzySearchMatch_method_get_matched_substrings:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_matched_substrings**\ (\ ) |const| :ref:`🔗<class_FuzzySearchMatch_method_get_matched_substrings>`

Returns each matched substring interval of :ref:`target<class_FuzzySearchMatch_property_target>`. The :ref:`Vector2i.x<class_Vector2i_property_x>` component is the start of the interval and the :ref:`Vector2i.y<class_Vector2i_property_y>` component is the length, corresponding to the arguments for :ref:`String.substr()<class_String_method_substr>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
