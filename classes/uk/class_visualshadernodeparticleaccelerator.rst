:github_url: hide

.. _class_VisualShaderNodeParticleAccelerator:

VisualShaderNodeParticleAccelerator
===================================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Візуальна шейдерна вершина, яка прискорює частинки.

.. rst-class:: classref-introduction-group

Опис
--------

Акселератор частинок може використовуватися в "обробці" крокі відтінку частинок. Прискорить частинки. Підключіть його в вихідний порт Velocity.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+-------+
   | :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` | :ref:`mode<class_VisualShaderNodeParticleAccelerator_property_mode>` | ``0`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeParticleAccelerator_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_VisualShaderNodeParticleAccelerator_Mode>`

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_LINEAR** = ``0``

Частинки будуть прискорені на основі їх швидкості.

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_RADIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_RADIAL** = ``1``

Частинки будуть прискорені в напрямку або далеко від центру.

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_TANGENTIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_TANGENTIAL** = ``2``

Частинки будуть прискорені до вектора радіуса від центру до їх положення.

.. _class_VisualShaderNodeParticleAccelerator_constant_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **MODE_MAX** = ``3``

Представляємо розмір занурення :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeParticleAccelerator_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **mode** = ``0`` :ref:`🔗<class_VisualShaderNodeParticleAccelerator_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>`\ )
- :ref:`Mode<enum_VisualShaderNodeParticleAccelerator_Mode>` **get_mode**\ (\ )

Визначається, що прискориться часток.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
