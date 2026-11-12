:github_url: hide

.. _class_VisualShaderNodeIntFunc:

VisualShaderNodeIntFunc
=======================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una función escalar entera para ser usada dentro del grafo de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Acepta un escalar entero (\ ``x``) en el puerto de entrada y lo transforma de acuerdo con :ref:`function<class_VisualShaderNodeIntFunc_property_function>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeIntFunc_Function>` | :ref:`function<class_VisualShaderNodeIntFunc_property_function>` | ``2`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeIntFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeIntFunc_Function>`

.. _class_VisualShaderNodeIntFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_ABS** = ``0``

Devuelve el valor absoluto del parámetro. Se traduce a ``abs(x)`` en el lenguaje de shaders de Godot.

.. _class_VisualShaderNodeIntFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_NEGATE** = ``1``

Niega el ``x`` usando ``-(x)``.

.. _class_VisualShaderNodeIntFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_SIGN** = ``2``

Extrae el signo del parámetro. Se traduce a ``sign(x)`` en el lenguaje de shaders de Godot.

.. _class_VisualShaderNodeIntFunc_constant_FUNC_BITWISE_NOT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_BITWISE_NOT** = ``3``

Devuelve el resultado de la operación ``NOT`` bit a bit en el entero. Se traduce a ``~a`` en el lenguaje de shaders de Godot.

.. _class_VisualShaderNodeIntFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **FUNC_MAX** = ``4``

Representa el tamaño del enum :ref:`Function<enum_VisualShaderNodeIntFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeIntFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **function** = ``2`` :ref:`🔗<class_VisualShaderNodeIntFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeIntFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeIntFunc_Function>` **get_function**\ (\ )

Una función que se aplicará al escalar.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
