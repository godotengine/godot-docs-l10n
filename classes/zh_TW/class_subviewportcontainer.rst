:github_url: hide

.. _class_SubViewportContainer:

SubViewportContainer
====================

**繼承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於顯示 :ref:`SubViewport<class_SubViewport>` 內容的容器。

.. rst-class:: classref-introduction-group

說明
----

顯示其 :ref:`SubViewport<class_SubViewport>` 子節點內容的容器。除非啟用 :ref:`stretch<class_SubViewportContainer_property_stretch>`\ ，否則會使用 :ref:`SubViewport<class_SubViewport>` 的大小作為最小尺寸。

\ **注意：**\ 更改 **SubViewportContainer** 的 :ref:`Control.scale<class_Control_property_scale>`\ ，將導致其內容出現扭曲。要更改其視覺大小，並且不造成失真，請改為調整節點的邊距（如果還不在容器中）。

\ **注意：**\ 該 **SubViewportContainer** 會將滑鼠進入和滑鼠退出通知轉發到子視口。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                                                | ``1`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`mouse_target<class_SubViewportContainer_property_mouse_target>`     | ``false``                                                           |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`stretch<class_SubViewportContainer_property_stretch>`               | ``false``                                                           |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`stretch_shrink<class_SubViewportContainer_property_stretch_shrink>` | ``1``                                                               |
   +------------------------------------------+---------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_propagate_input_event<class_SubViewportContainer_private_method__propagate_input_event>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| |const| |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SubViewportContainer_property_mouse_target:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mouse_target** = ``false`` :ref:`🔗<class_SubViewportContainer_property_mouse_target>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_target**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mouse_target_enabled**\ (\ )

Configure, if either the **SubViewportContainer** or alternatively the :ref:`Control<class_Control>` nodes of its :ref:`SubViewport<class_SubViewport>` children should be available as targets of mouse-related functionalities, like identifying the drop target in drag-and-drop operations or cursor shape of hovered :ref:`Control<class_Control>` node.

If ``false``, the :ref:`Control<class_Control>` nodes inside its :ref:`SubViewport<class_SubViewport>` children are considered as targets.

If ``true``, the **SubViewportContainer** itself will be considered as a target.

.. rst-class:: classref-item-separator

----

.. _class_SubViewportContainer_property_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stretch** = ``false`` :ref:`🔗<class_SubViewportContainer_property_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stretch_enabled**\ (\ )

如果為 ``true``\ ，子視口將自動調整為該控制項的大小。

\ **注意：**\ 如果為 ``true``\ ，則會禁止手動改變其子節點的 :ref:`SubViewport.size<class_SubViewport_property_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SubViewportContainer_property_stretch_shrink:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_shrink** = ``1`` :ref:`🔗<class_SubViewportContainer_property_stretch_shrink>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_shrink**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_shrink**\ (\ )

將子視口的有效解析度除以該值，同時保持比例。可以用來加速算繪。

例如子視口的大小為 1280×720，當 :ref:`stretch_shrink<class_SubViewportContainer_property_stretch_shrink>` 被設定為 ``2`` 時，將以 640×360 算繪，同時在該容器中佔據相同大小。

\ **注意：**\ :ref:`stretch<class_SubViewportContainer_property_stretch>` 必須為 ``true``\ ，才能使此屬性生效。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SubViewportContainer_private_method__propagate_input_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_propagate_input_event**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| |const| :ref:`🔗<class_SubViewportContainer_private_method__propagate_input_event>`

**實驗性：** 此方法可能在未來版本中變更或移除。

Virtual method to be implemented by the user. If it returns ``true``, the ``event`` is propagated to :ref:`SubViewport<class_SubViewport>` children. Propagation doesn't happen if it returns ``false``. If the function is not implemented, all events are propagated to SubViewports.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
