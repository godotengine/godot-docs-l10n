:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**Hereda:** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo de cámara que se posiciona automáticamente basándose en datos de rastreo XR.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A camera node which automatically positions itself based on XR tracking data.

\ **Note:** Due to the nature of headsets, camera positioning needs to update every frame even when your game is paused. :ref:`Node.process_mode<class_Node_property_process_mode>` must be set to :ref:`Node.PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propiedades
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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_XRCamera3D_property_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tracker** = ``&"head"`` :ref:`🔗<class_XRCamera3D_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker**\ (\ )

The name of the camera tracker we're bound to. Which trackers are available is not known during design time.

The default tracker refers to the HMD position of the main player. Consult the documentation of the :ref:`XRInterface<class_XRInterface>` for any additional trackers. There may be additional tracked headsets for multiplayer systems or a tracker may be available for a physical camera in a mixed reality scenario.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
