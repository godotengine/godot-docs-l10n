:github_url: hide

.. _class_InputEventShortcut:

InputEventShortcut
==================

**繼承：** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表觸發的鍵盤快捷鍵 :ref:`Shortcut<class_Shortcut>`\ 。

.. rst-class:: classref-introduction-group

說明
----

InputEventShortcut 是一種可以在 :ref:`Node._input()<class_Node_private_method__input>`\ 、\ :ref:`Node._shortcut_input()<class_Node_private_method__shortcut_input>`\ 、\ :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` 中收到的特殊事件。通常由編輯器的“命令面板”發送，用於觸發動作，但也可以使用 :ref:`Viewport.push_input()<class_Viewport_method_push_input>` 手動發送。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------+
   | :ref:`Shortcut<class_Shortcut>` | :ref:`shortcut<class_InputEventShortcut_property_shortcut>` |
   +---------------------------------+-------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEventShortcut_property_shortcut:

.. rst-class:: classref-property

:ref:`Shortcut<class_Shortcut>` **shortcut** :ref:`🔗<class_InputEventShortcut_property_shortcut>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut**\ (\ value\: :ref:`Shortcut<class_Shortcut>`\ )
- :ref:`Shortcut<class_Shortcut>` **get_shortcut**\ (\ )

這個事件代表的 :ref:`Shortcut<class_Shortcut>`\ 。它的 :ref:`Shortcut.matches_event()<class_Shortcut_method_matches_event>` 方法對這個事件始終返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
