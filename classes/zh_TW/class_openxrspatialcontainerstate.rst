:github_url: hide

.. _class_OpenXRSpatialContainerState:

OpenXRSpatialContainerState
===========================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An object representing the state of an OpenXR spatial container.

.. rst-class:: classref-introduction-group

說明
----

The **OpenXRSpatialContainerState** object holds information about the current state of a spatial container, including its visibility, interactability, and bounds mode.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`BoundsMode<enum_OpenXRSpatialContainerState_BoundsMode>` | :ref:`get_bounds_mode<class_OpenXRSpatialContainerState_method_get_bounds_mode>`\ (\ ) |const| |
   +----------------------------------------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`is_interactable<class_OpenXRSpatialContainerState_method_is_interactable>`\ (\ ) |const| |
   +----------------------------------------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                        | :ref:`is_visible<class_OpenXRSpatialContainerState_method_is_visible>`\ (\ ) |const|           |
   +----------------------------------------------------------------+------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_OpenXRSpatialContainerState_BoundsMode:

.. rst-class:: classref-enumeration

enum **BoundsMode**: :ref:`🔗<enum_OpenXRSpatialContainerState_BoundsMode>`

.. _class_OpenXRSpatialContainerState_constant_BOUNDS_MODE_BOUNDED:

.. rst-class:: classref-enumeration-constant

:ref:`BoundsMode<enum_OpenXRSpatialContainerState_BoundsMode>` **BOUNDS_MODE_BOUNDED** = ``0``

The spatial container is in bounded mode.

.. _class_OpenXRSpatialContainerState_constant_BOUNDS_MODE_IMMERSIVE:

.. rst-class:: classref-enumeration-constant

:ref:`BoundsMode<enum_OpenXRSpatialContainerState_BoundsMode>` **BOUNDS_MODE_IMMERSIVE** = ``1``

The spatial container is in immersive mode.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRSpatialContainerState_method_get_bounds_mode:

.. rst-class:: classref-method

:ref:`BoundsMode<enum_OpenXRSpatialContainerState_BoundsMode>` **get_bounds_mode**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialContainerState_method_get_bounds_mode>`

Returns the current bounds mode of the spatial container.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerState_method_is_interactable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_interactable**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialContainerState_method_is_interactable>`

Returns the current interactability of the spatial container.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerState_method_is_visible:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_visible**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialContainerState_method_is_visible>`

Returns the current visibility state of the spatial container.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
