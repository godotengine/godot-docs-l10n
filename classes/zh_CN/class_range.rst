:github_url: hide

.. _class_Range:

Range
=====

**继承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`EditorSpinSlider<class_EditorSpinSlider>`, :ref:`ProgressBar<class_ProgressBar>`, :ref:`ScrollBar<class_ScrollBar>`, :ref:`Slider<class_Slider>`, :ref:`SpinBox<class_SpinBox>`, :ref:`TextureProgressBar<class_TextureProgressBar>`

代表特定范围内数字的控件的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

Range 是代表特定范围内数字的控件的抽象基类，能够对步长 :ref:`step<class_Range_property_step>` 和分页大小 :ref:`page<class_Range_property_page>` 进行配置。使用 Range 的高阶节点示例请参考 :ref:`ScrollBar<class_ScrollBar>` 和 :ref:`Slider<class_Slider>`\ 。

.. rst-class:: classref-reftable-group

属性
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

信号
----

.. _class_Range_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_Range_signal_changed>`

在 :ref:`min_value<class_Range_property_min_value>`\ 、\ :ref:`max_value<class_Range_property_max_value>`\ 、\ :ref:`page<class_Range_property_page>`\ 、\ :ref:`step<class_Range_property_step>` 改变时释放信号。

.. rst-class:: classref-item-separator

----

.. _class_Range_signal_value_changed:

.. rst-class:: classref-signal

**value_changed**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Range_signal_value_changed>`

:ref:`value<class_Range_property_value>` 更改时发出。在 :ref:`Slider<class_Slider>` 上使用时，会在拖动时连续调用（可能是每一帧）。如果在连接到 :ref:`value_changed<class_Range_signal_value_changed>` 的函数中执行昂贵的操作，请考虑使用\ *去除抖动* :ref:`Timer<class_Timer>` 来减少调用该函数的频率。

\ **注意：**\ 与 :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` 等信号不同，当直接通过代码设置 ``value`` 时，\ :ref:`value_changed<class_Range_signal_value_changed>` 仍会发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Range_property_allow_greater:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_greater** = ``false`` :ref:`🔗<class_Range_property_allow_greater>`

.. rst-class:: classref-property-setget

- |void| **set_allow_greater**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_greater_allowed**\ (\ )

如果为 ``true``\ ，\ :ref:`value<class_Range_property_value>` 可能大于 :ref:`max_value<class_Range_property_max_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_allow_lesser:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_lesser** = ``false`` :ref:`🔗<class_Range_property_allow_lesser>`

.. rst-class:: classref-property-setget

- |void| **set_allow_lesser**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lesser_allowed**\ (\ )

如果为 ``true``\ ，\ :ref:`value<class_Range_property_value>` 可能小于 :ref:`min_value<class_Range_property_min_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_exp_edit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exp_edit** = ``false`` :ref:`🔗<class_Range_property_exp_edit>`

.. rst-class:: classref-property-setget

- |void| **set_exp_ratio**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ratio_exp**\ (\ )

如果为 ``true``\ ，并且 :ref:`min_value<class_Range_property_min_value>` 大于等于 ``0``\ ，则 :ref:`value<class_Range_property_value>` 将以指数方式而不是线性方式表示。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_max_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_value** = ``100.0`` :ref:`🔗<class_Range_property_max_value>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max**\ (\ )

最大值。如果 :ref:`value<class_Range_property_value>` 大于 :ref:`max_value<class_Range_property_max_value>`\ ，则会被范围限制。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_min_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_value** = ``0.0`` :ref:`🔗<class_Range_property_min_value>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min**\ (\ )

最小值。如果 :ref:`value<class_Range_property_value>` 小于 :ref:`min_value<class_Range_property_min_value>`\ ，则会被范围限制。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_page:

.. rst-class:: classref-property

:ref:`float<class_float>` **page** = ``0.0`` :ref:`🔗<class_Range_property_page>`

.. rst-class:: classref-property-setget

- |void| **set_page**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_page**\ (\ )

页面大小。主要用于 :ref:`ScrollBar<class_ScrollBar>`\ 。\ :ref:`ScrollBar<class_ScrollBar>` 滑块的长度是 :ref:`ScrollBar<class_ScrollBar>` 的尺寸乘以 :ref:`page<class_Range_property_page>` 再除以 :ref:`min_value<class_Range_property_min_value>` 和 :ref:`max_value<class_Range_property_max_value>` 的差。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** :ref:`🔗<class_Range_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_as_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_as_ratio**\ (\ )

该值在 0 和 1 之间进行映射。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_rounded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rounded** = ``false`` :ref:`🔗<class_Range_property_rounded>`

.. rst-class:: classref-property-setget

- |void| **set_use_rounded_values**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_rounded_values**\ (\ )

如果为 ``true``\ ，\ :ref:`value<class_Range_property_value>` 将始终四舍五入到最接近的整数。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** = ``0.01`` :ref:`🔗<class_Range_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_step**\ (\ )

如果大于 0，\ :ref:`value<class_Range_property_value>` 将总是被四舍五入为大于 :ref:`min_value<class_Range_property_min_value>` 的该属性的倍数。例如，如果 :ref:`min_value<class_Range_property_min_value>` 为 ``0.1``\ ，步长为 0.2，则 :ref:`value<class_Range_property_value>` 被限制为 ``0.1``\ 、\ ``0.3``\ 、\ ``0.5``\ ，依此类推。如果 :ref:`rounded<class_Range_property_rounded>` 也是 ``true``\ ，\ :ref:`value<class_Range_property_value>` 将首先被四舍五入为这个属性的倍数，然后舍入为最近的整数。

.. rst-class:: classref-item-separator

----

.. _class_Range_property_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **value** = ``0.0`` :ref:`🔗<class_Range_property_value>`

.. rst-class:: classref-property-setget

- |void| **set_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_value**\ (\ )

Range 的当前值。更改这个属性（即便是通过代码修改的）会触发 :ref:`value_changed<class_Range_signal_value_changed>` 信号。如果你想避免触发信号，请使用 :ref:`set_value_no_signal()<class_Range_method_set_value_no_signal>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Range_private_method__value_changed:

.. rst-class:: classref-method

|void| **_value_changed**\ (\ new_value\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_Range_private_method__value_changed>`

**Range** 的值发生更改时调用（条件与 :ref:`value_changed<class_Range_signal_value_changed>` 相同）。

.. rst-class:: classref-item-separator

----

.. _class_Range_method_set_value_no_signal:

.. rst-class:: classref-method

|void| **set_value_no_signal**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Range_method_set_value_no_signal>`

将 **Range** 的当前值设置为指定的 ``value`` 而不发出 :ref:`value_changed<class_Range_signal_value_changed>` 信号。

.. rst-class:: classref-item-separator

----

.. _class_Range_method_share:

.. rst-class:: classref-method

|void| **share**\ (\ with\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Range_method_share>`

将两个 **Range** 绑定，之前已与两者之中的任何一个组合的 Range 也会被绑定在一起。其中任何一个 Range 的成员变量改变时，它将与它的组中的所有其他 Range 共享新值。

.. rst-class:: classref-item-separator

----

.. _class_Range_method_unshare:

.. rst-class:: classref-method

|void| **unshare**\ (\ ) :ref:`🔗<class_Range_method_unshare>`

使该 **Range** 停止与任何其他 Range 共享其成员变量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
