:github_url: hide

.. _class_VisualShaderNodeVarying:

VisualShaderNodeVarying
=======================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`VisualShaderNodeVaryingGetter<class_VisualShaderNodeVaryingGetter>`, :ref:`VisualShaderNodeVaryingSetter<class_VisualShaderNodeVaryingSetter>`

Візуальна шейдерна вершина, яка являє собою значення для шейдера ".

.. rst-class:: classref-introduction-group

Опис
--------

Варильні значення - змінні шейдера, які можуть бути передані між функціями шейдера, наприклад від шейдера Vertex до шейдера.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>`                       | :ref:`varying_name<class_VisualShaderNodeVarying_property_varying_name>` | ``"[None]"`` |
   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+
   | :ref:`VaryingType<enum_VisualShader_VaryingType>` | :ref:`varying_type<class_VisualShaderNodeVarying_property_varying_type>` | ``0``        |
   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeVarying_property_varying_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **varying_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeVarying_property_varying_name>`

.. rst-class:: classref-property-setget

- |void| **set_varying_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_varying_name**\ (\ )

Назва змінної. Обов'язково бути унікальним.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeVarying_property_varying_type:

.. rst-class:: classref-property

:ref:`VaryingType<enum_VisualShader_VaryingType>` **varying_type** = ``0`` :ref:`🔗<class_VisualShaderNodeVarying_property_varying_type>`

.. rst-class:: classref-property-setget

- |void| **set_varying_type**\ (\ value\: :ref:`VaryingType<enum_VisualShader_VaryingType>`\ )
- :ref:`VaryingType<enum_VisualShader_VaryingType>` **get_varying_type**\ (\ )

Тип змінної. Визначення, де можна отримати змінну.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
