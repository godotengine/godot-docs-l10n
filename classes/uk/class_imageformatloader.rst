:github_url: hide

.. _class_ImageFormatLoader:

ImageFormatLoader
=================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`ImageFormatLoaderExtension<class_ImageFormatLoaderExtension>`

Базовий клас для додавання підтримки окремих форматів зображень.

.. rst-class:: classref-introduction-group

Опис
--------

Двигун підтримує декілька форматів зображень з коробки (PNG, SVG, JPEG, WebP, щоб назвати кілька), але ви можете вибрати для реалізації підтримки додаткових форматів зображень шляхом розширення :ref:`ImageFormatLoaderExtension<class_ImageFormatLoaderExtension>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_ImageFormatLoader_LoaderFlags:

.. rst-class:: classref-enumeration

flags **LoaderFlags**: :ref:`🔗<enum_ImageFormatLoader_LoaderFlags>`

.. _class_ImageFormatLoader_constant_FLAG_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>` **FLAG_NONE** = ``0``

Стандартні параметри завантаження. Зображення не піддається жодній обробці.

.. _class_ImageFormatLoader_constant_FLAG_FORCE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>` **FLAG_FORCE_LINEAR** = ``1``

Якщо цей параметр встановлено, зображення конвертується з sRGB у лінійне кодування.

.. _class_ImageFormatLoader_constant_FLAG_CONVERT_COLORS:

.. rst-class:: classref-enumeration-constant

:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>` **FLAG_CONVERT_COLORS** = ``2``

Якщо цей параметр встановлено, до зображення застосовується попередньо визначена карта кольорів. Використовується, коли значення параметра :ref:`ResourceImporterTexture.editor/convert_colors_with_editor_theme<class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme>` дорівнює ``true``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
