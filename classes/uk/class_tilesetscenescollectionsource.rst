:github_url: hide

.. _class_TileSetScenesCollectionSource:

TileSetScenesCollectionSource
=============================

**Успадковує:** :ref:`TileSetSource<class_TileSetSource>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Експолює набір сцен, як плитка для ресурсу :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-introduction-group

Опис
--------

При розміщенні на :ref:`TileMapLayer<class_TileMapLayer>`, плитки з **TileSetScenesCollectionSource** автоматично створять екземпляр пов'язаної сцени в позиції комірки в TileMapLayer.

Сцени створюються як дочірні елементи :ref:`TileMapLayer<class_TileMapLayer>` після того, як він потрапляє в дерево, в кінці кадру (їхнє створення відкладається). Якщо ви додаєте/видаляєте плитку сцени в :ref:`TileMapLayer<class_TileMapLayer>`, яка вже знаходиться всередині дерева, :ref:`TileMapLayer<class_TileMapLayer>` автоматично створить/звільнить сцену відповідно.

\ **Примітка:** Плитки сцен займають один слот плитки та натомість використовують альтернативний ідентифікатор плитки для ідентифікації індексу сцени. :ref:`TileSetSource.get_tiles_count()<class_TileSetSource_method_get_tiles_count>` завжди повертатиме ``1``. Використовуйте :ref:`get_scene_tiles_count()<class_TileSetScenesCollectionSource_method_get_scene_tiles_count>`, щоб отримати кількість сцен у **TileSetScenesCollectionSource**.

Використовуйте цей код, якщо ви хочете знайти шлях сцени на заданій плитці в :ref:`TileMapLayer<class_TileMapLayer>`:


.. tabs::

 .. code-tab:: gdscript

    var source_id = tile_map_layer.get_cell_source_id(Vector2i(x, y))
    if source_id > -1:
        var scene_source = tile_map_layer.tile_set.get_source(source_id)
        if scene_source is TileSetScenesCollectionSource:
            var alt_id = tile_map_layer.get_cell_alternative_tile(Vector2i(x, y))
            # The assigned PackedScene.
            var scene = scene_source.get_scene_tile_scene(alt_id)

 .. code-tab:: csharp

    int sourceId = tileMapLayer.GetCellSourceId(new Vector2I(x, y));
    if (sourceId > -1)
    {
        TileSetSource source = tileMapLayer.TileSet.GetSource(sourceId);
        if (source is TileSetScenesCollectionSource sceneSource)
        {
            int altId = tileMapLayer.GetCellAlternativeTile(new Vector2I(x, y));
            // The assigned PackedScene.
            PackedScene scene = sceneSource.GetSceneTileScene(altId);
        }
    }



.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`create_scene_tile<class_TileSetScenesCollectionSource_method_create_scene_tile>`\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`, id_override\: :ref:`int<class_int>` = -1\ )              |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_next_scene_tile_id<class_TileSetScenesCollectionSource_method_get_next_scene_tile_id>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`get_scene_tile_display_placeholder<class_TileSetScenesCollectionSource_method_get_scene_tile_display_placeholder>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_scene_tile_id<class_TileSetScenesCollectionSource_method_get_scene_tile_id>`\ (\ index\: :ref:`int<class_int>`\ )                                                                               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedScene<class_PackedScene>` | :ref:`get_scene_tile_scene<class_TileSetScenesCollectionSource_method_get_scene_tile_scene>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_scene_tiles_count<class_TileSetScenesCollectionSource_method_get_scene_tiles_count>`\ (\ )                                                                                                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`has_scene_tile_id<class_TileSetScenesCollectionSource_method_has_scene_tile_id>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                  |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`remove_scene_tile<class_TileSetScenesCollectionSource_method_remove_scene_tile>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                  |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_scene_tile_display_placeholder<class_TileSetScenesCollectionSource_method_set_scene_tile_display_placeholder>`\ (\ id\: :ref:`int<class_int>`, display_placeholder\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_scene_tile_id<class_TileSetScenesCollectionSource_method_set_scene_tile_id>`\ (\ id\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ )                                                  |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_scene_tile_scene<class_TileSetScenesCollectionSource_method_set_scene_tile_scene>`\ (\ id\: :ref:`int<class_int>`, packed_scene\: :ref:`PackedScene<class_PackedScene>`\ )                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_TileSetScenesCollectionSource_method_create_scene_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_scene_tile**\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`, id_override\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_create_scene_tile>`

Створює сценографічну плитку з даної сцени.

Повернутися до новоствореного ID.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_next_scene_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_next_scene_tile_id**\ (\ ) |const| :ref:`🔗<class_TileSetScenesCollectionSource_method_get_next_scene_tile_id>`

Повертаємо вашу увагу на те, що у вас є наступний виклик.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tile_display_placeholder:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_scene_tile_display_placeholder**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tile_display_placeholder>`

Повертаємо вашу увагу на те, що кахельна плитка з ``id`` відображає власника місця в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_scene_tile_id**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tile_id>`

Повертає ідентифікатор плитки сцени за адресою ``index``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tile_scene:

.. rst-class:: classref-method

:ref:`PackedScene<class_PackedScene>` **get_scene_tile_scene**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tile_scene>`

Повернення :ref:`PackedScene<class_PackedScene>` ресурс сценової плитки з ``id``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_scene_tiles_count**\ (\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tiles_count>`

Повертає кількість або сцена плитки це джерело TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_has_scene_tile_id:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_scene_tile_id**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_has_scene_tile_id>`

Повертає, чи є це джерело TileSet має сцену плитку ``id``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_remove_scene_tile:

.. rst-class:: classref-method

|void| **remove_scene_tile**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_remove_scene_tile>`

Видаліть сцену плитку ``id``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_set_scene_tile_display_placeholder:

.. rst-class:: classref-method

|void| **set_scene_tile_display_placeholder**\ (\ id\: :ref:`int<class_int>`, display_placeholder\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_set_scene_tile_display_placeholder>`

Налаштовує, чи не на сцені плитка з ``id`` повинна відображатися власник місця в редакторі. Це може бути корисним для сцени, які не видно.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_set_scene_tile_id:

.. rst-class:: classref-method

|void| **set_scene_tile_id**\ (\ id\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_set_scene_tile_id>`

Змінює ідентифікатор плитки сцени з ``id`` на ``new_id``. Це не вдасться, якщо вже існує плитка з ідентифікатором, що дорівнює ``new_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_set_scene_tile_scene:

.. rst-class:: classref-method

|void| **set_scene_tile_scene**\ (\ id\: :ref:`int<class_int>`, packed_scene\: :ref:`PackedScene<class_PackedScene>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_set_scene_tile_scene>`

Призначає ресурс :ref:`PackedScene<class_PackedScene>` плитці сцени з ``id``. Це не вдасться, якщо сцена не розширює :ref:`CanvasItem<class_CanvasItem>`, оскільки для розміщення сцени на ``TileMapLay`` потрібні властивості позиціонування.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
