:github_url: hide

.. _class_VisualShaderNodeTransformVecMult:

VisualShaderNodeTransformVecMult
================================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Мультиплікації :ref:`Transform3D<class_Transform3D>` і :ref:`Vector3<class_Vector3>` в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Багатофункціональна операція на трансформаторі (4х4 матриця) і вектора, за підтримки різних операторів мультиплікації.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` | :ref:`operator<class_VisualShaderNodeTransformVecMult_property_operator>` | ``0`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeTransformVecMult_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeTransformVecMult_Operator>`

.. _class_VisualShaderNodeTransformVecMult_constant_OP_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_AxB** = ``0``

``a`` вектор ``b``.

.. _class_VisualShaderNodeTransformVecMult_constant_OP_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_BxA** = ``1``

Вектор Multiplies ``b`` від перетворення ``a``.

.. _class_VisualShaderNodeTransformVecMult_constant_OP_3x3_AxB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_3x3_AxB** = ``2``

Множиці трансформуються ``a`` вектором ``b``, пропускаючи останній ряд і стовпчик перетворення.

.. _class_VisualShaderNodeTransformVecMult_constant_OP_3x3_BxA:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_3x3_BxA** = ``3``

Вектор мультиплиць ``b`` за допомогою трансформатора ``a``, пропускає останній ряд і стовпчик перетворення.

.. _class_VisualShaderNodeTransformVecMult_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **OP_MAX** = ``4``

Представляємо розмір об’єкту :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeTransformVecMult_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeTransformVecMult_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeTransformVecMult_Operator>` **get_operator**\ (\ )

Тип множення, який потрібно виконати.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
