:github_url: hide

.. _class_OpenXRFoveatedInsetViewport:

OpenXRFoveatedInsetViewport
===========================

**Hérite de :** :ref:`SubViewport<class_SubViewport>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

This viewport is used for rendering our foveated inset.

.. rst-class:: classref-introduction-group

Description
-----------

This viewport is used for rendering our foveated inset. When foveated inset rendering is supported OpenXR will create and configure this viewport correctly and use its output. The viewport will be available after OpenXR reaches the "begun" state. You can access it by calling ``get_tree().get_root().get_node("OpenXRFoveatedInsetViewport")`` at this time.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                          | process_priority          | ``99999`` (overrides :ref:`Node<class_Node_property_process_priority>`)                    |
   +------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`UpdateMode<enum_SubViewport_UpdateMode>` | render_target_update_mode | ``0`` (overrides :ref:`SubViewport<class_SubViewport_property_render_target_update_mode>`) |
   +------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Descriptions des méthodes
--------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
