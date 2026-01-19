:github_url: hide

.. meta::
	:keywords: expandable, collapsible, collapse

.. _class_FoldableGroup:

FoldableGroup
=============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一组可折叠容器，不允许同一时间有超过一个容器处于展开状态。

.. rst-class:: classref-introduction-group

描述
----

一组派生自 :ref:`FoldableContainer<class_FoldableContainer>` 的节点的分组。同一时间只能有一个容器处于展开状态。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`allow_folding_all<class_FoldableGroup_property_allow_folding_all>` | ``false``                                                                             |
   +-------------------------+--------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene                                                  | ``true`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+--------------------------------------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`FoldableContainer<class_FoldableContainer>`\] | :ref:`get_containers<class_FoldableGroup_method_get_containers>`\ (\ ) |const|                 |
   +--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`FoldableContainer<class_FoldableContainer>`                              | :ref:`get_expanded_container<class_FoldableGroup_method_get_expanded_container>`\ (\ ) |const| |
   +--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_FoldableGroup_signal_expanded:

.. rst-class:: classref-signal

**expanded**\ (\ container\: :ref:`FoldableContainer<class_FoldableContainer>`\ ) :ref:`🔗<class_FoldableGroup_signal_expanded>`

当该组中的某个容器被展开时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_FoldableGroup_property_allow_folding_all:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_folding_all** = ``false`` :ref:`🔗<class_FoldableGroup_property_allow_folding_all>`

.. rst-class:: classref-property-setget

- |void| **set_allow_folding_all**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_folding_all**\ (\ )

如果为 ``true``\ ，则可以折叠 FoldableGroup 中的所有容器。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_FoldableGroup_method_get_containers:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`FoldableContainer<class_FoldableContainer>`\] **get_containers**\ (\ ) |const| :ref:`🔗<class_FoldableGroup_method_get_containers>`

返回一个 :ref:`Array<class_Array>`\ ，其中的元素是使用该 FoldableGroup 的 :ref:`FoldableContainer<class_FoldableContainer>`\ （见 :ref:`FoldableContainer.foldable_group<class_FoldableContainer_property_foldable_group>`\ ）。等价于 :ref:`ButtonGroup<class_ButtonGroup>`\ ，但适用于 FoldableContainer。

.. rst-class:: classref-item-separator

----

.. _class_FoldableGroup_method_get_expanded_container:

.. rst-class:: classref-method

:ref:`FoldableContainer<class_FoldableContainer>` **get_expanded_container**\ (\ ) |const| :ref:`🔗<class_FoldableGroup_method_get_expanded_container>`

返回当前展开的容器。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
