:github_url: hide

.. _class_VisualShaderNodeIs:

VisualShaderNodeIs
==================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Оператор порівняння болеан для використання в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Повертаємо булевий результат порівняння між ``INF`` або ``NaN`` і параметром scalar.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeIs_Function>` | :ref:`function<class_VisualShaderNodeIs_property_function>` | ``0`` |
   +---------------------------------------------------+-------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeIs_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeIs_Function>`

.. _class_VisualShaderNodeIs_constant_FUNC_IS_INF:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIs_Function>` **FUNC_IS_INF** = ``0``

Порівняння ``INF`` (Infinity).

.. _class_VisualShaderNodeIs_constant_FUNC_IS_NAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIs_Function>` **FUNC_IS_NAN** = ``1``

Порівняння ``NaN`` (Not a Number; вказує недійсні неоднорідні результати, такі як поділ на нуль).

.. _class_VisualShaderNodeIs_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIs_Function>` **FUNC_MAX** = ``2``

Представляємо розмір занурення Функціональність.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeIs_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeIs_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeIs_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeIs_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeIs_Function>` **get_function**\ (\ )

Функція порівняння.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
