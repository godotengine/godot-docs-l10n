:github_url: hide

.. _class_HingeJoint3D:

HingeJoint3D
============

**Hereda:** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una unión física que restringe la rotación de un cuerpo físico 3D alrededor de un eje con respecto a otro cuerpo físico.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una unión física que restringe la rotación de un cuerpo físico 3D alrededor de un eje con respecto a otro cuerpo físico. Por ejemplo, el Cuerpo A puede ser un :ref:`StaticBody3D<class_StaticBody3D>` que representa la bisagra de una puerta alrededor de la cual gira un :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/bias<class_HingeJoint3D_property_angular_limit/bias>`             | ``0.3``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>`         | ``false``      |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/lower<class_HingeJoint3D_property_angular_limit/lower>`           | ``-1.5707964`` |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/relaxation<class_HingeJoint3D_property_angular_limit/relaxation>` | ``1.0``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/softness<class_HingeJoint3D_property_angular_limit/softness>`     | ``0.9``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/upper<class_HingeJoint3D_property_angular_limit/upper>`           | ``1.5707964``  |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`bool<class_bool>`   | :ref:`motor/enable<class_HingeJoint3D_property_motor/enable>`                         | ``false``      |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`motor/max_impulse<class_HingeJoint3D_property_motor/max_impulse>`               | ``1.0``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`motor/target_velocity<class_HingeJoint3D_property_motor/target_velocity>`       | ``1.0``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`params/bias<class_HingeJoint3D_property_params/bias>`                           | ``0.3``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_flag<class_HingeJoint3D_method_get_flag>`\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const|                                 |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_HingeJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_flag<class_HingeJoint3D_method_set_flag>`\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ )      |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_HingeJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_HingeJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_HingeJoint3D_Param>`

.. _class_HingeJoint3D_constant_PARAM_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_BIAS** = ``0``

La velocidad con la que los dos cuerpos se juntan cuando se mueven en diferentes direcciones.

.. _class_HingeJoint3D_constant_PARAM_LIMIT_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_UPPER** = ``1``

La rotación máxima. Solo está activa si :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>` es ``true``.

.. _class_HingeJoint3D_constant_PARAM_LIMIT_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_LOWER** = ``2``

La rotación mínima. Solo está activa si :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>` es ``true``.

.. _class_HingeJoint3D_constant_PARAM_LIMIT_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_BIAS** = ``3``

La velocidad con la que se corrige la rotación a través del eje perpendicular a la bisagra.

.. _class_HingeJoint3D_constant_PARAM_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_SOFTNESS** = ``4``

**Obsoleto:** This property is never used by the engine and is kept for compatibility purpose.



.. _class_HingeJoint3D_constant_PARAM_LIMIT_RELAXATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_RELAXATION** = ``5``

Cuanto más bajo es este valor, más se ralentiza la rotación.

.. _class_HingeJoint3D_constant_PARAM_MOTOR_TARGET_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_MOTOR_TARGET_VELOCITY** = ``6``

Velocidad objetivo para el motor.

.. _class_HingeJoint3D_constant_PARAM_MOTOR_MAX_IMPULSE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_MOTOR_MAX_IMPULSE** = ``7``

Aceleración máxima para el motor.

.. _class_HingeJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_MAX** = ``8``

Representa el tamaño del enum :ref:`Param<enum_HingeJoint3D_Param>`.

.. rst-class:: classref-item-separator

----

.. _enum_HingeJoint3D_Flag:

.. rst-class:: classref-enumeration

enum **Flag**: :ref:`🔗<enum_HingeJoint3D_Flag>`

.. _class_HingeJoint3D_constant_FLAG_USE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_HingeJoint3D_Flag>` **FLAG_USE_LIMIT** = ``0``

Si es ``true``, la rotación máxima y mínima de las bisagras, definida por :ref:`angular_limit/lower<class_HingeJoint3D_property_angular_limit/lower>` y :ref:`angular_limit/upper<class_HingeJoint3D_property_angular_limit/upper>` tiene efectos.

.. _class_HingeJoint3D_constant_FLAG_ENABLE_MOTOR:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_HingeJoint3D_Flag>` **FLAG_ENABLE_MOTOR** = ``1``

Cuando se activa, un motor gira la bisagra.

.. _class_HingeJoint3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_HingeJoint3D_Flag>` **FLAG_MAX** = ``2``

Representa el tamaño del enum :ref:`Flag<enum_HingeJoint3D_Flag>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_HingeJoint3D_property_angular_limit/bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/bias** = ``0.3`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

La velocidad con la que se corrige la rotación a través del eje perpendicular a la bisagra.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit/enable** = ``false`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/enable>`

.. rst-class:: classref-property-setget

- |void| **set_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const|

Si es ``true``, la rotación máxima y mínima de las bisagras, definida por :ref:`angular_limit/lower<class_HingeJoint3D_property_angular_limit/lower>` y :ref:`angular_limit/upper<class_HingeJoint3D_property_angular_limit/upper>` tiene efectos.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/lower:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/lower** = ``-1.5707964`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/lower>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

La rotación mínima. Solo está activa si :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/relaxation** = ``1.0`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Cuanto más bajo es este valor, más se ralentiza la rotación.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/softness** = ``0.9`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

**Obsoleto:** This property is never set by the engine and is kept for compatibility purposes.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/upper:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/upper** = ``1.5707964`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/upper>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

La rotación máxima. Solo está activa si :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_motor/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **motor/enable** = ``false`` :ref:`🔗<class_HingeJoint3D_property_motor/enable>`

.. rst-class:: classref-property-setget

- |void| **set_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const|

Cuando se activa, un motor gira la bisagra.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_motor/max_impulse:

.. rst-class:: classref-property

:ref:`float<class_float>` **motor/max_impulse** = ``1.0`` :ref:`🔗<class_HingeJoint3D_property_motor/max_impulse>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Aceleración máxima para el motor.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_motor/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **motor/target_velocity** = ``1.0`` :ref:`🔗<class_HingeJoint3D_property_motor/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Velocidad objetivo para el motor.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_params/bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/bias** = ``0.3`` :ref:`🔗<class_HingeJoint3D_property_params/bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

La velocidad con la que los dos cuerpos se juntan cuando se mueven en diferentes direcciones.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_HingeJoint3D_method_get_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const| :ref:`🔗<class_HingeJoint3D_method_get_flag>`

Devuelve el valor de la flag especificada.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const| :ref:`🔗<class_HingeJoint3D_method_get_param>`

Devuelve el valor del parámetro especificado.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_method_set_flag:

.. rst-class:: classref-method

|void| **set_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_HingeJoint3D_method_set_flag>`

Si es ``true``, activa la flag especificada.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_HingeJoint3D_method_set_param>`

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
