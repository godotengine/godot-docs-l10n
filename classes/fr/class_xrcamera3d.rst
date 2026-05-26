:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**Hérite de :** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A camera node which automatically positions itself based on XR tracking data.

.. rst-class:: classref-introduction-group

Description
-----------

A camera node which automatically positions itself based on XR tracking data.

In contrast to :ref:`XRController3D<class_XRController3D>`, the render thread has access to more up-to-date tracking data, and the location of the **XRCamera3D** node can lag a few milliseconds behind what is used for rendering.

\ **Note:** If :ref:`Viewport.use_xr<class_Viewport_property_use_xr>` is ``true``, most of the camera properties are overridden by the active :ref:`XRInterface<class_XRInterface>`. The only properties that can be trusted are the near and far planes.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur la XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
