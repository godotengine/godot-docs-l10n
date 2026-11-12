:github_url: hide

.. _class_OpenXRSpatialContainerExtension:

OpenXRSpatialContainerExtension
===============================

**Наследует:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

OpenXR extension that handles spatial containers.

.. rst-class:: classref-introduction-group

Описание
----------------

OpenXR extension that handles spatial containers. Enabling this extension will automatically create a main spatial container, and update the lifecycle of the XR application.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_spatial_container_bounds<class_OpenXRSpatialContainerExtension_method_get_spatial_container_bounds>`\ (\ )                                                                                                 |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRSpatialContainerState<class_OpenXRSpatialContainerState>` | :ref:`get_spatial_container_state<class_OpenXRSpatialContainerExtension_method_get_spatial_container_state>`\ (\ )                                                                                                   |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                             | :ref:`get_supported_bounds_modes<class_OpenXRSpatialContainerExtension_method_get_supported_bounds_modes>`\ (\ )                                                                                                     |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_enabled<class_OpenXRSpatialContainerExtension_method_is_enabled>`\ (\ ) |const|                                                                                                                             |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_spatial_container_active<class_OpenXRSpatialContainerExtension_method_is_spatial_container_active>`\ (\ ) |const|                                                                                           |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`request_spatial_container_bounds_mode<class_OpenXRSpatialContainerExtension_method_request_spatial_container_bounds_mode>`\ (\ bounds_mode\: :ref:`BoundsMode<enum_OpenXRSpatialContainerState_BoundsMode>`\ ) |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`request_spatial_container_visible<class_OpenXRSpatialContainerExtension_method_request_spatial_container_visible>`\ (\ visible\: :ref:`bool<class_bool>`\ )                                                    |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_OpenXRSpatialContainerExtension_signal_spatial_container_bounds_changed:

.. rst-class:: classref-signal

**spatial_container_bounds_changed**\ (\ spatial_container_rid\: :ref:`RID<class_RID>`, spatial_container_infinite_bounds\: :ref:`bool<class_bool>`, spatial_container_bounds_mode\: :ref:`int<class_int>`, spatial_container_bounds\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_OpenXRSpatialContainerExtension_signal_spatial_container_bounds_changed>`

Emitted when the bounds of the spatial container specified by ``spatial_container_rid`` are updated.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerExtension_signal_spatial_container_bounds_mode_request_denied:

.. rst-class:: classref-signal

**spatial_container_bounds_mode_request_denied**\ (\ spatial_container_rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialContainerExtension_signal_spatial_container_bounds_mode_request_denied>`

Emitted when a request to update the bounds mode of the spatial container specified by ``spatial_container_rid`` is denied by the runtime.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerExtension_signal_spatial_container_closed:

.. rst-class:: classref-signal

**spatial_container_closed**\ (\ spatial_container_rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialContainerExtension_signal_spatial_container_closed>`

Emitted when the spatial container specified by ``spatial_container_rid`` is closed.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerExtension_signal_spatial_container_interactable_changed:

.. rst-class:: classref-signal

**spatial_container_interactable_changed**\ (\ spatial_container_rid\: :ref:`RID<class_RID>`, spatial_container_interactable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OpenXRSpatialContainerExtension_signal_spatial_container_interactable_changed>`

Emitted when the interactability of the spatial container specified by ``spatial_container_rid`` is updated.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerExtension_signal_spatial_container_visible_changed:

.. rst-class:: classref-signal

**spatial_container_visible_changed**\ (\ spatial_container_rid\: :ref:`RID<class_RID>`, spatial_container_visible\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OpenXRSpatialContainerExtension_signal_spatial_container_visible_changed>`

Emitted when the visibility of the spatial container specified by ``spatial_container_rid`` is updated.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerExtension_signal_spatial_container_visible_request_denied:

.. rst-class:: classref-signal

**spatial_container_visible_request_denied**\ (\ spatial_container_rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialContainerExtension_signal_spatial_container_visible_request_denied>`

Emitted when the runtime denies the visibility request of the spatial container specified by ``spatial_container_rid``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRSpatialContainerExtension_method_get_spatial_container_bounds:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_spatial_container_bounds**\ (\ ) :ref:`🔗<class_OpenXRSpatialContainerExtension_method_get_spatial_container_bounds>`

Retrieves the bounds of the main spatial container.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerExtension_method_get_spatial_container_state:

.. rst-class:: classref-method

:ref:`OpenXRSpatialContainerState<class_OpenXRSpatialContainerState>` **get_spatial_container_state**\ (\ ) :ref:`🔗<class_OpenXRSpatialContainerExtension_method_get_spatial_container_state>`

Retrieves the :ref:`OpenXRSpatialContainerState<class_OpenXRSpatialContainerState>` of the main spatial container.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerExtension_method_get_supported_bounds_modes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_supported_bounds_modes**\ (\ ) :ref:`🔗<class_OpenXRSpatialContainerExtension_method_get_supported_bounds_modes>`

Returns an array of supported spatial container bounds mode, see :ref:`BoundsMode<enum_OpenXRSpatialContainerState_BoundsMode>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerExtension_method_is_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_enabled**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialContainerExtension_method_is_enabled>`

Returns ``true`` if spatial containers are enabled in the project settings and available on the current runtime.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerExtension_method_is_spatial_container_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_spatial_container_active**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialContainerExtension_method_is_spatial_container_active>`

Returns ``true`` if the main spatial container is active.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerExtension_method_request_spatial_container_bounds_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **request_spatial_container_bounds_mode**\ (\ bounds_mode\: :ref:`BoundsMode<enum_OpenXRSpatialContainerState_BoundsMode>`\ ) :ref:`🔗<class_OpenXRSpatialContainerExtension_method_request_spatial_container_bounds_mode>`

Sends a request to the runtime to update the bounds mode of the main spatial container.

If the request is accepted, :ref:`spatial_container_bounds_changed<class_OpenXRSpatialContainerExtension_signal_spatial_container_bounds_changed>` will be emitted with the updated bounds mode.

Otherwise, :ref:`spatial_container_bounds_mode_request_denied<class_OpenXRSpatialContainerExtension_signal_spatial_container_bounds_mode_request_denied>` will be emitted.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContainerExtension_method_request_spatial_container_visible:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **request_spatial_container_visible**\ (\ visible\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OpenXRSpatialContainerExtension_method_request_spatial_container_visible>`

Sends a request to the runtime to update the visibility of the spatial container.

If the request is accepted, :ref:`spatial_container_visible_changed<class_OpenXRSpatialContainerExtension_signal_spatial_container_visible_changed>` will be emitted with the updated visibility.

Otherwise, :ref:`spatial_container_visible_request_denied<class_OpenXRSpatialContainerExtension_signal_spatial_container_visible_request_denied>` will be emitted.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
