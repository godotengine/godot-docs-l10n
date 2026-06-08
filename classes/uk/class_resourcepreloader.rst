:github_url: hide

.. _class_ResourcePreloader:

ResourcePreloader
=================

**Успадковує:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузол використовується для перевантаження субресурсів всередині сцени.

.. rst-class:: classref-introduction-group

Опис
--------

Ця вершина використовується для перевантаження субресурсів всередині сцени, тому коли сцена завантажується, всі ресурси готові використовувати і можуть бути отримані від перевантажувача. Ви можете додати ресурси за допомогою вкладки ResourcePreloader при обранні вершини.

GDScript має спрощену :ref:`@GDScript.preload()<class_@GDScript_method_preload>` вбудований метод, який можна використовувати в більшості ситуацій, залишаючи використання **ResourcePreloader** для більш розширених сценаріїв.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_resource<class_ResourcePreloader_method_add_resource>`\ (\ name\: :ref:`StringName<class_StringName>`, resource\: :ref:`Resource<class_Resource>`\ )          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                   | :ref:`get_resource<class_ResourcePreloader_method_get_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_resource_list<class_ResourcePreloader_method_get_resource_list>`\ (\ ) |const|                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_resource<class_ResourcePreloader_method_has_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_resource<class_ResourcePreloader_method_remove_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`rename_resource<class_ResourcePreloader_method_rename_resource>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ResourcePreloader_method_add_resource:

.. rst-class:: classref-method

|void| **add_resource**\ (\ name\: :ref:`StringName<class_StringName>`, resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ResourcePreloader_method_add_resource>`

Додавання ресурсу на задану ``name``. Якщо ресурс з вказаною назвою ``name`` вже існує, новий ресурс буде перейменований на назву param] N ", де N є вихідним числом від 2.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_get_resource:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **get_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ResourcePreloader_method_get_resource>`

Повертає ресурс, пов'язаний з ``name``.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_get_resource_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_resource_list**\ (\ ) |const| :ref:`🔗<class_ResourcePreloader_method_get_resource_list>`

Повертає перелік ресурсів всередині завантажувача.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_has_resource:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ResourcePreloader_method_has_resource>`

Повертаємо ``true``, якщо завантажувач містить ресурс, пов'язаний з ``name``.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_remove_resource:

.. rst-class:: classref-method

|void| **remove_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ResourcePreloader_method_remove_resource>`

Видаляє ресурс, пов'язаний з ``name``, з попереднього завантажувача.

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_rename_resource:

.. rst-class:: classref-method

|void| **rename_resource**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ResourcePreloader_method_rename_resource>`

Перейменовує ресурс усередині попереднього завантажувача з ``name`` до ``newname``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
