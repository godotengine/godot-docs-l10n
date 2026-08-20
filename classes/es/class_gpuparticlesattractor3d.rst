:github_url: hide

.. _class_GPUParticlesAttractor3D:

GPUParticlesAttractor3D
=======================

**Hereda:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`GPUParticlesAttractorBox3D<class_GPUParticlesAttractorBox3D>`, :ref:`GPUParticlesAttractorSphere3D<class_GPUParticlesAttractorSphere3D>`, :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`

Clase base abstracta para atractores de partículas 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los atractores de partículas se pueden usar para atraer partículas hacia el origen del atractor o para alejarlas del origen del atractor.

Los atractores de partículas funcionan en tiempo real y se pueden mover, rotar y escalar durante el juego. A diferencia de las formas de colisión, también se admite el escalado no uniforme de los atractores.

Los atractores se pueden desactivar temporalmente ocultándolos o configurando su :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` a ``0.0``.

\ **Nota:** Los atractores de partículas solo afectan a :ref:`GPUParticles3D<class_GPUParticles3D>`, no a :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`attenuation<class_GPUParticlesAttractor3D_property_attenuation>`       | ``1.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`     | :ref:`cull_mask<class_GPUParticlesAttractor3D_property_cull_mask>`           | ``4294967295`` |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` | ``0.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`strength<class_GPUParticlesAttractor3D_property_strength>`             | ``1.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GPUParticlesAttractor3D_property_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation**\ (\ )

La atenuación del atractor de partículas. Los valores más altos dan como resultado un empuje más gradual de las partículas a medida que se acercan al origen del atractor. Los valores cero o negativos harán que las partículas sean empujadas muy rápido tan pronto como toquen los bordes del atractor.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesAttractor3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

The particle rendering layers (:ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`) that will be affected by the attractor. By default, all particles are affected by an attractor.

After configuring particle nodes accordingly, specific layers can be unchecked to prevent certain particles from being affected by attractors. For example, this can be used if you're using an attractor as part of a spell effect but don't want the attractor to affect unrelated weather particles at the same position.

Particle attraction can also be disabled on a per-process material basis by setting :ref:`ParticleProcessMaterial.attractor_interaction_enabled<class_ParticleProcessMaterial_property_attractor_interaction_enabled>` on the :ref:`GPUParticles3D<class_GPUParticles3D>` node.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_directionality:

.. rst-class:: classref-property

:ref:`float<class_float>` **directionality** = ``0.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_directionality>`

.. rst-class:: classref-property-setget

- |void| **set_directionality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_directionality**\ (\ )

Ajusta la direccionalidad del atractor. En ``0.0``, el atractor no es direccional en absoluto: atraerá las partículas hacia su centro. En ``1.0``, el atractor es totalmente direccional: las partículas siempre serán empujadas hacia el -Z local (o +Z si :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` es negativo).

\ **Nota:** Si :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` es mayor que ``0.0``, la dirección en la que se empujan las partículas se puede cambiar rotando el nodo **GPUParticlesAttractor3D**.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

Ajusta la fuerza del atractor. Si :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` es negativo, las partículas serán empujadas en la dirección opuesta. Las partículas serán empujadas *lejos* del origen del atractor si :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` es ``0.0``, o hacia el +Z local si :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` es mayor que ``0.0``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
