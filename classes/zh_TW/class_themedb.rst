:github_url: hide

.. _class_ThemeDB:

ThemeDB
=======

**繼承：** :ref:`Object<class_Object>`

用來存取引擎及專案中所使用的 :ref:`Theme<class_Theme>` 資源靜態資訊的單例。

.. rst-class:: classref-introduction-group

說明
----

這個單例可以用來存取引擎及專案中所使用的 :ref:`Theme<class_Theme>` 資源靜態資訊。可以獲取引擎默認的主題，也可以獲取你在專案中配置的主題。

\ **ThemeDB** 也包含了主題屬性的退回值。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`         | :ref:`fallback_base_scale<class_ThemeDB_property_fallback_base_scale>` | ``1.0`` |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`Font<class_Font>`           | :ref:`fallback_font<class_ThemeDB_property_fallback_font>`             |         |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`             | :ref:`fallback_font_size<class_ThemeDB_property_fallback_font_size>`   | ``16``  |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`fallback_icon<class_ThemeDB_property_fallback_icon>`             |         |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`fallback_stylebox<class_ThemeDB_property_fallback_stylebox>`     |         |
   +-----------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>` | :ref:`get_default_theme<class_ThemeDB_method_get_default_theme>`\ (\ ) |
   +---------------------------+------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>` | :ref:`get_project_theme<class_ThemeDB_method_get_project_theme>`\ (\ ) |
   +---------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_ThemeDB_signal_fallback_changed:

.. rst-class:: classref-signal

**fallback_changed**\ (\ ) :ref:`🔗<class_ThemeDB_signal_fallback_changed>`

任意退回值發生改變時發出。可用於更新依賴於退回主題項的控制項的外觀。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ThemeDB_property_fallback_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **fallback_base_scale** = ``1.0`` :ref:`🔗<class_ThemeDB_property_fallback_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_base_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fallback_base_scale**\ (\ )

所有 :ref:`Control<class_Control>` 節點和 :ref:`Theme<class_Theme>` 資源的退回基礎縮放係數。用於控制項沒有其他值可用的情況。

另見 :ref:`Theme.default_base_scale<class_Theme_property_default_base_scale>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **fallback_font** :ref:`🔗<class_ThemeDB_property_fallback_font>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_fallback_font**\ (\ )

所有 :ref:`Control<class_Control>` 節點和 :ref:`Theme<class_Theme>` 資源的退回字形。用於控制項沒有其他值可用的情況。

另見 :ref:`Theme.default_font<class_Theme_property_default_font>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_font_size** = ``16`` :ref:`🔗<class_ThemeDB_property_fallback_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_font_size**\ (\ )

所有 :ref:`Control<class_Control>` 節點和 :ref:`Theme<class_Theme>` 資源的退回字形大小。用於控制項沒有其他值可用的情況。

另見 :ref:`Theme.default_font_size<class_Theme_property_default_font_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **fallback_icon** :ref:`🔗<class_ThemeDB_property_fallback_icon>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_fallback_icon**\ (\ )

所有 :ref:`Control<class_Control>` 節點和 :ref:`Theme<class_Theme>` 資源的退回圖示。用於控制項沒有其他值可用的情況。

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_stylebox:

.. rst-class:: classref-property

:ref:`StyleBox<class_StyleBox>` **fallback_stylebox** :ref:`🔗<class_ThemeDB_property_fallback_stylebox>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_stylebox**\ (\ value\: :ref:`StyleBox<class_StyleBox>`\ )
- :ref:`StyleBox<class_StyleBox>` **get_fallback_stylebox**\ (\ )

所有 :ref:`Control<class_Control>` 節點和 :ref:`Theme<class_Theme>` 資源的退回樣式盒。用於控制項沒有其他值可用的情況。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ThemeDB_method_get_default_theme:

.. rst-class:: classref-method

:ref:`Theme<class_Theme>` **get_default_theme**\ (\ ) :ref:`🔗<class_ThemeDB_method_get_default_theme>`

返回預設引擎 :ref:`Theme<class_Theme>` 的引用。該主題資源負責 :ref:`Control<class_Control>` 節點的原始外觀，無法進行覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_method_get_project_theme:

.. rst-class:: classref-method

:ref:`Theme<class_Theme>` **get_project_theme**\ (\ ) :ref:`🔗<class_ThemeDB_method_get_project_theme>`

返回自訂專案 :ref:`Theme<class_Theme>` 的引用。該主題資源能夠影響專案中的所有控制項節點，覆蓋默認引擎主題。

專案主題的設定請參閱 :ref:`ProjectSettings.gui/theme/custom<class_ProjectSettings_property_gui/theme/custom>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
