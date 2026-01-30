:github_url: hide

.. _class_ThemeDB:

ThemeDB
=======

**继承：** :ref:`Object<class_Object>`

用来访问引擎及项目中所使用的 :ref:`Theme<class_Theme>` 资源静态信息的单例。

.. rst-class:: classref-introduction-group

描述
----

这个单例可以用来访问引擎及项目中所使用的 :ref:`Theme<class_Theme>` 资源静态信息。可以获取引擎默认的主题，也可以获取你在项目中配置的主题。

\ **ThemeDB** 也包含了主题属性的回退值。

.. rst-class:: classref-reftable-group

属性
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

信号
----

.. _class_ThemeDB_signal_fallback_changed:

.. rst-class:: classref-signal

**fallback_changed**\ (\ ) :ref:`🔗<class_ThemeDB_signal_fallback_changed>`

任意回退值发生改变时发出。可用于刷新依赖于回退主题项的控件的外观。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ThemeDB_property_fallback_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **fallback_base_scale** = ``1.0`` :ref:`🔗<class_ThemeDB_property_fallback_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_base_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fallback_base_scale**\ (\ )

所有 :ref:`Control<class_Control>` 节点和 :ref:`Theme<class_Theme>` 资源的回退基础缩放系数。用于控件没有其他值可用的情况。

另见 :ref:`Theme.default_base_scale<class_Theme_property_default_base_scale>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **fallback_font** :ref:`🔗<class_ThemeDB_property_fallback_font>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_fallback_font**\ (\ )

所有 :ref:`Control<class_Control>` 节点和 :ref:`Theme<class_Theme>` 资源的回退字体。用于控件没有其他值可用的情况。

另见 :ref:`Theme.default_font<class_Theme_property_default_font>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_font_size** = ``16`` :ref:`🔗<class_ThemeDB_property_fallback_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_font_size**\ (\ )

所有 :ref:`Control<class_Control>` 节点和 :ref:`Theme<class_Theme>` 资源的回退字体大小。用于控件没有其他值可用的情况。

另见 :ref:`Theme.default_font_size<class_Theme_property_default_font_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **fallback_icon** :ref:`🔗<class_ThemeDB_property_fallback_icon>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_fallback_icon**\ (\ )

所有 :ref:`Control<class_Control>` 节点和 :ref:`Theme<class_Theme>` 资源的回退图标。用于控件没有其他值可用的情况。

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_stylebox:

.. rst-class:: classref-property

:ref:`StyleBox<class_StyleBox>` **fallback_stylebox** :ref:`🔗<class_ThemeDB_property_fallback_stylebox>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_stylebox**\ (\ value\: :ref:`StyleBox<class_StyleBox>`\ )
- :ref:`StyleBox<class_StyleBox>` **get_fallback_stylebox**\ (\ )

所有 :ref:`Control<class_Control>` 节点和 :ref:`Theme<class_Theme>` 资源的回退样式盒。用于控件没有其他值可用的情况。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ThemeDB_method_get_default_theme:

.. rst-class:: classref-method

:ref:`Theme<class_Theme>` **get_default_theme**\ (\ ) :ref:`🔗<class_ThemeDB_method_get_default_theme>`

返回默认引擎 :ref:`Theme<class_Theme>` 的引用。该主题资源负责 :ref:`Control<class_Control>` 节点的原始外观，无法进行覆盖。

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_method_get_project_theme:

.. rst-class:: classref-method

:ref:`Theme<class_Theme>` **get_project_theme**\ (\ ) :ref:`🔗<class_ThemeDB_method_get_project_theme>`

返回自定义项目 :ref:`Theme<class_Theme>` 的引用。该主题资源能够影响项目中的所有控件节点，覆盖默认引擎主题。

项目主题的设置请参阅 :ref:`ProjectSettings.gui/theme/custom<class_ProjectSettings_property_gui/theme/custom>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
