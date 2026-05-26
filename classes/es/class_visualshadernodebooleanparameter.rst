:github_url: hide

.. _class_VisualShaderNodeBooleanParameter:

VisualShaderNodeBooleanParameter
================================

**Hereda:** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un parámetro booleano para ser usado dentro del gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Traducido a ``uniform bool`` en el lenguaje de los shaders.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`default_value<class_VisualShaderNodeBooleanParameter_property_default_value>`                 | ``false`` |
   +-------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`default_value_enabled<class_VisualShaderNodeBooleanParameter_property_default_value_enabled>` | ``false`` |
   +-------------------------+-----------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeBooleanParameter_property_default_value:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value** = ``false`` :ref:`🔗<class_VisualShaderNodeBooleanParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_default_value**\ (\ )

Un valor por defecto para ser asignado dentro del shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeBooleanParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeBooleanParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

Habilita el uso de :ref:`default_value<class_VisualShaderNodeBooleanParameter_property_default_value>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
