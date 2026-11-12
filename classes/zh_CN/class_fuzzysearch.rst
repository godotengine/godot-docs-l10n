:github_url: hide

.. _class_FuzzySearch:

FuzzySearch
===========

**实验性：** The available options and handling of results may change in the future.

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Provides fuzzy string searching and matching capabilities.

.. rst-class:: classref-introduction-group

描述
----

The fuzzy search algorithm is designed to find target strings which mostly match a query string while allowing for breaks, typos, and out of order matches.


.. tabs::

 .. code-tab:: gdscript

    var items := ["Potion of Healing", "Greater Health Potion", "Poison Vial"]
    var fuzzy := FuzzySearch.new()

    for result in fuzzy.search_all("health potion", items):
        # Prints "Greater Health Potion", "Potion of Healing"
        print(result.target)

 .. code-tab:: csharp

    string[] items = ["Potion of Healing", "Greater Health Potion", "Poison Vial"];
    FuzzySearch fuzzy = new();

    foreach (var result in fuzzy.SearchAll("health potion", items))
    {
        // Prints "Greater Health Potion", "Potion of Healing"
        GD.Print(result.Target);
    }



.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`case_sensitive<class_FuzzySearch_property_case_sensitive>`       | ``false`` |
   +---------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`filter_cutoff<class_FuzzySearch_property_filter_cutoff>`         | ``30.0``  |
   +---------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`filter_factor<class_FuzzySearch_property_filter_factor>`         | ``0.1``   |
   +---------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`filter_low_scores<class_FuzzySearch_property_filter_low_scores>` | ``true``  |
   +---------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`max_misses<class_FuzzySearch_property_max_misses>`               | ``2``     |
   +---------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`max_results<class_FuzzySearch_property_max_results>`             | ``100``   |
   +---------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`start_offset<class_FuzzySearch_property_start_offset>`           | ``0``     |
   +---------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_exact_tokens<class_FuzzySearch_property_use_exact_tokens>`   | ``false`` |
   +---------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FuzzySearchMatch<class_FuzzySearchMatch>`                              | :ref:`search<class_FuzzySearch_method_search>`\ (\ query\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ ) |const|                                |
   +------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`FuzzySearchMatch<class_FuzzySearchMatch>`\] | :ref:`search_all<class_FuzzySearch_method_search_all>`\ (\ query\: :ref:`String<class_String>`, targets\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |const| |
   +------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_FuzzySearch_property_case_sensitive:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **case_sensitive** = ``false`` :ref:`🔗<class_FuzzySearch_property_case_sensitive>`

.. rst-class:: classref-property-setget

- |void| **set_case_sensitive**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_case_sensitive**\ (\ )

Whether the query character casing should be matched exactly or not.

.. rst-class:: classref-item-separator

----

.. _class_FuzzySearch_property_filter_cutoff:

.. rst-class:: classref-property

:ref:`float<class_float>` **filter_cutoff** = ``30.0`` :ref:`🔗<class_FuzzySearch_property_filter_cutoff>`

.. rst-class:: classref-property-setget

- |void| **set_filter_cutoff**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_filter_cutoff**\ (\ )

Minimum score for filtering results returned by :ref:`search_all()<class_FuzzySearch_method_search_all>`.

.. rst-class:: classref-item-separator

----

.. _class_FuzzySearch_property_filter_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **filter_factor** = ``0.1`` :ref:`🔗<class_FuzzySearch_property_filter_factor>`

.. rst-class:: classref-property-setget

- |void| **set_filter_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_filter_factor**\ (\ )

Biases the filtering cutoff score between the average score and max score. Value should be between ``0`` and ``1``.

.. rst-class:: classref-item-separator

----

.. _class_FuzzySearch_property_filter_low_scores:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_low_scores** = ``true`` :ref:`🔗<class_FuzzySearch_property_filter_low_scores>`

.. rst-class:: classref-property-setget

- |void| **set_filter_low_scores**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_low_scores**\ (\ )

If ``true``, lower quality matches are not returned by :ref:`search_all()<class_FuzzySearch_method_search_all>`. The default filtering behavior is tuned to keep exact matches and reject significantly broken up matches. Setting this to ``false`` can potentially improve results when searching a small number of items.

.. rst-class:: classref-item-separator

----

.. _class_FuzzySearch_property_max_misses:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_misses** = ``2`` :ref:`🔗<class_FuzzySearch_property_max_misses>`

.. rst-class:: classref-property-setget

- |void| **set_max_misses**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_misses**\ (\ )

Maximum number of non-matched characters in the query before skipping a target as non-matching. This option is ignored if :ref:`use_exact_tokens<class_FuzzySearch_property_use_exact_tokens>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_FuzzySearch_property_max_results:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_results** = ``100`` :ref:`🔗<class_FuzzySearch_property_max_results>`

.. rst-class:: classref-property-setget

- |void| **set_max_results**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_results**\ (\ )

Maximum number of results which can be returned by :ref:`search_all()<class_FuzzySearch_method_search_all>`.

.. rst-class:: classref-item-separator

----

.. _class_FuzzySearch_property_start_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **start_offset** = ``0`` :ref:`🔗<class_FuzzySearch_property_start_offset>`

.. rst-class:: classref-property-setget

- |void| **set_start_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_start_offset**\ (\ )

Number of leading characters to omit from matching. For example, this can be used to skip a common prefix such as ``res://``.

.. rst-class:: classref-item-separator

----

.. _class_FuzzySearch_property_use_exact_tokens:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_exact_tokens** = ``false`` :ref:`🔗<class_FuzzySearch_property_use_exact_tokens>`

.. rst-class:: classref-property-setget

- |void| **set_use_exact_tokens**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_exact_tokens**\ (\ )

If ``true``, only targets which contain each token as a non-overlapping substring are returned. Gaps and missed characters are not considered valid matches, but :ref:`case_sensitive<class_FuzzySearch_property_case_sensitive>` is still used.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_FuzzySearch_method_search:

.. rst-class:: classref-method

:ref:`FuzzySearchMatch<class_FuzzySearchMatch>` **search**\ (\ query\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_FuzzySearch_method_search>`

Searches the ``target`` for ``query``, returning a :ref:`FuzzySearchMatch<class_FuzzySearchMatch>` instance on success or ``null`` otherwise.

.. rst-class:: classref-item-separator

----

.. _class_FuzzySearch_method_search_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`FuzzySearchMatch<class_FuzzySearchMatch>`\] **search_all**\ (\ query\: :ref:`String<class_String>`, targets\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |const| :ref:`🔗<class_FuzzySearch_method_search_all>`

Searches all of ``targets`` for ``query`` and returns up to the top :ref:`max_results<class_FuzzySearch_property_max_results>` scoring values. The results are sorted by score in descending order. Low quality results are removed if :ref:`filter_low_scores<class_FuzzySearch_property_filter_low_scores>` is ``true``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
