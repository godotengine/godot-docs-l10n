:github_url: hide

.. _class_OpenXRFoveatedInsetViewport:

OpenXRFoveatedInsetViewport
===========================

**Hereda:** :ref:`SubViewport<class_SubViewport>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

This viewport is used for rendering our foveated inset.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This viewport is used for rendering our foveated inset. When foveated inset rendering is supported OpenXR will create and configure this viewport correctly and use its output. The viewport will be available after OpenXR reaches the "begun" state. You can access it by calling ``get_tree().get_root().get_node("OpenXRFoveatedInsetViewport")`` at this time.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                          | process_priority          | ``99999`` (overrides :ref:`Node<class_Node_property_process_priority>`)                    |
   +------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`UpdateMode<enum_SubViewport_UpdateMode>` | render_target_update_mode | ``0`` (overrides :ref:`SubViewport<class_SubViewport_property_render_target_update_mode>`) |
   +------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
