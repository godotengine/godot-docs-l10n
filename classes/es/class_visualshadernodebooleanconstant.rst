:github_url: hide

.. _class_VisualShaderNodeBooleanConstant:

VisualShaderNodeBooleanConstant
===============================

**Hereda:** :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una constante booleana para ser usada dentro del gráfico visual del shader.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Solo tiene un puerto de salida y no tiene entradas.

Traducido a ``bool`` en el lenguaje de los shaders.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`constant<class_VisualShaderNodeBooleanConstant_property_constant>` | ``false`` |
   +-------------------------+--------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeBooleanConstant_property_constant:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **constant** = ``false`` :ref:`🔗<class_VisualShaderNodeBooleanConstant_property_constant>`

.. rst-class:: classref-property-setget

- |void| **set_constant**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_constant**\ (\ )

Una constante booleana que representa un estado de este nodo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
