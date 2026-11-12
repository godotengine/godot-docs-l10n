:github_url: hide

.. _class_OpenXRFoveatedInsetViewport:

OpenXRFoveatedInsetViewport
===========================

**Успадковує:** :ref:`SubViewport<class_SubViewport>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

This viewport is used for rendering our foveated inset.

.. rst-class:: classref-introduction-group

Опис
--------

This viewport is used for rendering our foveated inset. When foveated inset rendering is supported OpenXR will create and configure this viewport correctly and use its output. The viewport will be available after OpenXR reaches the "begun" state. You can access it by calling ``get_tree().get_root().get_node("OpenXRFoveatedInsetViewport")`` at this time.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                          | process_priority          | ``99999`` (overrides :ref:`Node<class_Node_property_process_priority>`)                    |
   +------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`UpdateMode<enum_SubViewport_UpdateMode>` | render_target_update_mode | ``0`` (overrides :ref:`SubViewport<class_SubViewport_property_render_target_update_mode>`) |
   +------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`XRCamera3D<class_XRCamera3D>` | :ref:`get_xr_camera3d<class_OpenXRFoveatedInsetViewport_method_get_xr_camera3d>`\ (\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`XROrigin3D<class_XROrigin3D>` | :ref:`get_xr_origin3d<class_OpenXRFoveatedInsetViewport_method_get_xr_origin3d>`\ (\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRFoveatedInsetViewport_method_get_xr_camera3d:

.. rst-class:: classref-method

:ref:`XRCamera3D<class_XRCamera3D>` **get_xr_camera3d**\ (\ ) |const| :ref:`🔗<class_OpenXRFoveatedInsetViewport_method_get_xr_camera3d>`

Returns the :ref:`XRCamera3D<class_XRCamera3D>` node used for rendering the foveated inset.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFoveatedInsetViewport_method_get_xr_origin3d:

.. rst-class:: classref-method

:ref:`XROrigin3D<class_XROrigin3D>` **get_xr_origin3d**\ (\ ) |const| :ref:`🔗<class_OpenXRFoveatedInsetViewport_method_get_xr_origin3d>`

Returns the :ref:`XROrigin3D<class_XROrigin3D>` node used for tracking the foveated inset. Our built-in logic handles positioning this node. It will copy the position and orientation of the :ref:`XROrigin3D<class_XROrigin3D>` node marked as current.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
