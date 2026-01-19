:github_url: hide

.. _class_ResourceImporterCSVTranslation:

ResourceImporterCSVTranslation
==============================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпортує значення, розділені комами, як :ref:`Translation<class_Translation>`\ s.

.. rst-class:: classref-introduction-group

Опис
--------

Значення, розділені комами, – це формат зберігання таблиць у звичайному тексті. Простота формату дозволяє легко редагувати його в будь-якому текстовому редакторі або програмному забезпеченні для роботи з електронними таблицями. Це робить його поширеним вибором для локалізації ігор.

У файлі CSV, який використовується для перекладу, перший стовпець містить ідентифікатори рядків, а перший рядок служить заголовком. Заголовок першого стовпця може бути будь-яким значенням. Решта заголовків вказують на локалізацію для цього стовпця. Стовпці, заголовки яких починаються з символу підкреслення (``_``), будуть ігноруватися.

 **Приклад файлу CSV:**\ 

 
.. code:: text


 ключі,en,es,ja

 GREET,"Привіт, друже!","Hola, amigo!",こんにちは

 ЗАПИТАЙТЕ,Як справи?,Cómo está?,元気ですか

 BYE, Goodbye, Adiós,さようなら

 ЦИТАТА,"""Привіт"" сказав чоловік.","""Hola"" dijo el hombre.",「こんにちは」男は言いました

 

 Хоча для ключів у першому стовпці зазвичай використовуються ідентифікатори рядків у верхньому регістрі, нерідко безпосередньо використовувати рядки, які з’являються в грі як ключі. Щоб уникнути неоднозначності рядків, ви можете використовувати спеціальний стовпець ``?context``, щоб вказати контекст для використання з :ref:`Object.tr()<class_Object_method_tr>`.

.. code:: text

    en,?context,fr,ja,zh
    Letter,Alphabet,Lettre,字母,字母
    Letter,Message,Courrier,手紙,信件

Щоб встановити форму множини рядка для використання з :ref:`Object.tr_n()<class_Object_method_tr_n>`, додайте спеціальний стовпець ``?plural``. Після встановлення форми множини вихідного рядка в цьому стовпці ви можете додати додаткові рядки, щоб надати переклади для більшої кількості форм множини. Перший стовпець та всі спеціальні стовпці в цих рядках форми множини мають бути порожніми.

Godot містить вбудовані правила множини для деяких мов. Ви також можете налаштувати їх за допомогою спеціального рядка ``?pluralrule``. Перегляньте `GNU gettext <https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html>`__ для прикладів та додаткової інформації.

 
.. code:: text


 en,?plural,fr,ru,zh,_Коментар

 ?pluralrule,,nplurals=2; plural=(n >= 2);,,,Налаштуйте правило множини для французької мови

 Є %d яблуко,Є %d яблуко,Il y a %d pomme,Есть %d яблоко,那里有%d个苹果,

 ,,Il y a %d pommes,Есть %d яблока,,

 ,,,Єсть %d яблок,,

 

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Імпорт перекладів <../tutorials/assets_pipeline/importing_translations>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Описи властивостей
------------------------------------

.. _class_ResourceImporterCSVTranslation_property_compress:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress** = ``1`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_compress>`

- **Вимкнено**: Створює :ref:`Translation<class_Translation>`.

- **Автоматично**: Створює :ref:`OptimizedTranslation<class_OptimizedTranslation>`, коли це можливо. Це зменшує розмір результуючого файлу ціною невеликого навантаження на процесор. Повертається до :ref:`Translation<class_Translation>` для перекладів з контекстом або формами множини.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_delimiter:

.. rst-class:: classref-property

:ref:`int<class_int>` **delimiter** = ``0`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_delimiter>`

Для використання в файлі CSV. Значення за замовчуванням відповідає поширеному конвенції CSV. Вкладка-розділені значення іноді називають TSV файлами.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_keys:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_keys** = ``false`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_keys>`

Якщо значення ``true``, ключі повідомлень у CSV-файлі не екрануються за допомогою методу ``String.c_unescape`` під час процесу імпорту.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_translations:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_translations** = ``true`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_translations>`

Якщо значення ``true``, переклади повідомлень у CSV-файлі не екрануються за допомогою методу ``String.c_unescape`` під час процесу імпорту.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
