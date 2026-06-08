:github_url: hide

.. _class_VisualShaderNodeFloatOp:

VisualShaderNodeFloatOp
=======================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Можливість використання в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Застосовує :ref:`operator<class_VisualShaderNodeFloatOp_property_operator>` до двох вхідних даних із плаваючою комою: ``a`` і ``b``.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` | :ref:`operator<class_VisualShaderNodeFloatOp_property_operator>` | ``0`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeFloatOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeFloatOp_Operator>`

.. _class_VisualShaderNodeFloatOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_ADD** = ``0``

Суми двох чисел за допомогою ``a + b``.

.. _class_VisualShaderNodeFloatOp_constant_OP_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_SUB** = ``1``

Відстеження двох чисел за допомогою ``a - b``.

.. _class_VisualShaderNodeFloatOp_constant_OP_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MUL** = ``2``

Multiplies двох чисел за допомогою ``a * b``.

.. _class_VisualShaderNodeFloatOp_constant_OP_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_DIV** = ``3``

Дивиди двох чисел за допомогою ``a / b``.

.. _class_VisualShaderNodeFloatOp_constant_OP_MOD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MOD** = ``4``

Розрахунок залишку двох чисел. Переклади на ``mod(a, b)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatOp_constant_OP_POW:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_POW** = ``5``

Вимірює ``a`` до потужності ``b``. Переклади на ``pow(a, b)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MAX** = ``6``

Повертає більше двох чисел. Переклади на ``max(a, b)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatOp_constant_OP_MIN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_MIN** = ``7``

Повернення менше двох чисел. Переклади на ``min(a, b)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatOp_constant_OP_ATAN2:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_ATAN2** = ``8``

Повертає дугу-тангент параметрів. Переклади на ``atan (a, b)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatOp_constant_OP_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_STEP** = ``9``

Порівняти ``b``\ (x) до ``a``\ (edge). Повертає 0.0, якщо ``x`` менша, ніж ``edge`` та ін. 1.0. Переклади на ``степ (a, b)`` в мові Godot Shader.

.. _class_VisualShaderNodeFloatOp_constant_OP_ENUM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **OP_ENUM_SIZE** = ``10``

Представляємо розмір об’єкту :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeFloatOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeFloatOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeFloatOp_Operator>` **get_operator**\ (\ )

Оператор, який буде застосовано до вхідних даних.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
