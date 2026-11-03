:github_url: hide

.. _class_VehicleBody3D:

VehicleBody3D
=============

**Hereda:** :ref:`RigidBody3D<class_RigidBody3D>` **<** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un cuerpo de física 3D que simula el comportamiento de un automóvil.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este cuerpo físico implementa toda la lógica física necesaria para simular un automóvil. Se basa en el sistema de vehículos de raycast que se encuentra comúnmente en los motores de física. Además de un :ref:`CollisionShape3D<class_CollisionShape3D>` para el cuerpo principal del vehículo, también debes agregar un nodo :ref:`VehicleWheel3D<class_VehicleWheel3D>` para cada rueda. También debes agregar un :ref:`MeshInstance3D<class_MeshInstance3D>` a este nodo para el modelo 3D del vehículo, pero este modelo generalmente no debe incluir mallas para las ruedas. Puedes controlar el vehículo usando las propiedades :ref:`brake<class_VehicleBody3D_property_brake>`, :ref:`engine_force<class_VehicleBody3D_property_engine_force>` y :ref:`steering<class_VehicleBody3D_property_steering>`. La posición u orientación de este nodo no debe cambiarse directamente.

\ **Nota:** El frente local para este nodo es :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`.

\ **Nota:** El punto de origen de tu VehicleBody3D determinará el centro de gravedad de tu vehículo. Para hacer que el vehículo esté más conectado a tierra, el punto de origen generalmente se mantiene bajo, moviendo el :ref:`CollisionShape3D<class_CollisionShape3D>` y el :ref:`MeshInstance3D<class_MeshInstance3D>` hacia arriba.

\ **Nota:** Esta clase tiene problemas conocidos y no está diseñada para proporcionar una física de vehículos 3D realista. Si deseas una física de vehículos avanzada, es posible que tengas que escribir tu propia integración de física utilizando :ref:`CharacterBody3D<class_CharacterBody3D>` o :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Introducción a la física <../tutorials/physics/physics_introduction>`

- :doc:`Solución de problemas de física <../tutorials/physics/troubleshooting_physics_issues>`

- `Demo de Ciudad de Camioness en 3D <https://store.godotengine.org/asset/godot-foundation/truck-town-demo/>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`brake<class_VehicleBody3D_property_brake>`               | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`engine_force<class_VehicleBody3D_property_engine_force>` | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | mass                                                           | ``40.0`` (overrides :ref:`RigidBody3D<class_RigidBody3D_property_mass>`) |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`steering<class_VehicleBody3D_property_steering>`         | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VehicleBody3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

Disminuye la velocidad del vehículo aplicando una fuerza de frenado. El vehículo solo se ralentiza si las ruedas están en contacto con una superficie. La fuerza que necesitas aplicar para ralentizar adecuadamente tu vehículo depende de la :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` del vehículo. Para un vehículo con una masa establecida en 1000, prueba un valor en el rango de 25 a 30 para un frenado brusco.

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

Acelera el vehículo aplicando una fuerza del motor. El vehículo solo se acelera si las ruedas que tienen :ref:`VehicleWheel3D.use_as_traction<class_VehicleWheel3D_property_use_as_traction>` establecido en ``true`` están en contacto con una superficie. La :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` del vehículo tiene un efecto en la aceleración del vehículo. Para un vehículo con una masa establecida en 1000, prueba un valor en el rango de 25 a 50 para la aceleración.

\ **Nota:** La simulación no tiene en cuenta el efecto de los engranajes, tendrás que añadir lógica para esto si deseas simular engranajes.

Un valor negativo hará que el vehículo retroceda.

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

El ángulo de dirección del vehículo. Establecer este valor a uno distinto de cero hará que el vehículo gire cuando se esté moviendo. Las ruedas que tienen :ref:`VehicleWheel3D.use_as_steering<class_VehicleWheel3D_property_use_as_steering>` establecido a ``true`` se rotarán automáticamente.

\ **Nota:** Esta propiedad se edita en el inspector en grados. En el código, la propiedad se establece en radianes.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
