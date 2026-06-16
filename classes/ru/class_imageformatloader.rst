:github_url: hide

.. _class_ImageFormatLoader:

ImageFormatLoader
=================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`ImageFormatLoaderExtension<class_ImageFormatLoaderExtension>`

Базовый класс для добавления поддержки определенных форматов изображений.

.. rst-class:: classref-introduction-group

Описание
----------------

Движок изначально поддерживает множество форматов изображений (PNG, SVG, JPEG, WebP и многие другие), но вы можете реализовать поддержку дополнительных форматов изображений, расширив :ref:`ImageFormatLoaderExtension<class_ImageFormatLoaderExtension>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_ImageFormatLoader_LoaderFlags:

.. rst-class:: classref-enumeration

flags **LoaderFlags**: :ref:`🔗<enum_ImageFormatLoader_LoaderFlags>`

.. _class_ImageFormatLoader_constant_FLAG_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>` **FLAG_NONE** = ``0``

Поведение загрузки по умолчанию. Изображение не подвергается никакой обработке.

.. _class_ImageFormatLoader_constant_FLAG_FORCE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>` **FLAG_FORCE_LINEAR** = ``1``

Если задано, изображение преобразуется из sRGB в линейное кодирование.

.. _class_ImageFormatLoader_constant_FLAG_CONVERT_COLORS:

.. rst-class:: classref-enumeration-constant

:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>` **FLAG_CONVERT_COLORS** = ``2``

Если задано, к изображению применяется предопределенная цветовая карта. Используется, когда :ref:`ResourceImporterTexture.editor/convert_colors_with_editor_theme<class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme>` имеет значение ``true``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
