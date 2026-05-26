:github_url: hide

.. _class_VisualShaderNodeExpression:

VisualShaderNodeExpression
==========================

**Hereda:** :ref:`VisualShaderNodeGroupBase<class_VisualShaderNodeGroupBase>` **<** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`VisualShaderNodeGlobalExpression<class_VisualShaderNodeGlobalExpression>`

Una gráfico de shader visual personalizada, escrito en el lenguaje de sombreado Godot.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Expresión personalizada del lenguaje de sombreado de Godot, con un número personalizado de puertos de entrada y salida.

El código proporcionado se inyecta directamente en la función shader correspondiente del gráfico (``vertex``, ``fragment`` o ``light``), por lo que no se puede utilizar para declarar funciones, variables, variables uniformes o constantes globales. Véase :ref:`VisualShaderNodeGlobalExpression<class_VisualShaderNodeGlobalExpression>` para tales definiciones globales.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`expression<class_VisualShaderNodeExpression_property_expression>` | ``""`` |
   +-----------------------------+-------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeExpression_property_expression:

.. rst-class:: classref-property

:ref:`String<class_String>` **expression** = ``""`` :ref:`🔗<class_VisualShaderNodeExpression_property_expression>`

.. rst-class:: classref-property-setget

- |void| **set_expression**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_expression**\ (\ )

Una expresión del Lenguaje de Sombreado Godot, que se inyectará al comienzo de la función shader correspondiente del gráfico (``vertex``, ``fragment``, o ``light``), y por lo tanto no puede utilizarse para declarar funciones, variaciones, variables uniformes o constantes globales.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
