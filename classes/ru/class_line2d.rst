:github_url: hide

.. _class_Line2D:

Line2D
======

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Двумерная полилиния, которую при желании можно текстурировать.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот узел рисует 2D-полилинию, т. е. фигуру, состоящую из нескольких точек, соединенных сегментами. **Line2D** не является математической полилинией, т. е. сегменты не бесконечно тонкие. Он предназначен для рендеринга и может быть окрашен и опционально текстурирован.

\ **Предупреждение:** Некоторые конфигурации может быть невозможно нарисовать красиво, например, очень острые углы. В таких ситуациях узел использует резервную логику рисования, чтобы выглядеть прилично.

\ **Примечание:** **Line2D** рисуется с использованием 2D-сетки.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация матричных преобразований <https://godotengine.org/asset-library/asset/2787>`__

- `Демонстрация игры 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`antialiased<class_Line2D_property_antialiased>`         | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`LineCapMode<enum_Line2D_LineCapMode>`         | :ref:`begin_cap_mode<class_Line2D_property_begin_cap_mode>`   | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`closed<class_Line2D_property_closed>`                   | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`default_color<class_Line2D_property_default_color>`     | ``Color(1, 1, 1, 1)``    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`LineCapMode<enum_Line2D_LineCapMode>`         | :ref:`end_cap_mode<class_Line2D_property_end_cap_mode>`       | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`Gradient<class_Gradient>`                     | :ref:`gradient<class_Line2D_property_gradient>`               |                          |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`LineJointMode<enum_Line2D_LineJointMode>`     | :ref:`joint_mode<class_Line2D_property_joint_mode>`           | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`points<class_Line2D_property_points>`                   | ``PackedVector2Array()`` |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`round_precision<class_Line2D_property_round_precision>` | ``8``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`sharp_limit<class_Line2D_property_sharp_limit>`         | ``2.0``                  |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`texture<class_Line2D_property_texture>`                 |                          |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`LineTextureMode<enum_Line2D_LineTextureMode>` | :ref:`texture_mode<class_Line2D_property_texture_mode>`       | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`width<class_Line2D_property_width>`                     | ``10.0``                 |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`Curve<class_Curve>`                           | :ref:`width_curve<class_Line2D_property_width_curve>`         |                          |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_point<class_Line2D_method_add_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, index\: :ref:`int<class_int>` = -1\ )              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_points<class_Line2D_method_clear_points>`\ (\ )                                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_point_count<class_Line2D_method_get_point_count>`\ (\ ) |const|                                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_point_position<class_Line2D_method_get_point_position>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_point<class_Line2D_method_remove_point>`\ (\ index\: :ref:`int<class_int>`\ )                                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_point_position<class_Line2D_method_set_point_position>`\ (\ index\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Line2D_LineJointMode:

.. rst-class:: classref-enumeration

enum **LineJointMode**: :ref:`🔗<enum_Line2D_LineJointMode>`

.. _class_Line2D_constant_LINE_JOINT_SHARP:

.. rst-class:: classref-enumeration-constant

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **LINE_JOINT_SHARP** = ``0``

Делает сочленения полилинии заостренными, соединяя стороны двух сегментов, удлиняя их до пересечения. Если вращение сочленения слишком велико (на основе :ref:`sharp_limit<class_Line2D_property_sharp_limit>`), сочленение возвращается к :ref:`LINE_JOINT_BEVEL<class_Line2D_constant_LINE_JOINT_BEVEL>`, чтобы предотвратить слишком длинные скосы.

.. _class_Line2D_constant_LINE_JOINT_BEVEL:

.. rst-class:: classref-enumeration-constant

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **LINE_JOINT_BEVEL** = ``1``

Делает стыки полилинии скошенными/скошенными, соединяя стороны двух сегментов простой линией.

.. _class_Line2D_constant_LINE_JOINT_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **LINE_JOINT_ROUND** = ``2``

Делает стыки полилинии скругленными, соединяя стороны двух сегментов дугой. Детализация этой дуги зависит от :ref:`round_precision<class_Line2D_property_round_precision>`.

.. rst-class:: classref-item-separator

----

.. _enum_Line2D_LineCapMode:

.. rst-class:: classref-enumeration

enum **LineCapMode**: :ref:`🔗<enum_Line2D_LineCapMode>`

.. _class_Line2D_constant_LINE_CAP_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **LINE_CAP_NONE** = ``0``

Не рисует линию.

.. _class_Line2D_constant_LINE_CAP_BOX:

.. rst-class:: classref-enumeration-constant

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **LINE_CAP_BOX** = ``1``

Рисует окончание линии в виде прямоугольника, слегка расширяя первый/последний сегмент.

.. _class_Line2D_constant_LINE_CAP_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **LINE_CAP_ROUND** = ``2``

Рисует окончание линии в виде полукруга, прикрепленного к первому/последнему сегменту.

.. rst-class:: classref-item-separator

----

.. _enum_Line2D_LineTextureMode:

.. rst-class:: classref-enumeration

enum **LineTextureMode**: :ref:`🔗<enum_Line2D_LineTextureMode>`

.. _class_Line2D_constant_LINE_TEXTURE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **LINE_TEXTURE_NONE** = ``0``

Берет левые пиксели текстуры и визуализирует их по всей полилинии.

.. _class_Line2D_constant_LINE_TEXTURE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **LINE_TEXTURE_TILE** = ``1``

Размещает текстуру на полилинии. :ref:`CanvasItem.texture_repeat<class_CanvasItem_property_texture_repeat>` узла **Line2D** должен быть :ref:`CanvasItem.TEXTURE_REPEAT_ENABLED<class_CanvasItem_constant_TEXTURE_REPEAT_ENABLED>` или :ref:`CanvasItem.TEXTURE_REPEAT_MIRROR<class_CanvasItem_constant_TEXTURE_REPEAT_MIRROR>` для правильной работы.

.. _class_Line2D_constant_LINE_TEXTURE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **LINE_TEXTURE_STRETCH** = ``2``

Растягивает текстуру по полилинии. :ref:`CanvasItem.texture_repeat<class_CanvasItem_property_texture_repeat>` узла **Line2D** должен быть :ref:`CanvasItem.TEXTURE_REPEAT_DISABLED<class_CanvasItem_constant_TEXTURE_REPEAT_DISABLED>` для достижения наилучших результатов.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Line2D_property_antialiased:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **antialiased** = ``false`` :ref:`🔗<class_Line2D_property_antialiased>`

.. rst-class:: classref-property-setget

- |void| **set_antialiased**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_antialiased**\ (\ )

Если ``true``, граница полилинии будет сглажена.

\ **Примечание:** **Line2D** не ускоряется пакетированием при сглаживании.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_begin_cap_mode:

.. rst-class:: classref-property

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **begin_cap_mode** = ``0`` :ref:`🔗<class_Line2D_property_begin_cap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_begin_cap_mode**\ (\ value\: :ref:`LineCapMode<enum_Line2D_LineCapMode>`\ )
- :ref:`LineCapMode<enum_Line2D_LineCapMode>` **get_begin_cap_mode**\ (\ )

Стиль начала полилинии, если :ref:`closed<class_Line2D_property_closed>` равен ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``false`` :ref:`🔗<class_Line2D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

Если ``true`` и полилиния имеет более 2 точек, последняя точка и первая будут соединены сегментом.

\ **Примечание:** Форма замыкающего сегмента не гарантируется бесшовной, если указан :ref:`width_curve<class_Line2D_property_width_curve>`.

\ **Примечание:** Стык между замыкающим сегментом и первым сегментом рисуется первым, и он выбирает :ref:`gradient<class_Line2D_property_gradient>` и :ref:`width_curve<class_Line2D_property_width_curve>` в начале. Это деталь реализации, которая может измениться в будущей версии.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_default_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **default_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Line2D_property_default_color>`

.. rst-class:: classref-property-setget

- |void| **set_default_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_default_color**\ (\ )

Цвет полилинии. Не будет использоваться, если задан градиент.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_end_cap_mode:

.. rst-class:: classref-property

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **end_cap_mode** = ``0`` :ref:`🔗<class_Line2D_property_end_cap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_end_cap_mode**\ (\ value\: :ref:`LineCapMode<enum_Line2D_LineCapMode>`\ )
- :ref:`LineCapMode<enum_Line2D_LineCapMode>` **get_end_cap_mode**\ (\ )

Стиль окончания полилинии, если :ref:`closed<class_Line2D_property_closed>` равен ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **gradient** :ref:`🔗<class_Line2D_property_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_gradient**\ (\ )

Градиент рисуется по всей линии от начала до конца. :ref:`default_color<class_Line2D_property_default_color>` не будет использоваться, если это свойство установлено.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_joint_mode:

.. rst-class:: classref-property

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **joint_mode** = ``0`` :ref:`🔗<class_Line2D_property_joint_mode>`

.. rst-class:: classref-property-setget

- |void| **set_joint_mode**\ (\ value\: :ref:`LineJointMode<enum_Line2D_LineJointMode>`\ )
- :ref:`LineJointMode<enum_Line2D_LineJointMode>` **get_joint_mode**\ (\ )

Стиль соединений между сегментами полилинии.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **points** = ``PackedVector2Array()`` :ref:`🔗<class_Line2D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_points**\ (\ )

Точки полилинии, интерпретированные в локальных 2D-координатах. Сегменты рисуются между соседними точками в этом массиве.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_round_precision:

.. rst-class:: classref-property

:ref:`int<class_int>` **round_precision** = ``8`` :ref:`🔗<class_Line2D_property_round_precision>`

.. rst-class:: classref-property-setget

- |void| **set_round_precision**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_round_precision**\ (\ )

Гладкость, используемая для закругленных соединений и крышек. Более высокие значения приводят к более гладким углам, но более требовательны к визуализации и обновлению.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_sharp_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **sharp_limit** = ``2.0`` :ref:`🔗<class_Line2D_property_sharp_limit>`

.. rst-class:: classref-property-setget

- |void| **set_sharp_limit**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sharp_limit**\ (\ )

Определяет предел скоса полилинии. Обычно, когда :ref:`joint_mode<class_Line2D_property_joint_mode>` установлен на :ref:`LINE_JOINT_SHARP<class_Line2D_constant_LINE_JOINT_SHARP>`, острые углы возвращаются к использованию логики соединений :ref:`LINE_JOINT_BEVEL<class_Line2D_constant_LINE_JOINT_BEVEL>` для предотвращения слишком длинных скосов. Более высокие значения этого свойства означают, что возврат к скошенному соединению произойдет при более острых углах.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Line2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Текстура, используемая для полилинии. Использует :ref:`texture_mode<class_Line2D_property_texture_mode>` для стиля рисования.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_texture_mode:

.. rst-class:: classref-property

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **texture_mode** = ``0`` :ref:`🔗<class_Line2D_property_texture_mode>`

.. rst-class:: classref-property-setget

- |void| **set_texture_mode**\ (\ value\: :ref:`LineTextureMode<enum_Line2D_LineTextureMode>`\ )
- :ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **get_texture_mode**\ (\ )

Стиль для визуализации :ref:`texture<class_Line2D_property_texture>` полилинии.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``10.0`` :ref:`🔗<class_Line2D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

Ширина полилинии.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_width_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **width_curve** :ref:`🔗<class_Line2D_property_width_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

Кривая ширины полилинии. Ширина полилинии по ее длине будет эквивалентна значению кривой ширины по ее домену. Кривая ширины должна быть единицей :ref:`Curve<class_Curve>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Line2D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Line2D_method_add_point>`

Добавляет точку с указанным ``position`` относительно собственного положения полилинии. Если ``index`` не указан, новая точка будет добавлена в конец массива точек.

Если указан ``index``, новая точка вставляется перед существующей точкой, идентифицированной индексом ``index``. Индексы точек после новой точки увеличиваются на 1. Предоставленный ``index`` не должен превышать количество существующих точек в полилинии. См. :ref:`get_point_count()<class_Line2D_method_get_point_count>`.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Line2D_method_clear_points>`

Удаляет все точки из полилинии, делая ее пустой.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_get_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_count**\ (\ ) |const| :ref:`🔗<class_Line2D_method_get_point_count>`

Возвращает количество точек в полилинии.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Line2D_method_get_point_position>`

Возвращает положение точки с индексом ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Line2D_method_remove_point>`

Удаляет точку с индексом ``index`` из полилинии.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ index\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Line2D_method_set_point_position>`

Заменяет позицию точки с указанным ``index`` на предоставленную ``position``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
