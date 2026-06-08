:github_url: hide

.. _class_SceneReplicationConfig:

SceneReplicationConfig
======================

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Налаштування властивостей синхронізації :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`add_property<class_SceneReplicationConfig_method_add_property>`\ (\ path\: :ref:`NodePath<class_NodePath>`, index\: :ref:`int<class_int>` = -1\ )                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]        | :ref:`get_properties<class_SceneReplicationConfig_method_get_properties>`\ (\ ) |const|                                                                                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`has_property<class_SceneReplicationConfig_method_has_property>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                                       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`property_get_index<class_SceneReplicationConfig_method_property_get_index>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` | :ref:`property_get_replication_mode<class_SceneReplicationConfig_method_property_get_replication_mode>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`property_get_spawn<class_SceneReplicationConfig_method_property_get_spawn>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`property_get_sync<class_SceneReplicationConfig_method_property_get_sync>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`property_get_watch<class_SceneReplicationConfig_method_property_get_watch>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_replication_mode<class_SceneReplicationConfig_method_property_set_replication_mode>`\ (\ path\: :ref:`NodePath<class_NodePath>`, mode\: :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>`\ ) |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_spawn<class_SceneReplicationConfig_method_property_set_spawn>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ )                                                                |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_sync<class_SceneReplicationConfig_method_property_set_sync>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ )                                                                  |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`property_set_watch<class_SceneReplicationConfig_method_property_set_watch>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ )                                                                |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`remove_property<class_SceneReplicationConfig_method_remove_property>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                         |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_SceneReplicationConfig_ReplicationMode:

.. rst-class:: classref-enumeration

enum **ReplicationMode**: :ref:`🔗<enum_SceneReplicationConfig_ReplicationMode>`

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_NEVER** = ``0``

Не зберігайте точне майно.

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_ALWAYS** = ``1``

Відхилити дана власність на процес, постійно надсилаючи оновлення, використовуючи ненадійний режим передачі.

.. _class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE:

.. rst-class:: classref-enumeration-constant

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **REPLICATION_MODE_ON_CHANGE** = ``2``

Відхилити дана власність на процес відправлення оновлень за допомогою надійного режиму передачі при зміні його вартості.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SceneReplicationConfig_method_add_property:

.. rst-class:: classref-method

|void| **add_property**\ (\ path\: :ref:`NodePath<class_NodePath>`, index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SceneReplicationConfig_method_add_property>`

Додає властивість, ідентифіковану заданим ``path``, до списку властивостей, що синхронізуються, за бажанням передаючи ``index``.

\ **Примітка:** Докладніше про обмеження та обмеження синхронізації властивостей див. у :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_get_properties:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_properties**\ (\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_get_properties>`

Повертає список синхронізованих майна :ref:`NodePath<class_NodePath>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_has_property:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_property**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_has_property>`

Повертаємо ``true``, якщо надана ``path`` налаштована синхронізація.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **property_get_index**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_SceneReplicationConfig_method_property_get_index>`

Знаходиться індекс даної ``path``.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_replication_mode:

.. rst-class:: classref-method

:ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>` **property_get_replication_mode**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_replication_mode>`

Повертає режим реплікації для властивості, визначеної заданим ``path``.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_spawn:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_spawn**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_spawn>`

Повертаємо ``true``, якщо майно, визначене заданим ``path``, налаштовується для синхронізації на сноуборді.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_sync:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_sync**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_sync>`

**Застаріло:** Use :ref:`property_get_replication_mode()<class_SceneReplicationConfig_method_property_get_replication_mode>` instead.

Повернення ``true``, якщо майно, визначене заданим ``path`` налаштовано синхронізувати процес.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_get_watch:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **property_get_watch**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_get_watch>`

**Застаріло:** Use :ref:`property_get_replication_mode()<class_SceneReplicationConfig_method_property_get_replication_mode>` instead.

Повернення ``true``, якщо майно, визначене заданим ``path``, налаштований бути надійно синхронізовано при виявленні змін.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_replication_mode:

.. rst-class:: classref-method

|void| **property_set_replication_mode**\ (\ path\: :ref:`NodePath<class_NodePath>`, mode\: :ref:`ReplicationMode<enum_SceneReplicationConfig_ReplicationMode>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_replication_mode>`

Встановлює режим синхронізації для властивості, визначеної заданим ``path``.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_spawn:

.. rst-class:: classref-method

|void| **property_set_spawn**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_spawn>`

Встановлює, чи визначено майно заданим ``path``, щоб бути синхронізованою на спавні.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_sync:

.. rst-class:: classref-method

|void| **property_set_sync**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_sync>`

**Застаріло:** Use :ref:`property_set_replication_mode()<class_SceneReplicationConfig_method_property_set_replication_mode>` with :ref:`REPLICATION_MODE_ALWAYS<class_SceneReplicationConfig_constant_REPLICATION_MODE_ALWAYS>` instead.

Встановлює, чи налаштовано властивість, ідентифіковану заданим ``path``, для синхронізації під час процесу.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_property_set_watch:

.. rst-class:: classref-method

|void| **property_set_watch**\ (\ path\: :ref:`NodePath<class_NodePath>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_property_set_watch>`

**Застаріло:** Use :ref:`property_set_replication_mode()<class_SceneReplicationConfig_method_property_set_replication_mode>` with :ref:`REPLICATION_MODE_ON_CHANGE<class_SceneReplicationConfig_constant_REPLICATION_MODE_ON_CHANGE>` instead.

Налаштовує, чи визначено майно, визначене заданим ``path``, щоб бути надійно синхронізованими при виявленні змін.

.. rst-class:: classref-item-separator

----

.. _class_SceneReplicationConfig_method_remove_property:

.. rst-class:: classref-method

|void| **remove_property**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SceneReplicationConfig_method_remove_property>`

Видаліть майно, визначене заданим ``path`` з конфігурації.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
