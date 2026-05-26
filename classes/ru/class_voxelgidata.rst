:github_url: hide

.. _class_VoxelGIData:

VoxelGIData
===========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Содержит запеченные данные глобального освещения вокселей для использования в узле :ref:`VoxelGI<class_VoxelGI>`.

.. rst-class:: classref-introduction-group

Описание
----------------

**VoxelGIData** содержит запеченное глобальное освещение вокселей для использования в узле :ref:`VoxelGI<class_VoxelGI>`. **VoxelGIData** также предлагает несколько свойств для настройки окончательного вида глобального освещения. Эти свойства можно настроить во время выполнения без повторного запекания узла :ref:`VoxelGI<class_VoxelGI>`.

\ **Примечание:** Чтобы предотвратить слишком большой рост текстовых файлов сцен (``.tscn``) и замедление загрузки и сохранения, всегда сохраняйте **VoxelGIData** во внешнем двоичном файле ресурсов (``.res``) вместо того, чтобы встраивать его в сцену. Это можно сделать, щелкнув стрелку раскрывающегося списка рядом с ресурсом **VoxelGIData**, выбрав **Изменить**, щелкнув значок дискеты в верхней части Инспектора, а затем выбрав **Сохранить как...**.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bias<class_VoxelGIData_property_bias>`                       | ``1.5``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dynamic_range<class_VoxelGIData_property_dynamic_range>`     | ``2.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`energy<class_VoxelGIData_property_energy>`                   | ``1.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`interior<class_VoxelGIData_property_interior>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`normal_bias<class_VoxelGIData_property_normal_bias>`         | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`propagation<class_VoxelGIData_property_propagation>`         | ``0.5``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>` | ``true``  |
   +---------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`allocate<class_VoxelGIData_method_allocate>`\ (\ to_cell_xform\: :ref:`Transform3D<class_Transform3D>`, aabb\: :ref:`AABB<class_AABB>`, octree_size\: :ref:`Vector3<class_Vector3>`, octree_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, data_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, distance_field\: :ref:`PackedByteArray<class_PackedByteArray>`, level_counts\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                         | :ref:`get_bounds<class_VoxelGIData_method_get_bounds>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                   |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`get_data_cells<class_VoxelGIData_method_get_data_cells>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_level_counts<class_VoxelGIData_method_get_level_counts>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`get_octree_cells<class_VoxelGIData_method_get_octree_cells>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`get_octree_size<class_VoxelGIData_method_get_octree_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`get_to_cell_xform<class_VoxelGIData_method_get_to_cell_xform>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VoxelGIData_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``1.5`` :ref:`🔗<class_VoxelGIData_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

Нормальное смещение для использования при непрямом освещении и отражениях. Более высокие значения уменьшают самоотражения, видимые в негрубых материалах, за счет более заметной утечки света и более плоского непрямого освещения. Чтобы отдать приоритет скрытию самоотражения над качеством освещения, установите :ref:`bias<class_VoxelGIData_property_bias>` на ``0.0`` и :ref:`normal_bias<class_VoxelGIData_property_normal_bias>` на значение между ``1.0`` и ``2.0``.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_dynamic_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **dynamic_range** = ``2.0`` :ref:`🔗<class_VoxelGIData_property_dynamic_range>`

.. rst-class:: classref-property-setget

- |void| **set_dynamic_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dynamic_range**\ (\ )

Динамический диапазон для использования (``1.0`` представляет собой низкую динамическую яркость сцены). Более высокие значения могут использоваться для обеспечения более яркого непрямого освещения за счет более заметных цветных полос в темных областях (как при непрямом освещении, так и при отражениях). Чтобы избежать цветных полос, рекомендуется использовать наименьшее значение, которое не приводит к отсечению видимого света.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy** = ``1.0`` :ref:`🔗<class_VoxelGIData_property_energy>`

.. rst-class:: classref-property-setget

- |void| **set_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy**\ (\ )

Энергия непрямого освещения и отражений, создаваемых узлом :ref:`VoxelGI<class_VoxelGI>`. Более высокие значения приводят к более яркому непрямому освещению. Если непрямое освещение выглядит слишком плоским, попробуйте уменьшить :ref:`propagation<class_VoxelGIData_property_propagation>` и одновременно увеличить :ref:`energy<class_VoxelGIData_property_energy>`. См. также :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`, который влияет на эффективную яркость непрямого освещения.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_VoxelGIData_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

Если ``true``, освещение :ref:`Environment<class_Environment>` игнорируется узлом :ref:`VoxelGI<class_VoxelGI>`. Если ``false``, освещение :ref:`Environment<class_Environment>` учитывается узлом :ref:`VoxelGI<class_VoxelGI>`. Освещение :ref:`Environment<class_Environment>` обновляется в режиме реального времени, что означает, что его можно изменить без повторного запекания узла :ref:`VoxelGI<class_VoxelGI>`.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_normal_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_bias** = ``0.0`` :ref:`🔗<class_VoxelGIData_property_normal_bias>`

.. rst-class:: classref-property-setget

- |void| **set_normal_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_bias**\ (\ )

Нормальное смещение для использования при непрямом освещении и отражениях. Более высокие значения уменьшают самоотражения, видимые в негрубых материалах, за счет более заметной утечки света и более плоского непрямого освещения. См. также :ref:`bias<class_VoxelGIData_property_bias>`. Чтобы отдать приоритет скрытию самоотражения над качеством освещения, установите :ref:`bias<class_VoxelGIData_property_bias>` на ``0.0`` и :ref:`normal_bias<class_VoxelGIData_property_normal_bias>` на значение между ``1.0`` и ``2.0``.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_propagation:

.. rst-class:: classref-property

:ref:`float<class_float>` **propagation** = ``0.5`` :ref:`🔗<class_VoxelGIData_property_propagation>`

.. rst-class:: classref-property-setget

- |void| **set_propagation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_propagation**\ (\ )

Множитель, используемый при отражении света от поверхности. Более высокие значения приводят к более яркому непрямому освещению. Если непрямое освещение выглядит слишком плоским, попробуйте уменьшить :ref:`propagation<class_VoxelGIData_property_propagation>` и одновременно увеличить :ref:`energy<class_VoxelGIData_property_energy>`. См. также :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`, который влияет на эффективную яркость непрямого освещения.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_use_two_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_two_bounces** = ``true`` :ref:`🔗<class_VoxelGIData_property_use_two_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_two_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_two_bounces**\ (\ )

Если ``true``, выполняет два отражения непрямого освещения вместо одного. Это делает непрямое освещение более естественным и ярким при небольших затратах производительности. Второе отражение также видно в отражениях. Если сцена выглядит слишком яркой после включения :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`, отрегулируйте :ref:`propagation<class_VoxelGIData_property_propagation>` и :ref:`energy<class_VoxelGIData_property_energy>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_VoxelGIData_method_allocate:

.. rst-class:: classref-method

|void| **allocate**\ (\ to_cell_xform\: :ref:`Transform3D<class_Transform3D>`, aabb\: :ref:`AABB<class_AABB>`, octree_size\: :ref:`Vector3<class_Vector3>`, octree_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, data_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, distance_field\: :ref:`PackedByteArray<class_PackedByteArray>`, level_counts\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_VoxelGIData_method_allocate>`

Initializes this **VoxelGIData** with the specified data. ``octree_cells`` must be a multiple of 32. ``octree_cells`` must be double the size of ``data_cells``. The allocated data can be retrieved later using the various getter methods.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_bounds:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_bounds>`

Возвращает границы запеченных данных вокселя как :ref:`AABB<class_AABB>`, которые должны соответствовать :ref:`VoxelGI.size<class_VoxelGI_property_size>` после запекания (который содержит только размер как :ref:`Vector3<class_Vector3>`).

\ **Примечание:** Если размер был изменен без запекания данных VoxelGI, то значение :ref:`get_bounds()<class_VoxelGIData_method_get_bounds>` и :ref:`VoxelGI.size<class_VoxelGI_property_size>` не будут совпадать.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_data_cells:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_data_cells**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_data_cells>`

Returns the baked cell data for this **VoxelGIData**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_level_counts:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_level_counts**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_level_counts>`

Returns the baked level counts for this **VoxelGIData**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_octree_cells:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_octree_cells**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_octree_cells>`

Returns the baked octree cell data for this **VoxelGIData**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_octree_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_octree_size**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_octree_size>`

Returns the baked octree size for this **VoxelGIData**, which corresponds to the number of subdivisions per axis. This can be viewed in the editor by hovering the **Bake VoxelGI** button at the top of the 3D editor viewport when a :ref:`VoxelGI<class_VoxelGI>` node is selected and looking at the **Subdivisions** field in the tooltip.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_to_cell_xform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_to_cell_xform**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_to_cell_xform>`

Returns the baked cell transform for this **VoxelGIData**.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
