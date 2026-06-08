:github_url: hide

.. _class_ThemeDB:

ThemeDB
=======

**Успадковує:** :ref:`Object<class_Object>`

Однотон, який надає доступ до статичної інформації про ресурси :ref:`Theme<class_Theme>`, що використовуються двигуном і вашим проектом.

.. rst-class:: classref-introduction-group

Опис
--------

Цей однотон надає доступ до статичної інформації про ресурси :ref:`Theme<class_Theme>`, що використовуються двигуном і вашими проектами. Ви можете викинути тему за замовчуванням, а також ваш проект налаштовано тему.

\ **ThemeDB** також містить значення для темних властивостей.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`         | :ref:`fallback_base_scale<class_ThemeDB_property_fallback_base_scale>` | ``1.0`` |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`Font<class_Font>`           | :ref:`fallback_font<class_ThemeDB_property_fallback_font>`             |         |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`             | :ref:`fallback_font_size<class_ThemeDB_property_fallback_font_size>`   | ``16``  |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`fallback_icon<class_ThemeDB_property_fallback_icon>`             |         |
   +-----------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`fallback_stylebox<class_ThemeDB_property_fallback_stylebox>`     |         |
   +-----------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>` | :ref:`get_default_theme<class_ThemeDB_method_get_default_theme>`\ (\ ) |
   +---------------------------+------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>` | :ref:`get_project_theme<class_ThemeDB_method_get_project_theme>`\ (\ ) |
   +---------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_ThemeDB_signal_fallback_changed:

.. rst-class:: classref-signal

**fallback_changed**\ (\ ) :ref:`🔗<class_ThemeDB_signal_fallback_changed>`

Увімкнено, коли було змінено значення пада. Використовуйте його, щоб освіжити зовнішній вигляд контрольних елементів, які можуть спиратися на елементи теми запобіжника.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ThemeDB_property_fallback_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **fallback_base_scale** = ``1.0`` :ref:`🔗<class_ThemeDB_property_fallback_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_base_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fallback_base_scale**\ (\ )

Випадковий базовий ваговий фактор кожного вузла :ref:`Control<class_Control>` та :ref:`Theme<class_Theme>`. Використовуються при відсутності іншої вартості, доступні для контролю.

Дивись також :ref:`Theme.default_base_scale<class_Theme_property_default_base_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **fallback_font** :ref:`🔗<class_ThemeDB_property_fallback_font>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_fallback_font**\ (\ )

Доступний шрифт кожного вузла :ref:`Control<class_Control>` та :ref:`Theme<class_Theme>`. Використовуються при відсутності іншої вартості, доступні для контролю.

Дивись також :ref:`Theme.default_font<class_Theme_property_default_font>`.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_font_size** = ``16`` :ref:`🔗<class_ThemeDB_property_fallback_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_font_size**\ (\ )

Доступний розмір шрифту кожного вузла :ref:`Control<class_Control>` та :ref:`Theme<class_Theme>`. Використовуються при відсутності іншої вартості, доступні для контролю.

Дивись також :ref:`Theme.default_font_size<class_Theme_property_default_font_size>`.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **fallback_icon** :ref:`🔗<class_ThemeDB_property_fallback_icon>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_fallback_icon**\ (\ )

Ім'я користувача та посилання на сайт :ref:`Control<class_Control>` Використовуються при відсутності іншої вартості, доступні для контролю.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_property_fallback_stylebox:

.. rst-class:: classref-property

:ref:`StyleBox<class_StyleBox>` **fallback_stylebox** :ref:`🔗<class_ThemeDB_property_fallback_stylebox>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_stylebox**\ (\ value\: :ref:`StyleBox<class_StyleBox>`\ )
- :ref:`StyleBox<class_StyleBox>` **get_fallback_stylebox**\ (\ )

Скринька стилю пада кожного :ref:`Control<class_Control>` і :ref:`Theme<class_Theme>` ресурс. Використовуються при відсутності іншої вартості, доступні для контролю.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ThemeDB_method_get_default_theme:

.. rst-class:: classref-method

:ref:`Theme<class_Theme>` **get_default_theme**\ (\ ) :ref:`🔗<class_ThemeDB_method_get_default_theme>`

Повертає посилання на двигун за замовчуванням :ref:`Theme<class_Theme>`. Цей тематичний ресурс відповідає за зовнішній вигляд :ref:`Control<class_Control>` вузлів і не може передаватися.

.. rst-class:: classref-item-separator

----

.. _class_ThemeDB_method_get_project_theme:

.. rst-class:: classref-method

:ref:`Theme<class_Theme>` **get_project_theme**\ (\ ) :ref:`🔗<class_ThemeDB_method_get_project_theme>`

Повернення посилання на власний проект :ref:`Theme<class_Theme>`. Цей тематичний ресурс дозволяє перевизначити тему за замовчуванням для кожного вузла керування в проекті.

Щоб встановити тему проекту, див. :ref:`ProjectSettings.gui/theme/custom<class_ProjectSettings_property_gui/theme/custom>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
