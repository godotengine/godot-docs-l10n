:github_url: hide

.. _class_ConeTwistJoint3D:

ConeTwistJoint3D
================

**Hereda:** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una unión física que conecta dos cuerpos físicos 3D de forma que simula una articulación de rótula (ball-and-socket).

.. rst-class:: classref-introduction-group

Descripción
----------------------

A physics joint that connects two 3D physics bodies in a way that simulates a ball-and-socket joint. The twist axis is initiated as the X axis of the **ConeTwistJoint3D**. Once the physics bodies swing, the twist axis is calculated as the middle of the X axes of the joint in the local space of the two physics bodies. Useful for limbs like shoulders and hips, lamps hanging off a ceiling, etc.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`bias<class_ConeTwistJoint3D_property_bias>`             | ``0.3``       |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`relaxation<class_ConeTwistJoint3D_property_relaxation>` | ``1.0``       |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`softness<class_ConeTwistJoint3D_property_softness>`     | ``0.8``       |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`swing_span<class_ConeTwistJoint3D_property_swing_span>` | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`twist_span<class_ConeTwistJoint3D_property_twist_span>` | ``3.1415927`` |
   +---------------------------+---------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_ConeTwistJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_ConeTwistJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_ConeTwistJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_ConeTwistJoint3D_Param>`

.. _class_ConeTwistJoint3D_constant_PARAM_SWING_SPAN:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_SWING_SPAN** = ``0``

Swing is rotation from side to side, around the axis perpendicular to the twist axis.

The swing span defines, how much rotation will not get corrected along the swing axis.

Could be defined as looseness in the **ConeTwistJoint3D**.

If below 0.05, this behavior is locked.

.. _class_ConeTwistJoint3D_constant_PARAM_TWIST_SPAN:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_TWIST_SPAN** = ``1``

La torsión es la rotación alrededor del eje de la torsión, este valor definió cuán lejos puede torcerse la articulación.

La torsión se bloquea si está por debajo de 0,05.

.. _class_ConeTwistJoint3D_constant_PARAM_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_BIAS** = ``2``

La velocidad con la que se producirá la oscilación o la torsión.

Cuanto más alto, más rápido.

.. _class_ConeTwistJoint3D_constant_PARAM_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_SOFTNESS** = ``3``

La facilidad con la que la articulación comienza a girar. Si es demasiado baja, se necesita más fuerza para empezar a torcer la articulación.

.. _class_ConeTwistJoint3D_constant_PARAM_RELAXATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_RELAXATION** = ``4``

Define cuán rápido se sincroniza la diferencia de velocidad de giro en ambos lados.

.. _class_ConeTwistJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_MAX** = ``5``

Representa el tamaño del enum :ref:`Param<enum_ConeTwistJoint3D_Param>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ConeTwistJoint3D_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.3`` :ref:`🔗<class_ConeTwistJoint3D_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

La velocidad con la que se producirá la oscilación o la torsión.

Cuanto más alto, más rápido.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **relaxation** = ``1.0`` :ref:`🔗<class_ConeTwistJoint3D_property_relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

Define cuán rápido se sincroniza la diferencia de velocidad de giro en ambos lados.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **softness** = ``0.8`` :ref:`🔗<class_ConeTwistJoint3D_property_softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

La facilidad con la que la articulación comienza a girar. Si es demasiado baja, se necesita más fuerza para empezar a torcer la articulación.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_swing_span:

.. rst-class:: classref-property

:ref:`float<class_float>` **swing_span** = ``0.7853982`` :ref:`🔗<class_ConeTwistJoint3D_property_swing_span>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

Swing is rotation from side to side, around the axis perpendicular to the twist axis.

The swing span defines, how much rotation will not get corrected along the swing axis.

Could be defined as looseness in the **ConeTwistJoint3D**.

If below 0.05, this behavior is locked.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_twist_span:

.. rst-class:: classref-property

:ref:`float<class_float>` **twist_span** = ``3.1415927`` :ref:`🔗<class_ConeTwistJoint3D_property_twist_span>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

La torsión es la rotación alrededor del eje de la torsión, este valor definió cuán lejos puede torcerse la articulación.

La torsión se bloquea si está por debajo de 0,05.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ConeTwistJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const| :ref:`🔗<class_ConeTwistJoint3D_method_get_param>`

Devuelve el valor del parámetro especificado.

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConeTwistJoint3D_method_set_param>`

Establece el valor del parámetro especificado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
