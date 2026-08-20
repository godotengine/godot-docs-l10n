:github_url: hide

.. _class_SliderJoint3D:

SliderJoint3D
=============

**Eredita:** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un giunto fisico che limita il movimento di un corpo fisico 3D lungo un asse rispetto a un altro corpo fisico.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un giunto fisico che limita il movimento di un corpo fisico 3D lungo un asse rispetto a un altro corpo fisico. Ad esempio, il corpo A potrebbe essere uno :ref:`StaticBody2D<class_StaticBody2D>` che rappresenta la base di un pistone, mentre il corpo B potrebbe essere un :ref:`RigidBody2D<class_RigidBody2D>` che rappresenta la testa del pistone, muovendosi verso l'alto e verso il basso.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/damping<class_SliderJoint3D_property_angular_limit/damping>`             | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/lower_angle<class_SliderJoint3D_property_angular_limit/lower_angle>`     | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/restitution<class_SliderJoint3D_property_angular_limit/restitution>`     | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/softness<class_SliderJoint3D_property_angular_limit/softness>`           | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/upper_angle<class_SliderJoint3D_property_angular_limit/upper_angle>`     | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_motion/damping<class_SliderJoint3D_property_angular_motion/damping>`           | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_motion/restitution<class_SliderJoint3D_property_angular_motion/restitution>`   | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_motion/softness<class_SliderJoint3D_property_angular_motion/softness>`         | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_ortho/damping<class_SliderJoint3D_property_angular_ortho/damping>`             | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_ortho/restitution<class_SliderJoint3D_property_angular_ortho/restitution>`     | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_ortho/softness<class_SliderJoint3D_property_angular_ortho/softness>`           | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/damping<class_SliderJoint3D_property_linear_limit/damping>`               | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/lower_distance<class_SliderJoint3D_property_linear_limit/lower_distance>` | ``-1.0`` |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/restitution<class_SliderJoint3D_property_linear_limit/restitution>`       | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/softness<class_SliderJoint3D_property_linear_limit/softness>`             | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/upper_distance<class_SliderJoint3D_property_linear_limit/upper_distance>` | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_motion/damping<class_SliderJoint3D_property_linear_motion/damping>`             | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_motion/restitution<class_SliderJoint3D_property_linear_motion/restitution>`     | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_motion/softness<class_SliderJoint3D_property_linear_motion/softness>`           | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_ortho/damping<class_SliderJoint3D_property_linear_ortho/damping>`               | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_ortho/restitution<class_SliderJoint3D_property_linear_ortho/restitution>`       | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_ortho/softness<class_SliderJoint3D_property_linear_ortho/softness>`             | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_SliderJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_SliderJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_SliderJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_SliderJoint3D_Param>`

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_UPPER** = ``0``

Costante per accedere a :ref:`linear_limit/upper_distance<class_SliderJoint3D_property_linear_limit/upper_distance>`. La differenza massima tra i punti di rotazione sul loro asse X prima che avviene lo smorzamento.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_LOWER** = ``1``

Costante per accedere a :ref:`linear_limit/lower_distance<class_SliderJoint3D_property_linear_limit/lower_distance>`. La differenza minima tra i punti di rotazione sul loro asse X prima che avviene lo smorzamento.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_SOFTNESS** = ``2``

Costante per accedere a :ref:`linear_limit/softness<class_SliderJoint3D_property_linear_limit/softness>`. Un fattore applicato al movimento attraverso l'asse dello slider una volta superati i limiti. Più è basso, più lento è il movimento.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_RESTITUTION** = ``3``

Costante per accedere a :ref:`linear_limit/restitution<class_SliderJoint3D_property_linear_limit/restitution>`. La quantità di restituzione una volta superati i limiti. Più è basso, più energia-velocità viene persa.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_DAMPING** = ``4``

Costante per accedere a :ref:`linear_limit/damping<class_SliderJoint3D_property_linear_limit/damping>`. La quantità di smorzamento una volta superati i limiti dello slider.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_MOTION_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_MOTION_SOFTNESS** = ``5``

Costante per accedere a :ref:`linear_motion/softness<class_SliderJoint3D_property_linear_motion/softness>`. Un fattore applicato al movimento lungo l'asse dello slider finché il cursore è nei limiti. Più è basso, più lento è il movimento.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_MOTION_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_MOTION_RESTITUTION** = ``6``

Costante per accedere a :ref:`linear_motion/restitution<class_SliderJoint3D_property_linear_motion/restitution>`. La quantità di restituzione entro i limiti dello slider.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_MOTION_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_MOTION_DAMPING** = ``7``

Costante per accedere a :ref:`linear_motion/damping<class_SliderJoint3D_property_linear_motion/damping>`. La quantità di smorzamento entro i limiti dello slider.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_ORTHOGONAL_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_ORTHOGONAL_SOFTNESS** = ``8``

Costante per accedere a :ref:`linear_ortho/softness<class_SliderJoint3D_property_linear_ortho/softness>`. Un fattore applicato al movimento lungo gli assi ortogonali allo slider.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_ORTHOGONAL_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_ORTHOGONAL_RESTITUTION** = ``9``

Costante per accedere a :ref:`linear_motion/restitution<class_SliderJoint3D_property_linear_motion/restitution>`. La quantità di restituzione quando il movimento avviene lungo gli assi ortogonali allo slider.

.. _class_SliderJoint3D_constant_PARAM_LINEAR_ORTHOGONAL_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_ORTHOGONAL_DAMPING** = ``10``

Costante per accedere a :ref:`linear_motion/damping<class_SliderJoint3D_property_linear_motion/damping>`. La quantità di smorzamento quando il movimento avviene lungo gli assi ortogonali allo slider.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_UPPER** = ``11``

Costante per accedere a :ref:`angular_limit/upper_angle<class_SliderJoint3D_property_angular_limit/upper_angle>`. Il limite superiore di rotazione nello slider.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_LOWER** = ``12``

Costante per accedere a :ref:`angular_limit/lower_angle<class_SliderJoint3D_property_angular_limit/lower_angle>`. Il limite inferiore di rotazione nello slider.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_SOFTNESS** = ``13``

Costante per accedere a :ref:`angular_limit/softness<class_SliderJoint3D_property_angular_limit/softness>`. Un fattore applicato a tutta la rotazione una volta superato il limite.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_RESTITUTION** = ``14``

Costante per accedere a :ref:`angular_limit/restitution<class_SliderJoint3D_property_angular_limit/restitution>`. La quantità di restituzione della rotazione quando il limite viene superato.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_DAMPING** = ``15``

Costante per accedere a :ref:`angular_limit/damping<class_SliderJoint3D_property_angular_limit/damping>`. La quantità di smorzamento della rotazione quando il limite viene superato.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_MOTION_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_MOTION_SOFTNESS** = ``16``

Costante per accedere a :ref:`angular_motion/softness<class_SliderJoint3D_property_angular_motion/softness>`. Un fattore applicato a tutta la rotazione nei limiti.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_MOTION_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_MOTION_RESTITUTION** = ``17``

Costante per accedere a :ref:`angular_motion/restitution<class_SliderJoint3D_property_angular_motion/restitution>`. La quantità di restituzione della rotazione nei limiti.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_MOTION_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_MOTION_DAMPING** = ``18``

Costante per accedere a :ref:`angular_motion/damping<class_SliderJoint3D_property_angular_motion/damping>`. La quantità di smorzamento della rotazione nei limiti.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_ORTHOGONAL_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_ORTHOGONAL_SOFTNESS** = ``19``

Costante per accedere a :ref:`angular_ortho/softness<class_SliderJoint3D_property_angular_ortho/softness>`. Un fattore applicato a tutta la rotazione lungo gli assi ortogonali allo slider.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_ORTHOGONAL_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_ORTHOGONAL_RESTITUTION** = ``20``

Costante per accedere a :ref:`angular_ortho/restitution<class_SliderJoint3D_property_angular_ortho/restitution>`. La quantità di restituzione della rotazione lungo gli assi ortogonali allo slider.

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_ORTHOGONAL_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_ORTHOGONAL_DAMPING** = ``21``

Costante per accedere a :ref:`angular_ortho/damping<class_SliderJoint3D_property_angular_ortho/damping>`. La quantità di smorzamento della rotazione lungo gli assi ortogonali allo slider.

.. _class_SliderJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_MAX** = ``22``

Rappresenta la dimensione dell'enumerazione :ref:`Param<enum_SliderJoint3D_Param>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SliderJoint3D_property_angular_limit/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/damping** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La quantità di smorzamento della rotazione quando il limite viene superato.

Un valore di smorzamento inferiore consente alla rotazione avviata dal corpo A di raggiungere il corpo B più lentamente.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/lower_angle** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Il limite inferiore di rotazione nello slider.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La quantità di restituzione della rotazione quando il limite viene superato.

Non influisce sullo smorzamento.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Un fattore applicato a tutta la rotazione una volta superato il limite.

Rende più lenta tutta la rotazione tra 0 e 1.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/upper_angle** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Il limite superiore di rotazione nello slider.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_motion/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motion/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_motion/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La quantità di smorzamento della rotazione nei limiti.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_motion/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motion/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_angular_motion/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La quantità di restituzione della rotazione nei limiti.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_motion/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motion/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_motion/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Un fattore applicato a tutta la rotazione una volta superato il limite.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_ortho/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_ortho/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_ortho/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La quantità di smorzamento della rotazione lungo gli assi ortogonali allo slider.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_ortho/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_ortho/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_angular_ortho/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La quantità di restituzione della rotazione lungo gli assi ortogonali allo slider.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_ortho/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_ortho/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_ortho/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Un fattore applicato a tutta la rotazione lungo gli assi ortogonali allo slider.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La quantità di smorzamento che avviene una volta superato il limite definito da :ref:`linear_limit/lower_distance<class_SliderJoint3D_property_linear_limit/lower_distance>` e :ref:`linear_limit/upper_distance<class_SliderJoint3D_property_linear_limit/upper_distance>`.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/lower_distance** = ``-1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La differenza minima tra i punti di rotazione sul loro asse X prima che avviene lo smorzamento.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La quantità di restituzione una volta superati i limiti. Più è bassa, più energia-velocità viene persa.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Un fattore applicato al movimento attraverso l'asse dello slider una volta superati i limiti. Più è basso, più lento è il movimento.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/upper_distance** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La differenza massima tra i punti di rotazione sul loro asse X prima che si verifichi lo smorzamento.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_motion/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motion/damping** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_linear_motion/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La quantità di smorzamento all'interno dei limiti dello slider.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_motion/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motion/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_linear_motion/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La quantità di restituzione all'interno dei limiti dello slider.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_motion/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motion/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_motion/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Un fattore applicato al movimento attraverso l'asse dello slider finché lo slider è nei limiti. Più è basso, più lento è il movimento.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_ortho/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_ortho/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_ortho/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La quantità di smorzamento quando il movimento avviene lungo gli assi ortogonali allo slider.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_ortho/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_ortho/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_linear_ortho/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

La quantità di restituzione quando il movimento avviene lungo gli assi ortogonali allo slider.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_ortho/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_ortho/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_ortho/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

Un fattore applicato al movimento lungo gli assi ortogonali allo slider.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SliderJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const| :ref:`🔗<class_SliderJoint3D_method_get_param>`

Restituisce il valore del parametro specificato.

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SliderJoint3D_method_set_param>`

Assegna ``value`` al parametro specificato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
