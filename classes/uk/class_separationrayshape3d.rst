:github_url: hide

.. _class_SeparationRayShape3D:

SeparationRayShape3D
====================

**Успадковує:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

3D-променевої форми, що використовується для фізичного зіткнення, що намагається відокремити себе від будь-якого колажу.

.. rst-class:: classref-introduction-group

Опис
--------

Форма 3D променя, призначена для використання в фізиці. Зазвичай використовується для забезпечення форми :ref:`CollisionShape3D<class_CollisionShape3D>`. Коли **SeparationRayShape3D** колеги з об'єктом, вона намагається відокремити себе від неї, перемістивши кінцеву точку до точки зіткнення. Наприклад, **SeparationRayShape3D** поруч з символом може дозволити його миттєво перемістити при дотику сходів.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`length<class_SeparationRayShape3D_property_length>`                 | ``1.0``   |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`slide_on_slope<class_SeparationRayShape3D_property_slide_on_slope>` | ``false`` |
   +---------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SeparationRayShape3D_property_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **length** = ``1.0`` :ref:`🔗<class_SeparationRayShape3D_property_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

Довжина променів.

.. rst-class:: classref-item-separator

----

.. _class_SeparationRayShape3D_property_slide_on_slope:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **slide_on_slope** = ``false`` :ref:`🔗<class_SeparationRayShape3D_property_slide_on_slope>`

.. rst-class:: classref-property-setget

- |void| **set_slide_on_slope**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_slide_on_slope**\ (\ )

Якщо ``false`` (default), форма завжди відокремлює і повертає нормальний по своєму напрямку.

Якщо ``true``, форма може повернути правильний нормальний і відокремлений в будь-якому напрямку, що дозволяє ковзання руху на схилах.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
