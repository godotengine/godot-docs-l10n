:github_url: hide

.. _class_Popup:

Popup
=====

**继承：** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`PopupMenu<class_PopupMenu>`, :ref:`PopupPanel<class_PopupPanel>`

上下文窗口以及固定位置的面板的基类。

.. rst-class:: classref-introduction-group

描述
----

**Popup** is a base class for contextual windows and panels with fixed position. It's a modal by default (see :ref:`Window.popup_window<class_Window_property_popup_window>`) and provides methods for implementing custom popup behavior.

\ **Note:** **Popup** is invisible by default. To make it visible, call one of the ``popup_*`` methods from :ref:`Window<class_Window>` on the node, such as :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | borderless        | ``true`` (overrides :ref:`Window<class_Window_property_borderless>`)        |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | maximize_disabled | ``true`` (overrides :ref:`Window<class_Window_property_maximize_disabled>`) |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | minimize_disabled | ``true`` (overrides :ref:`Window<class_Window_property_minimize_disabled>`) |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | popup_window      | ``true`` (overrides :ref:`Window<class_Window_property_popup_window>`)      |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | popup_wm_hint     | ``true`` (overrides :ref:`Window<class_Window_property_popup_wm_hint>`)     |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | transient         | ``true`` (overrides :ref:`Window<class_Window_property_transient>`)         |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | unresizable       | ``true`` (overrides :ref:`Window<class_Window_property_unresizable>`)       |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | visible           | ``false`` (overrides :ref:`Window<class_Window_property_visible>`)          |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | wrap_controls     | ``true`` (overrides :ref:`Window<class_Window_property_wrap_controls>`)     |
   +-------------------------+-------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_Popup_signal_popup_hide:

.. rst-class:: classref-signal

**popup_hide**\ (\ ) :ref:`🔗<class_Popup_signal_popup_hide>`

当该弹出窗口被隐藏时发出。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
