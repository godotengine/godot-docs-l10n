:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**Успадковує:** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Камерний вузол, який автоматично змінює своє положення на основі даних відстеження XR.

.. rst-class:: classref-introduction-group

Опис
--------

A camera node which automatically positions itself based on XR tracking data.

\ **Note:** Due to the nature of headsets, camera positioning needs to update every frame even when your game is paused. :ref:`Node.process_mode<class_Node_property_process_mode>` must be set to :ref:`Node.PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                        | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+---------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ProcessMode<enum_Node_ProcessMode>`                           | process_mode                                      | ``3`` (overrides :ref:`Node<class_Node_property_process_mode>`)               |
   +---------------------------------------------------------------------+---------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`tracker<class_XRCamera3D_property_tracker>` | ``&"head"``                                                                   |
   +---------------------------------------------------------------------+---------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_XRCamera3D_property_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tracker** = ``&"head"`` :ref:`🔗<class_XRCamera3D_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker**\ (\ )

The name of the camera tracker we're bound to. Which trackers are available is not known during design time.

The default tracker refers to the HMD position of the main player. Consult the documentation of the :ref:`XRInterface<class_XRInterface>` for any additional trackers. There may be additional tracked headsets for multiplayer systems or a tracker may be available for a physical camera in a mixed reality scenario.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
