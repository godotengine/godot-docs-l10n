:github_url: hide

.. meta::
	:keywords: expandable, collapsible, collapse

.. _class_FoldableGroup:

FoldableGroup
=============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A group of foldable containers that doesn't allow more than one container to be expanded at a time.

.. rst-class:: classref-introduction-group

說明
----

A group of :ref:`FoldableContainer<class_FoldableContainer>`-derived nodes. Only one container can be expanded at a time.

.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_FoldableGroup_signal_expanded:

.. rst-class:: classref-signal

**expanded**\ (\ container\: :ref:`FoldableContainer<class_FoldableContainer>`\ ) :ref:`🔗<class_FoldableGroup_signal_expanded>`

Emitted when one of the containers of the group is expanded.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_FoldableGroup_property_allow_folding_all:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_folding_all** = ``false`` :ref:`🔗<class_FoldableGroup_property_allow_folding_all>`

.. rst-class:: classref-property-setget

- |void| **set_allow_folding_all**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_folding_all**\ (\ )

If ``true``, it is possible to fold all containers in this FoldableGroup.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_FoldableGroup_method_get_containers:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`FoldableContainer<class_FoldableContainer>`\] **get_containers**\ (\ ) |const| :ref:`🔗<class_FoldableGroup_method_get_containers>`

Returns an :ref:`Array<class_Array>` of :ref:`FoldableContainer<class_FoldableContainer>`\ s that have this as their FoldableGroup (see :ref:`FoldableContainer.foldable_group<class_FoldableContainer_property_foldable_group>`). This is equivalent to :ref:`ButtonGroup<class_ButtonGroup>` but for FoldableContainers.

.. rst-class:: classref-item-separator

----

.. _class_FoldableGroup_method_get_expanded_container:

.. rst-class:: classref-method

:ref:`FoldableContainer<class_FoldableContainer>` **get_expanded_container**\ (\ ) |const| :ref:`🔗<class_FoldableGroup_method_get_expanded_container>`

Returns the current expanded container.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
