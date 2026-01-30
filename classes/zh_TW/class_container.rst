:github_url: hide

.. _class_Container:

Container
=========

**繼承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AspectRatioContainer<class_AspectRatioContainer>`, :ref:`BoxContainer<class_BoxContainer>`, :ref:`CenterContainer<class_CenterContainer>`, :ref:`EditorProperty<class_EditorProperty>`, :ref:`FlowContainer<class_FlowContainer>`, :ref:`FoldableContainer<class_FoldableContainer>`, :ref:`GraphElement<class_GraphElement>`, :ref:`GridContainer<class_GridContainer>`, :ref:`MarginContainer<class_MarginContainer>`, :ref:`PanelContainer<class_PanelContainer>`, :ref:`ScrollContainer<class_ScrollContainer>`, :ref:`SplitContainer<class_SplitContainer>`, :ref:`SubViewportContainer<class_SubViewportContainer>`, :ref:`TabContainer<class_TabContainer>`

所有 GUI 容器的基底類別。

.. rst-class:: classref-introduction-group

說明
----

所有 GUI 容器的基礎節點。\ **Container** 包含其他控制項，並自動以某種方式排列它們。可以繼承此類來生成自訂的容器類。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------------+--------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>` | mouse_filter | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +----------------------------------------------+--------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_allowed_size_flags_horizontal<class_Container_private_method__get_allowed_size_flags_horizontal>`\ (\ ) |virtual| |const|              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_allowed_size_flags_vertical<class_Container_private_method__get_allowed_size_flags_vertical>`\ (\ ) |virtual| |const|                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`fit_child_in_rect<class_Container_method_fit_child_in_rect>`\ (\ child\: :ref:`Control<class_Control>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`queue_sort<class_Container_method_queue_sort>`\ (\ )                                                                                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_Container_signal_pre_sort_children:

.. rst-class:: classref-signal

**pre_sort_children**\ (\ ) :ref:`🔗<class_Container_signal_pre_sort_children>`

子節點將要被排序時發出。

.. rst-class:: classref-item-separator

----

.. _class_Container_signal_sort_children:

.. rst-class:: classref-signal

**sort_children**\ (\ ) :ref:`🔗<class_Container_signal_sort_children>`

需要對子節點進行排序時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Container_constant_NOTIFICATION_PRE_SORT_CHILDREN:

.. rst-class:: classref-constant

**NOTIFICATION_PRE_SORT_CHILDREN** = ``50`` :ref:`🔗<class_Container_constant_NOTIFICATION_PRE_SORT_CHILDREN>`

在子節點將要被排序之前通知，以防有事情需要事先處理。

.. _class_Container_constant_NOTIFICATION_SORT_CHILDREN:

.. rst-class:: classref-constant

**NOTIFICATION_SORT_CHILDREN** = ``51`` :ref:`🔗<class_Container_constant_NOTIFICATION_SORT_CHILDREN>`

對子節點進行排序時的通知，必須立即服從。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Container_private_method__get_allowed_size_flags_horizontal:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_allowed_size_flags_horizontal**\ (\ ) |virtual| |const| :ref:`🔗<class_Container_private_method__get_allowed_size_flags_horizontal>`

實作此方法以回傳子節點允許的水平 :ref:`SizeFlags<enum_Control_SizeFlags>` 列表。這在技術上並不會阻止使用任何其他尺寸旗標，如果您的實作需要的話。這僅是限制屬性檢視器面板中提供給使用者的選項。

\ **注意：** 沒有尺寸旗標等同於擁有 :ref:`Control.SIZE_SHRINK_BEGIN<class_Control_constant_SIZE_SHRINK_BEGIN>`\ 。因此，此值始終為隱式允許。

.. rst-class:: classref-item-separator

----

.. _class_Container_private_method__get_allowed_size_flags_vertical:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_allowed_size_flags_vertical**\ (\ ) |virtual| |const| :ref:`🔗<class_Container_private_method__get_allowed_size_flags_vertical>`

實作以傳回子節點允許的垂直 :ref:`SizeFlags<enum_Control_SizeFlags>` 清單。這並不會技術上阻止任何其他大小旗標的使用，如果您的實作需要那樣。這僅限制使用者在屬性檢視器面板中可用的選項。

\ **注意：** 沒有大小旗標等同於有 :ref:`Control.SIZE_SHRINK_BEGIN<class_Control_constant_SIZE_SHRINK_BEGIN>`\ 。因此，這個值總是隱含允許的。

.. rst-class:: classref-item-separator

----

.. _class_Container_method_fit_child_in_rect:

.. rst-class:: classref-method

|void| **fit_child_in_rect**\ (\ child\: :ref:`Control<class_Control>`, rect\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Container_method_fit_child_in_rect>`

在給定的矩形中適配子控制項。這主要是用於建立自訂容器類的輔助工具。

.. rst-class:: classref-item-separator

----

.. _class_Container_method_queue_sort:

.. rst-class:: classref-method

|void| **queue_sort**\ (\ ) :ref:`🔗<class_Container_method_queue_sort>`

將子節點的重排加入佇列。雖然會被自動呼叫，但也可以在需要時手動呼叫。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
