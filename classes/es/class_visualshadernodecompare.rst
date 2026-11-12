:github_url: hide

.. _class_VisualShaderNodeCompare:

VisualShaderNodeCompare
=======================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una función de comparación para tipos comunes dentro del gráfico shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Compara ``a`` y ``b`` de :ref:`type<class_VisualShaderNodeCompare_property_type>` por :ref:`function<class_VisualShaderNodeCompare_property_function>`. Devuelve un escalar booleano. Se traduce a la instrucción ``if`` en código shader.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`Condition<enum_VisualShaderNodeCompare_Condition>`           | :ref:`condition<class_VisualShaderNodeCompare_property_condition>` | ``0`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeCompare_Function>`             | :ref:`function<class_VisualShaderNodeCompare_property_function>`   | ``0`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` | :ref:`type<class_VisualShaderNodeCompare_property_type>`           | ``0`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeCompare_ComparisonType:

.. rst-class:: classref-enumeration

enum **ComparisonType**: :ref:`🔗<enum_VisualShaderNodeCompare_ComparisonType>`

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR** = ``0``

Un escalar real.

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR_INT:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR_INT** = ``1``

Un escalar entero.

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR_UINT** = ``2``

Un escalar entero sin signo.

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_2D** = ``3``

Un tipo vector 2D.

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_3D** = ``4``

Un tipo vector 3D.

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_4D** = ``5``

Un tipo vector 4D.

.. _class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_BOOLEAN** = ``6``

Un tipo booleano.

.. _class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_TRANSFORM** = ``7``

Un tipo de transformación (\ ``mat4``).

.. _class_VisualShaderNodeCompare_constant_CTYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_MAX** = ``8``

Representa el tamaño del enum :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCompare_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeCompare_Function>`

.. _class_VisualShaderNodeCompare_constant_FUNC_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_EQUAL** = ``0``

Comparación para la igualdad (\ ``a == b``).

.. _class_VisualShaderNodeCompare_constant_FUNC_NOT_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_NOT_EQUAL** = ``1``

Comparación de la desigualdad (\ ``a != b``).

.. _class_VisualShaderNodeCompare_constant_FUNC_GREATER_THAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_GREATER_THAN** = ``2``

Comparación para mayores de (\ ``a > b``). No se puede utilizar si el :ref:`type<class_VisualShaderNodeCompare_property_type>` se establece en :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` o :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`.

.. _class_VisualShaderNodeCompare_constant_FUNC_GREATER_THAN_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_GREATER_THAN_EQUAL** = ``3``

Comparación para mayor o igual (\ ``a >= b``). No se puede utilizar si el :ref:`type<class_VisualShaderNodeCompare_property_type>` se establece en :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` o :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`.

.. _class_VisualShaderNodeCompare_constant_FUNC_LESS_THAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_LESS_THAN** = ``4``

Comparación para menos de (\ ``a < b``). No se puede utilizar si el :ref:`type<class_VisualShaderNodeCompare_property_type>` se establece en :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` o :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`.

.. _class_VisualShaderNodeCompare_constant_FUNC_LESS_THAN_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_LESS_THAN_EQUAL** = ``5``

Comparación para menor o igual que (\ ``a <= b``). No se puede utilizar si :ref:`type<class_VisualShaderNodeCompare_property_type>` se establece en :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` o :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`.

.. _class_VisualShaderNodeCompare_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_MAX** = ``6``

Representa el tamaño del enum :ref:`Function<enum_VisualShaderNodeCompare_Function>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCompare_Condition:

.. rst-class:: classref-enumeration

enum **Condition**: :ref:`🔗<enum_VisualShaderNodeCompare_Condition>`

.. _class_VisualShaderNodeCompare_constant_COND_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_ALL** = ``0``

El resultado será ``true`` si todos los componentes del vector cumplen la condición de comparación.

.. _class_VisualShaderNodeCompare_constant_COND_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_ANY** = ``1``

El resultado será ``true`` si algún componente del vector cumple la condición de comparación.

.. _class_VisualShaderNodeCompare_constant_COND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_MAX** = ``2``

Representa el tamaño del enum :ref:`Condition<enum_VisualShaderNodeCompare_Condition>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeCompare_property_condition:

.. rst-class:: classref-property

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **condition** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_condition>`

.. rst-class:: classref-property-setget

- |void| **set_condition**\ (\ value\: :ref:`Condition<enum_VisualShaderNodeCompare_Condition>`\ )
- :ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **get_condition**\ (\ )

Condición extra que se aplica si :ref:`type<class_VisualShaderNodeCompare_property_type>` se establece en :ref:`CTYPE_VECTOR_3D<class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_3D>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCompare_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeCompare_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeCompare_Function>` **get_function**\ (\ )

Una función de comparación.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCompare_property_type:

.. rst-class:: classref-property

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **type** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_comparison_type**\ (\ value\: :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>`\ )
- :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **get_comparison_type**\ (\ )

El tipo que se utilizará en la comparación.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
