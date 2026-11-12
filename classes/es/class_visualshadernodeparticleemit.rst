:github_url: hide

.. _class_VisualShaderNodeParticleEmit:

VisualShaderNodeParticleEmit
============================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo de shader visual que fuerza la emisión de una partícula desde un subemisor.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This node calls the internal ``emit_subparticle`` method. It will emit a particle from the configured sub-emitter and also allows to customize how it's emitted. Requires a sub-emitter assigned to the particles node that is using this shader.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+-----------------------------------------------------------------+--------+
   | :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` | :ref:`flags<class_VisualShaderNodeParticleEmit_property_flags>` | ``31`` |
   +---------------------------------------------------------------+-----------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeParticleEmit_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_VisualShaderNodeParticleEmit_EmitFlags>`

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

Si está habilitado, la partícula comienza con la posición definida por este nodo.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_ROT_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_ROT_SCALE** = ``2``

Si está habilitado, la partícula comienza con la rotación y escala definidas por este nodo.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

Si está habilitado, la partícula comienza con la velocidad definida por este nodo.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

Si está habilitado, la partícula comienza con el color definido por este nodo.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

Si está habilitado, la partícula comienza con los datos ``CUSTOM`` definidos por este nodo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeParticleEmit_property_flags:

.. rst-class:: classref-property

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **flags** = ``31`` :ref:`🔗<class_VisualShaderNodeParticleEmit_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>`\ )
- :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **get_flags**\ (\ )

Marcas utilizadas para sobrescribir las propiedades definidas en el material de proceso del subemisor.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
