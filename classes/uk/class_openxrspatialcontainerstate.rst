:github_url: hide

.. _class_OpenXRSpatialContainerState:

OpenXRSpatialContainerState
===========================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An object representing the state of an OpenXR spatial container.

.. rst-class:: classref-introduction-group

Опис
--------

The **OpenXRSpatialContainerState** object holds information about the current state of a spatial container, including its visibility, interactability, and bounds mode.

.. rst-class:: classref-reftable-group

Методи
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

Переліки
----------------

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

Описи методів
--------------------------

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

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
