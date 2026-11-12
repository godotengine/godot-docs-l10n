:github_url: hide

.. _class_ResourceImporterBMFont:

ResourceImporterBMFont
======================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпорт шрифту бітма в БМФонт (\ ``.fnt``) формат.

.. rst-class:: classref-introduction-group

Опис
--------

Формат BMFont - це формат, створений `BMFont <https://www.angelcode.com/products/bmfont/>`__ програма. Багато сумісних програм BBMFont також існують, як `BMGlyph <https://www.bmglyph.com/>`__.

Порівняно з :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`, **ResourceImporterBMFont** підтримує бітмакс шрифти з різною шириною Glyph/висота.

Дивитися також :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Bitmap шрифти - Використання шрифтів <../tutorials/ui/gui_using_fonts.html#bitmap-fonts>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`compress<class_ResourceImporterBMFont_property_compress>`         | ``true`` |
   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`Array<class_Array>` | :ref:`fallbacks<class_ResourceImporterBMFont_property_fallbacks>`       | ``[]``   |
   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`scaling_mode<class_ResourceImporterBMFont_property_scaling_mode>` | ``2``    |
   +---------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ResourceImporterBMFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterBMFont_property_compress>`

Якщо ``true``, використовує стиснення без втрат для отриманого шрифту.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBMFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterBMFont_property_fallbacks>`

Список шрифтів, що падає на використання, якщо гліф не знайдено в цьому шрифті бітма. Шрифти на початку масиву намагаються спочатку.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBMFont_property_scaling_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **scaling_mode** = ``2`` :ref:`🔗<class_ResourceImporterBMFont_property_scaling_mode>`

Режим масштабування шрифту.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
