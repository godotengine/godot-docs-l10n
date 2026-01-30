:github_url: hide

.. _class_AspectRatioContainer:

AspectRatioContainer
====================

**繼承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

保留子控制項長寬比的容器。

.. rst-class:: classref-introduction-group

說明
----

一種容器類型，會在容器大小改變時自動保持子控制項比例。當容器尺寸為動態，且子節點必須隨之調整大小而又不能失去長寬比時特別實用。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` | :ref:`alignment_horizontal<class_AspectRatioContainer_property_alignment_horizontal>` | ``1``   |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` | :ref:`alignment_vertical<class_AspectRatioContainer_property_alignment_vertical>`     | ``1``   |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                     | :ref:`ratio<class_AspectRatioContainer_property_ratio>`                               | ``1.0`` |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`StretchMode<enum_AspectRatioContainer_StretchMode>`     | :ref:`stretch_mode<class_AspectRatioContainer_property_stretch_mode>`                 | ``2``   |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_AspectRatioContainer_StretchMode:

.. rst-class:: classref-enumeration

enum **StretchMode**: :ref:`🔗<enum_AspectRatioContainer_StretchMode>`

.. _class_AspectRatioContainer_constant_STRETCH_WIDTH_CONTROLS_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_WIDTH_CONTROLS_HEIGHT** = ``0``

子控制項的高度會根據容器寬度自動調整。

.. _class_AspectRatioContainer_constant_STRETCH_HEIGHT_CONTROLS_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_HEIGHT_CONTROLS_WIDTH** = ``1``

子控制項的寬度會根據容器高度自動調整。

.. _class_AspectRatioContainer_constant_STRETCH_FIT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_FIT** = ``2``

子控制項的邊界矩形會自動調整以符合容器，同時保持長寬比。

.. _class_AspectRatioContainer_constant_STRETCH_COVER:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_COVER** = ``3``

子控制項的寬度與高度會自動調整，使其邊界矩形在保持長寬比的同時覆蓋整個容器區域。

當子控制項的邊界矩形超出容器大小，且啟用 :ref:`Control.clip_contents<class_Control_property_clip_contents>` 時，僅會顯示受自身邊界矩形限制的容器區域。

.. rst-class:: classref-item-separator

----

.. _enum_AspectRatioContainer_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_AspectRatioContainer_AlignmentMode>`

.. _class_AspectRatioContainer_constant_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **ALIGNMENT_BEGIN** = ``0``

將子控制項與容器的起始處（左側或上方）對齊。

.. _class_AspectRatioContainer_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

將子控制項與容器中心對齊。

.. _class_AspectRatioContainer_constant_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **ALIGNMENT_END** = ``2``

將子控制項與容器的末端（右側或底部）對齊。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AspectRatioContainer_property_alignment_horizontal:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **alignment_horizontal** = ``1`` :ref:`🔗<class_AspectRatioContainer_property_alignment_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_alignment_horizontal**\ (\ value\: :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **get_alignment_horizontal**\ (\ )

指定子控制項的水平相對位置。

.. rst-class:: classref-item-separator

----

.. _class_AspectRatioContainer_property_alignment_vertical:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **alignment_vertical** = ``1`` :ref:`🔗<class_AspectRatioContainer_property_alignment_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_alignment_vertical**\ (\ value\: :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **get_alignment_vertical**\ (\ )

指定子控制項的垂直相對位置。

.. rst-class:: classref-item-separator

----

.. _class_AspectRatioContainer_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** = ``1.0`` :ref:`🔗<class_AspectRatioContainer_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ratio**\ (\ )

對子控制項強制套用的長寬比，為寬度除以高度，其實際效果取決於 :ref:`stretch_mode<class_AspectRatioContainer_property_stretch_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AspectRatioContainer_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **stretch_mode** = ``2`` :ref:`🔗<class_AspectRatioContainer_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_AspectRatioContainer_StretchMode>`\ )
- :ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **get_stretch_mode**\ (\ )

用來對齊子控制項的拉伸模式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
