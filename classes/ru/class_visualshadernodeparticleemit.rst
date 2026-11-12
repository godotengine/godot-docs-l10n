:github_url: hide

.. _class_VisualShaderNodeParticleEmit:

VisualShaderNodeParticleEmit
============================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Узел визуального шейдера, который заставляет испускать частицу из суб-эмиттера.

.. rst-class:: classref-introduction-group

Описание
----------------

This node calls the internal ``emit_subparticle`` method. It will emit a particle from the configured sub-emitter and also allows to customize how it's emitted. Requires a sub-emitter assigned to the particles node that is using this shader.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+-----------------------------------------------------------------+--------+
   | :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` | :ref:`flags<class_VisualShaderNodeParticleEmit_property_flags>` | ``31`` |
   +---------------------------------------------------------------+-----------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeParticleEmit_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_VisualShaderNodeParticleEmit_EmitFlags>`

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

Если эта опция включена, частица начинает движение с позиции, определяемой этим узлом.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_ROT_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_ROT_SCALE** = ``2``

Если эта опция включена, частица запускается с вращением и масштабом, определенными этим узлом.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

Если эта опция включена, частица начинает движение со скоростью, определяемой этим узлом.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

Если эта опция включена, частица запускается с цветом, определенным этим узлом.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

Если включено, частица запускается с данными ``CUSTOM``, определенными этим узлом.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeParticleEmit_property_flags:

.. rst-class:: classref-property

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **flags** = ``31`` :ref:`🔗<class_VisualShaderNodeParticleEmit_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>`\ )
- :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **get_flags**\ (\ )

Флаги, используемые для переопределения свойств, определенных в технологическом материале суб-передатчика.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
