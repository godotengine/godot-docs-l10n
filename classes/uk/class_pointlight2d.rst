:github_url: hide

.. meta::
	:keywords: omni, spot

.. _class_PointLight2D:

PointLight2D
============

**Успадковує:** :ref:`Light2D<class_Light2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Положення 2D джерела світла.

.. rst-class:: classref-introduction-group

Опис
--------

Заготовки світла в середовищі 2D. Ця форма світла визначається текстурою (зазвичай сірого розміру).

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`2D світильники та тіні <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`         | :ref:`height<class_PointLight2D_property_height>`               | ``0.0``           |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`offset<class_PointLight2D_property_offset>`               | ``Vector2(0, 0)`` |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_PointLight2D_property_texture>`             |                   |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`         | :ref:`texture_scale<class_PointLight2D_property_texture_scale>` | ``1.0``           |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PointLight2D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``0.0`` :ref:`🔗<class_PointLight2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Висота світла. Використовується з 2D нормальним картуванням. Агрегати знаходяться в пікселях, наприклад, якщо висота 100, то він висвітить об'єкт 100 пікселів під кутом 45° до площини.

.. rst-class:: classref-item-separator

----

.. _class_PointLight2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_PointLight2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_texture_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_offset**\ (\ )

Зміщення світлої текстури.

.. rst-class:: classref-item-separator

----

.. _class_PointLight2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_PointLight2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

:ref:`Texture2D<class_Texture2D>` використовується для зовнішнього вигляду світла.

.. rst-class:: classref-item-separator

----

.. _class_PointLight2D_property_texture_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_scale** = ``1.0`` :ref:`🔗<class_PointLight2D_property_texture_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texture_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_scale**\ (\ )

Масштабний коефіцієнт :ref:`texture<class_PointLight2D_property_texture>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
