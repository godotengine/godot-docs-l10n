:github_url: hide

.. _class_Curve3D:

Curve3D
=======

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Описывает кривую Безье в 3D пространстве.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс описывает кривую Безье в 3D пространстве. В основном он используется для придания формы :ref:`Path3D<class_Path3D>`, но может быть вручную выбран для других целей.

Он хранит кэш предварительно рассчитанных точек вдоль кривой для ускорения дальнейших вычислений.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`bake_interval<class_Curve3D_property_bake_interval>`                   | ``0.2``              |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`closed<class_Curve3D_property_closed>`                                 | ``false``            |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`point_count<class_Curve3D_property_point_count>`                       | ``0``                |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`point_{index}/in<class_Curve3D_property_point_{index}/in>`             | ``Vector3(0, 0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`point_{index}/out<class_Curve3D_property_point_{index}/out>`           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`point_{index}/position<class_Curve3D_property_point_{index}/position>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`point_{index}/tilt<class_Curve3D_property_point_{index}/tilt>`         | ``0.0``              |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`up_vector_enabled<class_Curve3D_property_up_vector_enabled>`           | ``true``             |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_point<class_Curve3D_method_add_point>`\ (\ position\: :ref:`Vector3<class_Vector3>`, in\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), out\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), index\: :ref:`int<class_int>` = -1\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_points<class_Curve3D_method_clear_points>`\ (\ )                                                                                                                                                                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_baked_length<class_Curve3D_method_get_baked_length>`\ (\ ) |const|                                                                                                                                                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_baked_points<class_Curve3D_method_get_baked_points>`\ (\ ) |const|                                                                                                                                                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_baked_tilts<class_Curve3D_method_get_baked_tilts>`\ (\ ) |const|                                                                                                                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_baked_up_vectors<class_Curve3D_method_get_baked_up_vectors>`\ (\ ) |const|                                                                                                                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_closest_offset<class_Curve3D_method_get_closest_offset>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_closest_point<class_Curve3D_method_get_closest_point>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                            |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_point_in<class_Curve3D_method_get_point_in>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                   |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_point_out<class_Curve3D_method_get_point_out>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_point_position<class_Curve3D_method_get_point_position>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_point_tilt<class_Curve3D_method_get_point_tilt>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_point<class_Curve3D_method_remove_point>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`sample<class_Curve3D_method_sample>`\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const|                                                                                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`sample_baked<class_Curve3D_method_sample_baked>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`sample_baked_up_vector<class_Curve3D_method_sample_baked_up_vector>`\ (\ offset\: :ref:`float<class_float>`, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const|                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`sample_baked_with_rotation<class_Curve3D_method_sample_baked_with_rotation>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const|                   |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`samplef<class_Curve3D_method_samplef>`\ (\ fofs\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_in<class_Curve3D_method_set_point_in>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_out<class_Curve3D_method_set_point_out>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_position<class_Curve3D_method_set_point_position>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                                                                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_tilt<class_Curve3D_method_set_point_tilt>`\ (\ idx\: :ref:`int<class_int>`, tilt\: :ref:`float<class_float>`\ )                                                                                                                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`tessellate<class_Curve3D_method_tessellate>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const|                                                                                         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`tessellate_even_length<class_Curve3D_method_tessellate_even_length>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 0.2\ ) |const|                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Curve3D_property_bake_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_interval** = ``0.2`` :ref:`🔗<class_Curve3D_property_bake_interval>`

.. rst-class:: classref-property-setget

- |void| **set_bake_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_interval**\ (\ )

Расстояние в метрах между двумя соседними кэшированными точками. Его изменение приводит к пересчету кэша при следующем вызове функции :ref:`get_baked_points()<class_Curve3D_method_get_baked_points>` или :ref:`get_baked_length()<class_Curve3D_method_get_baked_length>`. Чем меньше расстояние, тем больше точек в кэше и тем больше памяти он будет потреблять, поэтому используйте с осторожностью.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``false`` :ref:`🔗<class_Curve3D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

Если ``true``, а кривая имеет более 2 контрольных точек, то последняя и первая точки будут соединены в петлю.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve3D_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

Количество точек, описывающих кривую.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_{index}/in:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **point_{index}/in** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Curve3D_property_point_{index}/in>`

The position of the control point leading to the vertex at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_{index}/out:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **point_{index}/out** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Curve3D_property_point_{index}/out>`

The position of the control point leading out of the vertex at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_{index}/position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **point_{index}/position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Curve3D_property_point_{index}/position>`

The position of for the vertex at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_{index}/tilt:

.. rst-class:: classref-property

:ref:`float<class_float>` **point_{index}/tilt** = ``0.0`` :ref:`🔗<class_Curve3D_property_point_{index}/tilt>`

The tilt angle in radians for the point at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_up_vector_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **up_vector_enabled** = ``true`` :ref:`🔗<class_Curve3D_property_up_vector_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_up_vector_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_up_vector_enabled**\ (\ )

Если ``true``, кривая запечет векторы, используемые для ориентации. Это используется, когда :ref:`PathFollow3D.rotation_mode<class_PathFollow3D_property_rotation_mode>` установлен в :ref:`PathFollow3D.ROTATION_ORIENTED<class_PathFollow3D_constant_ROTATION_ORIENTED>`. Изменение этого параметра приводит к пересчету кэша.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Curve3D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector3<class_Vector3>`, in\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), out\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Curve3D_method_add_point>`

Добавляет точку с указанным ``position`` относительно собственного положения кривой с контрольными точками ``in`` и ``out``. Добавляет новую точку в конец списка точек.

Если задан ``index``, новая точка вставляется перед существующей точкой, идентифицированной индексом ``index``. Каждая существующая точка, начиная с ``index``, смещается дальше вниз по списку точек. Индекс должен быть больше или равен ``0`` и не должен превышать количество существующих точек в строке. См. :ref:`point_count<class_Curve3D_property_point_count>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve3D_method_clear_points>`

Удаляет все точки из кривой.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_baked_length**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_length>`

Возвращает общую длину кривой на основе кэшированных точек. При достаточной плотности (см. :ref:`bake_interval<class_Curve3D_property_bake_interval>`) она должна быть достаточно приблизительной.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_points:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_baked_points**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_points>`

Возвращает кэш точек в виде :ref:`PackedVector3Array<class_PackedVector3Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_tilts:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_baked_tilts**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_tilts>`

Возвращает кэш наклонов в виде :ref:`PackedFloat32Array<class_PackedFloat32Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_up_vectors:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_baked_up_vectors**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_up_vectors>`

Возвращает кэш векторов up как :ref:`PackedVector3Array<class_PackedVector3Array>`.

Если :ref:`up_vector_enabled<class_Curve3D_property_up_vector_enabled>` равен ``false``, кэш будет пуст.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_closest_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_offset**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_closest_offset>`

Возвращает ближайшее смещение к ``to_point``. Это смещение предназначено для использования в :ref:`sample_baked()<class_Curve3D_method_sample_baked>` или :ref:`sample_baked_up_vector()<class_Curve3D_method_sample_baked_up_vector>`.

\ ``to_point`` должен находиться в локальном пространстве этой кривой.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_point**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_closest_point>`

Возвращает ближайшую точку на запеченных сегментах (в локальном пространстве кривой) к ``to_point``.

\ ``to_point`` должен находиться в локальном пространстве этой кривой.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_in:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_in**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_in>`

Возвращает позицию контрольной точки, ведущей к вершине ``idx``. Возвращаемая позиция является относительной вершины ``idx``. Если индекс выходит за пределы, функция отправляет ошибку на консоль и возвращает ``(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_out:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_out**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_out>`

Возвращает позицию контрольной точки, выходящей из вершины ``idx``. Возвращаемая позиция является относительной вершины ``idx``. Если индекс выходит за пределы, функция отправляет ошибку на консоль и возвращает ``(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_position**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_position>`

Возвращает позицию вершины ``idx``. Если индекс выходит за пределы, функция отправляет ошибку на консоль и возвращает ``(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_tilt:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_tilt**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_tilt>`

Возвращает угол наклона в радианах для точки ``idx``. Если индекс выходит за пределы, функция отправляет ошибку на консоль и возвращает ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve3D_method_remove_point>`

Удаляет точку ``idx`` из кривой. Отправляет ошибку на консоль, если ``idx`` выходит за пределы.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **sample**\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve3D_method_sample>`

Возвращает позицию между вершиной ``idx`` и вершиной ``idx + 1``, где ``t`` контролирует, является ли точка первой вершиной (``t = 0.0``), последней вершиной (``t = 1.0``) или находится между ними. Значения ``t`` вне диапазона (``0.0 >= t <=1``) дают странные, но предсказуемые результаты.

Если ``idx`` выходит за пределы, он усекается до первой или последней вершины, а ``t`` игнорируется. Если у кривой нет точек, функция отправляет ошибку на консоль и возвращает ``(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample_baked:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **sample_baked**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve3D_method_sample_baked>`

Возвращает точку внутри кривой в позиции ``offset``, где ``offset`` измеряется как расстояние в трехмерных единицах вдоль кривой. Для этого он находит две кэшированные точки, между которыми находится ``offset``, а затем интерполирует значения. Эта интерполяция является кубической, если ``cubic`` установлен в ``true``, или линейной, если установлен в ``false``.

Кубическая интерполяция имеет тенденцию лучше следовать кривым, но линейная быстрее (и часто достаточно точна).

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample_baked_up_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **sample_baked_up_vector**\ (\ offset\: :ref:`float<class_float>`, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve3D_method_sample_baked_up_vector>`

Возвращает вектор вверх внутри кривой в позиции ``offset``, где ``offset`` измеряется как расстояние в трехмерных единицах вдоль кривой. Для этого он находит два кэшированных вектора вверх, между которыми находится ``offset``, затем интерполирует значения. Если ``apply_tilt`` равен ``true``, к интерполированному вектору вверх применяется интерполированный наклон. 

Если у кривой нет векторов вверх, функция отправляет ошибку на консоль и возвращает ``(0, 1, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample_baked_with_rotation:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **sample_baked_with_rotation**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve3D_method_sample_baked_with_rotation>`

Возвращает :ref:`Transform3D<class_Transform3D>` с ``origin`` в качестве позиции точки, ``basis.x`` в качестве бокового вектора, ``basis.y`` в качестве верхнего вектора, ``basis.z`` в качестве прямого вектора. Когда длина кривой равна 0, нет разумного способа вычислить поворот, все векторы выровнены с глобальными пространственными осями. См. также :ref:`sample_baked()<class_Curve3D_method_sample_baked>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_samplef:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **samplef**\ (\ fofs\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve3D_method_samplef>`

Возвращает позицию в вершине ``fofs``. Он вызывает :ref:`sample()<class_Curve3D_method_sample>`, используя целую часть ``fofs`` как ``idx``, а его дробную часть как ``t``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_in:

.. rst-class:: classref-method

|void| **set_point_in**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Curve3D_method_set_point_in>`

Устанавливает позицию контрольной точки, ведущей к вершине ``idx``. Если индекс выходит за пределы, функция отправляет ошибку на консоль. Позиция указывается относительно вершины.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_out:

.. rst-class:: classref-method

|void| **set_point_out**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Curve3D_method_set_point_out>`

Устанавливает позицию контрольной точки, выходящей из вершины ``idx``. Если индекс выходит за пределы, функция отправляет ошибку на консоль. Позиция указывается относительно вершины.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Curve3D_method_set_point_position>`

Устанавливает позицию для вершины ``idx``. Если индекс выходит за пределы, функция отправляет ошибку на консоль.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_tilt:

.. rst-class:: classref-method

|void| **set_point_tilt**\ (\ idx\: :ref:`int<class_int>`, tilt\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve3D_method_set_point_tilt>`

Устанавливает угол наклона в радианах для точки ``idx``. Если индекс выходит за пределы, функция отправляет ошибку на консоль.

Наклон управляет вращением вдоль оси взгляда, которое будет иметь объект, движущийся по пути. В случае кривой, управляющей :ref:`PathFollow3D<class_PathFollow3D>`, этот наклон является смещением относительно естественного наклона, который вычисляет :ref:`PathFollow3D<class_PathFollow3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_tessellate:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **tessellate**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const| :ref:`🔗<class_Curve3D_method_tessellate>`

Возвращает список точек вдоль кривой с контролируемой кривизной плотностью точек. То есть, более кривые части будут иметь больше точек, чем более прямые части.

Это приближение создает прямые сегменты между каждой точкой, затем подразделяет эти сегменты до тех пор, пока результирующая форма не станет достаточно похожей.

\ ``max_stages`` управляет количеством подразделений, с которыми может столкнуться сегмент кривой, прежде чем он будет считаться достаточно приближенным. Каждое подразделение делит сегмент пополам, поэтому 5 стадий по умолчанию могут означать до 32 подразделений на сегмент кривой. Увеличивайте с осторожностью!

\ ``capacity_degrees`` управляет тем, на сколько градусов средняя точка сегмента может отклоняться от реальной кривой, прежде чем сегмент придется подразделять.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_tessellate_even_length:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **tessellate_even_length**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 0.2\ ) |const| :ref:`🔗<class_Curve3D_method_tessellate_even_length>`

Возвращает список точек вдоль кривой с почти равномерной плотностью. ``max_stages`` управляет количеством подразделений, с которыми может столкнуться сегмент кривой, прежде чем он будет считаться достаточно приближенным. Каждое подразделение делит сегмент пополам, поэтому 5 стадий по умолчанию могут означать до 32 подразделений на сегмент кривой. Увеличивайте с осторожностью!

\ ``capacity_length`` управляет максимальным расстоянием между двумя соседними точками, прежде чем сегмент придется подразделять.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
