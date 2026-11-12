:github_url: hide

.. _class_CSGPolygon3D:

CSGPolygon3D
============

**Успадковує:** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Виводить форму полігону 2D для створення сітки 3D.

.. rst-class:: classref-introduction-group

Опис
--------

Багато точок 2D швидко і легко створюють різноманітні сітки 3D. Дивись також :ref:`CSGMesh3D<class_CSGMesh3D>` для використання 3D сітки як CSG вузли.

\ **Note:** CSG вузли призначені для використання для прототипування рівня. Створення вузлів CSG має суттєву вартість процесора порівняно з створенням :ref:`MeshInstance3D<class_MeshInstance3D>` з :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Переміщення вузла CSG в іншому CSG також має суттєву вартість процесора, тому він повинен бути уникнений під час гри.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Прототипування рівнів з CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`depth<class_CSGPolygon3D_property_depth>`                                   | ``1.0``                                        |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`Material<class_Material>`                             | :ref:`material<class_CSGPolygon3D_property_material>`                             |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`Mode<enum_CSGPolygon3D_Mode>`                         | :ref:`mode<class_CSGPolygon3D_property_mode>`                                     | ``0``                                          |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_continuous_u<class_CSGPolygon3D_property_path_continuous_u>`           |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`path_interval<class_CSGPolygon3D_property_path_interval>`                   |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` | :ref:`path_interval_type<class_CSGPolygon3D_property_path_interval_type>`         |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_joined<class_CSGPolygon3D_property_path_joined>`                       |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_local<class_CSGPolygon3D_property_path_local>`                         |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`path_node<class_CSGPolygon3D_property_path_node>`                           |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>`         | :ref:`path_rotation<class_CSGPolygon3D_property_path_rotation>`                   |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_rotation_accurate<class_CSGPolygon3D_property_path_rotation_accurate>` |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`path_simplify_angle<class_CSGPolygon3D_property_path_simplify_angle>`       |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`path_u_distance<class_CSGPolygon3D_property_path_u_distance>`               |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`         | :ref:`polygon<class_CSGPolygon3D_property_polygon>`                               | ``PackedVector2Array(0, 0, 0, 1, 1, 1, 1, 0)`` |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`smooth_faces<class_CSGPolygon3D_property_smooth_faces>`                     | ``false``                                      |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`spin_degrees<class_CSGPolygon3D_property_spin_degrees>`                     |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`spin_sides<class_CSGPolygon3D_property_spin_sides>`                         |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_CSGPolygon3D_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_CSGPolygon3D_Mode>`

.. _class_CSGPolygon3D_constant_MODE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_DEPTH** = ``0``

Форма :ref:`polygon<class_CSGPolygon3D_property_polygon>` виведена уздовж негативної осі Z.

.. _class_CSGPolygon3D_constant_MODE_SPIN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_SPIN** = ``1``

Форма :ref:`polygon<class_CSGPolygon3D_property_polygon>` виведена шляхом обертання його навколо осі Y.

.. _class_CSGPolygon3D_constant_MODE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_PATH** = ``2``

Форма :ref:`polygon<class_CSGPolygon3D_property_polygon>` виведена вздовж :ref:`Path3D<class_Path3D>`, вказаного в :ref:`path_node<class_CSGPolygon3D_property_path_node>`.

.. rst-class:: classref-item-separator

----

.. _enum_CSGPolygon3D_PathRotation:

.. rst-class:: classref-enumeration

enum **PathRotation**: :ref:`🔗<enum_CSGPolygon3D_PathRotation>`

.. _class_CSGPolygon3D_constant_PATH_ROTATION_POLYGON:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_POLYGON** = ``0``

Форма :ref:`polygon<class_CSGPolygon3D_property_polygon>` не обернена.

\ **Примітка:** Вимагає Z координати шляху розташовані за зменшенням для забезпечення можливих форм.

.. _class_CSGPolygon3D_constant_PATH_ROTATION_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_PATH** = ``1``

Форма :ref:`polygon<class_CSGPolygon3D_property_polygon>` обертається уздовж шляху, але вона не обертається навколо осі шляху.

\ **Примітка:** Вимагає шлях З координує безперервне зменшення для забезпечення життєздатних форм.

.. _class_CSGPolygon3D_constant_PATH_ROTATION_PATH_FOLLOW:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_PATH_FOLLOW** = ``2``

Форма :ref:`polygon<class_CSGPolygon3D_property_polygon>` стежка і її обертання навколо осі шляху.

.. rst-class:: classref-item-separator

----

.. _enum_CSGPolygon3D_PathIntervalType:

.. rst-class:: classref-enumeration

enum **PathIntervalType**: :ref:`🔗<enum_CSGPolygon3D_PathIntervalType>`

.. _class_CSGPolygon3D_constant_PATH_INTERVAL_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **PATH_INTERVAL_DISTANCE** = ``0``

Коли :ref:`polygon<class_CSGPolygon3D_property_polygon>` встановлюється до :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, :ref:`path_interva<class_CSGPolygon3D_property_path_interva>` визначить відстань, в метрах, кожен інтервал шляху буде виділений.

.. _class_CSGPolygon3D_constant_PATH_INTERVAL_SUBDIVIDE:

.. rst-class:: classref-enumeration-constant

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **PATH_INTERVAL_SUBDIVIDE** = ``1``

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` встановлюється до :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, :ref:`path_interval<class_CSGPolygon3D_property_path_interval>` буде піддано полігонам по шляху.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CSGPolygon3D_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``1.0`` :ref:`🔗<class_CSGPolygon3D_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` є :ref:`MODE_DEPTH<class_CSGPolygon3D_constant_MODE_DEPTH>`, глибина екструзії.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGPolygon3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

Матеріал для використання для отриманої сітки. УФ запускає верхню половину матеріалу до викривленої форми (У вздовж довжини екструзій і В навколо контуру :ref:`polygon<class_CSGPolygon3D_property_polygon>`), нижньо-лівий квартал переднього кінця обличчя, а нижній квартал до лицьового кінця.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_CSGPolygon3D_Mode>` **mode** = ``0`` :ref:`🔗<class_CSGPolygon3D_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_CSGPolygon3D_Mode>`\ )
- :ref:`Mode<enum_CSGPolygon3D_Mode>` **get_mode**\ (\ )

:ref:`mode<class_CSGPolygon3D_property_mode>` використовується для виведення :ref:`polygon<class_CSGPolygon3D_property_polygon>`.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_continuous_u:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_continuous_u** :ref:`🔗<class_CSGPolygon3D_property_path_continuous_u>`

.. rst-class:: classref-property-setget

- |void| **set_path_continuous_u**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_continuous_u**\ (\ )

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` є :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, за замовчуванням, верхня половина :ref:`material<class_CSGPolygon3D_property_material>` простягається по всій довжині вигнутої форми. Якщо ``false`` верхня половина матеріалу повторюється кожен крок екструзії.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_interval** :ref:`🔗<class_CSGPolygon3D_property_path_interval>`

.. rst-class:: classref-property-setget

- |void| **set_path_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_interval**\ (\ )

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` є :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, інтервал шляху або співвідношення точок шляху до екструзій.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_interval_type:

.. rst-class:: classref-property

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **path_interval_type** :ref:`🔗<class_CSGPolygon3D_property_path_interval_type>`

.. rst-class:: classref-property-setget

- |void| **set_path_interval_type**\ (\ value\: :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>`\ )
- :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **get_path_interval_type**\ (\ )

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` є :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, це дозволить визначити, якщо інтервал повинен бути дистанцією (:ref:`PATH_INTERVAL_DISTANCE<class_CSGPolygon3D_constant_PATH_INTERVAL_DISTANCE>`) або дочірні фракції (:ref:`PATH_INTERVAL_SUBDIVIDE<class_CSGPolygon3D_constant_PATH_INTERVAL_SUBDIVIDE>`).

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_joined:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_joined** :ref:`🔗<class_CSGPolygon3D_property_path_joined>`

.. rst-class:: classref-property-setget

- |void| **set_path_joined**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_joined**\ (\ )

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` є :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, якщо ``true`` додаються кінці шляху, додаючи екструзію між останніми і першими точками шляху.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_local:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_local** :ref:`🔗<class_CSGPolygon3D_property_path_local>`

.. rst-class:: classref-property-setget

- |void| **set_path_local**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_local**\ (\ )

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` є :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, якщо ``true`` :ref:`Transform3D<class_Transform3D>` **CSGPolygon3D** використовується як початкова точка для екструзій, а не :ref:`Transform3D<class_Transform3D>` :ref:`path_node<class_CSGPolygon3D_property_path_node>`.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **path_node** :ref:`🔗<class_CSGPolygon3D_property_path_node>`

.. rst-class:: classref-property-setget

- |void| **set_path_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_path_node**\ (\ )

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` є :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, розташування об'єкта :ref:`Path3D<class_Path3D>`, що використовується для виведення :ref:`polygon<class_CSGPolygon3D_property_polygon>`.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_rotation:

.. rst-class:: classref-property

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **path_rotation** :ref:`🔗<class_CSGPolygon3D_property_path_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_path_rotation**\ (\ value\: :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>`\ )
- :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **get_path_rotation**\ (\ )

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` є :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, метод обертання шляху використовується для обертання :ref:`polygon<class_CSGPolygon3D_property_polygon>`, як він виводиться.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_rotation_accurate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_rotation_accurate** :ref:`🔗<class_CSGPolygon3D_property_path_rotation_accurate>`

.. rst-class:: classref-property-setget

- |void| **set_path_rotation_accurate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_path_rotation_accurate**\ (\ )

Якщо :ref:`mode<class_CSGPolygon3D_property_mode>` дорівнює :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, якщо ``true``, полігон буде обертатися відповідно до дотичної до шляху в точках, де зроблено вибірку. Якщо ``false``, буде використано наближення, точність якого зменшується зі зменшенням кількості підрозділів.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_simplify_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_simplify_angle** :ref:`🔗<class_CSGPolygon3D_property_path_simplify_angle>`

.. rst-class:: classref-property-setget

- |void| **set_path_simplify_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_simplify_angle**\ (\ )

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` є :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, екструзії, які менше цього кута, будуть об'єднані між собою, щоб зменшити кількість полігонів.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_u_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_u_distance** :ref:`🔗<class_CSGPolygon3D_property_path_u_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_u_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_u_distance**\ (\ )

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` є :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, це відстань по шляху, в метрах, фактурні координати будуть плитка. При встановленні до 0 координат текстури будуть відповідати геометрії точно без нахилу.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array(0, 0, 0, 1, 1, 1, 1, 0)`` :ref:`🔗<class_CSGPolygon3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Кольори точки, що визначає полігон 2D, який виводиться. Це може бути конвексу або конденсатний полігон з 3 або більше точок. Полігон повинен * не* мати будь-які міжсекційні краї. В іншому випадку триангуляція не буде і ніякої сітки буде створюватися.

\ **Note:** Якщо в ``пам'ятний полігон`` визначаються лише 1 або 2 точки.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``false`` :ref:`🔗<class_CSGPolygon3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

Якщо ``true``, застосовує гладку обшивку до екструзій.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_spin_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **spin_degrees** :ref:`🔗<class_CSGPolygon3D_property_spin_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_spin_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_spin_degrees**\ (\ )

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` є :ref:`MODE_SPIN<class_CSGPolygon3D_constant_MODE_SPIN>`, загальна кількість ступенів :ref:`polygon<class_CSGPolygon3D_property_polygon>` обертається при виведенні.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_spin_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **spin_sides** :ref:`🔗<class_CSGPolygon3D_property_spin_sides>`

.. rst-class:: classref-property-setget

- |void| **set_spin_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spin_sides**\ (\ )

Коли :ref:`mode<class_CSGPolygon3D_property_mode>` є :ref:`MODE_SPIN<class_CSGPolygon3D_constant_MODE_SPIN>`, кількість екструзій виконано.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
