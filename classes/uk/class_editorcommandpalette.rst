:github_url: hide

.. _class_EditorCommandPalette:

EditorCommandPalette
====================

**Успадковує:** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Мапа сайту редактора Godot.

.. rst-class:: classref-introduction-group

Опис
--------

Об’єкт, який містить усі доступні команди та текст їх ярликів. Доступ до цих команд можна отримати через меню **Редактор > Палітра команд**. 

Для розрізнення розділів у іменах ключів команд використовуються роздільники похилої риски, наприклад: ``"приклад/команда1"``, тоді ``приклад`` буде назвою розділу. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var command_palette = EditorInterface.get_command_palette() 
    # external_command — це функція, яка буде викликана під час виконання команди. 
    var command_callable = Callable(self, "external_command") .bind(arguments) 
    command_palette.add_command("command", "test/command",command_callable)  

 .. code-tab:: csharp
 
    EditorCommandPalette commandPalette = EditorInterface.Singleton.GetCommandPalette(); 
    // ExternalCommand – це функція, яка буде викликана під час виконання команди. 
    Callable commandCallable = new Callable(this, MethodName.ExternalCommand); 
    commandPalette.AddCommand("команда", "тест/команда", commandCallable)  

 

\ **Примітка: ** Цей клас не слід створювати безпосередньо. Натомість отримайте доступ до синглтона за допомогою :ref:`EditorInterface.get_command_palette()<class_EditorInterface_method_get_command_palette>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_command<class_EditorCommandPalette_method_add_command>`\ (\ command_name\: :ref:`String<class_String>`, key_name\: :ref:`String<class_String>`, binded_callable\: :ref:`Callable<class_Callable>`, shortcut_text\: :ref:`String<class_String>` = "None"\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_command<class_EditorCommandPalette_method_remove_command>`\ (\ key_name\: :ref:`String<class_String>`\ )                                                                                                                                                |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorCommandPalette_method_add_command:

.. rst-class:: classref-method

|void| **add_command**\ (\ command_name\: :ref:`String<class_String>`, key_name\: :ref:`String<class_String>`, binded_callable\: :ref:`Callable<class_Callable>`, shortcut_text\: :ref:`String<class_String>` = "None"\ ) :ref:`🔗<class_EditorCommandPalette_method_add_command>`

Додати користувацьку команду до EditorCommandPalette.

- ``name_name``: :ref:`String<class_String>` (Ім'я **Command**. Це відображається на користувача.

- ``key_name``: :ref:`String<class_String>` (Ім'я ключа для конкретного **Command**. Це використовується для унікальної ідентифікації **Command**.)

- ``binded_callable``: :ref:`Callable<class_Callable>` (загальна **Command**. Це буде виконано після обрання **Command**.)

- ``shortcut_text``: :ref:`String<class_String>` (Пошук тексту **Command** if available.)

.. rst-class:: classref-item-separator

----

.. _class_EditorCommandPalette_method_remove_command:

.. rst-class:: classref-method

|void| **remove_command**\ (\ key_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorCommandPalette_method_remove_command>`

Видалити користувацьку команду від EditorCommandPalette.

- ``key_name``: :ref:`String<class_String>` (Ім'я ключа для конкретного **Command**.)

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
