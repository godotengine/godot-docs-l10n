:github_url: hide

.. _class_EditorUndoRedoManager:

EditorUndoRedoManager
=====================

**Успадковує:** :ref:`Object<class_Object>`

У редакторі відкрита історія подій.

.. rst-class:: classref-introduction-group

Опис
--------

**EditorUndoRedoManager** є менеджером об'єктів :ref:`UndoRedo<class_UndoRedo>`, пов'язаних з редагованими сценаріями. Кожна сцена має свою історію та **EditorUndoRedoManager** забезпечує, що кожна дія, виконана в редакторі, асоціюється з правильним сценарієм. Для дій, які не пов’язані з сценаріями (:ref:`ProjectSettings<class_ProjectSettings>` редагування, зовнішні ресурси тощо), використовується окрема глобальна історія.

Використання в основному так само, як :ref:`UndoRedo<class_UndoRedo>`. Ви створюєте та впорядковуєте дії та менеджер автоматично вирішується, що він належить. Сцена складається на основі першої операції в дії, використовуючи об'єкт від операції. Правила є наступним чином:

до Якщо об'єкт є :ref:`Node<class_Node>`, скористайтеся редаговані сценою;

до Якщо об'єкт є вбудованим ресурсом, скористайтеся сценою від його шляху;

до Якщо об'єкт є зовнішнім ресурсом або будь-яким іншим, скористайтеся глобальною історією.

Цей здогадка іноді може призвести до помилкових результатів, тому ви можете забезпечити користувацький контекст об'єкта при створенні дії.

\ **EditorUndoRedoManager** призначений для використання плагінів редактора Godot. Ви можете отримати його за допомогою :ref:`EditorPlugin.get_undo_redo()<class_EditorPlugin_method_get_undo_redo>`. Для нередактора використовується або плагіни, які не повинні інтегруватися з історією редактора, використовувати :ref:`UndoRedo<class_UndoRedo>`.

API менеджера в основному такий же, як і в :ref:`UndoRedo<class_UndoRedo>`, так що ви можете звернутися до документації для більш докладних прикладів. Основна відмінність полягає в тому, що **EditorUndoRedoManager** використовує об'єкт + назву методу для дій, замість :ref:`Callable<class_Callable>`.

.. rst-class:: classref-reftable-group

Методи
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

Сигнали
--------------

.. _class_EditorUndoRedoManager_signal_history_changed:

.. rst-class:: classref-signal

**history_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_history_changed>`

При зміні переліку дій в будь-якій історії, або коли дія виконана або історія очищається.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_signal_version_changed:

.. rst-class:: classref-signal

**version_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_version_changed>`

Увімкнено, коли версія будь-якої історії змінилася в результаті невидимого або червоного виклику.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_EditorUndoRedoManager_SpecialHistory:

.. rst-class:: classref-enumeration

enum **SpecialHistory**: :ref:`🔗<enum_EditorUndoRedoManager_SpecialHistory>`

.. _class_EditorUndoRedoManager_constant_GLOBAL_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **GLOBAL_HISTORY** = ``0``

Глобальна історія не пов'язана з будь-якою сценою, але з зовнішніми ресурсами тощо.

.. _class_EditorUndoRedoManager_constant_REMOTE_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **REMOTE_HISTORY** = ``-9``

Історія, пов'язана з дистанційним інспектором. Використовуються при редагуванні робочого проекту.

.. _class_EditorUndoRedoManager_constant_INVALID_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **INVALID_HISTORY** = ``-99``

Інвалід «нуль» історія. Це спеціальне значення, не пов'язане з будь-яким об'єктом.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorUndoRedoManager_method_add_do_method:

.. rst-class:: classref-method

|void| **add_do_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_do_method>`

Зареєструвати метод, який буде викликаний, коли дія виконана (тобто "до" дія).

Якщо це перша операція, об'єкт ``object`` буде використовуватися для створення цільової історії.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_property:

.. rst-class:: classref-method

|void| **add_do_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_property>`

Зареєструвати зміни вартості майна для "до".

Якщо це перша операція, об'єкт ``object`` буде використовуватися для створення цільової історії.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_reference:

.. rst-class:: classref-method

|void| **add_do_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_reference>`

Зареєструвати посилання на "до", яка буде вилучена, якщо історія "до" втрачена. Це корисно в основному для нових вузлів, створених для виклику «до». Не використовуйте для ресурсів.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_method:

.. rst-class:: classref-method

|void| **add_undo_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_method>`

Зареєструвати метод, який буде викликаний, коли дія неонова (тобто дія "undo").

Якщо це перша операція, об'єкт ``object`` буде використовуватися для створення цільової історії.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_property:

.. rst-class:: classref-method

|void| **add_undo_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_property>`

Зареєструвати зміни цін на майно для "undo".

Якщо це перша операція, об'єкт ``object`` буде використовуватися для створення цільової історії.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_reference:

.. rst-class:: classref-method

|void| **add_undo_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_reference>`

Зареєструвати посилання на "undo", яка буде вилучена, якщо втрачена історія "undo". Це корисно в основному для вузлів, видалених за допомогою виклику «до» (не виклику «undo»).

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_clear_history:

.. rst-class:: classref-method

|void| **clear_history**\ (\ id\: :ref:`int<class_int>` = -99, increase_version\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_clear_history>`

Очищає задану історію скасування. Ви можете очистити історію для певної сцени, глобальної історії або для всіх історій одночасно (крім :ref:`REMOTE_HISTORY<class_EditorUndoRedoManager_constant_REMOTE_HISTORY>`), якщо ``id`` має значення :ref:`INVALID_HISTORY<class_EditorUndoRedoManager_constant_INVALID_HISTORY>`.

Якщо ``increase_version`` має значення ``true``, версія історії скасування буде збільшена, що позначить її як незбережену. Корисно для операцій, які змінюють сцену, але не підтримують скасування.

 
::


var scene_root = EditorInterface.get_edited_scene_root()

var undo_redo = EditorInterface.get_editor_undo_redo()

undo_redo.clear_history(undo_redo.get_object_history_id(scene_root))


\ **Примітка:** Якщо ви хочете позначити відредаговану сцену як незбережену, не очищуючи її історію, використовуйте замість цього :ref:`EditorInterface.mark_scene_as_unsaved()<class_EditorInterface_method_mark_scene_as_unsaved>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_commit_action:

.. rst-class:: classref-method

|void| **commit_action**\ (\ execute\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_commit_action>`

Здійснює дію. Якщо ``execute`` має значення ``true`` (за замовчуванням), усі методи/властивості "do" викликаються/встановлюються під час виклику цієї функції.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_create_action:

.. rst-class:: classref-method

|void| **create_action**\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, custom_context\: :ref:`Object<class_Object>` = null, backward_undo_ops\: :ref:`bool<class_bool>` = false, mark_unsaved\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_create_action>`

Створіть нову дію. Після її виклику виконайте всі виклики методів :ref:`add_do_method()<class_EditorUndoRedoManager_method_add_do_method>`, :ref:`add_undo_method()<class_EditorUndoRedoManager_method_add_undo_method>`, :ref:`add_do_property()<class_EditorUndoRedoManager_method_add_do_property>` та :ref:`add_undo_property()<class_EditorUndoRedoManager_method_add_undo_property>`, а потім зафіксуйте дію за допомогою методу :ref:`commit_action()<class_EditorUndoRedoManager_method_commit_action>`.

Спосіб об'єднання дій визначається аргументом ``merge_mode``.

Якщо надано об'єкт ``custom_context``, він буде використаний для виведення цільової історії (замість використання першої операції).

Порядок розташування операцій скасування в діях визначається параметром ``backward_undo_ops``. Коли ``backward_undo_ops`` має значення ``false``, опції скасування впорядковуються в тому ж порядку, в якому вони були додані. Це означає, що перша додана операція буде першою скасованою.

Якщо ``mark_unsaved`` має значення ``false``, дія не позначить історію як незбережену. Це корисно, наприклад, для дій, які змінюють вибір або налаштування, яке буде збережено автоматично. В іншому випадку, це значення слід залишити на ``true``, якщо дія вимагає збереження користувачем або якщо вона може призвести до втрати даних, якщо її не зберегти.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_force_fixed_history:

.. rst-class:: classref-method

|void| **force_fixed_history**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_method_force_fixed_history>`

Сили наступну операцію (наприклад, :ref:`add_do_method()<class_EditorUndoRedoManager_method_add_do_method>`) для використання історії дій, а не вгадуючи його з об'єкта. Це іноді потрібно, коли історія не може бути правильно визначена, як для непристойного ресурсу, який ще не має шляху.

Цей метод повинен бути використаний тільки при необхідності, інакше він може викликати недійсний стан історії. Для більшості складних випадків параметр ``custom_context`` :ref:`create_action()<class_EditorUndoRedoManager_method_create_action>` є достатнім.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_history_undo_redo:

.. rst-class:: classref-method

:ref:`UndoRedo<class_UndoRedo>` **get_history_undo_redo**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_history_undo_redo>`

Повертає об'єкт :ref:`UndoRedo<class_UndoRedo>`, пов'язаний з даною історією ``id``.

\ ``id`` над ``0`` наклеєні на відкриті вкладки сцени (але не відповідає їхньому порядку). ``id`` ``0`` або нижчий має особливий зміст (див. :ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>`).

Кращий використовується з :ref:`get_object_history_id()<class_EditorUndoRedoManager_method_get_object_history_id>`. Цей метод доступний тільки у випадку, якщо вам потрібно більше розширених методів :ref:`UndoRedo<class_UndoRedo>` (але не забудьте, що безпосередньо працює на об'єкті :ref:`UndoRedo<class_UndoRedo>` може вплинути на стабільність редактора).

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_object_history_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_history_id**\ (\ object\: :ref:`Object<class_Object>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_object_history_id>`

Повертає ідентифікатор історії, який вивів з вказаного ``object``. Ви можете використовувати з :ref:`get_history_undo_redo()<class_EditorUndoRedoManager_method_get_history_undo_redo>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_is_committing_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_committing_action**\ (\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_is_committing_action>`

Повертає ``true``, якщо **EditorUndoRedoManager** в даний час бере на себе дію, тобто працює його "до" метод або зміни майна (див. :ref:`commit_action()<class_EditorUndoRedoManager_method_commit_action>`).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
