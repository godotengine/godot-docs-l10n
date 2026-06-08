:github_url: hide

.. _class_CSGShape3D:

CSGShape3D
==========

**Наследует:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`CSGCombiner3D<class_CSGCombiner3D>`, :ref:`CSGPrimitive3D<class_CSGPrimitive3D>`

Базовый класс CSG.

.. rst-class:: classref-introduction-group

Описание
----------------

Это базовый класс CSG, который обеспечивает поддержку операций CSG для различных узлов CSG в Godot.

\ **Производительность:** Узлы CSG предназначены только для прототипирования, поскольку они имеют значительные затраты производительности ЦП. Рассмотрите возможность запекания окончательных результатов операций CSG в статическую геометрию, которая заменяет узлы CSG.

Отдельные результаты корневых узлов CSG можно запекать в узлы со статическими ресурсами с помощью меню редактора, которое появляется при выборе корневого узла CSG.

Отдельные корневые узлы CSG также можно запекать в статические ресурсы с помощью скриптов, вызывая :ref:`bake_static_mesh()<class_CSGShape3D_method_bake_static_mesh>` для визуальной сетки или :ref:`bake_collision_shape()<class_CSGShape3D_method_bake_collision_shape>` для физического столкновения.

Все сцены узлов CSG можно запекать в статическую геометрию и экспортировать с помощью редактора экспортера сцен glTF: **Сцена > Экспортировать как... > Сцена glTF 2.0...**

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Прототипирование уровней с помощью CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`autosmooth<class_CSGShape3D_property_autosmooth>`                 | ``false`` |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`calculate_tangents<class_CSGShape3D_property_calculate_tangents>` | ``true``  |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                       | :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`       | ``1``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                       | :ref:`collision_mask<class_CSGShape3D_property_collision_mask>`         | ``1``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`collision_priority<class_CSGShape3D_property_collision_priority>` | ``1.0``   |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`Operation<enum_CSGShape3D_Operation>` | :ref:`operation<class_CSGShape3D_property_operation>`                   | ``0``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`smoothing_angle<class_CSGShape3D_property_smoothing_angle>`       | ``50.0``  |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`snap<class_CSGShape3D_property_snap>`                             |           |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`use_collision<class_CSGShape3D_property_use_collision>`           | ``false`` |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` | :ref:`bake_collision_shape<class_CSGShape3D_method_bake_collision_shape>`\ (\ )                                                                                  |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`                         | :ref:`bake_static_mesh<class_CSGShape3D_method_bake_static_mesh>`\ (\ )                                                                                          |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`get_collision_layer_value<class_CSGShape3D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`get_collision_mask_value<class_CSGShape3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                            |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`get_meshes<class_CSGShape3D_method_get_meshes>`\ (\ ) |const|                                                                                              |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`is_root_shape<class_CSGShape3D_method_is_root_shape>`\ (\ ) |const|                                                                                        |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_collision_layer_value<class_CSGShape3D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_collision_mask_value<class_CSGShape3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )   |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_CSGShape3D_Operation:

.. rst-class:: classref-enumeration

enum **Operation**: :ref:`🔗<enum_CSGShape3D_Operation>`

.. _class_CSGShape3D_constant_OPERATION_UNION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_UNION** = ``0``

Геометрия обоих примитивов объединяется, пересекающаяся геометрия удаляется.

.. _class_CSGShape3D_constant_OPERATION_INTERSECTION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_INTERSECTION** = ``1``

Остается только пересекающаяся геометрия, остальное удаляется.

.. _class_CSGShape3D_constant_OPERATION_SUBTRACTION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_SUBTRACTION** = ``2``

Вторая форма вычитается из первой, оставляя вмятину на ее форме.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CSGShape3D_property_autosmooth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autosmooth** = ``false`` :ref:`🔗<class_CSGShape3D_property_autosmooth>`

.. rst-class:: classref-property-setget

- |void| **set_autosmooth**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autosmooth**\ (\ )

Включает автоматическое сглаживание. Это отменяет любое сглаживание на узле CSG и вместо этого использует :ref:`smoothing_angle<class_CSGShape3D_property_smoothing_angle>` для вычисления нормалей на основе угла между гранями.

Дочерние элементы узла :ref:`CSGCombiner3D<class_CSGCombiner3D>` будут рассматриваться как единая сетка.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_calculate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **calculate_tangents** = ``true`` :ref:`🔗<class_CSGShape3D_property_calculate_tangents>`

.. rst-class:: classref-property-setget

- |void| **set_calculate_tangents**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_calculating_tangents**\ (\ )

Вычислить касательные для формы CSG, что позволяет использовать карты нормалей и высот. Это применяется только к корневой форме, эта настройка игнорируется для любого дочернего элемента. Установка этого параметра на ``false`` может немного ускорить генерацию формы.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_CSGShape3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Слои физики, в которых находится эта область.

Объекты, способные сталкиваться, могут существовать в любом из 32 различных слоев. Эти слои работают как система тегов и не являются визуальными. Сталкивающийся объект может использовать эти слои для выбора объектов, с которыми он может столкнуться, используя свойство collision_mask.

Контакт обнаруживается, если объект A находится в любом из слоев, которые сканирует объект B, или объект B находится в любом слое, сканируемом объектом A. Для получения дополнительной информации см. `Слои и маски столкновений <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документации.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_CSGShape3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Слои физики этой формы CSG сканируют на предмет столкновений. Действует только если :ref:`use_collision<class_CSGShape3D_property_use_collision>` равно ``true``. Для получения дополнительной информации см. `Слои и маски столкновений <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документации.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_CSGShape3D_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

Приоритет, используемый для решения столкновения при возникновении проникновения. Действует только если :ref:`use_collision<class_CSGShape3D_property_use_collision>` равно ``true``. Чем выше приоритет, тем ниже будет проникновение в объект. Это может быть использовано, например, для предотвращения прорыва игрока через границы уровня.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_operation:

.. rst-class:: classref-property

:ref:`Operation<enum_CSGShape3D_Operation>` **operation** = ``0`` :ref:`🔗<class_CSGShape3D_property_operation>`

.. rst-class:: classref-property-setget

- |void| **set_operation**\ (\ value\: :ref:`Operation<enum_CSGShape3D_Operation>`\ )
- :ref:`Operation<enum_CSGShape3D_Operation>` **get_operation**\ (\ )

Операция, которая выполняется над этой формой. Это игнорируется для первого дочернего узла CSG, поскольку операция выполняется между этим узлом и предыдущим дочерним узлом этого родительского узла.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_smoothing_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **smoothing_angle** = ``50.0`` :ref:`🔗<class_CSGShape3D_property_smoothing_angle>`

.. rst-class:: classref-property-setget

- |void| **set_smoothing_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_smoothing_angle**\ (\ )

При включении автоматического сглаживания грани с углом между ними, превышающим указанное значение, будут сглаживаться, а грани с меньшим углом останутся острыми.

Примечание: угол меньше 0,1 приведет к отключению всего сглаживания; это можно использовать для повышения производительности.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_snap:

.. rst-class:: classref-property

:ref:`float<class_float>` **snap** :ref:`🔗<class_CSGShape3D_property_snap>`

.. rst-class:: classref-property-setget

- |void| **set_snap**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_snap**\ (\ )

**Устарело:** The CSG library no longer uses snapping.

Это свойство ничего не делает.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_use_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_collision** = ``false`` :ref:`🔗<class_CSGShape3D_property_use_collision>`

.. rst-class:: classref-property-setget

- |void| **set_use_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_collision**\ (\ )

Добавляет форму столкновения в физический движок для нашей формы CSG. Это всегда будет действовать как статическое тело. Обратите внимание, что форма столкновения все еще активна, даже если сама форма CSG скрыта. См. также :ref:`collision_mask<class_CSGShape3D_property_collision_mask>` и :ref:`collision_priority<class_CSGShape3D_property_collision_priority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_CSGShape3D_method_bake_collision_shape:

.. rst-class:: classref-method

:ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` **bake_collision_shape**\ (\ ) :ref:`🔗<class_CSGShape3D_method_bake_collision_shape>`

Возвращает запеченную физику :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` результата операции CSG этого узла. Возвращает пустую форму, если узел не является корневым узлом CSG или не имеет допустимой геометрии.

\ **Производительность:** Если операция CSG приводит к очень подробной геометрии со многими гранями, производительность физики будет очень низкой. Вогнутые формы, как правило, следует использовать только для статической геометрии уровня, а не с динамическими объектами, которые движутся.

\ **Примечание:** Обновления данных сетки CSG откладываются, что означает, что они обновляются с задержкой в один отрисованный кадр. Чтобы избежать получения пустой формы или устаревших данных сетки, обязательно вызовите ``await get_tree().process_frame`` перед использованием :ref:`bake_collision_shape()<class_CSGShape3D_method_bake_collision_shape>` в :ref:`Node._ready()<class_Node_private_method__ready>` или после изменения свойств в **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_bake_static_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_static_mesh**\ (\ ) :ref:`🔗<class_CSGShape3D_method_bake_static_mesh>`

Возвращает запеченный статический :ref:`ArrayMesh<class_ArrayMesh>` результата операции CSG этого узла. Материалы из задействованных узлов CSG добавляются как дополнительные поверхности сетки. Возвращает пустую сетку, если узел не является корневым узлом CSG или не имеет допустимой геометрии.

\ **Примечание:** Обновления данных сетки CSG откладываются, что означает, что они обновляются с задержкой в один отрисованный кадр. Чтобы избежать получения пустой сетки или устаревших данных сетки, обязательно вызовите ``await get_tree().process_frame`` перед использованием :ref:`bake_static_mesh()<class_CSGShape3D_method_bake_static_mesh>` в :ref:`Node._ready()<class_Node_private_method__ready>` или после изменения свойств на **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_collision_layer_value>`

Возвращает, включен ли указанный слой :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_collision_mask_value>`

Возвращает, включен ли указанный слой :ref:`collision_mask<class_CSGShape3D_property_collision_mask>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_meshes>`

Возвращает :ref:`Array<class_Array>` с двумя элементами, первый из которых — :ref:`Transform3D<class_Transform3D>` этого узла, а второй — корень :ref:`Mesh<class_Mesh>` этого узла. Работает только в том случае, если этот узел является корневой формой.

\ **Примечание:** Обновления данных сетки CSG откладываются, что означает, что они обновляются с задержкой в один отрисованный кадр. Чтобы избежать получения пустой формы или устаревших данных сетки, обязательно вызовите ``await get_tree().process_frame`` перед использованием :ref:`get_meshes()<class_CSGShape3D_method_get_meshes>` в :ref:`Node._ready()<class_Node_private_method__ready>` или после изменения свойств в **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_is_root_shape:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_root_shape**\ (\ ) |const| :ref:`🔗<class_CSGShape3D_method_is_root_shape>`

Возвращает ``true``, если это корневая форма и, следовательно, объект, который визуализируется.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CSGShape3D_method_set_collision_layer_value>`

На основе ``value`` включает или отключает указанный слой в :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CSGShape3D_method_set_collision_mask_value>`

На основе ``value`` включает или отключает указанный слой в :ref:`collision_mask<class_CSGShape3D_property_collision_mask>` при заданном ``layer_number`` от 1 до 32.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
