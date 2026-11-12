:github_url: hide

.. _class_ConcavePolygonShape2D:

ConcavePolygonShape2D
=====================

**Успадковує:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Полілінна форма 2D використовується для зіткнення фізики.

.. rst-class:: classref-introduction-group

Опис
--------

Полілінна форма 2D, призначена для використання в фізиці. Використовується внутрішньо в режимі :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`, коли це в режимі :ref:`CollisionPolygon2D.BUILD_SEGMENTS<class_CollisionPolygon2D_constant_BUILD_SEGMENTS>`.

\ **ConcavePolygonShape2D** є найбільш вільно налаштованою формою 2D. Можна використовувати для формування полігонів будь-якого характеру, або навіть форми, які не закривають територію. Тим не менш, **ConcavePolygonShape2D** *hollow* навіть якщо міжключені сегменти ліній не закривають область, яка часто робить його непридатними для фізики або виявлення.

\ **Примітка:** При використанні для зіткнення **ConcavePolygonShape2D** призначений для роботи з статичними :ref:`CollisionShape2D<class_CollisionShape2D>` вершинами, такими як :ref:`StaticBody2D<class_StaticBody2D>` і, ймовірно, не буде добре для :ref:`CharacterBody2D<class_CharacterBody2D>` або :ref:`RigidBody2D<class_RigidBody2D>` в режимі, крім Static.

\ **Налаштування:** Фізико-фізичні органи, які мають невелику можливість затискати через цю форму при переході швидко. Це відбувається тому, що на одному кадрі, тіло фізики може бути на "зовнішній" форми, а на наступному кадрі може бути "посередині". **ConcavePolygonShape2D** є порожнистим, тому він не виявить зіткнення.

\ **Продуктивність:** Завдяки своїй складності **ConcavePolygonShape2D** є найбільш повільною формою зіткнення 2D для перевірки зіткнення. Його використання, як правило, обмежується геометрією рівня. Якщо полілін закритий, :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>` можна використовувати режим, який розпоряджує полігон в опуклих; див. :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>` для інструкцій.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`segments<class_ConcavePolygonShape2D_property_segments>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ConcavePolygonShape2D_property_segments:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **segments** = ``PackedVector2Array()`` :ref:`🔗<class_ConcavePolygonShape2D_property_segments>`

.. rst-class:: classref-property-setget

- |void| **set_segments**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_segments**\ (\ )

Масив точок, які складають **ConcavePolygonShape2D**. масив (від довжини дівидимого по два) природним чином розділений на пари (один пара для кожного сегмента); кожна пара складається з початкової точки сегмента і кінцевої точки сегмента.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
