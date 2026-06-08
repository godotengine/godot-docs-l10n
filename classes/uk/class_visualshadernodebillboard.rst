:github_url: hide

.. _class_VisualShaderNodeBillboard:

VisualShaderNodeBillboard
=========================

**Успадковує:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вузлом, який контролює те, як об'єкт зіткнувся з камерою, яка використовується в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Вихідний порт цієї вершини необхідно підключити до ``Model View Matrix`` порту :ref:`VisualShaderNodeOutput<class_VisualShaderNodeOutput>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` | :ref:`billboard_type<class_VisualShaderNodeBillboard_property_billboard_type>` | ``1``     |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`keep_scale<class_VisualShaderNodeBillboard_property_keep_scale>`         | ``false`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeBillboard_BillboardType:

.. rst-class:: classref-enumeration

enum **BillboardType**: :ref:`🔗<enum_VisualShaderNodeBillboard_BillboardType>`

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_DISABLED** = ``0``

Вимкнено і вузол нічого не робить.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_ENABLED** = ``1``

Увімкнено стандартний алгоритм обліку.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_FIXED_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_FIXED_Y** = ``2``

Увімкнено алгоритм врахування на осі Y.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_PARTICLES:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_PARTICLES** = ``3``

Увімкнути алгоритм врахування, призначений для використання на частинках.

.. _class_VisualShaderNodeBillboard_constant_BILLBOARD_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **BILLBOARD_TYPE_MAX** = ``4``

Представляємо розмір ``enumType`` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeBillboard_property_billboard_type:

.. rst-class:: classref-property

:ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **billboard_type** = ``1`` :ref:`🔗<class_VisualShaderNodeBillboard_property_billboard_type>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_type**\ (\ value\: :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>`\ )
- :ref:`BillboardType<enum_VisualShaderNodeBillboard_BillboardType>` **get_billboard_type**\ (\ )

Керує тим, як об'єкт спрямований до камери.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeBillboard_property_keep_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_scale** = ``false`` :ref:`🔗<class_VisualShaderNodeBillboard_property_keep_scale>`

.. rst-class:: classref-property-setget

- |void| **set_keep_scale_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keep_scale_enabled**\ (\ )

Якщо ``true``, то шейдер буде тримати ваговий набір для сітки. В іншому випадку вага втрачається при вексельній дошці.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
