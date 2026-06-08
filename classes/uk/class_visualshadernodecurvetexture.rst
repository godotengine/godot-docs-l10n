:github_url: hide

.. _class_VisualShaderNodeCurveTexture:

VisualShaderNodeCurveTexture
============================

**Успадковує:** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Виконує зовнішній вигляд :ref:`CurveTexture<class_CurveTexture>` в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Приїжджає з вбудованим редактором для кривих текстур.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------+---------------------------------------------------------------------+
   | :ref:`CurveTexture<class_CurveTexture>` | :ref:`texture<class_VisualShaderNodeCurveTexture_property_texture>` |
   +-----------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeCurveTexture_property_texture:

.. rst-class:: classref-property

:ref:`CurveTexture<class_CurveTexture>` **texture** :ref:`🔗<class_VisualShaderNodeCurveTexture_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`CurveTexture<class_CurveTexture>`\ )
- :ref:`CurveTexture<class_CurveTexture>` **get_texture**\ (\ )

Текстура джерела.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
