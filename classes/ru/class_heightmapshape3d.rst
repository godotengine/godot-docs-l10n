:github_url: hide

.. _class_HeightMapShape3D:

HeightMapShape3D
================

**Наследует:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Трехмерная карта высот, используемая для моделирования физических столкновений.

.. rst-class:: classref-introduction-group

Описание
----------------

Трехмерная карта высот, предназначенная для использования в физике в качестве формы для :ref:`CollisionShape3D<class_CollisionShape3D>`. Этот тип чаще всего используется для ландшафта с вершинами, расположенными в сетке фиксированной ширины.

Карта высот представлена в виде двумерной сетки значений высот, которые представляют положение точек сетки по оси Y. Точки сетки расположены на расстоянии 1 единицы друг от друга по осям X и Z, а сетка центрирована в начале координат узла :ref:`CollisionShape3D<class_CollisionShape3D>`. Внутри каждый квадрат сетки разделен на два треугольника.

Из-за особенностей карты высот ее нельзя использовать для моделирования нависаний или пещер, что потребовало бы наличия нескольких вершин в одном и том же вертикальном положении. Проемы можно проделать через столкновение, присвоив :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` высоте нужных вершин (это поддерживается как в GodotPhysics3D, так и в Jolt Physics). Затем можно вставлять сетки с собственными отдельными коллизиями для создания нависающих элементов, пещер и так далее.

\ **Производительность:** **HeightMapShape3D** быстрее проверяет коллизии, чем :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, но значительно медленнее, чем примитивные формы, такие как :ref:`BoxShape3D<class_BoxShape3D>`.

Форму коллизии карты высот также можно создать, используя ссылку на :ref:`Image<class_Image>`:


.. tabs::

 .. code-tab:: gdscript

    var heightmap_texture = ResourceLoader.load("res://heightmap_image.exr")
    var heightmap_image = heightmap_texture.get_image()
    heightmap_image.convert(Image.FORMAT_RF)

    var height_min = 0.0
    var height_max = 10.0

    update_map_data_from_image(heightmap_image, height_min, height_max)



\ **Примечание:** Если вам нужно использовать интервал, отличный от 1 единицы, вы можете настроить :ref:`Node3D.scale<class_Node3D_property_scale>` фигуры. Однако имейте в виду, что GodotPhysics3D не поддерживает неравномерное масштабирование: вам потребуется масштабировать ось Y на ту же величину, что и оси X и Z, а это значит, что значения в :ref:`map_data<class_HeightMapShape3D_property_map_data>` должны быть предварительно масштабированы на величину, обратную этому масштабу. Также обратите внимание, что GodotPhysics3D вообще не поддерживает масштабирование для динамических тел (то есть, незамороженных узлов :ref:`RigidBody3D<class_RigidBody3D>`); чтобы использовать масштабированный **HeightMapShape3D** с ними, вам потребуется использовать Jolt Physics.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Описания свойств
--------------------------------

.. _class_HeightMapShape3D_property_map_data:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **map_data** = ``PackedFloat32Array(0, 0, 0, 0)`` :ref:`🔗<class_HeightMapShape3D_property_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_map_data**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_map_data**\ (\ )

Данные карты высот. Размер массива должен быть равен :ref:`map_width<class_HeightMapShape3D_property_map_width>` умноженному на :ref:`map_depth<class_HeightMapShape3D_property_map_depth>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_depth** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_depth>`

.. rst-class:: classref-property-setget

- |void| **set_map_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_depth**\ (\ )

Количество вершин в глубине карты высот. Изменение этого параметра приведет к изменению размера :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_width** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_width>`

.. rst-class:: classref-property-setget

- |void| **set_map_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_width**\ (\ )

Количество вершин в ширине карты высот. Изменение этого параметра приведет к изменению размера :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_HeightMapShape3D_method_get_max_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_max_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_max_height>`

Возвращает наибольшее значение высоты, найденное в :ref:`map_data<class_HeightMapShape3D_property_map_data>`. Пересчитывает только при изменении :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_get_min_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_min_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_min_height>`

Возвращает наименьшее значение высоты, найденное в :ref:`map_data<class_HeightMapShape3D_property_map_data>`. Пересчитывает только при изменении :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_update_map_data_from_image:

.. rst-class:: classref-method

|void| **update_map_data_from_image**\ (\ image\: :ref:`Image<class_Image>`, height_min\: :ref:`float<class_float>`, height_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_HeightMapShape3D_method_update_map_data_from_image>`

Обновляет :ref:`map_data<class_HeightMapShape3D_property_map_data>` данными, считанными из ссылки :ref:`Image<class_Image>`. Автоматически изменяет размер карты высот :ref:`map_width<class_HeightMapShape3D_property_map_width>` и :ref:`map_depth<class_HeightMapShape3D_property_map_depth>` для соответствия полной ширине и высоте изображения.

Изображение должно быть в :ref:`Image.FORMAT_RF<class_Image_constant_FORMAT_RF>` (32 бита), :ref:`Image.FORMAT_RH<class_Image_constant_FORMAT_RH>` (16 бит) или :ref:`Image.FORMAT_R8<class_Image_constant_FORMAT_R8>` (8 бит).

Каждый пиксель изображения считывается как число с плавающей точкой в диапазоне от ``0.0`` (черный пиксель) до ``1.0`` (белый пиксель). Это значение диапазона переназначается на ``height_min`` и ``height_max`` для формирования окончательного значения высоты.

\ **Примечание:** Рекомендуется использовать карту высот с 16-битными или 32-битными данными, сохраненными в формате EXR или HDR. Использование 8-битных данных о высоте или формата, подобного PNG, который Godot импортирует как 8-битный, приведет к созданию террасного рельефа.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
