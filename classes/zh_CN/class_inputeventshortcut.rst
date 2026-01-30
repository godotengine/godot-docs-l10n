:github_url: hide

.. _class_InputEventShortcut:

InputEventShortcut
==================

**继承：** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表触发的键盘快捷键 :ref:`Shortcut<class_Shortcut>`\ 。

.. rst-class:: classref-introduction-group

描述
----

InputEventShortcut 是一种可以在 :ref:`Node._input()<class_Node_private_method__input>`\ 、\ :ref:`Node._shortcut_input()<class_Node_private_method__shortcut_input>`\ 、\ :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` 中收到的特殊事件。通常由编辑器的“命令面板”发送，用于触发动作，但也可以使用 :ref:`Viewport.push_input()<class_Viewport_method_push_input>` 手动发送。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------+
   | :ref:`Shortcut<class_Shortcut>` | :ref:`shortcut<class_InputEventShortcut_property_shortcut>` |
   +---------------------------------+-------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_InputEventShortcut_property_shortcut:

.. rst-class:: classref-property

:ref:`Shortcut<class_Shortcut>` **shortcut** :ref:`🔗<class_InputEventShortcut_property_shortcut>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut**\ (\ value\: :ref:`Shortcut<class_Shortcut>`\ )
- :ref:`Shortcut<class_Shortcut>` **get_shortcut**\ (\ )

这个事件代表的 :ref:`Shortcut<class_Shortcut>`\ 。它的 :ref:`Shortcut.matches_event()<class_Shortcut_method_matches_event>` 方法对这个事件始终返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
