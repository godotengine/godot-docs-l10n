:github_url: hide

.. _class_Node2D:

Node2D
======

**Успадковує:** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`AnimatedSprite2D<class_AnimatedSprite2D>`, :ref:`AudioListener2D<class_AudioListener2D>`, :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>`, :ref:`BackBufferCopy<class_BackBufferCopy>`, :ref:`Bone2D<class_Bone2D>`, :ref:`Camera2D<class_Camera2D>`, :ref:`CanvasGroup<class_CanvasGroup>`, :ref:`CanvasModulate<class_CanvasModulate>`, :ref:`CollisionObject2D<class_CollisionObject2D>`, :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`, :ref:`CollisionShape2D<class_CollisionShape2D>`, :ref:`CPUParticles2D<class_CPUParticles2D>`, :ref:`GPUParticles2D<class_GPUParticles2D>`, :ref:`Joint2D<class_Joint2D>`, :ref:`Light2D<class_Light2D>`, :ref:`LightOccluder2D<class_LightOccluder2D>`, :ref:`Line2D<class_Line2D>`, :ref:`Marker2D<class_Marker2D>`, :ref:`MeshInstance2D<class_MeshInstance2D>`, :ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>`, :ref:`NavigationLink2D<class_NavigationLink2D>`, :ref:`NavigationObstacle2D<class_NavigationObstacle2D>`, :ref:`NavigationRegion2D<class_NavigationRegion2D>`, :ref:`Parallax2D<class_Parallax2D>`, :ref:`ParallaxLayer<class_ParallaxLayer>`, :ref:`Path2D<class_Path2D>`, :ref:`PathFollow2D<class_PathFollow2D>`, :ref:`Polygon2D<class_Polygon2D>`, :ref:`RayCast2D<class_RayCast2D>`, :ref:`RemoteTransform2D<class_RemoteTransform2D>`, :ref:`ShapeCast2D<class_ShapeCast2D>`, :ref:`Skeleton2D<class_Skeleton2D>`, :ref:`Sprite2D<class_Sprite2D>`, :ref:`TileMap<class_TileMap>`, :ref:`TileMapLayer<class_TileMapLayer>`, :ref:`TouchScreenButton<class_TouchScreenButton>`, :ref:`VisibleOnScreenNotifier2D<class_VisibleOnScreenNotifier2D>`

Двовимірний ігровий об’єкт, успадкований усіма двовимірними вузлами. Має положення, поворот, масштаб і нахил.

.. rst-class:: classref-introduction-group

Опис
--------

Двовимірний ігровий об’єкт із трансформацією (положення, обертання та масштаб). Усі 2D-вузли, включаючи фізичні об’єкти та спрайти, успадковуються від Node2D. Використовуйте Node2D як батьківський вузол для переміщення, масштабування та повороту дочірніх елементів у 2D-проекті. Також дає змогу керувати порядком візуалізації вузла. 

\ **Примітка:** Оскільки **Node2D** і :ref:`Control<class_Control>` успадковують :ref:`CanvasItem<class_CanvasItem>`, вони мають спільні концепції з класу, наприклад властивості :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` і :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Власне малювання в 2D <../tutorials/2d/custom_drawing_in_2d>`

- `Всі 2D Демо <https://github.com/godotengine/godot-demo-projects/tree/master/2d>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`global_position<class_Node2D_property_global_position>`                 |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`global_rotation<class_Node2D_property_global_rotation>`                 |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`global_rotation_degrees<class_Node2D_property_global_rotation_degrees>` |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`global_scale<class_Node2D_property_global_scale>`                       |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`global_skew<class_Node2D_property_global_skew>`                         |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`global_transform<class_Node2D_property_global_transform>`               |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`position<class_Node2D_property_position>`                               | ``Vector2(0, 0)`` |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`rotation<class_Node2D_property_rotation>`                               | ``0.0``           |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`rotation_degrees<class_Node2D_property_rotation_degrees>`               |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`scale<class_Node2D_property_scale>`                                     | ``Vector2(1, 1)`` |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`             | :ref:`skew<class_Node2D_property_skew>`                                       | ``0.0``           |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_Node2D_property_transform>`                             |                   |
   +---------------------------------------+-------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`apply_scale<class_Node2D_method_apply_scale>`\ (\ ratio\: :ref:`Vector2<class_Vector2>`\ )                                              |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_angle_to<class_Node2D_method_get_angle_to>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                    |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_relative_transform_to_parent<class_Node2D_method_get_relative_transform_to_parent>`\ (\ parent\: :ref:`Node<class_Node>`\ ) |const| |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`global_translate<class_Node2D_method_global_translate>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ )                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`look_at<class_Node2D_method_look_at>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`move_local_x<class_Node2D_method_move_local_x>`\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ )      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`move_local_y<class_Node2D_method_move_local_y>`\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ )      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`rotate<class_Node2D_method_rotate>`\ (\ radians\: :ref:`float<class_float>`\ )                                                          |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`to_global<class_Node2D_method_to_global>`\ (\ local_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                    |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`to_local<class_Node2D_method_to_local>`\ (\ global_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`translate<class_Node2D_method_translate>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ )                                                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Node2D_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** :ref:`🔗<class_Node2D_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

Глобальна позиція. Див. також :ref:`position<class_Node2D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **global_rotation** :ref:`🔗<class_Node2D_property_global_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_global_rotation**\ (\ )

Глобальне обертання в радіанах. Див. також :ref:`rotation<class_Node2D_property_rotation>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **global_rotation_degrees** :ref:`🔗<class_Node2D_property_global_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_global_rotation_degrees**\ (\ )

Допоміжна властивість для доступу до :ref:`global_rotation<class_Node2D_property_global_rotation>` у градусах замість радіан. Дивіться також :ref:`rotation_degrees<class_Node2D_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_scale** :ref:`🔗<class_Node2D_property_global_scale>`

.. rst-class:: classref-property-setget

- |void| **set_global_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_scale**\ (\ )

Глобальний масштаб. Див. також :ref:`scale<class_Node2D_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_skew:

.. rst-class:: classref-property

:ref:`float<class_float>` **global_skew** :ref:`🔗<class_Node2D_property_global_skew>`

.. rst-class:: classref-property-setget

- |void| **set_global_skew**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_global_skew**\ (\ )

Глобальний перекіс у радіанах. Дивіться також :ref:`skew<class_Node2D_property_skew>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_global_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **global_transform** :ref:`🔗<class_Node2D_property_global_transform>`

.. rst-class:: classref-property-setget

- |void| **set_global_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_global_transform**\ (\ )

Глобальне :ref:`Transform2D<class_Transform2D>`. Див. також :ref:`transform<class_Node2D_property_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Node2D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

Позиція відносно батьківського вузла. Див. також :ref:`global_position<class_Node2D_property_global_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation** = ``0.0`` :ref:`🔗<class_Node2D_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation**\ (\ )

Поворот у радіанах відносно батьківського вузла. Дивіться також :ref:`global_rotation<class_Node2D_property_global_rotation>`. 

\ **Примітка:** Ця властивість редагується в інспекторі в градусах. Якщо ви хочете використовувати градуси в сценарії, використовуйте :ref:`rotation_degrees<class_Node2D_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_degrees** :ref:`🔗<class_Node2D_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_degrees**\ (\ )

Допоміжна властивість для доступу до :ref:`rotation<class_Node2D_property_rotation>` у градусах замість радіанів. Див. також :ref:`global_rotation_degrees<class_Node2D_property_global_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Node2D_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

Масштаб вузла відносно батьківського вузла. Немасштабоване значення: ``(1, 1)``. Дивіться також :ref:`global_scale<class_Node2D_property_global_scale>`. 

\ **Примітка: ** Негативні шкали X у 2D не можна розкласти з матриці трансформації. Завдяки способу представлення масштабу за допомогою матриць трансформації в Godot, негативні масштаби на осі X будуть змінені на негативні масштаби на осі Y і поворот на 180 градусів під час розкладання.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_skew:

.. rst-class:: classref-property

:ref:`float<class_float>` **skew** = ``0.0`` :ref:`🔗<class_Node2D_property_skew>`

.. rst-class:: classref-property-setget

- |void| **set_skew**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_skew**\ (\ )

Якщо встановлено ненульове значення, нахиляє вузол в тому чи іншому напрямку. Це можна використовувати для псевдо-3D-ефектів. Дивіться також :ref:`global_skew<class_Node2D_property_global_skew>`. 

\ **Примітка: ** Нахил виконується лише на осі X і *між* обертанням і масштабуванням. 

\ **Примітка:** Ця властивість редагується в інспекторі в градусах. Якщо ви хочете використовувати градуси в скрипті, використовуйте ``skew = deg_to_rad(value_in_degrees)``.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** :ref:`🔗<class_Node2D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

:ref:`Transform2D<class_Transform2D>` вузла відносно батьківського вузла. Дивіться також :ref:`global_transform<class_Node2D_property_global_transform>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Node2D_method_apply_scale:

.. rst-class:: classref-method

|void| **apply_scale**\ (\ ratio\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_apply_scale>`

Множить поточний масштаб на вектор ``ratio``.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_get_angle_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle_to**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Node2D_method_get_angle_to>`

Повертає кут між вузлом та ``point`` у радіанах. Див. також :ref:`look_at()<class_Node2D_method_look_at>`.

\ `Ілюстрація повернутого кута. <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/node2d_get_angle_to.png>`__

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_get_relative_transform_to_parent:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_relative_transform_to_parent**\ (\ parent\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Node2D_method_get_relative_transform_to_parent>`

Повертаємо :ref:`Transform2D<class_Transform2D>` відносно цього материнського вузла.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_global_translate:

.. rst-class:: classref-method

|void| **global_translate**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_global_translate>`

Додає вектор ``offset`` до глобальної позиції вузла.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_look_at:

.. rst-class:: classref-method

|void| **look_at**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_look_at>`

Повертає вузол так, щоб його локальна вісь +X була спрямована в бік ``метод rotate``, який, як очікується, використовуватиме глобальні координати. Цей метод є комбінацією методів :ref:`rotate()<class_Node2D_method_rotate>` та :ref:`get_angle_to()<class_Node2D_method_get_angle_to>`.

\ :ref:`point()<class_Node2D_method_point>` не повинен збігатися з позицією вузла, інакше вузол завжди дивиться праворуч.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_move_local_x:

.. rst-class:: classref-method

|void| **move_local_x**\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node2D_method_move_local_x>`

Застосовує локальне зміщення по осі X вузла на величину, вказану в ``delta``. Якщо ``scaled`` має значення ``false``, нормалізує рух, щоб він відбувався незалежно від :ref:`scale<class_Node2D_property_scale>` вузла.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_move_local_y:

.. rst-class:: classref-method

|void| **move_local_y**\ (\ delta\: :ref:`float<class_float>`, scaled\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node2D_method_move_local_y>`

Застосовує локальне зміщення по осі Y вузла на величину, вказану в ``delta``. Якщо ``scaled`` має значення ``false``, нормалізує рух, щоб він відбувався незалежно від :ref:`scale<class_Node2D_property_scale>` вузла.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_rotate:

.. rst-class:: classref-method

|void| **rotate**\ (\ radians\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node2D_method_rotate>`

Застосовує поворот до вузла в радіанах, починаючи з його поточного повороту. Це еквівалентно ``rotation += radians``.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_to_global:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **to_global**\ (\ local_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Node2D_method_to_global>`

Забезпечує місцеву позицію у глобальному координаційному просторі. Введення очікувано буде локальним відносно **Node2D**. Наприклад: Застосувати цей метод на позиції дочірньих вузлів правильно перетворювати свої позиції в глобальну координацію простору, але застосувати його до власної позиції вершини дасть некоректний результат, оскільки він буде включати в себе власне перетворення вершини в її глобальну позицію.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_to_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **to_local**\ (\ global_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Node2D_method_to_local>`

Перетворює надану глобальну позицію у місцевому координаційному просторі. Вихід буде локальним відносно **Node2D** його називають. Наприклад: Для визначення позицій дочірніх вузлів, але не підходить для визначення власної позиції щодо її батьків.

.. rst-class:: classref-item-separator

----

.. _class_Node2D_method_translate:

.. rst-class:: classref-method

|void| **translate**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Node2D_method_translate>`

Зміщує вузол на задане значення ``offset`` у локальних координатах. Це еквівалентно ``position += offset``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
