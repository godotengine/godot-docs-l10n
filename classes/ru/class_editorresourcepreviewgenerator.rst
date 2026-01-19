:github_url: hide

.. _class_EditorResourcePreviewGenerator:

EditorResourcePreviewGenerator
==============================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Пользовательский генератор превью.

.. rst-class:: classref-introduction-group

Описание
----------------

Пользовательский код для создания предпросмотров. Проверьте :ref:`EditorSettings.filesystem/file_dialog/thumbnail_size<class_EditorSettings_property_filesystem/file_dialog/thumbnail_size>`, чтобы найти подходящий размер для создания предпросмотров.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_can_generate_small_preview<class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview>`\ (\ ) |virtual| |const|                                                                                                             |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_generate<class_EditorResourcePreviewGenerator_private_method__generate>`\ (\ resource\: :ref:`Resource<class_Resource>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| |const|  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_generate_from_path<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`\ (\ path\: :ref:`String<class_String>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_generate_small_preview_automatically<class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically>`\ (\ ) |virtual| |const|                                                                                         |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_handles<class_EditorResourcePreviewGenerator_private_method__handles>`\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |required| |const|                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`request_draw_and_wait<class_EditorResourcePreviewGenerator_method_request_draw_and_wait>`\ (\ viewport\: :ref:`RID<class_RID>`\ ) |const|                                                                                                         |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_generate_small_preview**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview>`

Если эта функция возвращает ``true``, генератор также вызовет :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` или :ref:`_generate_from_path()<class_EditorResourcePreviewGenerator_private_method__generate_from_path>` для небольших предпросмотров.

По умолчанию он возвращает ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_generate**\ (\ resource\: :ref:`Resource<class_Resource>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate>`

Сгенерировать предварительный просмотр из заданного ресурса с указанным размером. Это всегда должно быть реализовано.

Возврат ``null`` — это нормальный способ потерпеть неудачу и позволить другому генератору позаботиться об этом.

Необходимо соблюдать осторожность, поскольку эта функция всегда вызывается из потока (не основного потока).

Словарь ``metadata`` можно изменить для хранения метаданных, специфичных для файла, которые можно использовать в :ref:`EditorResourceTooltipPlugin._make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` (например, размер изображения, длина выборки и т. д.).

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate_from_path:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_generate_from_path**\ (\ path\: :ref:`String<class_String>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`

Сгенерировать предварительный просмотр непосредственно из пути с указанным размером. Реализация этого необязательна, так как код по умолчанию загрузит и вызовет :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>`.

Возврат ``null`` — это нормальный способ потерпеть неудачу и позволить другому генератору позаботиться об этом.

Необходимо соблюдать осторожность, поскольку эта функция всегда вызывается из потока (не основного потока).

Словарь ``metadata`` можно изменить для хранения метаданных, специфичных для файла, которые можно использовать в :ref:`EditorResourceTooltipPlugin._make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` (например, размер изображения, длина выборки и т. д.).

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_generate_small_preview_automatically**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically>`

Если эта функция возвращает ``true``, генератор автоматически сгенерирует небольшие превью из обычной текстуры превью, сгенерированной методами :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` или :ref:`_generate_from_path()<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`.

По умолчанию он возвращает ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__handles>`

Возвращает ``true``, если ваш генератор поддерживает ресурс типа ``type``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_method_request_draw_and_wait:

.. rst-class:: classref-method

|void| **request_draw_and_wait**\ (\ viewport\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_EditorResourcePreviewGenerator_method_request_draw_and_wait>`

Вызовите метод из :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>`, чтобы запросить у сервера рендеринга отрисовку в ``viewport``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
