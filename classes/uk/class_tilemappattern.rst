:github_url: hide

.. _class_TileMapPattern:

TileMapPattern
==============

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Затримайте шаблон, який буде скопіюватись з або вписаний в :ref:`TileMap<class_TileMap>`\ s.

.. rst-class:: classref-introduction-group

Опис
--------

Цей ресурс містить набір комірок для полегшення масових маніпуляцій з :ref:`TileMap<class_TileMap>`.

Візерунок завжди починається з координат ``(0, 0)`` і не може містити комірок з від'ємними координатами.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_alternative_tile<class_TileMapPattern_method_get_cell_alternative_tile>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                 |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_cell_atlas_coords<class_TileMapPattern_method_get_cell_atlas_coords>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                         |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_source_id<class_TileMapPattern_method_get_cell_source_id>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                               |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_size<class_TileMapPattern_method_get_size>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_used_cells<class_TileMapPattern_method_get_used_cells>`\ (\ ) |const|                                                                                                                                                                                 |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_cell<class_TileMapPattern_method_has_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                   |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_empty<class_TileMapPattern_method_is_empty>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_cell<class_TileMapPattern_method_remove_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, update_size\: :ref:`bool<class_bool>`\ )                                                                                                              |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cell<class_TileMapPattern_method_set_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_size<class_TileMapPattern_method_set_size>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_TileMapPattern_method_get_cell_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_alternative_tile**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_alternative_tile>`

Повертає ідентифікатор тайлової альтернативи клітинки у ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_cell_atlas_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_cell_atlas_coords**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_atlas_coords>`

Повертаємо кахельну плитку координатами ID комірки ``параметрові коорди``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_cell_source_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_source_id**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_source_id>`

Повертає ідентифікатор джерела плитки клітинки на ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_size**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_size>`

Повертає розмір, в клітинках, з візерунка.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_used_cells>`

Повертає список використаних координат клітин у шаблоні.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_has_cell:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_has_cell>`

Повертаємо Вашу увагу на те, що візерунок має плитку на даній координаті.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_is_empty>`

Повертає, чи є візерунок порожнім або ні.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_remove_cell:

.. rst-class:: classref-method

|void| **remove_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, update_size\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileMapPattern_method_remove_cell>`

Видаліть клітинку в даній координаті.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_set_cell:

.. rst-class:: classref-method

|void| **set_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileMapPattern_method_set_cell>`

Встановлює ідентифікатори плиток для комірки за координатами ``coords``. Див. :ref:`TileMap.set_cell()<class_TileMap_method_set_cell>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_set_size:

.. rst-class:: classref-method

|void| **set_size**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapPattern_method_set_size>`

Встановлює розмір візерунка.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
