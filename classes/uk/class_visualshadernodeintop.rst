:github_url: hide

.. _class_VisualShaderNodeIntOp:

VisualShaderNodeIntOp
=====================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

У графі візуального відтінку використовується цілий оператор Scalar.

.. rst-class:: classref-introduction-group

Опис
--------

Застосовує :ref:`operator<class_VisualShaderNodeIntOp_property_operator>` до двох цілих вхідних даних: ``a`` і ``b``.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------+----------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` | :ref:`operator<class_VisualShaderNodeIntOp_property_operator>` | ``0`` |
   +------------------------------------------------------+----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeIntOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeIntOp_Operator>`

.. _class_VisualShaderNodeIntOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_ADD** = ``0``

Суми двох чисел за допомогою ``a + b``.

.. _class_VisualShaderNodeIntOp_constant_OP_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_SUB** = ``1``

Відстеження двох чисел за допомогою ``a - b``.

.. _class_VisualShaderNodeIntOp_constant_OP_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_MUL** = ``2``

Multiplies двох чисел за допомогою ``a * b``.

.. _class_VisualShaderNodeIntOp_constant_OP_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_DIV** = ``3``

Дивиди двох чисел за допомогою ``a / b``.

.. _class_VisualShaderNodeIntOp_constant_OP_MOD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_MOD** = ``4``

Розрахунок залишку двох чисел за допомогою ``a % b``.

.. _class_VisualShaderNodeIntOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_MAX** = ``5``

Повертає більше двох чисел. Переклади на ``max(a, b)`` в мові Godot Shader.

.. _class_VisualShaderNodeIntOp_constant_OP_MIN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_MIN** = ``6``

Повернення менше двох чисел. Переклади на ``max(a, b)`` в мові Godot Shader.

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_AND:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_AND** = ``7``

Повертає результат бітумної операції `` і`` на ціле. Переклади на ``a & b`` в мові Godot Shader.

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_OR:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_OR** = ``8``

Повертає результат трохи більше ``OR`` операції для двох цілих. Переклади на `` a b`` в мові Godot Shader.

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_XOR:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_XOR** = ``9``

Повертає результат бітумної операції ``XOR`` для двох цілих. Переклади на `` a ^ b`` в мові Godot Shader.

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_LEFT_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_LEFT_SHIFT** = ``10``

Повертає результат малої операції зсуву на ціле. Переклади на ``a << b`` в мові Godot Shader.

.. _class_VisualShaderNodeIntOp_constant_OP_BITWISE_RIGHT_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_BITWISE_RIGHT_SHIFT** = ``11``

Повертає результат трохи правого перемикання на ціле. Переклади на ``a >> b`` в мові Godot Shader.

.. _class_VisualShaderNodeIntOp_constant_OP_ENUM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **OP_ENUM_SIZE** = ``12``

Представляємо розмір об’єкту :ref:`Operator<enum_VisualShaderNodeIntOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeIntOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeIntOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeIntOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeIntOp_Operator>` **get_operator**\ (\ )

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
