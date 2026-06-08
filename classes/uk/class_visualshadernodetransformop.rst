:github_url: hide

.. _class_VisualShaderNodeTransformOp:

VisualShaderNodeTransformOp
===========================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Оператор А :ref:`Transform3D<class_Transform3D>` для використання в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Застосунки :ref:`operator<class_VisualShaderNodeTransformOp_property_operator>` до двох трансформаторів (4 × 4).

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` | :ref:`operator<class_VisualShaderNodeTransformOp_property_operator>` | ``0`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeTransformOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeTransformOp_Operator>`

.. _class_VisualShaderNodeTransformOp_constant_OP_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_AxB** = ``0``

Помножує перетворення ``a`` на перетворення ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_BxA** = ``1``

Помножує перетворення ``a`` на перетворення ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_AxB_COMP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_AxB_COMP** = ``2``

Виконує компонентно-часове багатозастосування трансформатора ``a`` від трансформатора ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_BxA_COMP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_BxA_COMP** = ``3``

Виконує компонентно-часове багатозастосування трансформатора ``a`` від трансформатора ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_ADD** = ``4``

Додавання двох трансформаторів.

.. _class_VisualShaderNodeTransformOp_constant_OP_A_MINUS_B:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_A_MINUS_B** = ``5``

``a`` з трансформатора ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_B_MINUS_A:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_B_MINUS_A** = ``6``

``b`` з трансформатора ``a``.

.. _class_VisualShaderNodeTransformOp_constant_OP_A_DIV_B:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_A_DIV_B** = ``7``

Дивиди трансформатора ``a`` по трансформатору ``b``.

.. _class_VisualShaderNodeTransformOp_constant_OP_B_DIV_A:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_B_DIV_A** = ``8``

Дивиди трансформатора ``b`` від трансформатора ``a``.

.. _class_VisualShaderNodeTransformOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **OP_MAX** = ``9``

Представляємо розмір об’єкту :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeTransformOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeTransformOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeTransformOp_Operator>` **get_operator**\ (\ )

Тип операції, яка має бути виконана над перетвореннями.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
