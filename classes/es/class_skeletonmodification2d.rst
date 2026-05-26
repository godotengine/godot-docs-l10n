:github_url: hide

.. _class_SkeletonModification2D:

SkeletonModification2D
======================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`SkeletonModification2DCCDIK<class_SkeletonModification2DCCDIK>`, :ref:`SkeletonModification2DFABRIK<class_SkeletonModification2DFABRIK>`, :ref:`SkeletonModification2DJiggle<class_SkeletonModification2DJiggle>`, :ref:`SkeletonModification2DLookAt<class_SkeletonModification2DLookAt>`, :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>`, :ref:`SkeletonModification2DStackHolder<class_SkeletonModification2DStackHolder>`, :ref:`SkeletonModification2DTwoBoneIK<class_SkeletonModification2DTwoBoneIK>`

Clase base para los recursos que operan sobre :ref:`Bone2D<class_Bone2D>`\ s en un :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este recurso proporciona una interfaz que puede ser expandida para que el código que opera en nodos :ref:`Bone2D<class_Bone2D>` en un :ref:`Skeleton2D<class_Skeleton2D>` pueda ser mezclado y combinado para crear interacciones complejas.

Esto es usado para proveer a Godot con una solución de Cinemática Inversa flexible y poderosa que puede ser adaptada para muchos usos diferentes.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`enabled<class_SkeletonModification2D_property_enabled>`               | ``true`` |
   +-------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`execution_mode<class_SkeletonModification2D_property_execution_mode>` | ``0``    |
   +-------------------------+-----------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_draw_editor_gizmo<class_SkeletonModification2D_private_method__draw_editor_gizmo>`\ (\ ) |virtual|                                                                                                        |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_execute<class_SkeletonModification2D_private_method__execute>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                                                                         |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`_setup_modification<class_SkeletonModification2D_private_method__setup_modification>`\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |virtual|          |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`clamp_angle<class_SkeletonModification2D_method_clamp_angle>`\ (\ angle\: :ref:`float<class_float>`, min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, invert\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_editor_draw_gizmo<class_SkeletonModification2D_method_get_editor_draw_gizmo>`\ (\ ) |const|                                                                                                            |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`get_is_setup<class_SkeletonModification2D_method_get_is_setup>`\ (\ ) |const|                                                                                                                              |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_modification_stack<class_SkeletonModification2D_method_get_modification_stack>`\ (\ )                                                                                                                  |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_editor_draw_gizmo<class_SkeletonModification2D_method_set_editor_draw_gizmo>`\ (\ draw_gizmo\: :ref:`bool<class_bool>`\ )                                                                              |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_is_setup<class_SkeletonModification2D_method_set_is_setup>`\ (\ is_setup\: :ref:`bool<class_bool>`\ )                                                                                                  |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SkeletonModification2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_SkeletonModification2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

Si es ``true``, la función :ref:`_execute()<class_SkeletonModification2D_private_method__execute>` de la modificación será llamada por :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_property_execution_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **execution_mode** = ``0`` :ref:`🔗<class_SkeletonModification2D_property_execution_mode>`

.. rst-class:: classref-property-setget

- |void| **set_execution_mode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_execution_mode**\ (\ )

El modo de ejecución para la modificación. Esto le dice a la pila de modificaciones cuándo ejecutar la modificación. Algunas modificaciones tienen ajustes que solo están disponibles en ciertos modos de ejecución.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SkeletonModification2D_private_method__draw_editor_gizmo:

.. rst-class:: classref-method

|void| **_draw_editor_gizmo**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__draw_editor_gizmo>`

Usado para dibujar gizmos de modificación **solo para el editor**. Esta función solo será llamada en el editor de Godot y puede ser sobreescrita para dibujar gizmos personalizados.

\ **Nota:** Necesitarás usar el Skeleton2D de :ref:`SkeletonModificationStack2D.get_skeleton()<class_SkeletonModificationStack2D_method_get_skeleton>` y sus funciones de dibujo, ya que el recurso **SkeletonModification2D** no puede dibujar por sí solo.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_private_method__execute:

.. rst-class:: classref-method

|void| **_execute**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__execute>`

Ejecuta la modificación dada. Aquí es donde la modificación realiza cualquier función para la que esté diseñada.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_private_method__setup_modification:

.. rst-class:: classref-method

|void| **_setup_modification**\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |virtual| :ref:`🔗<class_SkeletonModification2D_private_method__setup_modification>`

Se llama cuando se configura la modificación. Aquí es donde la modificación realiza la inicialización.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_clamp_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **clamp_angle**\ (\ angle\: :ref:`float<class_float>`, min\: :ref:`float<class_float>`, max\: :ref:`float<class_float>`, invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_clamp_angle>`

Toma un ángulo y lo limita para que esté dentro del rango ``min`` y ``max`` pasados. ``invert`` invertirá la limitación del ángulo, limitándolo al rango fuera de los límites dados.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_editor_draw_gizmo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_editor_draw_gizmo**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2D_method_get_editor_draw_gizmo>`

Devuelve si esta modificación llamará a :ref:`_draw_editor_gizmo()<class_SkeletonModification2D_private_method__draw_editor_gizmo>` en el editor de Godot para dibujar gizmos específicos de la modificación.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_is_setup:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_setup**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2D_method_get_is_setup>`

Devuelve si esta modificación se ha configurado correctamente o no.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_get_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_modification_stack**\ (\ ) :ref:`🔗<class_SkeletonModification2D_method_get_modification_stack>`

Devuelve la :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` a la que está vinculada esta modificación. A través de la pila de modificación, puedes acceder al Skeleton2D en el que está operando la modificación.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_set_editor_draw_gizmo:

.. rst-class:: classref-method

|void| **set_editor_draw_gizmo**\ (\ draw_gizmo\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_set_editor_draw_gizmo>`

Establece si esta modificación llamará a :ref:`_draw_editor_gizmo()<class_SkeletonModification2D_private_method__draw_editor_gizmo>` en el editor de Godot para dibujar gizmos específicos de la modificación.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2D_method_set_is_setup:

.. rst-class:: classref-method

|void| **set_is_setup**\ (\ is_setup\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2D_method_set_is_setup>`

Te permite establecer manualmente el estado de configuración de la modificación. Esta función solo debe usarse en raras ocasiones, ya que el :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` al que está vinculada la modificación debería encargarse de configurarla.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
