:github_url: hide

.. _class_StyleBoxLine:

StyleBoxLine
============

**Успадковує:** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`StyleBox<class_StyleBox>`, що відображає єдину лінію заданого кольору та товщини.

.. rst-class:: classref-introduction-group

Опис
--------

:ref:`StyleBox<class_StyleBox>`, що відображає єдину лінію заданого кольору та товщини. Лінія може бути горизонтальною або вертикальною. Корисно для сепараторів.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`color<class_StyleBoxLine_property_color>`           | ``Color(0, 0, 0, 1)`` |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`grow_begin<class_StyleBoxLine_property_grow_begin>` | ``1.0``               |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`grow_end<class_StyleBoxLine_property_grow_end>`     | ``1.0``               |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`     | :ref:`thickness<class_StyleBoxLine_property_thickness>`   | ``1``                 |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`vertical<class_StyleBoxLine_property_vertical>`     | ``false``             |
   +---------------------------+-----------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_StyleBoxLine_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_StyleBoxLine_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

Колір лінії.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_grow_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **grow_begin** = ``1.0`` :ref:`🔗<class_StyleBoxLine_property_grow_begin>`

.. rst-class:: classref-property-setget

- |void| **set_grow_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_grow_begin**\ (\ )

Кількість пікселів лінія буде розширюватися до меж **StyleBoxLine**. Якщо встановити на негативне значення, рядок почнеться всередині меж **StyleBoxLine**.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_grow_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **grow_end** = ``1.0`` :ref:`🔗<class_StyleBoxLine_property_grow_end>`

.. rst-class:: classref-property-setget

- |void| **set_grow_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_grow_end**\ (\ )

Кількість пікселів лінія подовжить минулі межі **StyleBoxLine**. Якщо встановити на негативне значення, рядок буде завершена всередині меж **StyleBoxLine**.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_thickness:

.. rst-class:: classref-property

:ref:`int<class_int>` **thickness** = ``1`` :ref:`🔗<class_StyleBoxLine_property_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_thickness**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_thickness**\ (\ )

Товщина лінії в пікселів.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_StyleBoxLine_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Якщо ``true``, рядок буде вертикальним. Якщо ``false``, лінія буде горизонтальною.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
