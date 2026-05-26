:github_url: hide

.. _class_ResourceUID:

ResourceUID
===========

**Наследует:** :ref:`Object<class_Object>`

Синглтон, управляющий уникальными идентификаторами всех ресурсов в проекте.

.. rst-class:: classref-introduction-group

Описание
----------------

UID ресурсов (Уникальные Идентификаторы) позволяют движку сохранять ссылки между ресурсами нетронутыми, даже если файлы переименованы или перемещены. К ним можно получить доступ с помощью ``uid://``.

\ **ResourceUID** отслеживает все зарегистрированные UID ресурсов в проекте, генерирует новые UID и преобразует их между строковыми и целочисленными представлениями.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_id<class_ResourceUID_method_add_id>`\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`create_id<class_ResourceUID_method_create_id>`\ (\ )                                                           |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`create_id_for_path<class_ResourceUID_method_create_id_for_path>`\ (\ path\: :ref:`String<class_String>`\ )     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ensure_path<class_ResourceUID_method_ensure_path>`\ (\ path_or_uid\: :ref:`String<class_String>`\ ) |static|   |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_id_path<class_ResourceUID_method_get_id_path>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                   |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_id<class_ResourceUID_method_has_id>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                             |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`id_to_text<class_ResourceUID_method_id_to_text>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`path_to_uid<class_ResourceUID_method_path_to_uid>`\ (\ path\: :ref:`String<class_String>`\ ) |static|          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_id<class_ResourceUID_method_remove_id>`\ (\ id\: :ref:`int<class_int>`\ )                               |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_id<class_ResourceUID_method_set_id>`\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`text_to_id<class_ResourceUID_method_text_to_id>`\ (\ text_id\: :ref:`String<class_String>`\ ) |const|          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`uid_to_path<class_ResourceUID_method_uid_to_path>`\ (\ uid\: :ref:`String<class_String>`\ ) |static|           |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_ResourceUID_constant_INVALID_ID:

.. rst-class:: classref-constant

**INVALID_ID** = ``-1`` :ref:`🔗<class_ResourceUID_constant_INVALID_ID>`

Значение, которое следует использовать для недопустимого UID, например, если ресурс не удалось загрузить. 

Его текстовое представление — ``uid://<invalid>``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_ResourceUID_method_add_id:

.. rst-class:: classref-method

|void| **add_id**\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceUID_method_add_id>`

Добавляет новое значение UID, которое сопоставляется с указанным путем ресурса.

Выполняется с ошибкой, если UID уже существует, поэтому обязательно проверьте :ref:`has_id()<class_ResourceUID_method_has_id>` заранее или используйте вместо него :ref:`set_id()<class_ResourceUID_method_set_id>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_create_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_id**\ (\ ) :ref:`🔗<class_ResourceUID_method_create_id>`

Генерирует случайный UID ресурса, который гарантированно будет уникальным в списке загруженных в данный момент UID.

Чтобы зарегистрировать этот UID, необходимо вызвать :ref:`add_id()<class_ResourceUID_method_add_id>` или :ref:`set_id()<class_ResourceUID_method_set_id>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_create_id_for_path:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_id_for_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceUID_method_create_id_for_path>`

Как и :ref:`create_id()<class_ResourceUID_method_create_id>`, но UID заполняется предоставленным ``path`` и именем проекта. UID сгенерированные для этого пути, всегда будут одинаковыми в текущем проекте.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_ensure_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **ensure_path**\ (\ path_or_uid\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceUID_method_ensure_path>`

Возвращает путь, при необходимости преобразуя ``path_or_uid``. В случае предоставления недопустимого UID возвращает пустую строку.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_get_id_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id_path**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ResourceUID_method_get_id_path>`

Возвращает путь, на который ссылается заданное значение UID.

Выполняется с ошибкой, если UID не существует, поэтому обязательно проверьте :ref:`has_id()<class_ResourceUID_method_has_id>` заранее.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_has_id:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_id**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ResourceUID_method_has_id>`

Возвращает, известно ли кэшу заданное значение UID.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_id_to_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **id_to_text**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ResourceUID_method_id_to_text>`

Преобразует заданный UID в строковое значение ``uid://``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_path_to_uid:

.. rst-class:: classref-method

:ref:`String<class_String>` **path_to_uid**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceUID_method_path_to_uid>`

Преобразует предоставленный ресурс ``path`` в UID. Возвращает неизмененный путь, если у него нет связанного UID.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_remove_id:

.. rst-class:: classref-method

|void| **remove_id**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ResourceUID_method_remove_id>`

Удаляет загруженное значение UID из кэша.

Выдает ошибку, если UID не существует, поэтому обязательно проверьте :ref:`has_id()<class_ResourceUID_method_has_id>` заранее.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_set_id:

.. rst-class:: classref-method

|void| **set_id**\ (\ id\: :ref:`int<class_int>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceUID_method_set_id>`

Обновляет путь к ресурсу существующего UID.

Выполняется с ошибкой, если UID не существует, поэтому обязательно проверьте :ref:`has_id()<class_ResourceUID_method_has_id>` заранее или используйте вместо него :ref:`add_id()<class_ResourceUID_method_add_id>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_text_to_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **text_to_id**\ (\ text_id\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ResourceUID_method_text_to_id>`

Извлекает значение UID из заданной строки ``uid://``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceUID_method_uid_to_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **uid_to_path**\ (\ uid\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceUID_method_uid_to_path>`

Преобразует предоставленный ``uid`` в путь. Выводит ошибку, если UID недействителен.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
