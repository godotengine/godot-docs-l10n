:github_url: hide

.. _class_VisualShaderNodeParticleMultiplyByAxisAngle:

VisualShaderNodeParticleMultiplyByAxisAngle
===========================================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вузловий шейдер для розмноження положення та обертання частинок.

.. rst-class:: classref-introduction-group

Опис
--------

Ця вершина допомагає розмножувати вектор вхідного положення, використовуючи конкретну віссю. Призначений для роботи з випромінювачами.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`degrees_mode<class_VisualShaderNodeParticleMultiplyByAxisAngle_property_degrees_mode>` | ``true`` |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeParticleMultiplyByAxisAngle_property_degrees_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **degrees_mode** = ``true`` :ref:`🔗<class_VisualShaderNodeParticleMultiplyByAxisAngle_property_degrees_mode>`

.. rst-class:: classref-property-setget

- |void| **set_degrees_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_degrees_mode**\ (\ )

Якщо ``true``, кут буде інтерпретований в градусах замість радианів.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
