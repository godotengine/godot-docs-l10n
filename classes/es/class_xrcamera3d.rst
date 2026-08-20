:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**Hereda:** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo de cámara que se posiciona automáticamente basándose en datos de rastreo XR.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un nodo de cámara que se posiciona automáticamente según los datos de rastreo XR.

A diferencia de :ref:`XRController3D<class_XRController3D>`, el hilo de renderizado tiene acceso a datos de seguimiento más actualizados, por lo que la ubicación del nodo **XRCamera3D** puede presentar un ligero desfase (de unos pocos milisegundos) respecto a la utilizada para el renderizado.

\ **Nota:** Si :ref:`Viewport.use_xr<class_Viewport_property_use_xr>` es ``true``, la mayoría de las propiedades de la cámara son reemplazadas por la :ref:`XRInterface<class_XRInterface>` activa. Las únicas propiedades fiables son los planos cercano y lejano.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
