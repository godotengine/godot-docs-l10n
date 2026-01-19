:github_url: hide

.. _class_EditorResourcePreviewGenerator:

EditorResourcePreviewGenerator
==============================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Призначений для користувача генератор попереднього перегляду.

.. rst-class:: classref-introduction-group

Опис
--------

Спеціальний код для створення попереднього перегляду. Перевірте :ref:`EditorSettings.filesystem/file_dialog/thumbnail_size<class_EditorSettings_property_filesystem/file_dialog/thumbnail_size>`, щоб знайти відповідний розмір для створення попереднього перегляду.

.. rst-class:: classref-reftable-group

Методи
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

Описи методів
--------------------------

.. _class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_generate_small_preview**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__can_generate_small_preview>`

Якщо ця функція повертає ``true``, генератор також викличе :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` або :ref:`_generate_from_path()<class_EditorResourcePreviewGenerator_private_method__generate_from_path>` для невеликих попередніх переглядів.

За замовчуванням вона повертає ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_generate**\ (\ resource\: :ref:`Resource<class_Resource>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate>`

Створіть попередній перегляд із заданого ресурсу з указаним розміром. Це потрібно завжди виконувати.

Повернення ``null`` — це нормальний спосіб вийти з ладу та дозволити іншому генератору подбати про це.

Потрібно бути обережним, оскільки ця функція завжди викликається з потоку (а не основного потоку).

Словник ``metadata`` можна змінити для зберігання метаданих файлів, які можна використовувати в :ref:`EditorResourceTooltipPlugin._make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` (наприклад, розмір зображення, довжина зразка тощо).

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate_from_path:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_generate_from_path**\ (\ path\: :ref:`String<class_String>`, size\: :ref:`Vector2i<class_Vector2i>`, metadata\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`

Створіть попередній перегляд безпосередньо з контуру вказаного розміру. Реалізація цього необов’язкова, оскільки код за замовчуванням завантажуватиме та викличе :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>`.

Повернення ``null`` — це нормальний спосіб вийти з ладу та дозволити іншому генератору подбати про це.

Потрібно бути обережним, оскільки ця функція завжди викликається з потоку (а не основного потоку).

Словник ``metadata`` можна змінити для зберігання метаданих файлів, які можна використовувати в :ref:`EditorResourceTooltipPlugin._make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` (наприклад, розмір зображення, довжина зразка тощо).

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_generate_small_preview_automatically**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__generate_small_preview_automatically>`

Якщо ця функція повертає ``true``, генератор автоматично генерує дрібні попередні перегляди з нормальної текстури попереднього перегляду, створеної методами :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>` або :ref:`_generate_from_path()<class_EditorResourcePreviewGenerator_private_method__generate_from_path>`.

За зам овчуванням, він повертає ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorResourcePreviewGenerator_private_method__handles>`

Повертає ``true``, якщо ваш генератор підтримує ресурс типу ``type``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourcePreviewGenerator_method_request_draw_and_wait:

.. rst-class:: classref-method

|void| **request_draw_and_wait**\ (\ viewport\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_EditorResourcePreviewGenerator_method_request_draw_and_wait>`

Викличте метод :ref:`_generate()<class_EditorResourcePreviewGenerator_private_method__generate>`, щоб запросити відображення сервера рендерингу в області перегляду ``viewport``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
