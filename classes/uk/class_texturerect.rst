:github_url: hide

.. _class_TextureRect:

TextureRect
===========

**Успадковує:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Контроль, що відображає фактуру.

.. rst-class:: classref-introduction-group

Опис
--------

Контроль, який відображає текстуру, наприклад іконку всередині GUI. Влаштування текстури можна контролювати за допомогою об'єкта :ref:`розтяжки_mode<class_TextureRect_property_розтяжки_mode>`. Вона може масштабувати, плитку або залишатися в центрі уваги прямокутника.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Демонстрація 3D вокселів <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`ExpandMode<enum_TextureRect_ExpandMode>`   | :ref:`expand_mode<class_TextureRect_property_expand_mode>`   | ``0``                                                                 |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flip_h<class_TextureRect_property_flip_h>`             | ``false``                                                             |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flip_v<class_TextureRect_property_flip_v>`             | ``false``                                                             |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`     | mouse_filter                                                 | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`StretchMode<enum_TextureRect_StretchMode>` | :ref:`stretch_mode<class_TextureRect_property_stretch_mode>` | ``0``                                                                 |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                | :ref:`texture<class_TextureRect_property_texture>`           |                                                                       |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_TextureRect_ExpandMode:

.. rst-class:: classref-enumeration

enum **ExpandMode**: :ref:`🔗<enum_TextureRect_ExpandMode>`

.. _class_TextureRect_constant_EXPAND_KEEP_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_KEEP_SIZE** = ``0``

Мінімальний розмір буде дорівнює фактурі, тобто **TextureRect** не може бути меншим, ніж текстура.

.. _class_TextureRect_constant_EXPAND_IGNORE_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_IGNORE_SIZE** = ``1``

Розмір текстури не буде вважатися для розрахунку мінімального розміру, тому **TextureRect** може бути об'ємом минулого розміру текстури.

.. _class_TextureRect_constant_EXPAND_FIT_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_WIDTH** = ``2``

Висота текстури буде ігноруватися. Мінімальна ширина буде дорівнює поточній висоті. Корисні для горизонтальних макетів, наприклад, всередині :ref:`HBoxContainer<class_HBoxContainer>`.

.. _class_TextureRect_constant_EXPAND_FIT_WIDTH_PROPORTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_WIDTH_PROPORTIONAL** = ``3``

Так само, як :ref:`EXPAND_FIT_WIDTH<class_TextureRect_constant_EXPAND_FIT_WIDTH>`, але зберігає співвідношення фактури.

.. _class_TextureRect_constant_EXPAND_FIT_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_HEIGHT** = ``4``

Ширина текстури буде ігноруватися. Мінімальна висота буде дорівнює точну ширину. Корисно для вертикальних макетів, наприклад, всередині :ref:`VBoxContainer<class_VBoxContainer>`.

.. _class_TextureRect_constant_EXPAND_FIT_HEIGHT_PROPORTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_HEIGHT_PROPORTIONAL** = ``5``

Так само, як :ref:`EXPAND_FIT_HEIGHT<class_TextureRect_constant_EXPAND_FIT_HEIGHT>`, але зберігає співвідношення фактури.

.. rst-class:: classref-item-separator

----

.. _enum_TextureRect_StretchMode:

.. rst-class:: classref-enumeration

enum **StretchMode**: :ref:`🔗<enum_TextureRect_StretchMode>`

.. _class_TextureRect_constant_STRETCH_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_SCALE** = ``0``

Ваги, щоб відповідати прямокутника вузла.

.. _class_TextureRect_constant_STRETCH_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_TILE** = ``1``

Розміщення плиток у межах обмежувального прямокутника вузла.

\ **Примітка:** Режим :ref:`STRETCH_TILE<class_TextureRect_constant_STRETCH_TILE>` не підтримується, якщо для :ref:`texture<class_TextureRect_property_texture>` встановлено значення :ref:`AtlasTexture<class_AtlasTexture>` з ненульовим значенням :ref:`AtlasTexture.margin<class_AtlasTexture_property_margin>`.

.. _class_TextureRect_constant_STRETCH_KEEP:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP** = ``2``

Текстура зберігає свій оригінальний розмір і залишається в межі верхнього кута прямокутника.

.. _class_TextureRect_constant_STRETCH_KEEP_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_CENTERED** = ``3``

Текстура зберігає свій оригінальний розмір і залишається в центрі уваги вершини прямокутника.

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT** = ``4``

Ваги текстури, щоб відповідати прямокутника вершини, але підтримувати співвідношення фактури.

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT_CENTERED** = ``5``

Ваги текстури, щоб відповідати прямокутника вершини, його центр і підтримувати його співвідношення сторін.

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT_COVERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT_COVERED** = ``6``

Ваги текстури так, щоб коротша сторона підіймала прямокутник. З іншого боку кліпи на межі вершини.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_TextureRect_property_expand_mode:

.. rst-class:: classref-property

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **expand_mode** = ``0`` :ref:`🔗<class_TextureRect_property_expand_mode>`

.. rst-class:: classref-property-setget

- |void| **set_expand_mode**\ (\ value\: :ref:`ExpandMode<enum_TextureRect_ExpandMode>`\ )
- :ref:`ExpandMode<enum_TextureRect_ExpandMode>` **get_expand_mode**\ (\ )

**Експериментальний:** Using :ref:`EXPAND_FIT_WIDTH<class_TextureRect_constant_EXPAND_FIT_WIDTH>`, :ref:`EXPAND_FIT_WIDTH_PROPORTIONAL<class_TextureRect_constant_EXPAND_FIT_WIDTH_PROPORTIONAL>`, :ref:`EXPAND_FIT_HEIGHT<class_TextureRect_constant_EXPAND_FIT_HEIGHT>`, or :ref:`EXPAND_FIT_HEIGHT_PROPORTIONAL<class_TextureRect_constant_EXPAND_FIT_HEIGHT_PROPORTIONAL>` may result in unstable behavior in some :ref:`Container<class_Container>` controls. This behavior may be re-evaluated and changed in the future.

Визначає, як мінімальний розмір визначається на основі розміру текстури.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TextureRect_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Якщо ``true``, текстура віддзеркалюється горизонтально.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TextureRect_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Якщо ``true``, текстура віддзеркалюється вертикально.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_TextureRect_StretchMode>` **stretch_mode** = ``0`` :ref:`🔗<class_TextureRect_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_TextureRect_StretchMode>`\ )
- :ref:`StretchMode<enum_TextureRect_StretchMode>` **get_stretch_mode**\ (\ )

Керує поведінкою текстури під час зміни розміру обмежувального прямокутника вузла.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_TextureRect_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Ресурс вершини :ref:`Texture2D<class_Texture2D>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
