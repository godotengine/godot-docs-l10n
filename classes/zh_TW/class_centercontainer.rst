:github_url: hide

.. _class_CenterContainer:

CenterContainer
===============

**繼承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

將子控制項保持在其中心的容器。

.. rst-class:: classref-introduction-group

說明
----

**CenterContainer** 是一種容器，它將其所有子控制項以最小尺寸保持在其中心。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`use_top_left<class_CenterContainer_property_use_top_left>` | ``false`` |
   +-------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CenterContainer_property_use_top_left:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_top_left** = ``false`` :ref:`🔗<class_CenterContainer_property_use_top_left>`

.. rst-class:: classref-property-setget

- |void| **set_use_top_left**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_top_left**\ (\ )

如果為 ``true``\ ，會將子節點相對於 **CenterContainer** 的左上角居中。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
