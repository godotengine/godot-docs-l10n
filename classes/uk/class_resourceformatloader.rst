:github_url: hide

.. _class_ResourceFormatLoader:

ResourceFormatLoader
====================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Завантаження певного ресурсу з файлу.

.. rst-class:: classref-introduction-group

Опис
--------

Godot завантажує ресурсів в редакторі або в експортованих іграх за допомогою ResourceFormatLoaders. Вони автоматично перераховуються за допомогою однотону :ref:`ResourceLoader<class_ResourceLoader>` або при завантаженні ресурсу з внутрішніми залежностями. Кожен тип файлів може навантажувати як інший тип ресурсу, так що кілька ResourceFormatLoaders зареєстровані в двигуні.

Продовжити цей клас дозволяє самостійно визначити навантажувач. Обов'язково поважати типи документів і значення. Для цього необхідно вказати назву світового класу ``class_name``. Як вбудовані ResourceFormatLoaders, він буде називатися автоматично при завантаженні ресурсів ручного типу (s). Ви також можете реалізувати :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Примітка:** Ви також можете продовжити :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, якщо ресурсний тип, який вам потрібно, але Godot не може завантажувати свій формат. Вибираючи один спосіб над іншим залежить від того, чи підходить формат або не для остаточної експортованої гри. Наприклад, краще імпортувати ``.png`` текстури, як ``.ctex`` (:ref:`CompressedTexture2D<class_CompressedTexture2D>`), щоб вони могли бути завантажені кращою ефективністю на графічному картці.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_exists<class_ResourceFormatLoader_private_method__exists>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                    |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_classes_used<class_ResourceFormatLoader_private_method__get_classes_used>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_dependencies<class_ResourceFormatLoader_private_method__get_dependencies>`\ (\ path\: :ref:`String<class_String>`, add_types\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ResourceFormatLoader_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const|                                                                                                                                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_resource_script_class<class_ResourceFormatLoader_private_method__get_resource_script_class>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_resource_type<class_ResourceFormatLoader_private_method__get_resource_type>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_resource_uid<class_ResourceFormatLoader_private_method__get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handles_type<class_ResourceFormatLoader_private_method__handles_type>`\ (\ type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_load<class_ResourceFormatLoader_private_method__load>`\ (\ path\: :ref:`String<class_String>`, original_path\: :ref:`String<class_String>`, use_sub_threads\: :ref:`bool<class_bool>`, cache_mode\: :ref:`int<class_int>`\ ) |virtual| |required| |const| |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize_path<class_ResourceFormatLoader_private_method__recognize_path>`\ (\ path\: :ref:`String<class_String>`, type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_rename_dependencies<class_ResourceFormatLoader_private_method__rename_dependencies>`\ (\ path\: :ref:`String<class_String>`, renames\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const|                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_ResourceFormatLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceFormatLoader_CacheMode>`

.. _class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

Не виходячи з основного ресурсу (за запитом, який буде завантажений) або будь-який його субресурси отримують з кешу, а не зберігаються в ньому. Залежності (зовнішні ресурси) навантажуються :ref:`CACHE_MODE_REUSE<class_ResourceFormatLoader_constant_CACHE_MODE_REUSE>`.

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

Основним ресурсом (за запитом, який буде завантажений), його субресурси та його залежності (зовнішні ресурси) отримуються з кешу, якщо присутні, замість завантажених. Ті, які не завантажуються, а потім зберігаються в кеші. Ці ж правила пропагуються прямо на дерево залежностей (зовнішні ресурси).

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

Як :ref:`CACHE_MODE_REUSE<class_ResourceFormatLoader_constant_CACHE_MODE_REUSE>`, але кеш перевіряється на основний ресурс (за запитом, який буде завантажений) і для кожного його субресурсів. Тим не менш, у кеш-пам'яті з’являються дані, які оцінюються від зберігання в вже існуючі екземпляри. В іншому випадку вони відтворюються як абсолютно нові об'єкти.

.. _class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

Як :ref:`CACHE_MODE_IGNORE<class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE>`, але пропагований рекурсивно вниз дерево залежностей (зовнішні ресурси).

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

Як :ref:`CACHE_MODE_REPLACE<class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE>`, але пропагований рекурсивно вниз дерево залежностей (зовнішні ресурси).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ResourceFormatLoader_private_method__exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_exists**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__exists>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_classes_used:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_classes_used**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_classes_used>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_dependencies**\ (\ path\: :ref:`String<class_String>`, add_types\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_dependencies>`

Повинно повертати залежності для ресурсу за вказаним ``path``. Кожна залежність – це рядок, що складається з однієї-трьох секцій, розділених ``::``, з пропущеними порожніми секціями в кінці:

- Перша секція повинна містити UID, якщо ресурс має його. В іншому випадку вона повинна містити шлях до файлу.

- Друга секція повинна містити назву класу залежності, якщо ``add_types`` має бути ``true``. В іншому випадку вона повинна бути порожньою.

- Третя секція повинна містити резервний шлях, якщо ресурс має UID. В іншому випадку вона повинна бути порожньою.

::

    func _get_dependencies(path, add_types):
    return [
    "uid://fqgvuwrkuixh::Script::res://script.gd",
    "uid://fqgvuwrkuixh::::res://script.gd",
    "res://script.gd::Script",
    "res://script.gd",
    ]

\ **Примітка:** Користувацькі типи ресурсів, визначені скриптами, не відомі :ref:`ClassDB<class_ClassDB>`, тому для назви класу можна використовувати ``"Resource"``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_recognized_extensions>`

Отримати список розширень для файлів цей навантажувач здатний читати.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_script_class:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_script_class**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_script_class>`

Повертає назву класу скрипта, пов'язаного з :ref:`Resource<class_Resource>` у вказаному ``path``. Якщо ресурс не має скрипта або скрипт не є іменованим класом, він має повернути ``""``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_type**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_type>`

Отримує назву класу ресурсу, пов'язаного з даним контуром. Якщо навантажувач не може працювати, він повинен повернутися ``""``.

\ **Примітка:** Користувальницькі типи ресурсів, визначені скриптами, не відомі :ref:`ClassDB<class_ClassDB>`, тому ви можете просто повернути ``"Resource"`` для них.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_uid>`

Має повертати унікальний ідентифікатор для ресурсу, пов’язаного з заданим шляхом. Якщо цей метод не перевизначено, файл ``.uid`` генерується разом із файлом ресурсу, що містить унікальний ідентифікатор.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__handles_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles_type**\ (\ type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__handles_type>`

Повідомляємо, що ресурсний клас цей навантажувач може навантажуватися.

\ **Примітка:** Користувальницькі типи ресурсів, визначені скриптами, не відомі :ref:`ClassDB<class_ClassDB>`, тому ви можете просто обробляти ``"Resource"`` для них.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__load:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_load**\ (\ path\: :ref:`String<class_String>`, original_path\: :ref:`String<class_String>`, use_sub_threads\: :ref:`bool<class_bool>`, cache_mode\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__load>`

Завантажує ресурс, коли механізм виявляє, що цей завантажувач сумісний. Якщо завантажений ресурс є результатом імпорту, ``original_path`` буде орієнтований на вихідний файл. Повертає об'єкт :ref:`Resource<class_Resource>` у разі успіху або константу :ref:`Error<enum_@GlobalScope_Error>` у разі невдачі.

Властивість ``cache_mode`` визначає, чи слід використовувати або оновлювати кеш під час завантаження ресурсу, і як. Див. :ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` для отримання детальної інформації.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__recognize_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize_path**\ (\ path\: :ref:`String<class_String>`, type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__recognize_path>`

Вказує, чи повинен цей завантажувач завантажувати ресурс зі свого шляху до ресурсу для заданого типу.

Якщо це не реалізовано, поведінка за замовчуванням повертає, чи знаходиться розширення шляху в межах наданих методом :ref:`_get_recognized_extensions()<class_ResourceFormatLoader_private_method__get_recognized_extensions>`, і чи знаходиться тип в межах наданих методом :ref:`_get_resource_type()<class_ResourceFormatLoader_private_method__get_resource_type>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__rename_dependencies:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_rename_dependencies**\ (\ path\: :ref:`String<class_String>`, renames\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__rename_dependencies>`

Якщо реалізовано, перейменовує залежності в межах заданого ресурсу та зберігає його. ``renames`` – це словник ``{ String => String }``, який зіставляє старі шляхи залежностей з новими шляхами.

Повертає :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` у разі успіху або константу :ref:`Error<enum_@GlobalScope_Error>` у разі невдачі.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
