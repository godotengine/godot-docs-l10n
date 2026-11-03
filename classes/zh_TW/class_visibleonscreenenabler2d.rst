:github_url: hide

.. _class_VisibleOnScreenEnabler2D:

VisibleOnScreenEnabler2D
========================

**繼承：** :ref:`VisibleOnScreenNotifier2D<class_VisibleOnScreenNotifier2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

二維空間的矩形區塊，當在螢幕上可見時，啟用目標節點。

.. rst-class:: classref-introduction-group

說明
----

**VisibleOnScreenEnabler2D** 包含 2D 空間的矩形區塊和目標節點。當該區塊的任何部分在螢幕上可見時，目標節點將自動啟用（通過其 :ref:`Node.process_mode<class_Node_property_process_mode>` 屬性），否則將自動停用。例如，這可以被用於僅在玩家接近敵人時啟用敵人。

如果你只想在該區塊在螢幕上可見時收到通知，請參閱 :ref:`VisibleOnScreenNotifier2D<class_VisibleOnScreenNotifier2D>`\ 。

\ **注意：**\ **VisibleOnScreenEnabler2D** 使用渲染剔除程式碼來確定它在螢幕上是否可見，因此除非 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 被設定為 ``true``\ ，否則它不會起作用。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+
   | :ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` | :ref:`enable_mode<class_VisibleOnScreenEnabler2D_property_enable_mode>`           | ``0``              |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`enable_node_path<class_VisibleOnScreenEnabler2D_property_enable_node_path>` | ``NodePath("..")`` |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisibleOnScreenEnabler2D_EnableMode:

.. rst-class:: classref-enumeration

enum **EnableMode**: :ref:`🔗<enum_VisibleOnScreenEnabler2D_EnableMode>`

.. _class_VisibleOnScreenEnabler2D_constant_ENABLE_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **ENABLE_MODE_INHERIT** = ``0``

對應 :ref:`Node.PROCESS_MODE_INHERIT<class_Node_constant_PROCESS_MODE_INHERIT>`\ 。

.. _class_VisibleOnScreenEnabler2D_constant_ENABLE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **ENABLE_MODE_ALWAYS** = ``1``

對應 :ref:`Node.PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`\ 。

.. _class_VisibleOnScreenEnabler2D_constant_ENABLE_MODE_WHEN_PAUSED:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **ENABLE_MODE_WHEN_PAUSED** = ``2``

對應 :ref:`Node.PROCESS_MODE_WHEN_PAUSED<class_Node_constant_PROCESS_MODE_WHEN_PAUSED>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisibleOnScreenEnabler2D_property_enable_mode:

.. rst-class:: classref-property

:ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **enable_mode** = ``0`` :ref:`🔗<class_VisibleOnScreenEnabler2D_property_enable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_enable_mode**\ (\ value\: :ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>`\ )
- :ref:`EnableMode<enum_VisibleOnScreenEnabler2D_EnableMode>` **get_enable_mode**\ (\ )

確定如何啟用目標節點。對應於 :ref:`ProcessMode<enum_Node_ProcessMode>`\ 。當該節點被停用時，它始終使用 :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenEnabler2D_property_enable_node_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **enable_node_path** = ``NodePath("..")`` :ref:`🔗<class_VisibleOnScreenEnabler2D_property_enable_node_path>`

.. rst-class:: classref-property-setget

- |void| **set_enable_node_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_enable_node_path**\ (\ )

目標節點的路徑，相對於 **VisibleOnScreenEnabler2D**\ 。目標節點會被快取；只有在設定這個屬性時（\ **VisibleOnScreenEnabler2D** 位於場景樹中），以及 **VisibleOnScreenEnabler2D** 進入場景樹時會進行賦值。如果路徑為空，則不會影響任何節點。如果路徑無效，則還會生成錯誤。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
