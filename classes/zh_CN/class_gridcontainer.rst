:github_url: hide

.. _class_GridContainer:

GridContainer
=============

**继承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

将子控件按照网格布局排列的容器。

.. rst-class:: classref-introduction-group

描述
----

**GridContainer** 会将其子控件按照网格布局排列。网格的列数由 :ref:`columns<class_GridContainer_property_columns>` 属性指定，行数取决于容器中子控件的数量。将保留每个大小的容器的列和行。

\ **注意：**\ **GridContainer** 只对继承自 :ref:`Control<class_Control>` 的子节点生效。它不会重新排列继承自 :ref:`Node2D<class_Node2D>` 的子节点。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

- `操作系统测试演示 <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`columns<class_GridContainer_property_columns>` | ``1`` |
   +-----------------------+------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

主题属性
--------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`h_separation<class_GridContainer_theme_constant_h_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`v_separation<class_GridContainer_theme_constant_v_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GridContainer_property_columns:

.. rst-class:: classref-property

:ref:`int<class_int>` **columns** = ``1`` :ref:`🔗<class_GridContainer_property_columns>`

.. rst-class:: classref-property-setget

- |void| **set_columns**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_columns**\ (\ )

**GridContainer** 中的列数。修改后，\ **GridContainer** 会重新排列其派生自 Control 的子节点，以适应新的布局。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_GridContainer_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_GridContainer_theme_constant_h_separation>`

子节点的水平分隔量。

.. rst-class:: classref-item-separator

----

.. _class_GridContainer_theme_constant_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **v_separation** = ``4`` :ref:`🔗<class_GridContainer_theme_constant_v_separation>`

子节点的垂直分隔量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
