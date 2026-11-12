:github_url: hide

.. _class_VisualShaderNodeGroup:

VisualShaderNodeGroup
=====================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A visual shader node that instances a :ref:`VisualShaderGroup<class_VisualShaderGroup>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Represents a :ref:`VisualShaderGroup<class_VisualShaderGroup>` inside a :ref:`VisualShader<class_VisualShader>` or another :ref:`VisualShaderGroup<class_VisualShaderGroup>`. Its input and output ports are defined by the assigned :ref:`group<class_VisualShaderNodeGroup_property_group>` resource.

If the group contains nodes incompatible with the current shader context, the outputs will use default values and a warning will be shown.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------+
   | :ref:`VisualShaderGroup<class_VisualShaderGroup>` | :ref:`group<class_VisualShaderNodeGroup_property_group>` |
   +---------------------------------------------------+----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeGroup_property_group:

.. rst-class:: classref-property

:ref:`VisualShaderGroup<class_VisualShaderGroup>` **group** :ref:`🔗<class_VisualShaderNodeGroup_property_group>`

.. rst-class:: classref-property-setget

- |void| **set_group**\ (\ value\: :ref:`VisualShaderGroup<class_VisualShaderGroup>`\ )
- :ref:`VisualShaderGroup<class_VisualShaderGroup>` **get_group**\ (\ )

The :ref:`VisualShaderGroup<class_VisualShaderGroup>` resource instanced by this node.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
