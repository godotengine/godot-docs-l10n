:github_url: hide

.. _class_Range:

Range
=====

**繼承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`EditorSpinSlider<class_EditorSpinSlider>`, :ref:`ProgressBar<class_ProgressBar>`, :ref:`ScrollBar<class_ScrollBar>`, :ref:`Slider<class_Slider>`, :ref:`SpinBox<class_SpinBox>`, :ref:`TextureProgressBar<class_TextureProgressBar>`

代表特定範圍內數位的控制項的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

Range 是代表特定範圍內數位的控制項的抽象基底類別，能夠對步長 :ref:`step<class_Range_property_step>` 和分頁大小 :ref:`page<class_Range_property_page>` 進行配置。使用 Range 的高階節點範例請參考 :ref:`ScrollBar<class_ScrollBar>` 和 :ref:`Slider<class_Slider>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`allow_greater<class_Range_property_allow_greater>` | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`allow_lesser<class_Range_property_allow_lesser>`   | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`exp_edit<class_Range_property_exp_edit>`           | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`max_value<class_Range_property_max_value>`         | ``100.0``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`min_value<class_Range_property_min_value>`         | ``0.0``                                                                      |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`page<class_Range_property_page>`                   | ``0.0``                                                                      |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`ratio<class_Range_property_ratio>`                 |                                                                              |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`rounded<class_Range_property_rounded>`             | ``false``                                                                    |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical                                      | ``0`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`step<class_Range_property_step>`                   | ``0.01``                                                                     |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`value<class_Range_property_value>`                 | ``0.0``                                                                      |
   +--------------------------------------------------------+----------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_value_changed<class_Range_private_method__value_changed>`\ (\ new_value\: :ref:`float<class_float>`\ ) |virtual| |
   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_value_no_signal<class_Range_method_set_value_no_signal>`\ (\ value\: :ref:`float<class_float>`\ )             |
   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`share<class_Range_method_share>`\ (\ with\: :ref:`Node<class_Node>`\ )                                            |
   +--------+-------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`unshare<class_Range_method_unshare>`\ (\ )                                                                        |
   +--------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_Range_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_Range_signal_changed>`

在 :ref:`min_value<class_Range_property_min_value>`\ 、\ :ref:`max_value<class_Range_property_max_value>`\ 、\ :ref:`page<class_Range_property_page>`\ 、\ :ref:`step<class_Range_property_step>` 改變時釋放訊號。

.. rst-class:: classref-item-separator

----

.. _class_Range_signal_value_changed:

.. rst-class:: classref-signal

**value_changed**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Range_signal_value_changed>`

:ref:`value<class_Range_property_value>` 更改時發出。在 :ref:`Slider<class_Slider>` 上使用時，會在拖動時連續呼叫（可能是每一影格）。如果在連接到 :ref:`value_changed<class_Range_signal_value_changed>` 的函式中執行昂貴的操作，請考慮使用\ *去除抖動* :ref:`Timer<class_Timer>` 來減少呼叫該函式的頻率。

\ **注意：**\ 與 :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` 等訊號不同，當直接通過程式碼設置 ``value`` 時，\ :ref:`value_changed<class_Range_signal_value_changed>` 仍會發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Range_property_allow_greater:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_greater** = ``false`` :ref:`🔗<class_Range_property_allow_greater>`

.. rst-class:: classref-property-setget

- |void| **set_allow_greater**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_greater_allowed**\ (\ )

如果為 ``true``\ ，\ :ref:`value<class_Range_property_value>` 可能大於 :ref:`max_value<class_Range_property_max_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_allow_lesser:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_lesser** = ``false`` :ref:`🔗<class_Range_property_allow_lesser>`

.. rst-class:: classref-property-setget

- |void| **set_allow_lesser**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lesser_allowed**\ (\ )

如果為 ``true``\ ，\ :ref:`value<class_Range_property_value>` 可能小於 :ref:`min_value<class_Range_property_min_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_exp_edit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exp_edit** = ``false`` :ref:`🔗<class_Range_property_exp_edit>`

.. rst-class:: classref-property-setget

- |void| **set_exp_ratio**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ratio_exp**\ (\ )

If ``true``, and :ref:`min_value<class_Range_property_min_value>` is greater or equal to ``0``, :ref:`value<class_Range_property_value>` will be represented exponentially rather than linearly.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_max_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_value** = ``100.0`` :ref:`🔗<class_Range_property_max_value>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max**\ (\ )

最大值。如果 :ref:`value<class_Range_property_value>` 大於 :ref:`max_value<class_Range_property_max_value>`\ ，則會被範圍限制。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_min_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_value** = ``0.0`` :ref:`🔗<class_Range_property_min_value>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min**\ (\ )

最小值。如果 :ref:`value<class_Range_property_value>` 小於 :ref:`min_value<class_Range_property_min_value>`\ ，則會被範圍限制。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_page:

.. rst-class:: classref-property

:ref:`float<class_float>` **page** = ``0.0`` :ref:`🔗<class_Range_property_page>`

.. rst-class:: classref-property-setget

- |void| **set_page**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_page**\ (\ )

Page size. Used mainly for :ref:`ScrollBar<class_ScrollBar>`. A :ref:`ScrollBar<class_ScrollBar>`'s grabber length is the :ref:`ScrollBar<class_ScrollBar>`'s size multiplied by :ref:`page<class_Range_property_page>` over the difference between :ref:`min_value<class_Range_property_min_value>` and :ref:`max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** :ref:`🔗<class_Range_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_as_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_as_ratio**\ (\ )

該值在 0 和 1 之間進行對應。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_rounded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rounded** = ``false`` :ref:`🔗<class_Range_property_rounded>`

.. rst-class:: classref-property-setget

- |void| **set_use_rounded_values**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_rounded_values**\ (\ )

如果為 ``true``\ ，\ :ref:`value<class_Range_property_value>` 將始終四捨五入到最接近的整數。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** = ``0.01`` :ref:`🔗<class_Range_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_step**\ (\ )

If greater than ``0.0``, :ref:`value<class_Range_property_value>` will always be rounded to a multiple of this property's value above :ref:`min_value<class_Range_property_min_value>`. For example, if :ref:`min_value<class_Range_property_min_value>` is ``0.1`` and step is ``0.2``, then :ref:`value<class_Range_property_value>` is limited to ``0.1``, ``0.3``, ``0.5``, and so on. If :ref:`rounded<class_Range_property_rounded>` is also ``true``, :ref:`value<class_Range_property_value>` will first be rounded to a multiple of this property's value, then rounded to the nearest integer.

.. rst-class:: classref-item-separator

----

.. _class_Range_property_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **value** = ``0.0`` :ref:`🔗<class_Range_property_value>`

.. rst-class:: classref-property-setget

- |void| **set_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_value**\ (\ )

Range 的目前值。更改這個屬性（即便是通過程式碼修改的）會觸發 :ref:`value_changed<class_Range_signal_value_changed>` 訊號。如果你想避免觸發訊號，請使用 :ref:`set_value_no_signal()<class_Range_method_set_value_no_signal>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Range_private_method__value_changed:

.. rst-class:: classref-method

|void| **_value_changed**\ (\ new_value\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_Range_private_method__value_changed>`

**Range** 的值發生更改時呼叫（條件與 :ref:`value_changed<class_Range_signal_value_changed>` 相同）。

.. rst-class:: classref-item-separator

----

.. _class_Range_method_set_value_no_signal:

.. rst-class:: classref-method

|void| **set_value_no_signal**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Range_method_set_value_no_signal>`

將 **Range** 的目前值設定為指定的 ``value`` 而不發出 :ref:`value_changed<class_Range_signal_value_changed>` 訊號。

.. rst-class:: classref-item-separator

----

.. _class_Range_method_share:

.. rst-class:: classref-method

|void| **share**\ (\ with\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Range_method_share>`

將兩個 **Range** 綁定，之前已與兩者之中的任何一個組合的 Range 也會被綁定在一起。其中任何一個 Range 的成員變數改變時，它將與它的組中的所有其他 Range 共用新值。

.. rst-class:: classref-item-separator

----

.. _class_Range_method_unshare:

.. rst-class:: classref-method

|void| **unshare**\ (\ ) :ref:`🔗<class_Range_method_unshare>`

使該 **Range** 停止與任何其他 Range 共用其成員變數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
