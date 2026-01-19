:github_url: hide

.. _class_PinJoint2D:

PinJoint2D
==========

**Hereda:** :ref:`Joint2D<class_Joint2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una articulación física que une dos cuerpos físicos 2D en un solo punto, permitiéndoles rotar libremente.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una articulación física que une dos cuerpos físicos 2D en un solo punto, permitiéndoles rotar libremente. Por ejemplo, un :ref:`RigidBody2D<class_RigidBody2D>` puede ser unido a un :ref:`StaticBody2D<class_StaticBody2D>` para crear un péndulo o un balancín.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit_enabled<class_PinJoint2D_property_angular_limit_enabled>` | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_lower<class_PinJoint2D_property_angular_limit_lower>`     | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_upper<class_PinJoint2D_property_angular_limit_upper>`     | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`motor_enabled<class_PinJoint2D_property_motor_enabled>`                 | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`motor_target_velocity<class_PinJoint2D_property_motor_target_velocity>` | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`softness<class_PinJoint2D_property_softness>`                           | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PinJoint2D_property_angular_limit_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_enabled** = ``false`` :ref:`🔗<class_PinJoint2D_property_angular_limit_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_angular_limit_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_angular_limit_enabled**\ (\ )

Si es ``true``, se aplican la rotación máxima y mínima del pivote, definidas por :ref:`angular_limit_lower<class_PinJoint2D_property_angular_limit_lower>` y :ref:`angular_limit_upper<class_PinJoint2D_property_angular_limit_upper>`.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_angular_limit_lower:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_lower** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_angular_limit_lower>`

.. rst-class:: classref-property-setget

- |void| **set_angular_limit_lower**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_limit_lower**\ (\ )

La rotación mínima. Solo está activa si :ref:`angular_limit_enabled<class_PinJoint2D_property_angular_limit_enabled>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_angular_limit_upper:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_upper** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_angular_limit_upper>`

.. rst-class:: classref-property-setget

- |void| **set_angular_limit_upper**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_limit_upper**\ (\ )

La rotación máxima. Solo está activa si :ref:`angular_limit_enabled<class_PinJoint2D_property_angular_limit_enabled>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_motor_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **motor_enabled** = ``false`` :ref:`🔗<class_PinJoint2D_property_motor_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_motor_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_motor_enabled**\ (\ )

When activated, a motor turns the pin.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_motor_target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **motor_target_velocity** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_motor_target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_motor_target_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_motor_target_velocity**\ (\ )

Velocidad objetivo para el motor. En radianes por segundo.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **softness** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_softness>`

.. rst-class:: classref-property-setget

- |void| **set_softness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_softness**\ (\ )

Cuanto más alto es este valor, más se puede flexionar el vínculo con el compañero clavado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
