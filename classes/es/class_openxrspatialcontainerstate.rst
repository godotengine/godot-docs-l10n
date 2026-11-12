:github_url: hide

.. _class_OpenXRSpatialContainerState:

OpenXRSpatialContainerState
===========================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An object representing the state of an OpenXR spatial container.

.. rst-class:: classref-introduction-group

Descripción
----------------------

The **OpenXRSpatialContainerState** object holds information about the current state of a spatial container, including its visibility, interactability, and bounds mode.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

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

Descripciones de Métodos
------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
