:github_url: hide

.. _class_EditorUndoRedoManager:

EditorUndoRedoManager
=====================

**Наследует:** :ref:`Object<class_Object>`

Управляет историей отмен открытых сцен, в редакторе.

.. rst-class:: classref-introduction-group

Описание
----------------

**EditorUndoRedoManager** — это менеджер для объектов :ref:`UndoRedo<class_UndoRedo>`, связанных с отредактированными сценами. Каждая сцена имеет собственную историю отмен, а **EditorUndoRedoManager** гарантирует, что каждое действие, выполненное в редакторе, будет связано с соответствующей сценой. Для действий, не связанных со сценами (редактирование :ref:`ProjectSettings<class_ProjectSettings>`, внешние ресурсы и т. д.), используется отдельная глобальная история.

Использование в основном такое же, как и :ref:`UndoRedo<class_UndoRedo>`. Вы создаете и фиксируете действия, а менеджер автоматически решает изнутри, к каким сценам они относятся. Сцена выводится на основе первой операции в действии с использованием объекта из операции. Правила следующие:

- Если объект — :ref:`Node<class_Node>`, используйте текущую отредактированную сцену;

- Если объект — встроенный ресурс, используйте сцену из его пути;

- Если объект — внешний ресурс или что-то еще, используйте глобальную историю.

Иногда это предположение может давать ложные результаты, поэтому вы можете предоставить пользовательский объект контекста при создании действия.

\ **EditorUndoRedoManager** предназначен для использования плагинами редактора Godot. Вы можете получить его с помощью :ref:`EditorPlugin.get_undo_redo()<class_EditorPlugin_method_get_undo_redo>`. Для нередакторного использования или плагинов, которым не нужно интегрироваться с историей отмен редактора, используйте вместо этого :ref:`UndoRedo<class_UndoRedo>`.

API менеджера в основном такой же, как в :ref:`UndoRedo<class_UndoRedo>`, поэтому вы можете обратиться к его документации за дополнительными примерами. Главное отличие в том, что **EditorUndoRedoManager** использует объект + имя метода для действий вместо :ref:`Callable<class_Callable>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_do_method<class_EditorUndoRedoManager_method_add_do_method>`\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                                                                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_do_property<class_EditorUndoRedoManager_method_add_do_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                         |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_do_reference<class_EditorUndoRedoManager_method_add_do_reference>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                                                                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_undo_method<class_EditorUndoRedoManager_method_add_undo_method>`\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                                                                                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_undo_property<class_EditorUndoRedoManager_method_add_undo_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                     |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_undo_reference<class_EditorUndoRedoManager_method_add_undo_reference>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                                                                                                                          |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`clear_history<class_EditorUndoRedoManager_method_clear_history>`\ (\ id\: :ref:`int<class_int>` = -99, increase_version\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                     |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`commit_action<class_EditorUndoRedoManager_method_commit_action>`\ (\ execute\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`create_action<class_EditorUndoRedoManager_method_create_action>`\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, custom_context\: :ref:`Object<class_Object>` = null, backward_undo_ops\: :ref:`bool<class_bool>` = false, mark_unsaved\: :ref:`bool<class_bool>` = true\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`force_fixed_history<class_EditorUndoRedoManager_method_force_fixed_history>`\ (\ )                                                                                                                                                                                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`UndoRedo<class_UndoRedo>` | :ref:`get_history_undo_redo<class_EditorUndoRedoManager_method_get_history_undo_redo>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                      |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_object_history_id<class_EditorUndoRedoManager_method_get_object_history_id>`\ (\ object\: :ref:`Object<class_Object>`\ ) |const|                                                                                                                                                                                            |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`is_committing_action<class_EditorUndoRedoManager_method_is_committing_action>`\ (\ ) |const|                                                                                                                                                                                                                                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_EditorUndoRedoManager_signal_history_changed:

.. rst-class:: classref-signal

**history_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_history_changed>`

Генерируется при изменении списка действий в любой истории, либо при совершении действия, либо при очистке истории.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_signal_version_changed:

.. rst-class:: classref-signal

**version_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_version_changed>`

Генерируется, когда версия истории изменилась в результате отмены или повтора вызова.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_EditorUndoRedoManager_SpecialHistory:

.. rst-class:: classref-enumeration

enum **SpecialHistory**: :ref:`🔗<enum_EditorUndoRedoManager_SpecialHistory>`

.. _class_EditorUndoRedoManager_constant_GLOBAL_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **GLOBAL_HISTORY** = ``0``

Глобальная история не связана с какой-либо сценой, а связана с внешними ресурсами и т. д.

.. _class_EditorUndoRedoManager_constant_REMOTE_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **REMOTE_HISTORY** = ``-9``

История, связанная с удаленным инспектором. Используется при редактировании в реальном времени запущенного проекта.

.. _class_EditorUndoRedoManager_constant_INVALID_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **INVALID_HISTORY** = ``-99``

Недопустимая "null" история. Это особое значение, не связанное ни с одним объектом.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorUndoRedoManager_method_add_do_method:

.. rst-class:: classref-method

|void| **add_do_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_do_method>`

Зарегистрируйте метод, который будет вызван при фиксации действия (т. е. действие «do»).

Если это первая операция, ``object`` будет использоваться для вывода истории отмены цели.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_property:

.. rst-class:: classref-method

|void| **add_do_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_property>`

Зарегистрируйте изменение значения свойства для "do".

Если это первая операция, ``object`` будет использоваться для вывода истории отмены цели.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_reference:

.. rst-class:: classref-method

|void| **add_do_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_reference>`

Зарегистрируйте ссылку для "do", которая будет стерта, если история "do" будет утеряна. Это полезно в основном для новых узлов, созданных для вызова "do". Не используйте для ресурсов.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_method:

.. rst-class:: classref-method

|void| **add_undo_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_method>`

Зарегистрируйте метод, который будет вызван при отмене действия (т. е. действие «отменить»).

Если это первая операция, ``object`` будет использоваться для вывода целевой истории отмен.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_property:

.. rst-class:: classref-method

|void| **add_undo_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_property>`

Зарегистрируйте изменение значения свойства для «отмены».

Если это первая операция, ``object`` будет использоваться для вывода целевой истории отмен.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_reference:

.. rst-class:: classref-method

|void| **add_undo_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_reference>`

Зарегистрируйте ссылку для "отмены", которая будет стерта, если история "отмены" будет утеряна. Это полезно в основном для узлов, удаленных с помощью вызова "do" (а не вызова "undo"!).

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_clear_history:

.. rst-class:: classref-method

|void| **clear_history**\ (\ id\: :ref:`int<class_int>` = -99, increase_version\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_clear_history>`

Очищает указанную историю отмены. Вы можете очистить историю для конкретной сцены, глобальную историю или для всех историй одновременно (кроме :ref:`REMOTE_HISTORY<class_EditorUndoRedoManager_constant_REMOTE_HISTORY>`), если ``id`` равно :ref:`INVALID_HISTORY<class_EditorUndoRedoManager_constant_INVALID_HISTORY>`.

Если ``increase_version`` равно ``true``, версия истории отмены будет увеличена, помечая её как несохранённую. Полезно для операций, изменяющих сцену, но не поддерживающих отмену.

::

    var scene_root = EditorInterface.get_edited_scene_root()
    var undo_redo = EditorInterface.get_editor_undo_redo()
    undo_redo.clear_history(undo_redo.get_object_history_id(scene_root))

\ **Примечание:** Если вы хотите пометить отредактированную сцену как несохраненную, не очищая ее историю, используйте вместо этого :ref:`EditorInterface.mark_scene_as_unsaved()<class_EditorInterface_method_mark_scene_as_unsaved>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_commit_action:

.. rst-class:: classref-method

|void| **commit_action**\ (\ execute\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_commit_action>`

Фиксирует действие. Если ``execute`` равен ``true`` (по умолчанию), все методы/свойства "do" вызываются/устанавливаются при вызове этой функции.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_create_action:

.. rst-class:: classref-method

|void| **create_action**\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, custom_context\: :ref:`Object<class_Object>` = null, backward_undo_ops\: :ref:`bool<class_bool>` = false, mark_unsaved\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_create_action>`

Создайте новое действие. После вызова выполните все вызовы :ref:`add_do_method()<class_EditorUndoRedoManager_method_add_do_method>`, :ref:`add_undo_method()<class_EditorUndoRedoManager_method_add_undo_method>`, :ref:`add_do_property()<class_EditorUndoRedoManager_method_add_do_property>` и :ref:`add_undo_property()<class_EditorUndoRedoManager_method_add_undo_property>`, затем зафиксируйте действие с помощью :ref:`commit_action()<class_EditorUndoRedoManager_method_commit_action>`.

Способ объединения действий определяется аргументом ``merge_mode``.

Если указан объект ``custom_context``, он будет использоваться для вывода целевой истории (вместо использования первой операции).

Способ упорядочивания операций отмены в действиях определяется ``backward_undo_ops``. Если ``backward_undo_ops`` равен ``false``, параметры отмены упорядочиваются в том же порядке, в котором они были добавлены. Это означает, что первая добавленная операция будет первой отмененной.

Если ``mark_unsaved`` равен ``false``, действие не пометит историю как несохраненную. Это полезно, например, для действий, которые изменяют выбор или настройку, которая будет сохранена автоматически. В противном случае следует оставить ``true``, если действие требует сохранения пользователем или если оно может привести к потере данных, если его не сохранить.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_force_fixed_history:

.. rst-class:: classref-method

|void| **force_fixed_history**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_method_force_fixed_history>`

Заставляет следующую операцию (например, :ref:`add_do_method()<class_EditorUndoRedoManager_method_add_do_method>`) использовать историю действия, а не угадывать ее из объекта. Иногда это необходимо, когда историю невозможно правильно определить, например, для вложенного ресурса, у которого еще нет пути.

Этот метод следует использовать только в случае крайней необходимости, в противном случае он может привести к недопустимому состоянию истории. Для большинства сложных случаев достаточно параметра ``custom_context`` :ref:`create_action()<class_EditorUndoRedoManager_method_create_action>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_history_undo_redo:

.. rst-class:: classref-method

:ref:`UndoRedo<class_UndoRedo>` **get_history_undo_redo**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_history_undo_redo>`

Возвращает объект :ref:`UndoRedo<class_UndoRedo>`, связанный с заданной историей ``id``.

\ ``id`` выше ``0`` сопоставляются с открытыми вкладками сцены (но не соответствуют их порядку). ``id`` ``0`` или ниже имеют особое значение (см. :ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>`).

Лучше всего использовать с :ref:`get_object_history_id()<class_EditorUndoRedoManager_method_get_object_history_id>`. Этот метод предоставляется только в случае, если вам нужны более продвинутые методы :ref:`UndoRedo<class_UndoRedo>` (но имейте в виду, что прямая работа с объектом :ref:`UndoRedo<class_UndoRedo>` может повлиять на стабильность редактора).

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_object_history_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_history_id**\ (\ object\: :ref:`Object<class_Object>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_object_history_id>`

Возвращает идентификатор истории, выведенный из заданного ``object``. Его можно использовать с :ref:`get_history_undo_redo()<class_EditorUndoRedoManager_method_get_history_undo_redo>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_is_committing_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_committing_action**\ (\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_is_committing_action>`

Возвращает ``true``, если **EditorUndoRedoManager** в данный момент фиксирует действие, т. е. запускает свой метод «do» или изменение свойства (см. :ref:`commit_action()<class_EditorUndoRedoManager_method_commit_action>`).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
