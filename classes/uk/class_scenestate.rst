:github_url: hide

.. _class_SceneState:

SceneState
==========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Забезпечує доступ до інформації про файли сцени.

.. rst-class:: classref-introduction-group

Опис
--------

Містить список ресурсів, вузлів, експортованих і перерізних властивостей, а також вбудованих сценаріїв, пов'язаних з сценарією. Вони не можуть бути змінені з **SceneState**. Корисно для запікання в що містить :ref:`PackedScene<class_PackedScene>` без миттєвого використання.

Цей клас не може бути миттєвий, він отримує для даної сцени в результаті :ref:`PackedScene.get_state()<class_PackedScene_method_get_state>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SceneState<class_SceneState>`               | :ref:`get_base_scene_state<class_SceneState_method_get_base_scene_state>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                         | :ref:`get_connection_binds<class_SceneState_method_get_connection_binds>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_connection_count<class_SceneState_method_get_connection_count>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_connection_flags<class_SceneState_method_get_connection_flags>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_connection_method<class_SceneState_method_get_connection_method>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_connection_signal<class_SceneState_method_get_connection_signal>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_connection_source<class_SceneState_method_get_connection_source>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_connection_target<class_SceneState_method_get_connection_target>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_connection_unbinds<class_SceneState_method_get_connection_unbinds>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_node_count<class_SceneState_method_get_node_count>`\ (\ ) |const|                                                                                  |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_node_groups<class_SceneState_method_get_node_groups>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_node_index<class_SceneState_method_get_node_index>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedScene<class_PackedScene>`             | :ref:`get_node_instance<class_SceneState_method_get_node_instance>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_node_instance_placeholder<class_SceneState_method_get_node_instance_placeholder>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_node_name<class_SceneState_method_get_node_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_node_owner_path<class_SceneState_method_get_node_owner_path>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_node_path<class_SceneState_method_get_node_path>`\ (\ idx\: :ref:`int<class_int>`, for_parent\: :ref:`bool<class_bool>` = false\ ) |const|         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_node_property_count<class_SceneState_method_get_node_property_count>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_node_property_name<class_SceneState_method_get_node_property_name>`\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const|   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`get_node_property_value<class_SceneState_method_get_node_property_value>`\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_node_type<class_SceneState_method_get_node_type>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_path<class_SceneState_method_get_path>`\ (\ ) |const|                                                                                              |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_node_instance_placeholder<class_SceneState_method_is_node_instance_placeholder>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_SceneState_GenEditState:

.. rst-class:: classref-enumeration

enum **GenEditState**: :ref:`🔗<enum_SceneState_GenEditState>`

.. _class_SceneState_constant_GEN_EDIT_STATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_DISABLED** = ``0``

Якщо передано до :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, блокує редагування стану сцени.

.. _class_SceneState_constant_GEN_EDIT_STATE_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_INSTANCE** = ``1``

Якщо передано до :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, надає успадковані ресурси сцени локальній сцені.

\ **Примітка:** Доступно лише у збірках редактора.

.. _class_SceneState_constant_GEN_EDIT_STATE_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_MAIN** = ``2``

Якщо передано до :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, надає локальні ресурси сцени локальній сцені. Тільки головна сцена повинна отримувати основний стан редагування.

\ **Примітка:** Доступно лише у збірках редактора.

.. _class_SceneState_constant_GEN_EDIT_STATE_MAIN_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_MAIN_INHERITED** = ``3``

Якщо передати до :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, це схоже на :ref:`GEN_EDIT_STATE_MAIN<class_SceneState_constant_GEN_EDIT_STATE_MAIN>`, але для випадку, коли сцена створюється як база для іншої.

\ **Примітка:** Доступно лише у збірках редактора.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SceneState_method_get_base_scene_state:

.. rst-class:: classref-method

:ref:`SceneState<class_SceneState>` **get_base_scene_state**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_base_scene_state>`

Повертає **SceneState** сцени, від якої ця сцена успадковується, або ``null``, якщо вона не успадковується від жодної сцени.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_binds:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connection_binds**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_binds>`

Повертає список граничних параметрів для сигналу ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connection_count**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_count>`

Повертає кількість підключень сигналу на сцені.

\ ``idx`` аргумент, який використовується для метаданих з'єднання запитів в інших ``get_connection_*`` методам в інтервалі ``[0, get_connection_count() - 1]``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_flags:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connection_flags**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_flags>`

Повертає прапори з'єднання для сигналу ``idx``. Див. :ref:`ConnectFlags<enum_Object_ConnectFlags>` постійність.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_method:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_connection_method**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_method>`

Повертає метод, підключений до сигналу ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_signal:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_connection_signal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_signal>`

Повертає назву сигналу ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_source:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_connection_source**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_source>`

Повертає шлях до вершини, який володіє сигналом на ``idx``, відносно кореневого вузла.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_target:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_connection_target**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_target>`

Повертає шлях до вершини, який володіє методом, підключеним до сигналу ``idx``, відносно кореневого вузла.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_unbinds:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connection_unbinds**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_unbinds>`

Повертає кількість непідйомних параметрів для сигналу ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_node_count>`

Повертає кількість вузлів на сцені.

\ ``idx`` аргумент використовується для обробки даних вершини в інших ``get_node_*`` методи в інтервалі ``[0, get_node_count() - 1]``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_groups:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_node_groups**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_groups>`

Повертає список назв груп, пов'язаних з вершиною ``параметр idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_index**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_index>`

Повертає індекс вузла, що є його положення відносно його дробів. Це тільки актуальна і збережена в сценах для випадків, коли нові вершини додаються до миттєвого або спадкового сцени серед муфт з базової сцени. Незважаючи на назву, цей індекс не пов'язаний з аргументом ``idx``, який використовується тут і в інших методах.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_instance:

.. rst-class:: classref-method

:ref:`PackedScene<class_PackedScene>` **get_node_instance**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_instance>`

Повертаємо :ref:`PackedScene<class_PackedScene>` для вершини на ``idx`` (тобто весь відділ, починаючи з цього вузла, з його дочірніми вузлами та ресурсами), або ``null``, якщо вузол не є екземпляром.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_instance_placeholder:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_instance_placeholder**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_instance_placeholder>`

Повертає шлях до представленого файлу сцени, якщо вершина на ``idx`` є :ref:`InstancePlaceholder<class_InstancePlaceholder>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_name>`

Повертає назву вузла в ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_owner_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_node_owner_path**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_owner_path>`

Повертає шлях до власника вершини на ``idx``, відносно кореневого вузла.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_node_path**\ (\ idx\: :ref:`int<class_int>`, for_parent\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_SceneState_method_get_node_path>`

Повертає шлях до вершини ``idx``.

Якщо ``for_parent`` є ``true``, повертає шлях ``idx`` замість батьків вершини.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_property_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_property_count**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_property_count>`

Повертає кількість експортованих або перерізних властивостей для вузла ``idx``.

\ ``prop_idx`` аргумент, який використовується для обробки даних вершини в інших ``get_node_property_*`` методи в інтервалі ``[0, get_node_property_count() - 1]``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_property_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_property_name**\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_property_name>`

Повертає назву майна на ``prop_idx`` для вершини ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_property_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_node_property_value**\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_property_value>`

Повернення вартості майна на ``prop_idx`` для вершини в ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_type**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_type>`

Повертає тип вузла в ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_path**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_path>`

Повертає шлях ресурсу до представленого :ref:`PackedScene<class_PackedScene>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_is_node_instance_placeholder:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_node_instance_placeholder**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_is_node_instance_placeholder>`

Повертає ``true``, якщо вершина на ``idx`` є :ref:`InstancePlaceholder<class_InstancePlaceholder>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
