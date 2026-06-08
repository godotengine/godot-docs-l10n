:github_url: hide

.. _class_RootMotionView:

RootMotionView
==============

**Успадковує:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Редактор-тільки помічник для налаштування кореневого руху :ref:`AnimationMixer<class_AnimationMixer>`.

.. rst-class:: classref-introduction-group

Опис
--------

*Root руху* відноситься до техніки анімації, де скелет сітки використовується для надання імпульсу до персонажа. При роботі з 3D-анімаціями популярна методика призначена для аніматорів, які використовують кістку кореневого скелета, щоб надати рух іншим скелетам. Це дозволяє анімувати символи таким чином, де кроки насправді відповідають підлозі нижче. Точна взаємодія з об’єктами під час кінематографії. Дивитися також :ref:`AnimationMixer<class_AnimationMixer>`.

\ **Примітка:** **RootMotionView** видно лише в редакторі. Він буде прихований автоматично в запущеному проекті.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Використання АнімаціяTree - кореневий рух <../tutorials/animation/animation_tree.html#root-motion>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`animation_path<class_RootMotionView_property_animation_path>` | ``NodePath("")``          |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`float<class_float>`       | :ref:`cell_size<class_RootMotionView_property_cell_size>`           | ``1.0``                   |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`Color<class_Color>`       | :ref:`color<class_RootMotionView_property_color>`                   | ``Color(0.5, 0.5, 1, 1)`` |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`float<class_float>`       | :ref:`radius<class_RootMotionView_property_radius>`                 | ``10.0``                  |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`bool<class_bool>`         | :ref:`zero_y<class_RootMotionView_property_zero_y>`                 | ``true``                  |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RootMotionView_property_animation_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **animation_path** = ``NodePath("")`` :ref:`🔗<class_RootMotionView_property_animation_path>`

.. rst-class:: classref-property-setget

- |void| **set_animation_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_animation_path**\ (\ )

Шлях до вершини :ref:`AnimationMixer<class_AnimationMixer>` для використання в основі кореневого руху.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``1.0`` :ref:`🔗<class_RootMotionView_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

Розмір осередку сітки в 3D одиниці.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0.5, 0.5, 1, 1)`` :ref:`🔗<class_RootMotionView_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

Колір сітки.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``10.0`` :ref:`🔗<class_RootMotionView_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Радіус сітки в 3D блоках. У зв'язку з тим, як правило, не буде досягнуто відступу від походження.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_zero_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **zero_y** = ``true`` :ref:`🔗<class_RootMotionView_property_zero_y>`

.. rst-class:: classref-property-setget

- |void| **set_zero_y**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_zero_y**\ (\ )

Якщо ``true``, то точки сітки все буде на одному координаті (*local* Y = 0). Якщо ``false``, збережено оригінальну координату точок.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
