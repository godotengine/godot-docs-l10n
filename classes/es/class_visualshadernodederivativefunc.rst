:github_url: hide

.. _class_VisualShaderNodeDerivativeFunc:

VisualShaderNodeDerivativeFunc
==============================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Calcula una derivada dentro del gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este nodo sólo está disponible en shader visuales ``Fragment`` y ``Light``.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>`   | :ref:`function<class_VisualShaderNodeDerivativeFunc_property_function>`   | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>`       | :ref:`op_type<class_VisualShaderNodeDerivativeFunc_property_op_type>`     | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` | :ref:`precision<class_VisualShaderNodeDerivativeFunc_property_precision>` | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeDerivativeFunc_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_OpType>`

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_SCALAR** = ``0``

Un escalar real.

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

Un tipo vector 2D.

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_3D** = ``2``

Un tipo vector 3D.

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_VECTOR_4D** = ``3``

Un tipo vector 4D.

.. _class_VisualShaderNodeDerivativeFunc_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **OP_TYPE_MAX** = ``4``

Representa el tamaño del enum :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeDerivativeFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_Function>`

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_SUM:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_SUM** = ``0``

Suma del derivado absoluto en ``x`` y ``y``.

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_X:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_X** = ``1``

Derivado en ``x`` utilizando la diferenciación local.

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_Y** = ``2``

Derivado en ``y`` utilizando la diferenciación local.

.. _class_VisualShaderNodeDerivativeFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **FUNC_MAX** = ``3``

Representa el tamaño del enum :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeDerivativeFunc_Precision:

.. rst-class:: classref-enumeration

enum **Precision**: :ref:`🔗<enum_VisualShaderNodeDerivativeFunc_Precision>`

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_NONE** = ``0``

No se especifica ninguna precisión, el controlador de la GPU puede utilizar el nivel de precisión que elija. Esta es la opción por defecto y es equivalente a usar ``dFdx()`` o ``dFdy()`` en los shaders de texto.

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_COARSE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_COARSE** = ``1``

La derivada se calculará utilizando los vecinos del fragmento actual (que puede que no incluyan el fragmento actual). Esto tiende a ser más rápido que usar :ref:`PRECISION_FINE<class_VisualShaderNodeDerivativeFunc_constant_PRECISION_FINE>`, pero puede no ser adecuado cuando se necesita más precisión. Esto es equivalente a usar ``dFdxCoarse()`` o ``dFdyCoarse()`` en los shaders de texto.

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_FINE:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_FINE** = ``2``

La derivada se calculará utilizando el fragmento actual y sus vecinos inmediatos. Esto tiende a ser más lento que usar :ref:`PRECISION_COARSE<class_VisualShaderNodeDerivativeFunc_constant_PRECISION_COARSE>`, pero puede ser necesario cuando se necesita más precisión. Esto es equivalente a usar ``dFdxFine()`` o ``dFdyFine()`` en los shaders de texto.

.. _class_VisualShaderNodeDerivativeFunc_constant_PRECISION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **PRECISION_MAX** = ``3``

Representa el tamaño del enum :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeDerivativeFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeDerivativeFunc_Function>` **get_function**\ (\ )

Un tipo de función derivada.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeDerivativeFunc_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeDerivativeFunc_OpType>` **get_op_type**\ (\ )

Un tipo de operando y valor de retorno.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeDerivativeFunc_property_precision:

.. rst-class:: classref-property

:ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **precision** = ``0`` :ref:`🔗<class_VisualShaderNodeDerivativeFunc_property_precision>`

.. rst-class:: classref-property-setget

- |void| **set_precision**\ (\ value\: :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>`\ )
- :ref:`Precision<enum_VisualShaderNodeDerivativeFunc_Precision>` **get_precision**\ (\ )

Establece el nivel de precisión que se utilizará para la función derivada. Cuando se utiliza el renderizador Compatibility, este ajuste no tiene ningún efecto.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
