:github_url: hide

.. _class_HeightMapShape3D:

HeightMapShape3D
================

**Успадковує:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Фігура 3D-карти висот, що використовується для фізичних зіткнень.

.. rst-class:: classref-introduction-group

Опис
--------

Фігура 3D-карти висот, призначена для використання у фізиці для надання форми :ref:`CollisionShape3D<class_CollisionShape3D>`. Цей тип найчастіше використовується для рельєфу з вершинами, розміщеними в сітці фіксованої ширини.

Карта висот представлена як 2D-сітка значень висоти, які відображають положення точок сітки на осі Y. Точки сітки розташовані на відстані 1 одиниці одна від одної на осях X та Z, а сітка центрована в початку координат вузла :ref:`CollisionShape3D<class_CollisionShape3D>`. Внутрішньо кожен квадрат сітки поділений на два трикутники.

Через природу карти висот, її не можна використовувати для моделювання нависів або печер, що вимагало б кількох вершин в одному вертикальному місці. Отвори можна пробити через колізію, призначивши :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` висоті потрібних вершин (це підтримується як у GodotPhysics3D, так і в Jolt Physics). Потім ви можете вставляти сітки з власною окремою колізією, щоб забезпечити нависи, печери тощо.

 **Продуктивність:** **HeightMapShape3D** швидше перевіряє колізії, ніж :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, але значно повільніше, ніж примітивні фігури, такі як :ref:`BoxShape3D<class_BoxShape3D>`.

 Фігуру зіткнення карти висот також можна створити за допомогою посилання :ref:`Image<class_Image>`:


.. tabs::

 .. code-tab:: gdscript

    var heightmap_texture = ResourceLoader.load("res://heightmap_image.exr")
    var heightmap_image = heightmap_texture.get_image()
    heightmap_image.convert(Image.FORMAT_RF)

    var height_min = 0.0
    var height_max = 10.0

    update_map_data_from_image(heightmap_image, height_min, height_max)



\ **Примітка:** Якщо вам потрібно використовувати інтервал, відмінний від 1 одиниці, ви можете налаштувати :ref:`Node3D.scale<class_Node3D_property_scale>` фігури. Однак, майте на увазі, що GodotPhysics3D не підтримує нерівномірне масштабування: вам потрібно буде масштабувати вісь Y на ту саму величину, що й осі X та Z, а це означає, що значення в :ref:`map_data<class_HeightMapShape3D_property_map_data>` потрібно буде попередньо масштабувати на обернену величину цього масштабу. Також зауважте, що GodotPhysics3D взагалі не підтримує масштабування для динамічних тіл (тобто незаморожених вузлів :ref:`RigidBody3D<class_RigidBody3D>`); щоб використовувати масштабований **HeightMapShape3D** з ними, вам потрібно буде використовувати Jolt Physics.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`map_data<class_HeightMapShape3D_property_map_data>`   | ``PackedFloat32Array(0, 0, 0, 0)`` |
   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`map_depth<class_HeightMapShape3D_property_map_depth>` | ``2``                              |
   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`map_width<class_HeightMapShape3D_property_map_width>` | ``2``                              |
   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_max_height<class_HeightMapShape3D_method_get_max_height>`\ (\ ) |const|                                                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_min_height<class_HeightMapShape3D_method_get_min_height>`\ (\ ) |const|                                                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`update_map_data_from_image<class_HeightMapShape3D_method_update_map_data_from_image>`\ (\ image\: :ref:`Image<class_Image>`, height_min\: :ref:`float<class_float>`, height_max\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_HeightMapShape3D_property_map_data:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **map_data** = ``PackedFloat32Array(0, 0, 0, 0)`` :ref:`🔗<class_HeightMapShape3D_property_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_map_data**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_map_data**\ (\ )

Дані карти висот. Розмір масиву має дорівнювати :ref:`map_width<class_HeightMapShape3D_property_map_width>`, помноженому на :ref:`map_depth<class_HeightMapShape3D_property_map_depth>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_depth** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_depth>`

.. rst-class:: classref-property-setget

- |void| **set_map_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_depth**\ (\ )

Кількість вершин у глибині карти висот. Зміна цього значення призведе до зміни розміру :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_width** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_width>`

.. rst-class:: classref-property-setget

- |void| **set_map_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_width**\ (\ )

Кількість вершин по ширині карти висот. Зміна цього значення призведе до зміни розміру :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_HeightMapShape3D_method_get_max_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_max_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_max_height>`

Повертає найбільше значення висоти, знайдене в :ref:`map_data<class_HeightMapShape3D_property_map_data>`. Перераховує лише коли :ref:`map_data<class_HeightMapShape3D_property_map_data>` змінюється.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_get_min_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_min_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_min_height>`

Повертає найменше значення висоти, знайдене в :ref:`map_data<class_HeightMapShape3D_property_map_data>`. Перераховує лише коли :ref:`map_data<class_HeightMapShape3D_property_map_data>` змінюється.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_update_map_data_from_image:

.. rst-class:: classref-method

|void| **update_map_data_from_image**\ (\ image\: :ref:`Image<class_Image>`, height_min\: :ref:`float<class_float>`, height_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_HeightMapShape3D_method_update_map_data_from_image>`

Оновлює :ref:`map_data<class_HeightMapShape3D_property_map_data>` даними, зчитаними з посилання :ref:`Image<class_Image>`. Автоматично змінює розмір карти висот :ref:`map_width<class_HeightMapShape3D_property_map_width>` та :ref:`map_depth<class_HeightMapShape3D_property_map_depth>`, щоб вона відповідала повній ширині та висоті зображення.

Зображення має бути у форматі :ref:`Image.FORMAT_RF<class_Image_constant_FORMAT_RF>` (32 біти), :ref:`Image.FORMAT_RH<class_Image_constant_FORMAT_RH>` (16 бітів) або :ref:`Image.FORMAT_R8<class_Image_constant_FORMAT_R8>` (8 бітів).

Кожен піксель зображення зчитується як число з плаваючою комою в діапазоні від ``0.0`` (чорний піксель) до ``1.0`` (білий піксель). Це значення діапазону перепризначується на ``height_min`` та ``height_max`` для формування кінцевого значення висоти.

\ **Примітка:** Рекомендується використовувати карту висот з 16-бітними або 32-бітними даними, що зберігаються у форматі EXR або HDR. Використання 8-бітних даних висоти або формату, такого як PNG, який Godot імпортує як 8-бітний, призведе до терасованого рельєфу.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
