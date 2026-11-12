:github_url: hide

.. _class_FuzzySearchMatch:

FuzzySearchMatch
================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Result returned by :ref:`FuzzySearch<class_FuzzySearch>` containing match information.

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
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

方法說明
--------

.. _class_FuzzySearchMatch_method_get_matched_substrings:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_matched_substrings**\ (\ ) |const| :ref:`🔗<class_FuzzySearchMatch_method_get_matched_substrings>`

Returns each matched substring interval of :ref:`target<class_FuzzySearchMatch_property_target>`. The :ref:`Vector2i.x<class_Vector2i_property_x>` component is the start of the interval and the :ref:`Vector2i.y<class_Vector2i_property_y>` component is the length, corresponding to the arguments for :ref:`String.substr()<class_String_method_substr>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
