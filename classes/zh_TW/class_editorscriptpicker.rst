:github_url: hide

.. _class_EditorScriptPicker:

EditorScriptPicker
==================

**繼承：** :ref:`EditorResourcePicker<class_EditorResourcePicker>` **<** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Godot 編輯器的控制項，用於選擇節點 :ref:`Node<class_Node>` 的腳本 ``script`` 屬性。

.. rst-class:: classref-introduction-group

說明
----

與 :ref:`EditorResourcePicker<class_EditorResourcePicker>` 類似，這個 :ref:`Control<class_Control>` 節點在編輯器的屬性檢視器面板中使用，但只用於編輯 :ref:`Node<class_Node>` 的 ``script`` 屬性。建立包含所有可能子型別的新資源的預設選項 被替換為打開“附加節點腳本”對話框的專用按鈕。可以與 :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` 一起使用以重新建立相同的行為。

\ **注意：**\ 你必須設定 :ref:`script_owner<class_EditorScriptPicker_property_script_owner>` 才能讓自訂的本文功能表專案發揮作用。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------+
   | :ref:`Node<class_Node>` | :ref:`script_owner<class_EditorScriptPicker_property_script_owner>` |
   +-------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_EditorScriptPicker_property_script_owner:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **script_owner** :ref:`🔗<class_EditorScriptPicker_property_script_owner>`

.. rst-class:: classref-property-setget

- |void| **set_script_owner**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_script_owner**\ (\ )

持有被編輯資源的腳本屬性的所有者 :ref:`Node<class_Node>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
