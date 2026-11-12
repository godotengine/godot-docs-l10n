:github_url: hide

.. _class_SubViewportContainer:

SubViewportContainer
====================

**继承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于显示 :ref:`SubViewport<class_SubViewport>` 内容的容器。

.. rst-class:: classref-introduction-group

描述
----

A container that displays the contents of underlying :ref:`SubViewport<class_SubViewport>` child nodes. It uses the combined size of the :ref:`SubViewport<class_SubViewport>`\ s as minimum size, unless :ref:`stretch<class_SubViewportContainer_property_stretch>` is enabled.

\ **Note:** Changing a **SubViewportContainer**'s :ref:`Control.scale<class_Control_property_scale>` will cause its contents to appear distorted. To change its visual size without causing distortion, adjust the node's offset properties instead (if it's not already in a container).

\ **Note:** The **SubViewportContainer** forwards mouse-enter and mouse-exit notifications to its sub-viewports.

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_SubViewportContainer_property_mouse_target:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mouse_target** = ``false`` :ref:`🔗<class_SubViewportContainer_property_mouse_target>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_target**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mouse_target_enabled**\ (\ )

配置 **SubViewportContainer** 或其 :ref:`SubViewport<class_SubViewport>` 子节点中的 :ref:`Control<class_Control>` 节点是否应作为鼠标相关功能的目标，例如在拖放操作中识别放置目标或悬停的 :ref:`Control<class_Control>` 节点的光标形状。

如果为 ``false``\ ，则视其 :ref:`SubViewport<class_SubViewport>` 子节点中的 :ref:`Control<class_Control>` 节点为目标。

如果为 ``true``\ ，则视 **SubViewportContainer** 本身为目标。

.. rst-class:: classref-item-separator

----

.. _class_SubViewportContainer_property_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stretch** = ``false`` :ref:`🔗<class_SubViewportContainer_property_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stretch_enabled**\ (\ )

如果为 ``true``\ ，子视口将自动调整为该控件的大小。

\ **注意：**\ 如果为 ``true``\ ，则会禁止手动改变其子节点的 :ref:`SubViewport.size<class_SubViewport_property_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SubViewportContainer_property_stretch_shrink:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_shrink** = ``1`` :ref:`🔗<class_SubViewportContainer_property_stretch_shrink>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_shrink**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_shrink**\ (\ )

将子视口的有效分辨率除以该值，同时保持比例。可以用来加速渲染。

例如子视口的大小为 1280×720，当 :ref:`stretch_shrink<class_SubViewportContainer_property_stretch_shrink>` 被设置为 ``2`` 时，将以 640×360 渲染，同时在该容器中占据相同大小。

\ **注意：**\ :ref:`stretch<class_SubViewportContainer_property_stretch>` 必须为 ``true``\ ，才能使此属性生效。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SubViewportContainer_private_method__propagate_input_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_propagate_input_event**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| |const| :ref:`🔗<class_SubViewportContainer_private_method__propagate_input_event>`

**实验性：** 未来版本中可能会修改或移除该方法。

由用户实现的虚方法。如果它返回 ``true``\ ，则 ``event`` 将被传播到 :ref:`SubViewport<class_SubViewport>` 子级。如果返回 ``false``\ ，则传播不会发生。如果未实现该功能，则所有事件都会被传播到子视口。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
