:github_url: hide

.. _class_TileSetSource:

TileSetSource
=============

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`, :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>`

Експолює набір плитки для ресурсу :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-introduction-group

Опис
--------

Експолює набір плитки для ресурсу :ref:`TileSet<class_TileSet>`.

Тілі в джерело індексуються двома ідентифікаторами, координацією ID (від типу Vector2i) та альтернативним ідентифікатором (за типом int), названими за їх використання в класі :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`.

Залежно від плитки Встановити тип джерела, ці ідентифікатори можуть мати обмеження на їх значеннях, тому підстава **TileSetSource** клас тільки виводить getters для них.

Ви можете ітерувати по всій плитці, виставленій TileSetSource, перш за все, перетворюючи координати ідентифікаторів за допомогою :ref:`get_tiles_count()<class_TileSetSource_method_get_tiles_count>` і :ref:`get_tile_id()<class_TileSetSource_method_get_tile_id>`, після чого над альтернативними ідентифікаторами за допомогою :ref:`get_alternative_tiles_count()<class_TileSetSource_method_get_alternative_tiles_count>` і :ref:`get_alternative_tile_id()<class_TileSetSource_method_get_alternative_tile_id>`.

\ **Навігація:** **TileSetSource** може бути додана лише до одного TileSet одночасно. Calling :ref:`TileSet.add_source()<class_TileSet_method_add_source>` на другий :ref:`TileSet<class_TileSet>` буде видалено джерело з першого.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_alternative_tile_id<class_TileSetSource_method_get_alternative_tile_id>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, index\: :ref:`int<class_int>`\ ) |const|      |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_alternative_tiles_count<class_TileSetSource_method_get_alternative_tiles_count>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                             |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`get_tile_id<class_TileSetSource_method_get_tile_id>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_tiles_count<class_TileSetSource_method_get_tiles_count>`\ (\ ) |const|                                                                                                     |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_alternative_tile<class_TileSetSource_method_has_alternative_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_tile<class_TileSetSource_method_has_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                   |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_TileSetSource_method_get_alternative_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_alternative_tile_id>`

Повернення альтернативного ідентифікатора для плитки з координацією ID ``atlas_coords`` в індексі ``index``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_alternative_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_alternative_tiles_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_alternative_tiles_count>`

Повертаємо кількість альтернативних плиток для координат ID ``atlas_coords``.

Для :ref:`TileSetAtlasSource<class_TileSetAtlasSource>` це завжди повертає принаймні 1, оскільки базова плитка з ID 0 завжди є частиною списку альтернатив.

Повертає -1, якщо на даній коорді немає плитки.

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_tile_id:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_id**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_tile_id>`

Повертає координати плитки, ідентифікатор плитки з індексом ``index``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tiles_count**\ (\ ) |const| :ref:`🔗<class_TileSetSource_method_get_tiles_count>`

Повертає, як багато плитки, це джерело атласу визначає (не включаючи альтернативну плитку).

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_has_alternative_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_has_alternative_tile>`

Повертаємо вашу увагу на те, що базова плитка в координатах ``atlas_coords`` має альтернативну альтернативу ID ``alternative_tile``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_has_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetSource_method_has_tile>`

Повертаємо вашу увагу на те, що цей атлас має кахельну плитку з координатами ID ``atlas_coords``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
