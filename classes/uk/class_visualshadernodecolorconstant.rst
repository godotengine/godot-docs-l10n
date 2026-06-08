:github_url: hide

.. _class_VisualShaderNodeColorConstant:

VisualShaderNodeColorConstant
=============================

**Успадковує:** :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Color<class_Color>` постійно використовується в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Має два вихідні порти, що представляють RGB і альфа-канали :ref:`Color<class_Color>`.

Translated to ``vec3 rgb`` і ``float alpha`` в тіні.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`constant<class_VisualShaderNodeColorConstant_property_constant>` | ``Color(1, 1, 1, 1)`` |
   +---------------------------+------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeColorConstant_property_constant:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **constant** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_VisualShaderNodeColorConstant_property_constant>`

.. rst-class:: classref-property-setget

- |void| **set_constant**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_constant**\ (\ )

:ref:`Color<class_Color>` постійний, що представляє стан цього вузла.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
