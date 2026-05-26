:github_url: hide

.. _class_VisualShaderNodeTexture2DArray:

VisualShaderNodeTexture2DArray
==============================

**Hereda:** :ref:`VisualShaderNodeSample3D<class_VisualShaderNodeSample3D>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un array de variables uniformes de texturas 2D para usar dentro del grafo de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Traducido a ``uniform sampler2DArray`` en el lenguaje de shaders.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------+-----------------------------------------------------------------------------------+
   | :ref:`TextureLayered<class_TextureLayered>` | :ref:`texture_array<class_VisualShaderNodeTexture2DArray_property_texture_array>` |
   +---------------------------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeTexture2DArray_property_texture_array:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **texture_array** :ref:`🔗<class_VisualShaderNodeTexture2DArray_property_texture_array>`

.. rst-class:: classref-property-setget

- |void| **set_texture_array**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_texture_array**\ (\ )

Un array de texturas de origen. Se usa si :ref:`VisualShaderNodeSample3D.source<class_VisualShaderNodeSample3D_property_source>` está establecido a :ref:`VisualShaderNodeSample3D.SOURCE_TEXTURE<class_VisualShaderNodeSample3D_constant_SOURCE_TEXTURE>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
