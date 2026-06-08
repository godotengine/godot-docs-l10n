:github_url: hide

.. _class_VisualShaderNodeParticleEmitter:

VisualShaderNodeParticleEmitter
===============================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`VisualShaderNodeParticleBoxEmitter<class_VisualShaderNodeParticleBoxEmitter>`, :ref:`VisualShaderNodeParticleMeshEmitter<class_VisualShaderNodeParticleMeshEmitter>`, :ref:`VisualShaderNodeParticleRingEmitter<class_VisualShaderNodeParticleRingEmitter>`, :ref:`VisualShaderNodeParticleSphereEmitter<class_VisualShaderNodeParticleSphereEmitter>`

Базовий клас для випромінювачів частинок.

.. rst-class:: classref-introduction-group

Опис
--------

Випромінювачі частинок можна використовувати в "старті" крокі відтінювачів частинок і вони визначають початкову позицію частинок. Підключіть їх до виходу позиційного порту.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`mode_2d<class_VisualShaderNodeParticleEmitter_property_mode_2d>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeParticleEmitter_property_mode_2d:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mode_2d** = ``false`` :ref:`🔗<class_VisualShaderNodeParticleEmitter_property_mode_2d>`

.. rst-class:: classref-property-setget

- |void| **set_mode_2d**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mode_2d**\ (\ )

Якщо ``true``, результат цього випромінювача продано до 2D площі. За замовчуванням це ``false`` і призначений для використання в просторі 3D.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
