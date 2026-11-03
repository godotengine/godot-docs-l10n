:github_url: hide

.. _class_VehicleWheel3D:

VehicleWheel3D
==============

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un cuerpo físico 3D para un :ref:`VehicleBody3D<class_VehicleBody3D>` que simula el comportamiento de una rueda.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un nodo usado como hijo de un padre :ref:`VehicleBody3D<class_VehicleBody3D>` para simular el comportamiento de una de sus ruedas. Este nodo también actúa como un colisionador para detectar si la rueda está tocando una superficie.

\ **Nota:** Esta clase tiene problemas conocidos y no está diseñada para proporcionar una física de vehículos 3D realista. Si quieres una física de vehículos avanzada, puede que tengas que escribir tu propia integración de física usando otra clase :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Ciudad de Camioness en 3D <https://store.godotengine.org/asset/godot-foundation/truck-town-demo/>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`brake<class_VehicleWheel3D_property_brake>`                               | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>`   | ``0.83``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`damping_relaxation<class_VehicleWheel3D_property_damping_relaxation>`     | ``0.88``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`engine_force<class_VehicleWheel3D_property_engine_force>`                 | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                      | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`steering<class_VehicleWheel3D_property_steering>`                         | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_max_force<class_VehicleWheel3D_property_suspension_max_force>` | ``6000.0``                                                                    |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_stiffness<class_VehicleWheel3D_property_suspension_stiffness>` | ``5.88``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_travel<class_VehicleWheel3D_property_suspension_travel>`       | ``0.2``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_as_steering<class_VehicleWheel3D_property_use_as_steering>`           | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_as_traction<class_VehicleWheel3D_property_use_as_traction>`           | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_friction_slip<class_VehicleWheel3D_property_wheel_friction_slip>`   | ``10.5``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_radius<class_VehicleWheel3D_property_wheel_radius>`                 | ``0.5``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_rest_length<class_VehicleWheel3D_property_wheel_rest_length>`       | ``0.15``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_roll_influence<class_VehicleWheel3D_property_wheel_roll_influence>` | ``0.1``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`   | :ref:`get_contact_body<class_VehicleWheel3D_method_get_contact_body>`\ (\ ) |const|     |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_contact_normal<class_VehicleWheel3D_method_get_contact_normal>`\ (\ ) |const| |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_contact_point<class_VehicleWheel3D_method_get_contact_point>`\ (\ ) |const|   |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_rpm<class_VehicleWheel3D_method_get_rpm>`\ (\ ) |const|                       |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_skidinfo<class_VehicleWheel3D_method_get_skidinfo>`\ (\ ) |const|             |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_in_contact<class_VehicleWheel3D_method_is_in_contact>`\ (\ ) |const|           |
   +-------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VehicleWheel3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

Ralentiza la rueda aplicando una fuerza de frenado. La rueda sólo se ralentiza si está en contacto con una superficie. La fuerza que debe aplicar para desacelerar adecuadamente su vehículo depende de la :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` del vehículo. Para un vehículo con una masa fijada en 1000, intente un valor en el rango de 25 - 30 para un frenado fuerte.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_damping_compression:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_compression** = ``0.83`` :ref:`🔗<class_VehicleWheel3D_property_damping_compression>`

.. rst-class:: classref-property-setget

- |void| **set_damping_compression**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_compression**\ (\ )

La amortiguación aplicada al resorte de la suspensión cuando se comprime, es decir, cuando la rueda se mueve hacia arriba en relación al vehículo. Se mide en Newton-segundos por milímetro (N⋅s/mm), o megagramos por segundo (Mg/s). Este valor debe estar entre 0.0 (sin amortiguación) y 1.0, pero puede ser mayor. Un valor de 0.0 significa que el coche seguirá rebotando mientras el resorte mantiene su energía. Un buen valor para esto es de alrededor de 0.3 para un coche normal, y 0.5 para un coche de carreras.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_damping_relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_relaxation** = ``0.88`` :ref:`🔗<class_VehicleWheel3D_property_damping_relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_damping_relaxation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_relaxation**\ (\ )

La amortiguación aplicada al resorte de la suspensión al rebotar o extenderse, es decir, cuando la rueda se mueve hacia abajo en relación con el vehículo. Se mide en Newton-segundos por milímetro (N⋅s/mm), o megagramos por segundo (Mg/s). Este valor debe estar entre 0.0 (sin amortiguación) y 1.0, pero puede ser mayor. Este valor siempre debe ser ligeramente superior a la propiedad :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>`. Para un valor de :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>` de 0.3, intenta un valor de relajación de 0.5.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

Acelera la rueda aplicando una fuerza del motor. La rueda sólo se acelera si está en contacto con una superficie. La :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` del vehículo tiene un efecto en la aceleración del vehículo. Para un vehículo con una masa establecida en 1000, prueba un valor en el rango de 25 - 50 para la aceleración.

\ **Nota:** La simulación no tiene en cuenta el efecto de los engranajes, tendrás que añadir la lógica para esto si deseas simular los engranajes.

Un valor negativo hará que la rueda se invierta.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

El ángulo de dirección de la rueda, en radianes. Establecer este valor a uno distinto de cero hará que el vehículo gire cuando se esté moviendo.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_max_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_max_force** = ``6000.0`` :ref:`🔗<class_VehicleWheel3D_property_suspension_max_force>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_max_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_max_force**\ (\ )

La fuerza máxima que el resorte puede resistir. Este valor debe ser superior a una cuarta parte de la :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` del :ref:`VehicleBody3D<class_VehicleBody3D>` o el resorte no soportará el peso del vehículo. A menudo se obtienen buenos resultados con un valor que es aproximadamente 3× a 4× este número.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_stiffness** = ``5.88`` :ref:`🔗<class_VehicleWheel3D_property_suspension_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_stiffness**\ (\ )

La rigidez de la suspensión, medida en Newtons por milímetro (N/mm), o megagramos por segundo al cuadrado (Mg/s²). Utiliza un valor inferior a 50 para un coche todoterreno, un valor entre 50 y 100 para un coche de carreras y prueba algo alrededor de 200 para algo como un coche de Fórmula 1.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_travel:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_travel** = ``0.2`` :ref:`🔗<class_VehicleWheel3D_property_suspension_travel>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_travel**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_travel**\ (\ )

Esta es la distancia que puede recorrer la suspensión. Como las unidades Godot equivalen a metros, mantén este ajuste relativamente bajo. Prueba con un valor entre 0,1 y 0,3 dependiendo del tipo de coche.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_use_as_steering:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_as_steering** = ``false`` :ref:`🔗<class_VehicleWheel3D_property_use_as_steering>`

.. rst-class:: classref-property-setget

- |void| **set_use_as_steering**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_used_as_steering**\ (\ )

Si es ``true``, esta rueda se girará cuando el coche se dirija. Este valor se utiliza junto con :ref:`VehicleBody3D.steering<class_VehicleBody3D_property_steering>` y se ignora si estás utilizando el valor por rueda :ref:`steering<class_VehicleWheel3D_property_steering>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_use_as_traction:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_as_traction** = ``false`` :ref:`🔗<class_VehicleWheel3D_property_use_as_traction>`

.. rst-class:: classref-property-setget

- |void| **set_use_as_traction**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_used_as_traction**\ (\ )

Si es ``true``, esta rueda transfiere la fuerza del motor al suelo para impulsar el vehículo hacia adelante. Este valor se utiliza junto con :ref:`VehicleBody3D.engine_force<class_VehicleBody3D_property_engine_force>` y se ignora si estás utilizando el valor por rueda :ref:`engine_force<class_VehicleWheel3D_property_engine_force>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_friction_slip:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_friction_slip** = ``10.5`` :ref:`🔗<class_VehicleWheel3D_property_wheel_friction_slip>`

.. rst-class:: classref-property-setget

- |void| **set_friction_slip**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction_slip**\ (\ )

Esto determina cuánto agarre tiene esta rueda. Se combina con el ajuste de la fricción de la superficie con la que la rueda está en contacto. 0.0 significa que no hay agarre, 1.0 es el agarre normal. Para una configuración de coche a la deriva, intente ajustar el agarre de las ruedas traseras ligeramente más bajo que el de las ruedas delanteras, o utiliza un valor más bajo para simular el desgaste de los neumáticos.

Lo mejor es ajustarlo a 1.0 al comenzar.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_radius** = ``0.5`` :ref:`🔗<class_VehicleWheel3D_property_wheel_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

El radio de la rueda en metros.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_rest_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_rest_length** = ``0.15`` :ref:`🔗<class_VehicleWheel3D_property_wheel_rest_length>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_rest_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_rest_length**\ (\ )

Esta es la distancia en metros a la que se baja la rueda desde su punto de origen. No lo pongas a 0.0 y mueve la rueda a su posición, en su lugar mueve el punto de origen de tu rueda (el gizmo en Godot) a la posición que la rueda tomará al descender, luego usa la longitud de reposo para mover la rueda hacia abajo a la posición en la que debería estar cuando el auto esté en reposo.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_roll_influence:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_roll_influence** = ``0.1`` :ref:`🔗<class_VehicleWheel3D_property_wheel_roll_influence>`

.. rst-class:: classref-property-setget

- |void| **set_roll_influence**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_roll_influence**\ (\ )

Este valor afecta al balanceo de tu vehículo. Si se establece en 1.0 para todas las ruedas, tu vehículo resistirá el balanceo de la carrocería, mientras que un valor de 0.0 será propenso a volcar.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_VehicleWheel3D_method_get_contact_body:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_contact_body**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_body>`

Devuelve el nodo del cuerpo en contacto si es válido en el árbol, como :ref:`Node3D<class_Node3D>`. Por el momento, :ref:`GridMap<class_GridMap>` no es compatible, por lo que el nodo siempre será de tipo :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

Devuelve ``null`` si la rueda no está en contacto con una superficie, o si el cuerpo en contacto no es un :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_contact_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_normal**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_normal>`

Devuelve la normal de la colisión de la suspensión en el espacio del mundo si la rueda está en contacto. Si la rueda no está en contacto con nada, devuelve un vector que apunta directamente a lo largo del eje de la suspensión hacia el vehículo en el espacio del mundo.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_contact_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_point**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_point>`

Devuelve el punto de la colisión de la suspensión en el espacio del mundo si la rueda está en contacto. Si la rueda no está en contacto con nada, devuelve el punto máximo del raycast de la rueda en el espacio del mundo, que se define por ``wheel_rest_length + wheel_radius``.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_rpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rpm**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_rpm>`

Devuelve la velocidad de rotación de la rueda en revoluciones por minuto.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_skidinfo:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skidinfo**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_skidinfo>`

Devuelve un valor entre 0.0 y 1.0 que indica si esta rueda está patinando. 0.0 es patinar (la rueda ha perdido el agarre, por ejemplo, en un terreno helado), 1.0 significa no patinar (la rueda tiene un agarre total, por ejemplo, en una carretera de asfalto seco).

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_is_in_contact:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_contact**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_is_in_contact>`

Devuelve ``true`` si esta rueda está en contacto con una superficie.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
