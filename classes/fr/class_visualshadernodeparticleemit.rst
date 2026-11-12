:github_url: hide

.. _class_VisualShaderNodeParticleEmit:

VisualShaderNodeParticleEmit
============================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A visual shader node that forces to emit a particle from a sub-emitter.

.. rst-class:: classref-introduction-group

Description
-----------

This node calls the internal ``emit_subparticle`` method. It will emit a particle from the configured sub-emitter and also allows to customize how it's emitted. Requires a sub-emitter assigned to the particles node that is using this shader.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+-----------------------------------------------------------------+--------+
   | :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` | :ref:`flags<class_VisualShaderNodeParticleEmit_property_flags>` | ``31`` |
   +---------------------------------------------------------------+-----------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeParticleEmit_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_VisualShaderNodeParticleEmit_EmitFlags>`

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

If enabled, the particle starts with the position defined by this node.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_ROT_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_ROT_SCALE** = ``2``

If enabled, the particle starts with the rotation and scale defined by this node.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

If enabled,the particle starts with the velocity defined by this node.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

Si activé, la particule commence avec la couleur définie par ce nœud.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

Si activé, la particule commence avec les données ``CUSTOM`` définies par ce nœud.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeParticleEmit_property_flags:

.. rst-class:: classref-property

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **flags** = ``31`` :ref:`🔗<class_VisualShaderNodeParticleEmit_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>`\ )
- :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **get_flags**\ (\ )

Flags used to override the properties defined in the sub-emitter's process material.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
