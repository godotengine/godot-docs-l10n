:github_url: hide

.. _class_EditorCommandPalette:

EditorCommandPalette
====================

**Наследует:** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Палитра команд редактора Godot.

.. rst-class:: classref-introduction-group

Описание
----------------

Объект, содержащий все доступные команды и текст их сочетаний клавиш. Доступ к этим командам можно получить через меню **Редактор > Палитра команд**.

Имена клавиш команд используют разделители косой черты для различения разделов, например: ``"example/command1"``, тогда ``example`` будет именем раздела.


.. tabs::

 .. code-tab:: gdscript

    var command_palette = EditorInterface.get_command_palette()
    # external_command — это функция, которая будет вызвана при выполнении команды.
    var command_callable = Callable(self, "external_command").bind(arguments)
    command_palette.add_command("command", "test/command",command_callable)

 .. code-tab:: csharp

    EditorCommandPalette commandPalette = EditorInterface.Singleton.GetCommandPalette();
    // external_command — это функция, которая будет вызвана при выполнении команды.
    Callable commandCallable = new Callable(this, MethodName.ExternalCommand);
    commandPalette.AddCommand("command", "test/command", commandCallable)



\ **Примечание:** Экземпляр этого класса не следует создавать напрямую. Вместо этого, получите доступ к синглтону (singleton), используя :ref:`EditorInterface.get_command_palette()<class_EditorInterface_method_get_command_palette>`.

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_EditorCommandPalette_method_add_command:

.. rst-class:: classref-method

|void| **add_command**\ (\ command_name\: :ref:`String<class_String>`, key_name\: :ref:`String<class_String>`, binded_callable\: :ref:`Callable<class_Callable>`, shortcut_text\: :ref:`String<class_String>` = "None"\ ) :ref:`🔗<class_EditorCommandPalette_method_add_command>`

Добавляет пользовательскую команду в EditorCommandPalette.

- ``command_name``: :ref:`String<class_String>` (Имя **Command**. Отображается пользователю.)

- ``key_name``: :ref:`String<class_String>` (Имя клавиши для конкретной **Command**. Используется для уникальной идентификации **Command**.)

- ``binded_callable``: :ref:`Callable<class_Callable>` (Вызываемая **Command**. Будет выполнена при выборе **Command**.)

- ``shortcut_text``: :ref:`String<class_String>` (Текст сочетания клавиш **Command**, если доступен.)

.. rst-class:: classref-item-separator

----

.. _class_EditorCommandPalette_method_remove_command:

.. rst-class:: classref-method

|void| **remove_command**\ (\ key_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorCommandPalette_method_remove_command>`

Удаляет пользовательскую команду из EditorCommandPalette.

- ``key_name``: :ref:`String<class_String>` (Имя клавиши для конкретной **Command**.)

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
