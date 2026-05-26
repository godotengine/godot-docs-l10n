:github_url: hide

.. _class_VisualShaderNodeVectorBase:

VisualShaderNodeVectorBase
==========================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`VisualShaderNodeFaceForward<class_VisualShaderNodeFaceForward>`, :ref:`VisualShaderNodeVectorCompose<class_VisualShaderNodeVectorCompose>`, :ref:`VisualShaderNodeVectorDecompose<class_VisualShaderNodeVectorDecompose>`, :ref:`VisualShaderNodeVectorDistance<class_VisualShaderNodeVectorDistance>`, :ref:`VisualShaderNodeVectorFunc<class_VisualShaderNodeVectorFunc>`, :ref:`VisualShaderNodeVectorLen<class_VisualShaderNodeVectorLen>`, :ref:`VisualShaderNodeVectorOp<class_VisualShaderNodeVectorOp>`, :ref:`VisualShaderNodeVectorRefract<class_VisualShaderNodeVectorRefract>`

Un tipo base para los nodos que realizan operaciones vectoriales dentro del gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta es una clase abstracta. Véanse los tipos derivados para obtener descripciones de las posibles operaciones.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` | :ref:`op_type<class_VisualShaderNodeVectorBase_property_op_type>` | ``1`` |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeVectorBase_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeVectorBase_OpType>`

.. _class_VisualShaderNodeVectorBase_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` **OP_TYPE_VECTOR_2D** = ``0``

Un tipo vector 2D.

.. _class_VisualShaderNodeVectorBase_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` **OP_TYPE_VECTOR_3D** = ``1``

Un tipo vector 3D.

.. _class_VisualShaderNodeVectorBase_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` **OP_TYPE_VECTOR_4D** = ``2``

Un tipo vector 4D.

.. _class_VisualShaderNodeVectorBase_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` **OP_TYPE_MAX** = ``3``

Representa el tamaño del enum :ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeVectorBase_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` **op_type** = ``1`` :ref:`🔗<class_VisualShaderNodeVectorBase_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeVectorBase_OpType>` **get_op_type**\ (\ )

Un tipo de vector en el que se realiza esta operación.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
