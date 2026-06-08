:github_url: hide

.. _class_VisualShaderNodeColorOp:

VisualShaderNodeColorOp
=======================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Оператора :ref:`Color<class_Color>` для використання в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Застосовує :ref:`operator<class_VisualShaderNodeColorOp_property_operator>` до двох кольорових вхідних даних.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` | :ref:`operator<class_VisualShaderNodeColorOp_property_operator>` | ``0`` |
   +--------------------------------------------------------+------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeColorOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeColorOp_Operator>`

.. _class_VisualShaderNodeColorOp_constant_OP_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_SCREEN** = ``0``

Створіть екранний ефект за такою формулою:

::

    result = vec3(1.0) - (vec3(1.0) - a) * (vec3(1.0) - b);

.. _class_VisualShaderNodeColorOp_constant_OP_DIFFERENCE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DIFFERENCE** = ``1``

Створіть ефект відмінності за такою формулою:

::

    result = abs(a - b);

.. _class_VisualShaderNodeColorOp_constant_OP_DARKEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DARKEN** = ``2``

Створіть ефект затемнення за такою формулою:

::

    result = min(a, b);

.. _class_VisualShaderNodeColorOp_constant_OP_LIGHTEN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_LIGHTEN** = ``3``

Створіть ефект освітлення за допомогою такої формули:

::

    result = max(a, b);

.. _class_VisualShaderNodeColorOp_constant_OP_OVERLAY:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_OVERLAY** = ``4``

Створіть ефект накладання за такою формулою: 

::
 
    for (int i = 0; i < 3; i++) { 
        float base = a[i]; 
        float blend = b[i]; 
        if (base < 0,5) { 
            result[i] = 2,0 * base * blend; 
        } else { 
            result[i] = 1,0 - 2,0 * (1,0 - blend) * (1,0 - base); 
        } 
    }

.. _class_VisualShaderNodeColorOp_constant_OP_DODGE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_DODGE** = ``5``

Створіть ефект освітлення за такою формулою:

::

    result = a / (vec3(1.0) - b);

.. _class_VisualShaderNodeColorOp_constant_OP_BURN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_BURN** = ``6``

Створіть ефект опіку за допомогою такої формули:

::

    result = vec3(1.0) - (vec3(1.0) - a) / b;

.. _class_VisualShaderNodeColorOp_constant_OP_SOFT_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_SOFT_LIGHT** = ``7``

Створіть ефект м’якого світла за такою формулою:

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = base * (blend + 0.5);
        } else {
            result[i] = 1.0 - (1.0 - base) * (1.0 - (blend - 0.5));
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_HARD_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_HARD_LIGHT** = ``8``

Створіть ефект жорсткого світла за такою формулою:

::

    for (int i = 0; i < 3; i++) {
        float base = a[i];
        float blend = b[i];
        if (base < 0.5) {
            result[i] = base * (2.0 * blend);
        } else {
            result[i] = 1.0 - (1.0 - base) * (1.0 - 2.0 * (blend - 0.5));
        }
    }

.. _class_VisualShaderNodeColorOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **OP_MAX** = ``9``

Представляємо розмір об’єкту :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeColorOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeColorOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeColorOp_Operator>` **get_operator**\ (\ )

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
