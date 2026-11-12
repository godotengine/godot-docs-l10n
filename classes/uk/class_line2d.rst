:github_url: hide

.. _class_Line2D:

Line2D
======

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A 2D полілін, який може бути фактурним.

.. rst-class:: classref-introduction-group

Опис
--------

Ця вершина малює 2D полілін, тобто форму, що складається з декількох точок, підключених сегментами. **Line2D** не є математичним поліліном, тобто сегменти не нескінченно тонкі. Призначений для рендерингу і він може бути кольоровим і необов'язково текстурованим.

\ **Попередження:** Деякі конфігурації можуть бути неможливими, такими як дуже гострі кути. У цих ситуаціях вузол використовує логіку зворотного віджиму, щоб виглядати гідно.

\ **Примітка:** **Line2D** намальовується за допомогою сітки 2D.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Демонстраційне перетворення матриці <https://godotengine.org/asset-library/asset/2787>`__

- `Демонстрація гри 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Переліки
----------------

.. _enum_Line2D_LineJointMode:

.. rst-class:: classref-enumeration

enum **LineJointMode**: :ref:`🔗<enum_Line2D_LineJointMode>`

.. _class_Line2D_constant_LINE_JOINT_SHARP:

.. rst-class:: classref-enumeration-constant

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **LINE_JOINT_SHARP** = ``0``

Зроблює точність полілінових суглобів, з'єднуючи сторони двох сегментів, продовжуючи їх до тих пір, поки вони не перетинаються. Якщо обертання суглоба занадто велика (на основі :ref:`sharp_limit<class_Line2D_property_sharp_limit>`), з'єднання спадає на :ref:`LINE_JOINT_BEVEL<class_Line2D_constant_LINE_JOINT_BEVEL>` для запобігання дуже довгих міток.

.. _class_Line2D_constant_LINE_JOINT_BEVEL:

.. rst-class:: classref-enumeration-constant

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **LINE_JOINT_BEVEL** = ``1``

Зробіть полілінні з'єднувачі, з'єднуючи сторони двох сегментів з простою лінією.

.. _class_Line2D_constant_LINE_JOINT_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **LINE_JOINT_ROUND** = ``2``

Зробіть закруглені полілінні суглоби, з'єднуючи сторони двох сегментів дугою. Деталі даної дуги залежать від :ref:`round_precision<class_Line2D_property_round_precision>`.

.. rst-class:: classref-item-separator

----

.. _enum_Line2D_LineCapMode:

.. rst-class:: classref-enumeration

enum **LineCapMode**: :ref:`🔗<enum_Line2D_LineCapMode>`

.. _class_Line2D_constant_LINE_CAP_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **LINE_CAP_NONE** = ``0``

Накладки без накипу.

.. _class_Line2D_constant_LINE_CAP_BOX:

.. rst-class:: classref-enumeration-constant

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **LINE_CAP_BOX** = ``1``

Накладає ковпачок в якості коробки, злегка розширюючи перший/стійкий сегмент.

.. _class_Line2D_constant_LINE_CAP_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **LINE_CAP_ROUND** = ``2``

Накладає ковпачок як півколо прикріплюється до першого / стійкого сегмента.

.. rst-class:: classref-item-separator

----

.. _enum_Line2D_LineTextureMode:

.. rst-class:: classref-enumeration

enum **LineTextureMode**: :ref:`🔗<enum_Line2D_LineTextureMode>`

.. _class_Line2D_constant_LINE_TEXTURE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **LINE_TEXTURE_NONE** = ``0``

Візьміть ліві пікселів текстури і подає їх по всій полілінії.

.. _class_Line2D_constant_LINE_TEXTURE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **LINE_TEXTURE_TILE** = ``1``

Налийте текстуру по поліліну. :ref:`CanvasItem.texture_repeat<class_CanvasItem_property_texture_repeat>` вершини **Line2D** повинні бути :ref:`CanvasItem.TEXTURE_REPEAT_ENABLED<class_CanvasItem_constant_TEXTURE_REPEAT_ENABLED>` або :ref:`CanvasItem.TEXTURE_REPEAT_MIRROR<class_CanvasItem_constant_TEXTURE_REPEAT_MIRROR>` для його роботи належним чином.

.. _class_Line2D_constant_LINE_TEXTURE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **LINE_TEXTURE_STRETCH** = ``2``

Розтягування текстури по поліліну. ``пам'ятний полотноItem.texture_повтор`` вершини **Line2D** повинні бути :ref:`CanvasItem.TEXTURE_REPEAT_DISABLED<class_CanvasItem_constant_TEXTURE_REPEAT_DISABLED>` для кращих результатів.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Line2D_property_antialiased:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **antialiased** = ``false`` :ref:`🔗<class_Line2D_property_antialiased>`

.. rst-class:: classref-property-setget

- |void| **set_antialiased**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_antialiased**\ (\ )

Якщо ``true``, межа ламаної буде згладжена.

\ **Примітка:** **Line2D** не пришвидшується батчінгом при згладжуванні.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_begin_cap_mode:

.. rst-class:: classref-property

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **begin_cap_mode** = ``0`` :ref:`🔗<class_Line2D_property_begin_cap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_begin_cap_mode**\ (\ value\: :ref:`LineCapMode<enum_Line2D_LineCapMode>`\ )
- :ref:`LineCapMode<enum_Line2D_LineCapMode>` **get_begin_cap_mode**\ (\ )

Стиль початку полілінії, якщо :ref:`closed<class_Line2D_property_closed>` має значення ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``false`` :ref:`🔗<class_Line2D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

Якщо ``true`` і полілінія має більше 2 точок, остання та перша точки будуть з'єднані відрізком.

\ **Примітка:** Форма замикаючого сегмента не гарантується як безшовна, якщо вказано :ref:`width_curve<class_Line2D_property_width_curve>`.

\ **Примітка:** Спочатку малюється з'єднання між замикаючим сегментом і першим сегментом, і на початку вибірково вибираються :ref:`gradient<class_Line2D_property_gradient>` та :ref:`width_curve<class_Line2D_property_width_curve>`. Це деталь реалізації, яка може змінитися в майбутній версії.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_default_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **default_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Line2D_property_default_color>`

.. rst-class:: classref-property-setget

- |void| **set_default_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_default_color**\ (\ )

Колір поліліну. Не буде використовуватися, якщо встановлюється градієнт.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_end_cap_mode:

.. rst-class:: classref-property

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **end_cap_mode** = ``0`` :ref:`🔗<class_Line2D_property_end_cap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_end_cap_mode**\ (\ value\: :ref:`LineCapMode<enum_Line2D_LineCapMode>`\ )
- :ref:`LineCapMode<enum_Line2D_LineCapMode>` **get_end_cap_mode**\ (\ )

Стиль кінця полілінії, якщо :ref:`closed<class_Line2D_property_closed>` має значення ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **gradient** :ref:`🔗<class_Line2D_property_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_gradient**\ (\ )

Градієнтовно тягнеться по всій лінії від початку до завершення. У випадку, якщо ця властивість встановлена.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_joint_mode:

.. rst-class:: classref-property

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **joint_mode** = ``0`` :ref:`🔗<class_Line2D_property_joint_mode>`

.. rst-class:: classref-property-setget

- |void| **set_joint_mode**\ (\ value\: :ref:`LineJointMode<enum_Line2D_LineJointMode>`\ )
- :ref:`LineJointMode<enum_Line2D_LineJointMode>` **get_joint_mode**\ (\ )

Стиль з'єднань між сегментами полілінії.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **points** = ``PackedVector2Array()`` :ref:`🔗<class_Line2D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_points**\ (\ )

Об’єми поліліну, інтерпретовані у локальних координатах 2D. Сугменти мальуються між сусідніми точками в цьому масиві.



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

Стійкість використовується для округлих суглобів і шапок. Найвищі значення в результаті гладких кутів, але більш затребувані для рендерингу та оновлення.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_sharp_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **sharp_limit** = ``2.0`` :ref:`🔗<class_Line2D_property_sharp_limit>`

.. rst-class:: classref-property-setget

- |void| **set_sharp_limit**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sharp_limit**\ (\ )

Визначення ліміту мітки поліліну. Нормально, коли :ref:`joint_mode<class_Line2D_property_joint_mode>` встановлюється до :ref:`LINE_JOINT_SHARP<class_Line2D_constant_LINE_JOINT_SHARP>`, гострі кути попадають назад до використання логіки :ref:`LINE_JOINT_BEVEL<class_Line2D_constant_LINE_JOINT_BEVEL>` суглобів для запобігання дуже довгих міток. Найвищі значення цього майна – це те, що знизиться до сходового суглоба буде при гострих кутах.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Line2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Текстура, що використовується для полілінії. Використовує :ref:`texture_mode<class_Line2D_property_texture_mode>` для стилю малювання.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_texture_mode:

.. rst-class:: classref-property

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **texture_mode** = ``0`` :ref:`🔗<class_Line2D_property_texture_mode>`

.. rst-class:: classref-property-setget

- |void| **set_texture_mode**\ (\ value\: :ref:`LineTextureMode<enum_Line2D_LineTextureMode>`\ )
- :ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **get_texture_mode**\ (\ )

Стиль для відображення :ref:`texture<class_Line2D_property_texture>` полілінії.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``10.0`` :ref:`🔗<class_Line2D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

Ширина поліліну.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_width_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **width_curve** :ref:`🔗<class_Line2D_property_width_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

Крива ширини полілінії. Ширина полілінії по її довжині буде еквівалентна значенню кривої ширини по її області. Крива ширини має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Line2D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Line2D_method_add_point>`

Додає точку з вказаною ``position`` відносно власної позиції поліліну. Якщо немає ``index``, новий пункт буде додано в кінці масиву точок.

Якщо наведено індекс ``index``, новий пункт вставляється до існуючої точки, визначеної індексом ``index``. Індикатори точок після збільшення нової точки на 1. Надані ``index`` не повинні перевищувати кількість наявних точок в поліліні. Див. :ref:`get_point_count()<class_Line2D_method_get_point_count>`.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Line2D_method_clear_points>`

Видаліть всі точки з поліліну, роблячи його порожнім.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_get_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_count**\ (\ ) |const| :ref:`🔗<class_Line2D_method_get_point_count>`

Повертає кількість точок в поліліні.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Line2D_method_get_point_position>`

Повертає позицію точки за індексом ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Line2D_method_remove_point>`

Видаляє точку в індексі ``index`` з сегментованої лінії.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ index\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Line2D_method_set_point_position>`

Перезаписує позицію точки у заданому ``index`` наданим значенням ``position``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
