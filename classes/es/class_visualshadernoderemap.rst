:github_url: hide

.. _class_VisualShaderNodeRemap:

VisualShaderNodeRemap
=====================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo de shader visual para la función remap.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Remap transformará el rango de entrada en rango de salida, p. ej. puede cambiar un valor ``0..1`` a ``-2..2`` etc. Véase :ref:`@GlobalScope.remap()<class_@GlobalScope_method_remap>` para más detalles.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeRemap_OpType>` | :ref:`op_type<class_VisualShaderNodeRemap_property_op_type>` | ``0`` |
   +--------------------------------------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeRemap_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeRemap_OpType>`

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_SCALAR** = ``0``

Un tipo escalar de punto flotante.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

Un tipo vector 2D.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_2D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_2D_SCALAR** = ``2``

El puerto ``value`` utiliza un tipo de vector 2D, mientras que los puertos ``input min``, ``input max``, ``output min`` y ``output max`` utilizan un tipo escalar de punto flotante.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_3D** = ``3``

Un tipo vector 3D.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_3D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_3D_SCALAR** = ``4``

El puerto ``value`` utiliza un tipo de vector 3D, mientras que los puertos ``input min``, ``input max``, ``output min`` y ``output max`` utilizan un tipo escalar de punto flotante.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

Un tipo vector 4D.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_VECTOR_4D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_VECTOR_4D_SCALAR** = ``6``

El puerto ``value`` utiliza un tipo de vector 4D, mientras que los puertos ``input min``, ``input max``, ``output min`` y ``output max`` utilizan un tipo escalar de punto flotante.

.. _class_VisualShaderNodeRemap_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **OP_TYPE_MAX** = ``7``

Representa el tamaño del enum :ref:`OpType<enum_VisualShaderNodeRemap_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeRemap_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeRemap_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeRemap_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeRemap_OpType>` **get_op_type**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
