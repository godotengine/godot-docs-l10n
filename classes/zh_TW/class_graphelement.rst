:github_url: hide

.. _class_GraphElement:

GraphElement
============

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`GraphFrame<class_GraphFrame>`, :ref:`GraphNode<class_GraphNode>`

帶有連接埠的容器，代表 :ref:`GraphEdit<class_GraphEdit>` 中的一個節點。

.. rst-class:: classref-introduction-group

說明
----

**GraphElement** 允許為 :ref:`GraphEdit<class_GraphEdit>` 圖表建立自訂元素。預設情況下，可以選擇此類元素、調整大小和重新定位，但無法連接它們。對於允許連接，請參閱\ :ref:`GraphNode<class_GraphNode>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`draggable<class_GraphElement_property_draggable>`             | ``true``          |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position_offset<class_GraphElement_property_position_offset>` | ``Vector2(0, 0)`` |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`resizable<class_GraphElement_property_resizable>`             | ``false``         |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`scaling_menus<class_GraphElement_property_scaling_menus>`     | ``false``         |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`selectable<class_GraphElement_property_selectable>`           | ``true``          |
   +-------------------------------+---------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`selected<class_GraphElement_property_selected>`               | ``false``         |
   +-------------------------------+---------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`resizer<class_GraphElement_theme_icon_resizer>` |
   +-----------------------------------+-------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_GraphElement_signal_delete_request:

.. rst-class:: classref-signal

**delete_request**\ (\ ) :ref:`🔗<class_GraphElement_signal_delete_request>`

需要對子節點進行排序時發出。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_dragged:

.. rst-class:: classref-signal

**dragged**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_GraphElement_signal_dragged>`

當 GraphNode 被拖動時發出。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_node_deselected:

.. rst-class:: classref-signal

**node_deselected**\ (\ ) :ref:`🔗<class_GraphElement_signal_node_deselected>`

當 GraphNode 被取消選擇時發出。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_node_selected:

.. rst-class:: classref-signal

**node_selected**\ (\ ) :ref:`🔗<class_GraphElement_signal_node_selected>`

當 GraphNode 被選中時發出。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_position_offset_changed:

.. rst-class:: classref-signal

**position_offset_changed**\ (\ ) :ref:`🔗<class_GraphElement_signal_position_offset_changed>`

當 GraphNode 被移動時觸發。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_raise_request:

.. rst-class:: classref-signal

**raise_request**\ (\ ) :ref:`🔗<class_GraphElement_signal_raise_request>`

當 GraphNode 被要求顯示在其他節點之上時觸發。在 GraphNode 獲得焦點時觸發，即滑鼠點擊進入。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_resize_end:

.. rst-class:: classref-signal

**resize_end**\ (\ new_size\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_GraphElement_signal_resize_end>`

Emitted when releasing the mouse button after dragging the resizer handle (see :ref:`resizable<class_GraphElement_property_resizable>`).

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_signal_resize_request:

.. rst-class:: classref-signal

**resize_request**\ (\ new_size\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_GraphElement_signal_resize_request>`

當 GraphNode 被要求調整大小時發出。在拖動調整器手柄時發生（見 :ref:`resizable<class_GraphElement_property_resizable>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GraphElement_property_draggable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draggable** = ``true`` :ref:`🔗<class_GraphElement_property_draggable>`

.. rst-class:: classref-property-setget

- |void| **set_draggable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draggable**\ (\ )

如果為 ``true``\ ，則使用者能夠拖動該 GraphNode。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_position_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_GraphElement_property_position_offset>`

.. rst-class:: classref-property-setget

- |void| **set_position_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position_offset**\ (\ )

GraphNode 的偏移量，相對於 :ref:`GraphEdit<class_GraphEdit>` 的滾動偏移量。

\ **注意：**\ 不能直接使用位置偏移，因為 :ref:`GraphEdit<class_GraphEdit>` 是一個 :ref:`Container<class_Container>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_resizable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **resizable** = ``false`` :ref:`🔗<class_GraphElement_property_resizable>`

.. rst-class:: classref-property-setget

- |void| **set_resizable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_resizable**\ (\ )

If ``true``, the user can resize the GraphElement.

\ **Note:** Dragging the handle will only emit the :ref:`resize_request<class_GraphElement_signal_resize_request>` and :ref:`resize_end<class_GraphElement_signal_resize_end>` signals, the GraphElement needs to be resized manually.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_scaling_menus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scaling_menus** = ``false`` :ref:`🔗<class_GraphElement_property_scaling_menus>`

.. rst-class:: classref-property-setget

- |void| **set_scaling_menus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scaling_menus**\ (\ )

If ``true``, :ref:`PopupMenu<class_PopupMenu>`\ s that are descendants of the GraphElement are scaled with the :ref:`GraphEdit<class_GraphEdit>` zoom.

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_selectable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **selectable** = ``true`` :ref:`🔗<class_GraphElement_property_selectable>`

.. rst-class:: classref-property-setget

- |void| **set_selectable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_selectable**\ (\ )

如果為 ``true``\ ，則使用者能夠選中該 GraphNode。

.. rst-class:: classref-item-separator

----

.. _class_GraphElement_property_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **selected** = ``false`` :ref:`🔗<class_GraphElement_property_selected>`

.. rst-class:: classref-property-setget

- |void| **set_selected**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_selected**\ (\ )

如果為 ``true``\ ，則該 GraphNode 被選中。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_GraphElement_theme_icon_resizer:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **resizer** :ref:`🔗<class_GraphElement_theme_icon_resizer>`

用於調整大小的圖示，在 :ref:`resizable<class_GraphElement_property_resizable>` 被啟用時可見。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
