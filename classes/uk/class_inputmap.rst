:github_url: hide

.. _class_InputMap:

InputMap
========

**Успадковує:** :ref:`Object<class_Object>`

Єдинийтон, який керує усіма :ref:`InputEventAction<class_InputEventAction>`.

.. rst-class:: classref-introduction-group

Опис
--------

Увімкніть всі :ref:`InputEventAction<class_InputEventAction>`, які можуть бути створені/модифіковані з меню налаштувань проекту **Project > Налаштування проекту > Вхідна карта** або в коді з :ref:`add_action()<class_InputMap_method_add_action>` та :ref:`дії_add_event()<class_InputMap_method_дії_add_event>`. Див. :ref:`Node._input()<class_Node_private_method__input>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Використання InputEvent: Вхід <../tutorials/inputs/inputevent.html#inputmap>`__

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_add_event<class_InputMap_method_action_add_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_erase_event<class_InputMap_method_action_erase_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_erase_events<class_InputMap_method_action_erase_events>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`action_get_deadzone<class_InputMap_method_action_get_deadzone>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`InputEvent<class_InputEvent>`\] | :ref:`action_get_events<class_InputMap_method_action_get_events>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`action_has_event<class_InputMap_method_action_has_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_set_deadzone<class_InputMap_method_action_set_deadzone>`\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>`\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_action<class_InputMap_method_add_action>`\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>` = 0.2\ )                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`erase_action<class_InputMap_method_erase_action>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`event_is_action<class_InputMap_method_event_is_action>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`, action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_action_description<class_InputMap_method_get_action_description>`\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const|                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_actions<class_InputMap_method_get_actions>`\ (\ )                                                                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_action<class_InputMap_method_has_action>`\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`load_from_project_settings<class_InputMap_method_load_from_project_settings>`\ (\ )                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_InputMap_signal_project_settings_loaded:

.. rst-class:: classref-signal

**project_settings_loaded**\ (\ ) :ref:`🔗<class_InputMap_signal_project_settings_loaded>`

Видається після завантаження :ref:`ProjectSettings<class_ProjectSettings>` **InputMap**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_InputMap_method_action_add_event:

.. rst-class:: classref-method

|void| **action_add_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_add_event>`

Додавання :ref:`InputEvent<class_InputEvent>` до дії. Це :ref:`InputEvent<class_InputEvent>` запустить дію.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_erase_event:

.. rst-class:: classref-method

|void| **action_erase_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_erase_event>`

Видалити :ref:`InputEvent<class_InputEvent>` з дії.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_erase_events:

.. rst-class:: classref-method

|void| **action_erase_events**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_erase_events>`

Видалити всі події з дії.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_get_deadzone:

.. rst-class:: classref-method

:ref:`float<class_float>` **action_get_deadzone**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_get_deadzone>`

Повертає значення мертвозону для дії.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_get_events:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`InputEvent<class_InputEvent>`\] **action_get_events**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_get_events>`

Повертає масив :ref:`InputEvent<class_InputEvent>`, пов'язаний з заданою дією.

\ **Примітка:** При використанні в редакторі (наприклад, скрипт інструменту або :ref:`EditorPlugin<class_EditorPlugin>`), цей метод поверне події для редагування редактора. Якщо ви хочете отримати доступ до вхідних зв’язків вашого проекту з редактора, читайте налаштування `` ввійти/*`` з :ref:`ProjectSettings<class_ProjectSettings>`.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_has_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **action_has_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_has_event>`

Повертає ``true``, якщо дія надана :ref:`InputEvent<class_InputEvent>` пов'язана з ним.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_set_deadzone:

.. rst-class:: classref-method

|void| **action_set_deadzone**\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>`\ ) :ref:`🔗<class_InputMap_method_action_set_deadzone>`

Налаштовує значення мертвозону для дії.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_add_action:

.. rst-class:: classref-method

|void| **add_action**\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>` = 0.2\ ) :ref:`🔗<class_InputMap_method_add_action>`

Додає порожню дію до **InputMap** з налаштуванням ``deadzone``.

\ :ref:`InputEvent<class_InputEvent>` може бути додана до цієї дії з :ref:`дії_add_event()<class_InputMap_method_дії_add_event>`.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_erase_action:

.. rst-class:: classref-method

|void| **erase_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_erase_action>`

Видалити дію з **InputMap**.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_event_is_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **event_is_action**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputMap_method_event_is_action>`

Повертає ``true``, якщо дана подія є частиною існуючої акції. Цей метод ігнорує модифікатори клавіатури, якщо надана :ref:`InputEvent<class_InputEvent>` не натискається (для належного виявлення релізу). Див. :ref:`дії_has_event()<class_InputMap_method_дії_has_event>`, якщо ви не хочете цієї поведінки.

Якщо ``точний_match`` є ``false``, він ігнорує додаткові модифікатори введення для :ref:`InputEventKey<class_InputEventKey>` і :ref:`InputEventMouseButton<class_InputEventMouseButton>` події, і напрямок для :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` події.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_get_action_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_action_description**\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_InputMap_method_get_action_description>`

Повертає опис заданої дії, який може прочитати людина.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_get_actions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_actions**\ (\ ) :ref:`🔗<class_InputMap_method_get_actions>`

Повертає масив всіх дій **InputMap**.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_has_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_InputMap_method_has_action>`

Повертає ``true``, якщо **InputMap** має зареєстровану дію з вказаною назвою.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_load_from_project_settings:

.. rst-class:: classref-method

|void| **load_from_project_settings**\ (\ ) :ref:`🔗<class_InputMap_method_load_from_project_settings>`

Очищає всі :ref:`InputEventAction<class_InputEventAction>` у **InputMap** та завантажує його заново з :ref:`ProjectSettings<class_ProjectSettings>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
