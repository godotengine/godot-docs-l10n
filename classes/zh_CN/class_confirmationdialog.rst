:github_url: hide

.. _class_ConfirmationDialog:

ConfirmationDialog
==================

**继承：** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`EditorCommandPalette<class_EditorCommandPalette>`, :ref:`FileDialog<class_FileDialog>`, :ref:`ScriptCreateDialog<class_ScriptCreateDialog>`

用于确认动作的对话框。

.. rst-class:: classref-introduction-group

描述
----

用于确认动作的对话框。这个窗口类似于 :ref:`AcceptDialog<class_AcceptDialog>`\ ，但按下“取消”按钮和按下“确定”按钮的效果是不同的。这两个按钮的顺序取决于主机操作系统。

要获得取消操作，你可以使用：


.. tabs::

 .. code-tab:: gdscript

    get_cancel_button().pressed.connect(_on_canceled)

 .. code-tab:: csharp

    GetCancelButton().Pressed += OnCanceled;



\ **注意：**\ **ConfirmationDialog** 默认情况下是隐藏的。若要显示，调用节点上来自 :ref:`Window<class_Window>` 的 ``popup_*`` 方法中的其中一个，比如 :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | :ref:`cancel_button_text<class_ConfirmationDialog_property_cancel_button_text>` | ``"Cancel"``                                                                    |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | min_size                                                                        | ``Vector2i(200, 70)`` (overrides :ref:`Window<class_Window_property_min_size>`) |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | size                                                                            | ``Vector2i(200, 100)`` (overrides :ref:`Window<class_Window_property_size>`)    |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | title                                                                           | ``"Please Confirm..."`` (overrides :ref:`Window<class_Window_property_title>`)  |
   +---------------------------------+---------------------------------------------------------------------------------+---------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`get_cancel_button<class_ConfirmationDialog_method_get_cancel_button>`\ (\ ) |
   +-----------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ConfirmationDialog_property_cancel_button_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **cancel_button_text** = ``"Cancel"`` :ref:`🔗<class_ConfirmationDialog_property_cancel_button_text>`

.. rst-class:: classref-property-setget

- |void| **set_cancel_button_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_cancel_button_text**\ (\ )

取消按钮显示的文本（见 :ref:`get_cancel_button()<class_ConfirmationDialog_method_get_cancel_button>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ConfirmationDialog_method_get_cancel_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **get_cancel_button**\ (\ ) :ref:`🔗<class_ConfirmationDialog_method_get_cancel_button>`

返回取消按钮。

\ **警告：**\ 这是一个必需的内部节点，移除并释放它可能会导致崩溃。如果你希望隐藏它或其任何子项，请使用其 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 属性。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
