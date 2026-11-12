:github_url: hide

.. _class_SubViewportContainer:

SubViewportContainer
====================

**繼承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於顯示 :ref:`SubViewport<class_SubViewport>` 內容的容器。

.. rst-class:: classref-introduction-group

說明
----

A container that displays the contents of underlying :ref:`SubViewport<class_SubViewport>` child nodes. It uses the combined size of the :ref:`SubViewport<class_SubViewport>`\ s as minimum size, unless :ref:`stretch<class_SubViewportContainer_property_stretch>` is enabled.

\ **Note:** Changing a **SubViewportContainer**'s :ref:`Control.scale<class_Control_property_scale>` will cause its contents to appear distorted. To change its visual size without causing distortion, adjust the node's offset properties instead (if it's not already in a container).

\ **Note:** The **SubViewportContainer** forwards mouse-enter and mouse-exit notifications to its sub-viewports.

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

設定 **SubViewportContainer** 或其 :ref:`SubViewport<class_SubViewport>` 子節點中的 :ref:`Control<class_Control>` 節點是否應作為滑鼠相關功能的目標，例如在拖放操作中識別放置目標或懸停的 :ref:`Control<class_Control>` 節點的游標形狀。

如果為 ``false``\ ，則視其 :ref:`SubViewport<class_SubViewport>` 子節點中的 :ref:`Control<class_Control>` 節點為目標。

如果為 ``true``\ ，則視 **SubViewportContainer** 本身為目標。

.. rst-class:: classref-item-separator

----

.. _class_SubViewportContainer_property_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stretch** = ``false`` :ref:`🔗<class_SubViewportContainer_property_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stretch_enabled**\ (\ )

如果為 ``true``\ ，子視埠將自動調整為該控制項的大小。

\ **注意：**\ 如果為 ``true``\ ，則會禁止手動改變其子節點的 :ref:`SubViewport.size<class_SubViewport_property_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SubViewportContainer_property_stretch_shrink:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_shrink** = ``1`` :ref:`🔗<class_SubViewportContainer_property_stretch_shrink>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_shrink**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_shrink**\ (\ )

將子視埠的有效解析度除以該值，同時保持比例。可以用來加速渲染。

例如子視埠的大小為 1280×720，當 :ref:`stretch_shrink<class_SubViewportContainer_property_stretch_shrink>` 被設定為 ``2`` 時，將以 640×360 渲染，同時在該容器中佔據相同大小。

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

由使用者實作的虛方法。如果它回傳 ``true``\ ，則 ``event`` 將被傳播到 :ref:`SubViewport<class_SubViewport>` 子級。如果回傳 ``false``\ ，則傳播不會發生。如果未實作該功能，則所有事件都會被傳播到子視埠。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
