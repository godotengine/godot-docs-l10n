:github_url: hide

.. _class_Curve:

Curve
=====

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Математическая кривая.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот ресурс описывает математическую кривую, определяя набор точек и касательных в каждой точке. По умолчанию он находится в диапазоне между ``0`` и ``1`` по осям X и Y, но эти диапазоны можно изменить.

Обратите внимание, что многие ресурсы и узлы предполагают, что им заданы *единичные кривые*. Единичная кривая — это кривая, область определения (ось X) которой находится между ``0`` и ``1``. Некоторые примеры использования единичной кривой: :ref:`CPUParticles2D.angle_curve<class_CPUParticles2D_property_angle_curve>` и :ref:`Line2D.width_curve<class_Line2D_property_width_curve>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`bake_resolution<class_Curve_property_bake_resolution>`                         | ``100``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`max_domain<class_Curve_property_max_domain>`                                   | ``1.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`max_value<class_Curve_property_max_value>`                                     | ``1.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`min_domain<class_Curve_property_min_domain>`                                   | ``0.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`min_value<class_Curve_property_min_value>`                                     | ``0.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`point_count<class_Curve_property_point_count>`                                 | ``0``             |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`point_{index}/left_mode<class_Curve_property_point_{index}/left_mode>`         | ``0``             |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`point_{index}/left_tangent<class_Curve_property_point_{index}/left_tangent>`   | ``0.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`point_{index}/position<class_Curve_property_point_{index}/position>`           | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`point_{index}/right_mode<class_Curve_property_point_{index}/right_mode>`       | ``0``             |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`point_{index}/right_tangent<class_Curve_property_point_{index}/right_tangent>` | ``0.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                      | :ref:`add_point<class_Curve_method_add_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, left_tangent\: :ref:`float<class_float>` = 0, right_tangent\: :ref:`float<class_float>` = 0, left_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0, right_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0\ ) |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`bake<class_Curve_method_bake>`\ (\ )                                                                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`clean_dupes<class_Curve_method_clean_dupes>`\ (\ )                                                                                                                                                                                                                                                             |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`clear_points<class_Curve_method_clear_points>`\ (\ )                                                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_domain_range<class_Curve_method_get_domain_range>`\ (\ ) |const|                                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TangentMode<enum_Curve_TangentMode>` | :ref:`get_point_left_mode<class_Curve_method_get_point_left_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                      |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_point_left_tangent<class_Curve_method_get_point_left_tangent>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`              | :ref:`get_point_position<class_Curve_method_get_point_position>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                        |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TangentMode<enum_Curve_TangentMode>` | :ref:`get_point_right_mode<class_Curve_method_get_point_right_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                    |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_point_right_tangent<class_Curve_method_get_point_right_tangent>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                              |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_value_range<class_Curve_method_get_value_range>`\ (\ ) |const|                                                                                                                                                                                                                                             |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`remove_point<class_Curve_method_remove_point>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                            |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`sample<class_Curve_method_sample>`\ (\ offset\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`sample_baked<class_Curve_method_sample_baked>`\ (\ offset\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                               |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_left_mode<class_Curve_method_set_point_left_mode>`\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ )                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_left_tangent<class_Curve_method_set_point_left_tangent>`\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ )                                                                                                                                                                   |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                      | :ref:`set_point_offset<class_Curve_method_set_point_offset>`\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ )                                                                                                                                                                                |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_right_mode<class_Curve_method_set_point_right_mode>`\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ )                                                                                                                                                         |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_right_tangent<class_Curve_method_set_point_right_tangent>`\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ )                                                                                                                                                                 |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_value<class_Curve_method_set_point_value>`\ (\ index\: :ref:`int<class_int>`, y\: :ref:`float<class_float>`\ )                                                                                                                                                                                       |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_Curve_signal_domain_changed:

.. rst-class:: classref-signal

**domain_changed**\ (\ ) :ref:`🔗<class_Curve_signal_domain_changed>`

Вызывается при изменении :ref:`max_domain<class_Curve_property_max_domain>` или :ref:`min_domain<class_Curve_property_min_domain>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_signal_range_changed:

.. rst-class:: classref-signal

**range_changed**\ (\ ) :ref:`🔗<class_Curve_signal_range_changed>`

Выдается при изменении :ref:`max_value<class_Curve_property_max_value>` или :ref:`min_value<class_Curve_property_min_value>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Curve_TangentMode:

.. rst-class:: classref-enumeration

enum **TangentMode**: :ref:`🔗<enum_Curve_TangentMode>`

.. _class_Curve_constant_TANGENT_FREE:

.. rst-class:: classref-enumeration-constant

:ref:`TangentMode<enum_Curve_TangentMode>` **TANGENT_FREE** = ``0``

Касательная по эту сторону точки определяется пользователем.

.. _class_Curve_constant_TANGENT_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TangentMode<enum_Curve_TangentMode>` **TANGENT_LINEAR** = ``1``

Кривая вычисляет касательную по эту сторону от точки как наклон на полпути к соседней точке.

.. _class_Curve_constant_TANGENT_MODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`TangentMode<enum_Curve_TangentMode>` **TANGENT_MODE_COUNT** = ``2``

Общее количество доступных касательных мод.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Curve_property_bake_resolution:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_resolution** = ``100`` :ref:`🔗<class_Curve_property_bake_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_bake_resolution**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_resolution**\ (\ )

Количество точек, включаемых в запеченные (т.е. кэшированные) данные кривой.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_max_domain:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_domain** = ``1.0`` :ref:`🔗<class_Curve_property_max_domain>`

.. rst-class:: classref-property-setget

- |void| **set_max_domain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_domain**\ (\ )

Максимальный домен (координата x), который может иметь точка.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_max_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_value** = ``1.0`` :ref:`🔗<class_Curve_property_max_value>`

.. rst-class:: classref-property-setget

- |void| **set_max_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_value**\ (\ )

Максимальное значение (координата Y), которое могут иметь точки. Касательные могут вызывать более высокие значения между точками.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_min_domain:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_domain** = ``0.0`` :ref:`🔗<class_Curve_property_min_domain>`

.. rst-class:: classref-property-setget

- |void| **set_min_domain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_domain**\ (\ )

Минимальная область (координата x), которую могут иметь точки.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_min_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_value** = ``0.0`` :ref:`🔗<class_Curve_property_min_value>`

.. rst-class:: classref-property-setget

- |void| **set_min_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_value**\ (\ )

Минимальное значение (координата Y), которое могут иметь точки. Касательные могут вызывать более низкие значения между точками.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

Количество точек, описывающих кривую.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/left_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_{index}/left_mode** = ``0`` :ref:`🔗<class_Curve_property_point_{index}/left_mode>`

The left :ref:`TangentMode<enum_Curve_TangentMode>` for the point at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/left_tangent:

.. rst-class:: classref-property

:ref:`float<class_float>` **point_{index}/left_tangent** = ``0.0`` :ref:`🔗<class_Curve_property_point_{index}/left_tangent>`

The left tangent angle (in degrees) for the point at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **point_{index}/position** = ``Vector2(0, 0)`` :ref:`🔗<class_Curve_property_point_{index}/position>`

The position of the point at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/right_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_{index}/right_mode** = ``0`` :ref:`🔗<class_Curve_property_point_{index}/right_mode>`

The right :ref:`TangentMode<enum_Curve_TangentMode>` for the point at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/right_tangent:

.. rst-class:: classref-property

:ref:`float<class_float>` **point_{index}/right_tangent** = ``0.0`` :ref:`🔗<class_Curve_property_point_{index}/right_tangent>`

The right tangent angle (in degrees) for the point at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Curve_method_add_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, left_tangent\: :ref:`float<class_float>` = 0, right_tangent\: :ref:`float<class_float>` = 0, left_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0, right_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0\ ) :ref:`🔗<class_Curve_method_add_point>`

Добавляет точку к кривой. Для каждой стороны, если ``*_mode`` равно :ref:`TANGENT_LINEAR<class_Curve_constant_TANGENT_LINEAR>`, угол ``*_tangent`` (в градусах) использует наклон кривой на полпути к соседней точке. Позволяет настраивать назначения угла ``*_tangent``, если ``*_mode`` равно :ref:`TANGENT_FREE<class_Curve_constant_TANGENT_FREE>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ ) :ref:`🔗<class_Curve_method_bake>`

Пересчитывает запеченный кэш точек для кривой.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_clean_dupes:

.. rst-class:: classref-method

|void| **clean_dupes**\ (\ ) :ref:`🔗<class_Curve_method_clean_dupes>`

Удаляет дублирующиеся точки, т. е. точки, которые находятся на расстоянии менее 0,00001 единицы (значение эпсилон двигателя) от своего соседа на кривой.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve_method_clear_points>`

Удаляет все точки из кривой.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_domain_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_domain_range**\ (\ ) |const| :ref:`🔗<class_Curve_method_get_domain_range>`

Возвращает разницу между :ref:`min_domain<class_Curve_property_min_domain>` и :ref:`max_domain<class_Curve_property_max_domain>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_left_mode:

.. rst-class:: classref-method

:ref:`TangentMode<enum_Curve_TangentMode>` **get_point_left_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_left_mode>`

Возвращает левый :ref:`TangentMode<enum_Curve_TangentMode>` для точки с ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_left_tangent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_left_tangent**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_left_tangent>`

Возвращает левый угол касательной (в градусах) для точки с ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_position>`

Возвращает координаты кривой для точки с ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_right_mode:

.. rst-class:: classref-method

:ref:`TangentMode<enum_Curve_TangentMode>` **get_point_right_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_right_mode>`

Возвращает правильный :ref:`TangentMode<enum_Curve_TangentMode>` для точки с ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_right_tangent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_right_tangent**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_right_tangent>`

Возвращает угол прямого тангенса (в градусах) для точки с ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_value_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_value_range**\ (\ ) |const| :ref:`🔗<class_Curve_method_get_value_range>`

Возвращает разницу между :ref:`min_value<class_Curve_property_min_value>`] и :ref:`max_value<class_Curve_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve_method_remove_point>`

Удаляет точку с ``index`` из кривой.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_sample:

.. rst-class:: classref-method

:ref:`float<class_float>` **sample**\ (\ offset\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve_method_sample>`

Возвращает значение Y для точки, которая будет находиться в позиции X ``offset`` вдоль кривой.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_sample_baked:

.. rst-class:: classref-method

:ref:`float<class_float>` **sample_baked**\ (\ offset\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve_method_sample_baked>`

Возвращает значение Y для точки, которая будет существовать в позиции X ``offset`` вдоль кривой, используя запеченный кэш. Запекает точки кривой, если они еще не запечены.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_left_mode:

.. rst-class:: classref-method

|void| **set_point_left_mode**\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ ) :ref:`🔗<class_Curve_method_set_point_left_mode>`

Устанавливает левый :ref:`TangentMode<enum_Curve_TangentMode>` для точки с ``index`` в ``mode``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_left_tangent:

.. rst-class:: classref-method

|void| **set_point_left_tangent**\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_left_tangent>`

Устанавливает левый угол касательной для точки с ``index`` на ``tangent``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **set_point_offset**\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_offset>`

Assigns the horizontal position ``offset`` to the point at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_right_mode:

.. rst-class:: classref-method

|void| **set_point_right_mode**\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ ) :ref:`🔗<class_Curve_method_set_point_right_mode>`

Устанавливает правильный :ref:`TangentMode<enum_Curve_TangentMode>` для точки с ``index`` в ``mode``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_right_tangent:

.. rst-class:: classref-method

|void| **set_point_right_tangent**\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_right_tangent>`

Устанавливает прямой угол касательной для точки с ``index`` на ``tangent``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_value:

.. rst-class:: classref-method

|void| **set_point_value**\ (\ index\: :ref:`int<class_int>`, y\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_value>`

Присваивает вертикальное положение ``y`` точке с ``index``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
