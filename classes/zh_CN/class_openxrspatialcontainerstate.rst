:github_url: hide

.. _class_OpenXRSpatialContainerState:

OpenXRSpatialContainerState
===========================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An object representing the state of an OpenXR spatial container.

.. rst-class:: classref-introduction-group

描述
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

枚举
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

方法说明
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

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
