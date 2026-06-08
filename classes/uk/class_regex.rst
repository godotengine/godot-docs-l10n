:github_url: hide

.. _class_RegEx:

RegEx
=====

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Клас пошуку тексту для шаблонів з використанням формальних виразів.

.. rst-class:: classref-introduction-group

Опис
--------

Регулярний вираз (або regex) – це компактна мова, яку можна використовувати для розпізнавання рядків, що відповідають певному шаблону, такому як URL-адреси, адреси електронної пошти, повні речення тощо. Наприклад, регулярний вираз ``ab[0-9]`` знайде будь-який рядок, який складається з ``ab``, за яким йде будь-яке число від ``0`` до ``9``. Для більш детального ознайомлення ви можете легко знайти різні навчальні посібники та детальні пояснення в Інтернеті.

Для початку об'єкт RegEx потрібно скомпілювати з використанням шаблону пошуку за допомогою методу ``compile``, перш ніж його можна буде використовувати. Крім того, статичний метод :ref:`create_from_string()<class_RegEx_method_create_from_string>` можна використовувати для створення та компіляції об'єкта RegEx за один виклик методу.

 
::


var regex = RegEx.new()

regex.compile("\\w-(\\d+)")

# Скорочений запис для створення та компіляції регулярного виразу (використовується в прикладах нижче):

var regex2 = RegEx.create_from_string("\\w-(\\d+)")


Шаблон пошуку має бути екранований для GDScript, перш ніж він буде екранований для виразу. Наприклад, ``compile("\\d+")`` буде прочитано RegEx як ``\d+``. Аналогічно, ``compile("\"(?:\\\\.|[^\"])*\"")`` буде прочитано як ``"(?:\\.|[^"])*"``. У GDScript також можна використовувати необроблені рядкові літерали (r-рядки). Наприклад, ``compile(r'"(?:\\.|[^"])*"')`` буде прочитано так само.

Використовуючи :ref:`search()<class_RegEx_method_search>`, ви можете знайти шаблон у заданому тексті. Якщо шаблон знайдено, повертається :ref:`RegExMatch<class_RegExMatch>`, і ви можете отримати детальну інформацію про результати за допомогою таких методів, як :ref:`RegExMatch.get_string()<class_RegExMatch_method_get_string>` та :ref:`RegExMatch.get_start()<class_RegExMatch_method_get_start>`.

::

    var regex = RegEx.create_from_string("\\w-(\\d+)")
    var result = regex.search("abc n-0123")
    if result:
    print(result.get_string()) # Виводить "n-0123"

Результати захоплення груп ``()`` можна отримати, передавши номер групи різним методам у :ref:`RegExMatch<class_RegExMatch>`. Група 0 є групою за замовчуванням і завжди посилатиметься на весь шаблон. У наведеному вище прикладі виклик ``result.get_string(1)`` видасть вам ``0123``.

Ця версія RegEx також підтримує іменовані групи захоплення, імена яких можна використовувати для отримання результатів. Якщо дві або більше груп мають однакову назву, назва посилатиметься лише на першу з них, яка відповідає.

::

    var regex = RegEx.create_from_string("d(?<digit>[0-9]+)|x(?<digit>[0-9a-f]+)")
    var result = regex.search("число дорівнює x2f")
    if result:
    print(result.get_string("digit")) # Виводить "2f"

Якщо вам потрібно обробити кілька результатів, :ref:`search_all()<class_RegEx_method_search_all>` генерує список усіх результатів, що не перекриваються. Для зручності це можна поєднати з циклом ``for``.

::

    # Виводить "01 03 0 3f  42"
    for result in regex.search_all("d01, d03, d0c, x3f та x42"):
    print(result.get_string("digit"))

\ **Приклад:** Розділити рядок за допомогою RegEx:

::

    var regex = RegEx.create_from_string("\\S+") # Клас символів пробілу з запереченням.
    var results = []
    for result in regex.search_all("Один Два \n\tТри"):
    results.push_back(result.get_string())
    print(results) # Виводить ["Один", "Два", "Три"]

\ **Примітка:** Реалізація регулярних виразів Godot базується на бібліотеці `PCRE2 <https://www.pcre.org/>`__. Ви можете переглянути повний довідник зі шаблоном `тут <https://www.pcre.org/current/doc/html/pcre2pattern.html>`__.

\ **Порада:** Ви можете використовувати `Regexr <https://regexr.com/>`__ для перевірки регулярних виразів онлайн.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear<class_RegEx_method_clear>`\ (\ )                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`compile<class_RegEx_method_compile>`\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ )                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RegEx<class_RegEx>`                                        | :ref:`create_from_string<class_RegEx_method_create_from_string>`\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static|                                                                             |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_group_count<class_RegEx_method_get_group_count>`\ (\ ) |const|                                                                                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_names<class_RegEx_method_get_names>`\ (\ ) |const|                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_pattern<class_RegEx_method_get_pattern>`\ (\ ) |const|                                                                                                                                                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_valid<class_RegEx_method_is_valid>`\ (\ ) |const|                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RegExMatch<class_RegExMatch>`                              | :ref:`search<class_RegEx_method_search>`\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const|                                                                             |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] | :ref:`search_all<class_RegEx_method_search_all>`\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const|                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`sub<class_RegEx_method_sub>`\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RegEx_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_RegEx_method_clear>`

Цей метод скидає стан об'єкта, якщо він був свіжо створений. Назволяє формальне вираз цього об’єкта.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_compile:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **compile**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_RegEx_method_compile>`

Компілюється та призначає шаблон пошуку для використання. Повертає :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, якщо компіляція успішна. Якщо компіляція не вдається, повертає :ref:`@GlobalScope.FAILED<class_@GlobalScope_constant_FAILED>`, а коли ``show_error`` має значення ``true``, деталі виводяться на стандартний вивід.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_create_from_string:

.. rst-class:: classref-method

:ref:`RegEx<class_RegEx>` **create_from_string**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static| :ref:`🔗<class_RegEx_method_create_from_string>`

Створює та компілює новий об'єкт **RegEx**. Див. також :ref:`compile()<class_RegEx_method_compile>`.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_group_count>`

Повертає кількість захоплюючих груп в складеному шаблоні.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_names**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_names>`

Повертає масив імен названих груп захоплення в складеному шаблоні. Вони замовляється зовнішнім виглядом.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_pattern:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_pattern**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_pattern>`

Повертає оригінальний шаблон пошуку, який був складений.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RegEx_method_is_valid>`

Повертаємо вашу увагу на те, що цей об'єкт має дійсний шаблон пошуку.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search:

.. rst-class:: classref-method

:ref:`RegExMatch<class_RegExMatch>` **search**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search>`

Шукає в тексті скомпільований шаблон. Повертає контейнер :ref:`RegExMatch<class_RegExMatch>` першого збігу, якщо знайдено, інакше ``null``.

Регіон для пошуку можна вказати за допомогою ``offset`` та ``end``. Це корисно під час пошуку іншого збігу в тому ж ``subject`` шляхом повторного виклику цього методу після попереднього успіху. Зверніть увагу, що встановлення цих параметрів відрізняється від передачі скороченого рядка. Наприклад, початковий якір ``^`` не залежить від ``offset``, а символ перед ``offset`` буде перевірено на межу слова ``\b``.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] **search_all**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search_all>`

Шукає в тексті скомпільований шаблон. Повертає масив контейнерів :ref:`RegExMatch<class_RegExMatch>` для кожного результату, що не перекривається. Якщо результатів не знайдено, повертається порожній масив.

Регіон для пошуку можна вказати за допомогою ``offset`` та ``end``. Це корисно під час пошуку іншого збігу в тому ж ``subject`` шляхом повторного виклику цього методу після попереднього успіху. Зверніть увагу, що встановлення цих параметрів відрізняється від передачі скороченого рядка. Наприклад, початковий якір ``^`` не залежить від ``offset``, а символ перед ``offset`` буде перевірено на межу слова ``\b``.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_sub:

.. rst-class:: classref-method

:ref:`String<class_String>` **sub**\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_sub>`

Шукає в тексті скомпільований шаблон і замінює його вказаним рядком. Екранні символи та зворотні посилання, такі як ``$1`` та ``$name``, розгортаються та вирішуються. За замовчуванням замінюється лише перший екземпляр, але його можна змінити для всіх екземплярів (глобальна заміна).

Регіон для пошуку можна вказати за допомогою ``offset`` та ``end``. Це корисно під час пошуку іншого збігу в тому ж ``subject`` шляхом повторного виклику цього методу після попереднього успіху. Зверніть увагу, що встановлення цих параметрів відрізняється від передачі скороченого рядка. Наприклад, початковий якір ``^`` не залежить від ``offset``, а символ перед ``offset`` буде перевірено на межу слова ``\b``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
