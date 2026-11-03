:github_url: hide

.. _class_OpenXRBindingModifierEditor:

OpenXRBindingModifierEditor
===========================

**繼承：** :ref:`PanelContainer<class_PanelContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

綁定修改器編輯器。

.. rst-class:: classref-introduction-group

說明
----

OpenXR 動作映射所使用的預設綁定修改器編輯器。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` | :ref:`get_binding_modifier<class_OpenXRBindingModifierEditor_method_get_binding_modifier>`\ (\ ) |const|                                                                                                     |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`setup<class_OpenXRBindingModifierEditor_method_setup>`\ (\ action_map\: :ref:`OpenXRActionMap<class_OpenXRActionMap>`, binding_modifier\: :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`\ ) |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_OpenXRBindingModifierEditor_signal_binding_modifier_removed:

.. rst-class:: classref-signal

**binding_modifier_removed**\ (\ binding_modifier_editor\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_OpenXRBindingModifierEditor_signal_binding_modifier_removed>`

當使用者按下該修改器的刪除綁定修改器按鈕時發出的訊號。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRBindingModifierEditor_method_get_binding_modifier:

.. rst-class:: classref-method

:ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` **get_binding_modifier**\ (\ ) |const| :ref:`🔗<class_OpenXRBindingModifierEditor_method_get_binding_modifier>`

回傳目前正在編輯的 :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRBindingModifierEditor_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ action_map\: :ref:`OpenXRActionMap<class_OpenXRActionMap>`, binding_modifier\: :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`\ ) :ref:`🔗<class_OpenXRBindingModifierEditor_method_setup>`

針對給定的 ``action_map`` 和 ``binding_modifier`` 設定該編輯器。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
