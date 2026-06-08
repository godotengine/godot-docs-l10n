:github_url: hide

.. _class_VisualShaderNodeVectorOp:

VisualShaderNodeVectorOp
========================

**Успадковує:** :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Векторний оператор для використання в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Візуальний шейдер для використання векторних операторів. Оперти на вектор ``a`` і вектор ``b``.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` | :ref:`operator<class_VisualShaderNodeVectorOp_property_operator>` | ``0`` |
   +---------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeVectorOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeVectorOp_Operator>`

.. _class_VisualShaderNodeVectorOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_ADD** = ``0``

Додає два вектори.

.. _class_VisualShaderNodeVectorOp_constant_OP_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_SUB** = ``1``

Віднімає вектор з вектора.

.. _class_VisualShaderNodeVectorOp_constant_OP_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MUL** = ``2``

Множиці два вектори.

.. _class_VisualShaderNodeVectorOp_constant_OP_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_DIV** = ``3``

Ділить вектор на вектор.

.. _class_VisualShaderNodeVectorOp_constant_OP_MOD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MOD** = ``4``

Повертає лишок за двома векторами.

.. _class_VisualShaderNodeVectorOp_constant_OP_POW:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_POW** = ``5``

Повертає значення першого параметра, що піднімається на потужність другого, для кожного компонента векторів.

.. _class_VisualShaderNodeVectorOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MAX** = ``6``

Повертає більше двох значень, для кожного компонента векторів.

.. _class_VisualShaderNodeVectorOp_constant_OP_MIN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MIN** = ``7``

Повертає менше двох значень, для кожного компонента векторів.

.. _class_VisualShaderNodeVectorOp_constant_OP_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_CROSS** = ``8``

Обчислює векторний добуток двох векторів.

.. _class_VisualShaderNodeVectorOp_constant_OP_ATAN2:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_ATAN2** = ``9``

Повертає арктангенс параметрів.

.. _class_VisualShaderNodeVectorOp_constant_OP_REFLECT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_REFLECT** = ``10``

Повертає вектор, який вказує на напрямок відображення. ``a`` є вектором інциденту і ``b`` є нормальним вектором.

.. _class_VisualShaderNodeVectorOp_constant_OP_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_STEP** = ``11``

Векторний крок оператора. ``0.0``, якщо ``a`` менше ``b`` і ``1.0`` інакше.

.. _class_VisualShaderNodeVectorOp_constant_OP_ENUM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_ENUM_SIZE** = ``12``

Представляємо розмір об’єкту :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeVectorOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeVectorOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **get_operator**\ (\ )

Оператор, який буде використано.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
