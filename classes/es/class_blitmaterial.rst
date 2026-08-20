:github_url: hide

.. _class_BlitMaterial:

BlitMaterial
============

**Hereda:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un material que procesa llamadas blit a un DrawableTexture.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un recurso material que puede ser utilizado por DrawableTextures al procesar llamadas blit para dibujar.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------+-------+
   | :ref:`BlendMode<enum_BlitMaterial_BlendMode>` | :ref:`blend_mode<class_BlitMaterial_property_blend_mode>` | ``0`` |
   +-----------------------------------------------+-----------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_BlitMaterial_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_BlitMaterial_BlendMode>`

.. _class_BlitMaterial_constant_BLEND_MODE_MIX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_MIX** = ``0``

Modo de mezcla. Se supone que los colores son independientes del valor alfa (opacidad).

.. _class_BlitMaterial_constant_BLEND_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_ADD** = ``1``

Modo de mezcla de añadidos.

.. _class_BlitMaterial_constant_BLEND_MODE_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_SUB** = ``2``

Modo de mezcla de substracción.

.. _class_BlitMaterial_constant_BLEND_MODE_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_MUL** = ``3``

Modo de mezcla multiplicativo.

.. _class_BlitMaterial_constant_BLEND_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **BLEND_MODE_DISABLED** = ``4``

Sin modo de mezcla, copia directa en color.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_BlitMaterial_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_BlitMaterial_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_BlitMaterial_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_BlitMaterial_BlendMode>`\ )
- :ref:`BlendMode<enum_BlitMaterial_BlendMode>` **get_blend_mode**\ (\ )

La forma en que la textura recién blitada se mezcla con la DrawableTexture original.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
