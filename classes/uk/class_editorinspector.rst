:github_url: hide

.. _class_EditorInspector:

EditorInspector
===============

**Успадковує:** :ref:`ScrollContainer<class_ScrollContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Контроль використовується для редагування властивостей об'єкта.

.. rst-class:: classref-introduction-group

Опис
--------

Це елемент керування, який реалізує редагування властивостей у діалогових вікнах налаштувань редактора, док-станції Inspector тощо. Щоб використовувати **EditorInspector** у док-станції Inspector редактора, використовуйте :ref:`EditorInterface.get_inspector()<class_EditorInterface_method_get_inspector>`.

\ **EditorInspector** покаже властивості в тому ж порядку, що й масив, повернутий :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

Якщо ім’я властивості схоже на шлях (тобто якщо воно містить косі риски), **EditorInspector** створить вкладені розділи для «каталогів» уздовж шляху. Наприклад, якщо властивість має назву ``highlighting/gdscript/node_path_color``, вона буде показана як «Колір шляху до вузла» всередині розділу «GDScript», вкладеного в розділ «Виділення».

Якщо властивість має ``постійне використання PROPERTY_USAGE_GROUP``, вона групуватиме наступні властивості, назва яких починається з рядка підказки властивості. Група закінчується, коли властивість не починається з цього рядка підказки або коли починається нова група. Порожня назва групи фактично завершує поточну групу. **EditorInspector** створить розділ верхнього рівня для кожної групи. Наприклад, якщо властивість із груповим використанням має назву ``Collide With``, а її підказка — ``collide_with_``, наступна властивість ``collide_with_area`` буде показана як " Область» всередині розділу «Зіткнутися з». Існує також окремий випадок: коли рядок підказки містить назву властивості, ця властивість також групується. Це в основному для того, щоб допомогти згрупувати такі властивості, як ``шрифт``, ``колір_шрифту`` і ``розмір_шрифту`` (використовуючи рядок підказки ``шрифт_``).

Якщо властивість використовує :ref:`@GlobalScope.PROPERTY_USAGE_SUBGROUP<class_@GlobalScope_constant_PROPERTY_USAGE_SUBGROUP>`, підгрупа буде створена так само, як і група, і для кожної підгрупи буде створено розділ другого рівня.

\ **Примітка:** На відміну від розділів, створених із імен властивостей, схожих на шляхи, **EditorInspector** не буде писати назву з великої літери для розділів, створених із груп. Тому властивості з груповим використанням зазвичай використовують імена, написані великими літерами, замість імен snake_cased.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                            | draw_focus_border      | ``true`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_draw_focus_border>`)   |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`           | focus_mode             | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)                             |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                            | follow_focus           | ``true`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_follow_focus>`)        |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` | horizontal_scroll_mode | ``0`` (overrides :ref:`ScrollContainer<class_ScrollContainer_property_horizontal_scroll_mode>`) |
   +----------------------------------------------------+------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`collapse_all_folding<class_EditorInspector_method_collapse_all_folding>`\ (\ )                                                                                                                                                                                                                                                                                                                                          |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorInspector<class_EditorInspector>` | :ref:`create_default_inspector<class_EditorInspector_method_create_default_inspector>`\ (\ filter_line_edit\: :ref:`LineEdit<class_LineEdit>` = null\ ) |static|                                                                                                                                                                                                                                                              |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`edit<class_EditorInspector_method_edit>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`expand_all_folding<class_EditorInspector_method_expand_all_folding>`\ (\ )                                                                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`expand_revertable<class_EditorInspector_method_expand_revertable>`\ (\ )                                                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                   | :ref:`get_edited_object<class_EditorInspector_method_get_edited_object>`\ (\ )                                                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`get_selected_path<class_EditorInspector_method_get_selected_path>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorProperty<class_EditorProperty>`   | :ref:`instantiate_property_editor<class_EditorInspector_method_instantiate_property_editor>`\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, path\: :ref:`String<class_String>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_text\: :ref:`String<class_String>`, usage\: :ref:`int<class_int>`, wide\: :ref:`bool<class_bool>` = false\ ) |static| |
   +-----------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_EditorInspector_signal_edited_object_changed:

.. rst-class:: classref-signal

**edited_object_changed**\ (\ ) :ref:`🔗<class_EditorInspector_signal_edited_object_changed>`

Увімкнено, коли об’єкт, який редагував інспектор.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_object_id_selected:

.. rst-class:: classref-signal

**object_id_selected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorInspector_signal_object_id_selected>`

Увімкнено, коли кнопка редагування :ref:`Object<class_Object>` була натискана в інспекторі. Це, в основному, використовується в віддалених сценах дерево інспектора.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_deleted:

.. rst-class:: classref-signal

**property_deleted**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_deleted>`

Випробувано при видаленні майна з інспектора.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_edited:

.. rst-class:: classref-signal

**property_edited**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_edited>`

Випробувано при редагуванні майна в інспекторі.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_keyed:

.. rst-class:: classref-signal

**property_keyed**\ (\ property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`, advance\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorInspector_signal_property_keyed>`

Випробувано, коли в інспекторі знаходиться майно. Властивості можна натиснути на значок "під ключ" поруч з майном, коли панель Анімації перекривається.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_selected:

.. rst-class:: classref-signal

**property_selected**\ (\ property\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_property_selected>`

Увімкнено при виборі майна в інспекторі.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_property_toggled:

.. rst-class:: classref-signal

**property_toggled**\ (\ property\: :ref:`String<class_String>`, checked\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorInspector_signal_property_toggled>`

Випробувано, коли в інспекторі знаходиться об’єкт boolean.

\ **Примітка:** Цей сигнал ніколи не вдається, якщо ввімкнено внутрішню ``autoclear``. Оскільки ця властивість завжди включена в інспектор редактора, цей сигнал ніколи не видається самим редактором.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorInspector_signal_resource_selected>`

Увімкнено, коли обраний ресурс в інспекторі.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_signal_restart_requested:

.. rst-class:: classref-signal

**restart_requested**\ (\ ) :ref:`🔗<class_EditorInspector_signal_restart_requested>`

Випробувано, коли в інспекторі редаговано майно, яке вимагає перезавантаження. Це тільки використовується в налаштуваннях проекту та налаштуваннях редактора.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorInspector_method_collapse_all_folding:

.. rst-class:: classref-method

|void| **collapse_all_folding**\ (\ ) :ref:`🔗<class_EditorInspector_method_collapse_all_folding>`

Collapses all foldable sections.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_create_default_inspector:

.. rst-class:: classref-method

:ref:`EditorInspector<class_EditorInspector>` **create_default_inspector**\ (\ filter_line_edit\: :ref:`LineEdit<class_LineEdit>` = null\ ) |static| :ref:`🔗<class_EditorInspector_method_create_default_inspector>`

Creates an inspector with the same configuration as the one used in the editor's Inspector dock. When passing a :ref:`LineEdit<class_LineEdit>` into ``filter_line_edit``, the inspector will filter its properties based on :ref:`LineEdit.text<class_LineEdit_property_text>` whenever :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` is emitted.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_edit:

.. rst-class:: classref-method

|void| **edit**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorInspector_method_edit>`

Показує властивості даного ``object`` у цьому інспекторі для редагування. Щоб очистити інспектор, викличте цей метод за допомогою ``null``.

\ **Примітка:** Якщо ви хочете редагувати об’єкт у головному інспекторі редактора, замість цього використовуйте методи ``edit_*`` в :ref:`EditorInterface<class_EditorInterface>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_expand_all_folding:

.. rst-class:: classref-method

|void| **expand_all_folding**\ (\ ) :ref:`🔗<class_EditorInspector_method_expand_all_folding>`

Expands all foldable sections.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_expand_revertable:

.. rst-class:: classref-method

|void| **expand_revertable**\ (\ ) :ref:`🔗<class_EditorInspector_method_expand_revertable>`

Expands only the foldable sections that contain a revertable (i.e. non-default) property.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_get_edited_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_edited_object**\ (\ ) :ref:`🔗<class_EditorInspector_method_get_edited_object>`

Повернення об'єкта в даний час обраний в цьому інспекторі.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_get_selected_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_selected_path**\ (\ ) |const| :ref:`🔗<class_EditorInspector_method_get_selected_path>`

Одержує шлях до обраного майна.

.. rst-class:: classref-item-separator

----

.. _class_EditorInspector_method_instantiate_property_editor:

.. rst-class:: classref-method

:ref:`EditorProperty<class_EditorProperty>` **instantiate_property_editor**\ (\ object\: :ref:`Object<class_Object>`, type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, path\: :ref:`String<class_String>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>`, hint_text\: :ref:`String<class_String>`, usage\: :ref:`int<class_int>`, wide\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_EditorInspector_method_instantiate_property_editor>`

Створює редактор властивостей, який може використовуватися інтерфейсом користувача плагіна для редагування вказаної властивості ``object``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
