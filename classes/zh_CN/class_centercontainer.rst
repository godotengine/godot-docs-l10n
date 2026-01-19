:github_url: hide

.. _class_CenterContainer:

CenterContainer
===============

**继承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

将子控件保持在其中心的容器。

.. rst-class:: classref-introduction-group

描述
----

**CenterContainer** 是一种容器，它将其所有子控件以最小尺寸保持在其中心。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`use_top_left<class_CenterContainer_property_use_top_left>` | ``false`` |
   +-------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CenterContainer_property_use_top_left:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_top_left** = ``false`` :ref:`🔗<class_CenterContainer_property_use_top_left>`

.. rst-class:: classref-property-setget

- |void| **set_use_top_left**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_top_left**\ (\ )

如果为 ``true``\ ，会将子节点相对于 **CenterContainer** 的左上角居中。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
