:github_url: hide

.. _class_ResourceImporterCSVTranslation:

ResourceImporterCSVTranslation
==============================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортирует значения, разделённые запятыми, в виде :ref:`Translation<class_Translation>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Значения, разделённые запятыми, — это формат хранения таблиц в обычном тексте. Простота формата позволяет легко отредактировать его в любом текстовом редакторе или программном обеспечении для работы с электронными таблицами. Это делает его распространенным выбором для локализации игр.

В CSV, который используется для перевода, первый столбец содержит идентификаторы строк, а первая строка служит заголовком. Заголовок первого столбца может иметь любое значение. Остальные заголовки указывают на локализацию для этого столбца. Столбцы, заголовки которых начинаются с символа подчёркивания (``_``), будут игнорироваться..

\ **Пример CSV-файла:**\ 

.. code:: text

    ключи,en,es,ja
    GREET,"Привет, друг!","Hola, amigo!",こんにちは
    СПРОСИТЕ,Как дела?,Cómo está?,元気ですか
    BYE,Goodbye,Adiós,さようなら
    ЦИТАТА,"""Привет"" сказал человек.","""Hola"" dijo el hombre.",「こんにちは」男は言いました

Хотя в первом столбце в качестве ключей обычно используются строковые идентификаторы, написанные заглавными буквами, нередко в качестве ключей используются непосредственно строки, встречающиеся в игре. Чтобы избежать неоднозначности строк, можно использовать специальный столбец ``?context``, чтобы указать контекст для использования с :ref:`Object.tr()<class_Object_method_tr>`.

.. code:: text

    en,?context,fr,ja,zh
    Letter,Alphabet,Lettre,字母,字母
    Letter,Message,Courrier,手紙,信件

Чтобы установить форму множества строк для использования с :ref:`Object.tr_n()<class_Object_method_tr_n>`, добавьте специальный столбец ``?plural``. После установки формы множества исходной строки в этом столбце можно добавить дополнительные строки, чтобы предоставить переводы для большего количества форм множества. Первый столбец и все специальные столбцы в этих строках формы множества должны быть пустыми.

Godot содержит встроенные правила множества для некоторых языков. Вы также можете настроить их с помощью специальной строки ``?pluralrule``. Для примеров и дополнительной информации посетите `GNU gettext <https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html>`__.

.. code:: text

    en,?plural,fr,ru,zh,Комментарий
    ?pluralrule,,nplurals=2; plural=(n >= 2);,,,Настройте правило множества для французского языка
    Есть %d яблоко,Есть %d яблок,Il y a %d pomme,那里有%d个苹果,
    ,,Il y a %d pommes,Есть %d яблока,,
    ,,,Есть %d яблок,,

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Импорт переводов <../tutorials/assets_pipeline/importing_translations>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`compress<class_ResourceImporterCSVTranslation_property_compress>`                           | ``1``     |
   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`delimiter<class_ResourceImporterCSVTranslation_property_delimiter>`                         | ``0``     |
   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`unescape_keys<class_ResourceImporterCSVTranslation_property_unescape_keys>`                 | ``false`` |
   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`unescape_translations<class_ResourceImporterCSVTranslation_property_unescape_translations>` | ``true``  |
   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ResourceImporterCSVTranslation_property_compress:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress** = ``1`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_compress>`

- **Disabled**: Создает :ref:`Translation<class_Translation>`.

- **Auto**: Создает :ref:`OptimizedTranslation<class_OptimizedTranslation>`, если это возможно. Это уменьшает размер результирующего файла за счет небольшого увеличения нагрузки на процессор. В случае переводов с контекстом или во множественном числе используется :ref:`Translation<class_Translation>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_delimiter:

.. rst-class:: classref-property

:ref:`int<class_int>` **delimiter** = ``0`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_delimiter>`

Разделитель для использования в файле CSV. Значение по умолчанию соответствует общепринятому соглашению CSV. Значения, разделенные табуляцией, иногда называются файлами TSV.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_keys:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_keys** = ``false`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_keys>`

Если ``true``, ключи сообщений в CSV-файле деэкранируются с помощью :ref:`String.c_unescape()<class_String_method_c_unescape>` в процессе импорта.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_translations:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_translations** = ``true`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_translations>`

Если ``true``, перевод сообщений в CSV-файле деэкранируется с помощью :ref:`String.c_unescape()<class_String_method_c_unescape>` в процессе импорта.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
