:github_url: hide

.. _class_RegEx:

RegEx
=====

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Класс для поиска в тексте шаблонов с использованием регулярных выражений.

.. rst-class:: classref-introduction-group

Описание
----------------

Регулярное выражение (или regex) — это компактный язык, который можно использовать для распознавания строк, следующих определенному шаблону, например, URL-адресов, адресов электронной почты, целых предложений и т. д. Например, регулярное выражение ``ab[0-9]`` найдет любую строку, которая представляет собой ``ab``, за которой следует любое число от ``0`` до ``9``. Для более подробного изучения вы легко найдете различные руководства и подробные объяснения в Интернете.

Для начала необходимо скомпилировать объект RegEx с шаблоном поиска с помощью метода :ref:`compile()<class_RegEx_method_compile>`. В качестве альтернативы, для создания и компиляции объекта RegEx за один вызов метода можно использовать статический метод :ref:`create_from_string()<class_RegEx_method_create_from_string>`.

::

    var regex = RegEx.new()
    regex.compile("\\w-(\\d+)")
    # Сокращенная запись для создания и компиляции регулярного выражения (используется в примерах ниже):
    var regex2 = RegEx.create_from_string("\\w-(\\d+)")

В GDScript шаблон поиска необходимо сначала экранировать, прежде чем экранировать его для выражения. Например, ``compile("\\d+")`` будет прочитано регулярным выражением как ``\d+``. Аналогично, ``compile("\"(?:\\\\.|[^\"])*\"")`` будет прочитано как ``"(?:\\.|[^"])*"``. В GDScript также можно использовать строковые литералы (r-строки). Например, ``compile(r'"(?:\\.|[^"])*"')`` будет прочитано так же.

Используя :ref:`search()<class_RegEx_method_search>`, вы можете найти шаблон в заданном тексте. Если шаблон найден, возвращается :ref:`RegExMatch<class_RegExMatch>`, и вы можете получить подробную информацию о результатах, используя такие методы, как :ref:`RegExMatch.get_string()<class_RegExMatch_method_get_string>` и :ref:`RegExMatch.get_start()<class_RegExMatch_method_get_start>`.

::

    var regex = RegEx.create_from_string("\\w-(\\d+)")
    var result = regex.search("abc n-0123")
    if result:
        print(result.get_string()) # Выводит "n-0123"

Результаты захвата групп ``()`` можно получить, передав номер группы различным методам в :ref:`RegExMatch<class_RegExMatch>`. Группа 0 является группой по умолчанию и всегда будет ссылаться на весь шаблон. В приведенном выше примере вызов ``result.get_string(1)`` даст вам ``0123``.

Эта версия RegEx также поддерживает именованные группы захвата, и имена можно использовать для получения результатов. Если две или более групп имеют одинаковое имя, имя будет ссылаться только на первую группу, в которой есть совпадение.

::

    var regex = RegEx.create_from_string("d(?<digit>[0-9]+)|x(?<digit>[0-9a-f]+)")
    var result = regex.search("the number is x2f")
    if result:
        print(result.get_string("digit")) # Выводит "2f"

Если вам нужно обработать несколько результатов, метод :ref:`search_all()<class_RegEx_method_search_all>` генерирует список всех непересекающихся результатов. Для удобства его можно комбинировать с циклом ``for``.

::

    # Выводит "01 03 0 3f 42"
    for result in regex.search_all("d01, d03, d0c, x3f and x42"):
        print(result.get_string("digit"))

\ **Пример:** Разделение строки с помощью регулярного выражения:

::

    var regex = RegEx.create_from_string("\\S+") # Класс символов отрицательных пробелов.
    var results = []
    for result in regex.search_all("One  Two \n\tThree"):
        results.push_back(result.get_string())
    print(results) # Выводит ["One", "Two", "Three"]

\ **Примечание:** Реализация регулярных выражений в Godot основана на библиотеке `PCRE2 <https://www.pcre.org/>`__. Полный справочник шаблонов можно посмотреть здесь `.

[b]Совет:[/b] Вы можете использовать [url=https://regexr.com/]Regexr <https://www.pcre.org/current/doc/html/pcre2pattern.html>`__ для тестирования регулярных выражений онлайн.

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_RegEx_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_RegEx_method_clear>`

Этот метод сбрасывает состояние объекта, как будто он был только что создан. А именно, он отменяет назначение регулярного выражения этому объекту.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_compile:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **compile**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_RegEx_method_compile>`

Компилирует и назначает шаблон поиска для использования. Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, если компиляция прошла успешно. Если компиляция не удалась, возвращает :ref:`@GlobalScope.FAILED<class_@GlobalScope_constant_FAILED>`, а когда ``show_error`` равен ``true``, подробности выводятся на стандартный вывод.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_create_from_string:

.. rst-class:: classref-method

:ref:`RegEx<class_RegEx>` **create_from_string**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static| :ref:`🔗<class_RegEx_method_create_from_string>`

Создает и компилирует новый объект **RegEx**. См. также :ref:`compile()<class_RegEx_method_compile>`.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_group_count>`

Возвращает количество групп захвата в скомпилированном шаблоне.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_names**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_names>`

Возвращает массив имен именованных групп захвата в скомпилированном шаблоне. Они упорядочены по внешнему виду.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_pattern:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_pattern**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_pattern>`

Возвращает исходный шаблон поиска, который был скомпилирован.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RegEx_method_is_valid>`

Возвращает, назначен ли этому объекту допустимый шаблон поиска.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search:

.. rst-class:: classref-method

:ref:`RegExMatch<class_RegExMatch>` **search**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search>`

Выполняет поиск скомпилированного шаблона в тексте. Возвращает контейнер :ref:`RegExMatch<class_RegExMatch>` первого совпадающего результата, если он найден, в противном случае ``null``.

Область поиска можно указать с помощью ``offset`` и ``end``. Это полезно при поиске другого совпадения в том же ``subject`` путем повторного вызова этого метода после предыдущего успешного выполнения. Обратите внимание, что установка этих параметров отличается от передачи сокращенной строки. Например, начальный якорь ``^`` не зависит от ``offset``, а символ перед ``offset`` будет проверяться на границу слова ``\b``.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] **search_all**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search_all>`

Выполняет поиск скомпилированного шаблона в тексте. Возвращает массив контейнеров :ref:`RegExMatch<class_RegExMatch>` для каждого неперекрывающегося результата. Если результаты не найдены, вместо этого возвращается пустой массив.

Область для поиска можно указать с помощью ``offset`` и ``end``. Это полезно при поиске другого совпадения в том же ``subject`` путем повторного вызова этого метода после предыдущего успешного выполнения. Обратите внимание, что установка этих параметров отличается от передачи сокращенной строки. Например, начальный якорь ``^`` не зависит от ``offset``, а символ перед ``offset`` будет проверяться на границу слова ``\b``.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_sub:

.. rst-class:: classref-method

:ref:`String<class_String>` **sub**\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_sub>`

Выполняет поиск скомпилированного шаблона в тексте и заменяет его указанной строкой. Экранированные символы и обратные ссылки, такие как ``$1`` и ``$name``, раскрываются и разрешаются. По умолчанию заменяется только первый экземпляр, но его можно изменить для всех экземпляров (глобальная замена).

Область поиска можно указать с помощью ``offset`` и ``end``. Это полезно при поиске другого совпадения в том же ``subject`` путем повторного вызова этого метода после предыдущего успешного выполнения. Обратите внимание, что установка этих параметров отличается от передачи сокращенной строки. Например, начальный якорь ``^`` не зависит от ``offset``, а символ перед ``offset`` будет проверяться на границу слова ``\b``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
