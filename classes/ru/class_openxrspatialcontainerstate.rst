:github_url: hide

.. _class_OpenXRSpatialContainerState:

OpenXRSpatialContainerState
===========================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An object representing the state of an OpenXR spatial container.

.. rst-class:: classref-introduction-group

Описание
----------------

The **OpenXRSpatialContainerState** object holds information about the current state of a spatial container, including its visibility, interactability, and bounds mode.

.. rst-class:: classref-reftable-group

Методы
------------

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

Перечисления
------------------------

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

Описания метода
------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
