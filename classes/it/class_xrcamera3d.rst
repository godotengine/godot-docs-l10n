:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**Eredita:** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo telecamera che si posiziona automaticamente in base ai dati di tracciamento XR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A camera node which automatically positions itself based on XR tracking data.

\ **Note:** Due to the nature of headsets, camera positioning needs to update every frame even when your game is paused. :ref:`Node.process_mode<class_Node_property_process_mode>` must be set to :ref:`Node.PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_XRCamera3D_property_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tracker** = ``&"head"`` :ref:`🔗<class_XRCamera3D_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker**\ (\ )

The name of the camera tracker we're bound to. Which trackers are available is not known during design time.

The default tracker refers to the HMD position of the main player. Consult the documentation of the :ref:`XRInterface<class_XRInterface>` for any additional trackers. There may be additional tracked headsets for multiplayer systems or a tracker may be available for a physical camera in a mixed reality scenario.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
