:github_url: hide

.. _class_VisualShaderNodeUIntFunc:

VisualShaderNodeUIntFunc
========================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

У графі візуального відтінку використовується не позначена скалярна ціла функція.

.. rst-class:: classref-introduction-group

Опис
--------

Прийміть невизнаний загальний скаляр (``x``) до вхідного порту і перетворюйте його відповідно до функції :ref:`function<class_VisualShaderNodeUIntFunc_property_function>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` | :ref:`function<class_VisualShaderNodeUIntFunc_property_function>` | ``0`` |
   +---------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeUIntFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeUIntFunc_Function>`

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_NEGATE** = ``0``

Заперечує ``x`` за допомогою ``-(x)``.

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_BITWISE_NOT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_BITWISE_NOT** = ``1``

Повертає результат бітумної операції ``NOT`` на ціле. Переклади на `` ~ a`` в мові Godot Shader.

.. _class_VisualShaderNodeUIntFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **FUNC_MAX** = ``2``

Представляємо розмір занурення Функціональність.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeUIntFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeUIntFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeUIntFunc_Function>` **get_function**\ (\ )

Функція, яка застосовується до скаляра.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
