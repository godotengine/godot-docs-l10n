:github_url: hide

.. _class_BoxContainer:

BoxContainer
============

**Успадковує:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`HBoxContainer<class_HBoxContainer>`, :ref:`VBoxContainer<class_VBoxContainer>`

Контейнер, який розташовує дочірні елементи керування горизонтально або вертикально.

.. rst-class:: classref-introduction-group

Опис
--------

Контейнер, який розташовує дочірні елементи керування горизонтально або вертикально, змінюючи їх автоматично, коли змінюється їхній мінімальний розмір.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання контейнерів <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------+-----------+
   | :ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` | :ref:`alignment<class_BoxContainer_property_alignment>`       | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`reverse_sort<class_BoxContainer_property_reverse_sort>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`vertical<class_BoxContainer_property_vertical>`         | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>` | :ref:`add_spacer<class_BoxContainer_method_add_spacer>`\ (\ begin\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`separation<class_BoxContainer_theme_constant_separation>` | ``4`` |
   +-----------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_BoxContainer_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_BoxContainer_AlignmentMode>`

.. _class_BoxContainer_constant_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **ALIGNMENT_BEGIN** = ``0``

Дочірні елементи керування будуть розташовані на початку контейнера, тобто вгорі, якщо орієнтація вертикальна, ліворуч, якщо орієнтація горизонтальна (праворуч для компонування RTL).

.. _class_BoxContainer_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

Дочірні елементи керування будуть розташовані в центрі контейнера.

.. _class_BoxContainer_constant_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **ALIGNMENT_END** = ``2``

Дочірні елементи керування будуть розташовані в кінці контейнера, тобто внизу, якщо орієнтація вертикальна, праворуч, якщо орієнтація горизонтальна (ліворуч для компонування RTL).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_BoxContainer_property_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **alignment** = ``0`` :ref:`🔗<class_BoxContainer_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_BoxContainer_AlignmentMode>` **get_alignment**\ (\ )

Вирівнювання дочірніх елементів контейнера (має бути одним із :ref:`ALIGNMENT_BEGIN<class_BoxContainer_constant_ALIGNMENT_BEGIN>`, :ref:`ALIGNMENT_CENTER<class_BoxContainer_constant_ALIGNMENT_CENTER>` або :ref:`ALIGNMENT_END<class_BoxContainer_constant_ALIGNMENT_END>`).

.. rst-class:: classref-item-separator

----

.. _class_BoxContainer_property_reverse_sort:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverse_sort** = ``false`` :ref:`🔗<class_BoxContainer_property_reverse_sort>`

.. rst-class:: classref-property-setget

- |void| **set_reverse_sort**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reverse_sort**\ (\ )

If ``true``, the **BoxContainer** will arrange its children in reverse order.

.. rst-class:: classref-item-separator

----

.. _class_BoxContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_BoxContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Якщо ``true``, **BoxContainer** розташовуватиме своїх дітей вертикально, а не горизонтально.

 Не можна змінити під час використання :ref:`HBoxContainer<class_HBoxContainer>` і :ref:`VBoxContainer<class_VBoxContainer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_BoxContainer_method_add_spacer:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **add_spacer**\ (\ begin\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoxContainer_method_add_spacer>`

Додає вузол :ref:`Control<class_Control>` до поля як прокладку. Якщо ``begin`` має значення ``true``, вузол :ref:`Control<class_Control>` буде вставлено перед усіма іншими дочірніми елементами.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_BoxContainer_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``4`` :ref:`🔗<class_BoxContainer_theme_constant_separation>`

Відстань між елементами **BoxContainer** у пікселях.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
