:github_url: hide

.. meta::
	:keywords: tray

.. _class_StatusIndicator:

StatusIndicator
===============

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

应用程序状态指示器（即通知区域图标）。

\ **注意：**\ 状态指示器在 macOS 和 Windows 上实现。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`icon<class_StatusIndicator_property_icon>`       |                  |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>`   | :ref:`menu<class_StatusIndicator_property_menu>`       | ``NodePath("")`` |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`String<class_String>`       | :ref:`tooltip<class_StatusIndicator_property_tooltip>` | ``""``           |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`           | :ref:`visible<class_StatusIndicator_property_visible>` | ``true``         |
   +-----------------------------------+--------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_rect<class_StatusIndicator_method_get_rect>`\ (\ ) |const| |
   +---------------------------+----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_StatusIndicator_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ mouse_button\: :ref:`int<class_int>`, mouse_position\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_StatusIndicator_signal_pressed>`

按下状态指示器时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_StatusIndicator_property_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **icon** :ref:`🔗<class_StatusIndicator_property_icon>`

.. rst-class:: classref-property-setget

- |void| **set_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_icon**\ (\ )

状态指示器图标。

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_menu:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **menu** = ``NodePath("")`` :ref:`🔗<class_StatusIndicator_property_menu>`

.. rst-class:: classref-property-setget

- |void| **set_menu**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_menu**\ (\ )

状态指示器原生弹出菜单。设置后不会发出 :ref:`pressed<class_StatusIndicator_signal_pressed>` 信号。

\ **注意：**\ 只有在 :ref:`NativeMenu<class_NativeMenu>` 支持 :ref:`NativeMenu.FEATURE_POPUP_MENU<class_NativeMenu_constant_FEATURE_POPUP_MENU>` 特性时才支持原生弹出菜单。

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_tooltip:

.. rst-class:: classref-property

:ref:`String<class_String>` **tooltip** = ``""`` :ref:`🔗<class_StatusIndicator_property_tooltip>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tooltip**\ (\ )

状态指示器工具提示。

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_StatusIndicator_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

如果为 ``true``\ ，则状态指示器可见。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_StatusIndicator_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_StatusIndicator_method_get_rect>`

返回状态指示器的矩形，使用屏幕坐标。如果状态指示器不可见，则返回空的 :ref:`Rect2<class_Rect2>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
