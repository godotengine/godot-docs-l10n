:github_url: hide

.. _class_EditorToaster:

EditorToaster
=============

**繼承：** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

管理編輯器中的 Toast 訊息框通知。

.. rst-class:: classref-introduction-group

說明
----

該物件管理編輯器內 Toast 通知的功能和顯示，確保立即向使用者提供資訊豐富的警報。

\ **注意：**\ 這個類不應該直接實例化。請改用 :ref:`EditorInterface.get_editor_toaster()<class_EditorInterface_method_get_editor_toaster>` 存取單例。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`push_toast<class_EditorToaster_method_push_toast>`\ (\ message\: :ref:`String<class_String>`, severity\: :ref:`Severity<enum_EditorToaster_Severity>` = 0, tooltip\: :ref:`String<class_String>` = ""\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_EditorToaster_Severity:

.. rst-class:: classref-enumeration

enum **Severity**: :ref:`🔗<enum_EditorToaster_Severity>`

.. _class_EditorToaster_constant_SEVERITY_INFO:

.. rst-class:: classref-enumeration-constant

:ref:`Severity<enum_EditorToaster_Severity>` **SEVERITY_INFO** = ``0``

顯示 Toast 時使用 INFO 嚴重度。

.. _class_EditorToaster_constant_SEVERITY_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`Severity<enum_EditorToaster_Severity>` **SEVERITY_WARNING** = ``1``

顯示 Toast 時使用 WARNING 嚴重度，有與之對應的顏色。

.. _class_EditorToaster_constant_SEVERITY_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Severity<enum_EditorToaster_Severity>` **SEVERITY_ERROR** = ``2``

顯示 Toast 時使用 ERROR 嚴重度，有與之對應的顏色。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorToaster_method_push_toast:

.. rst-class:: classref-method

|void| **push_toast**\ (\ message\: :ref:`String<class_String>`, severity\: :ref:`Severity<enum_EditorToaster_Severity>` = 0, tooltip\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorToaster_method_push_toast>`

將需要顯示的 Toast 通知推送給編輯器。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
