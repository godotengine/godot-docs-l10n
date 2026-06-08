:github_url: hide

.. _class_VisualShaderNodeParticleMeshEmitter:

VisualShaderNodeParticleMeshEmitter
===================================

**Успадковує:** :ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Візуальна шейдерна вершина, яка робить частинки, які випромінюються у вигляді ``Mash``.

.. rst-class:: classref-introduction-group

Опис
--------

:ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>`, що робить частинки, які випромінюються у вигляді призначеної ``пам'ятної сітки``. Він випромінює з поверхонь сітки, або всіх або тільки зазначених.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`Mesh<class_Mesh>` | :ref:`mesh<class_VisualShaderNodeParticleMeshEmitter_property_mesh>`                         |          |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`surface_index<class_VisualShaderNodeParticleMeshEmitter_property_surface_index>`       | ``0``    |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`use_all_surfaces<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>` | ``true`` |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeParticleMeshEmitter_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

:ref:`Mesh<class_Mesh>`, що визначає форму емісії.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParticleMeshEmitter_property_surface_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **surface_index** = ``0`` :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_surface_index>`

.. rst-class:: classref-property-setget

- |void| **set_surface_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_surface_index**\ (\ )

Індекс поверхні, яка видає частинки. :ref:`use_all_surfaces<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>` повинен бути ``false`` для цього, щоб прийняти ефект.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_all_surfaces** = ``true`` :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>`

.. rst-class:: classref-property-setget

- |void| **set_use_all_surfaces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_use_all_surfaces**\ (\ )

Якщо ``true``, частинки випромінюють з усіх поверхонь сітки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
