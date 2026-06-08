:github_url: hide

.. _class_VisualShaderNodeParticleEmit:

VisualShaderNodeParticleEmit
============================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Візуальна шейдерна вершина, яка змушує випромінювати частинку з суб-екміттера.

.. rst-class:: classref-introduction-group

Опис
--------

Цей вузол внутрішніх дзвінків ``emit_subparticle`` метод шейдера. Він випромінює частинку з настроченого під-випромінювача, а також дозволяє налаштовувати, як його вдається. Вимагає суб-екміттера, призначеного для вузла частинок з цим відтінком.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+-----------------------------------------------------------------+--------+
   | :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` | :ref:`flags<class_VisualShaderNodeParticleEmit_property_flags>` | ``31`` |
   +---------------------------------------------------------------+-----------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeParticleEmit_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_VisualShaderNodeParticleEmit_EmitFlags>`

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

Якщо ввімкнено, частинка починається з положення, визначеної цим вершиною.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_ROT_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_ROT_SCALE** = ``2``

Якщо увімкнено, частинка починається з обертання та масштабу, визначеної цим вершином.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

Якщо увімкнено, частинка починається з швидкості, визначеної цим вершиною.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

Якщо увімкнено, частинка починається з кольору, визначеного цим вершиною.

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

Якщо увімкнено, частинка починається з ``CUSTOM``, визначених цим вершином.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeParticleEmit_property_flags:

.. rst-class:: classref-property

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **flags** = ``31`` :ref:`🔗<class_VisualShaderNodeParticleEmit_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>`\ )
- :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **get_flags**\ (\ )

Прапори, які використовуються для перевизначення властивостей, визначених в матеріалі процесу суб-екміттера.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
