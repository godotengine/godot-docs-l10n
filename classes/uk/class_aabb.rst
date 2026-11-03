:github_url: hide

.. _class_AABB:

AABB
====

Тривимірна обмежувальна рамка, вирівняна по осі.

.. rst-class:: classref-introduction-group

Опис
--------

Вбудований тип :ref:`Variant<class_Variant>` **AABB** представляє вирівняну по осях обмежувальну рамку у 3D-просторі. Вона визначається своїми :ref:`position<class_AABB_property_position>` та :ref:`size<class_AABB_property_size>`, які є :ref:`Vector3<class_Vector3>`. Вона часто використовується для швидких перевірок перекриття (див. :ref:`intersects()<class_AABB_method_intersects>`). Хоча сам **AABB** вирівняний по осях, його можна поєднати з :ref:`Transform3D<class_Transform3D>` для представлення повернутої або нахиленої обмежувальної рамки.

Він використовує координати з плаваючою комою. Двовимірним аналогом **AABB** є :ref:`Rect2<class_Rect2>`. Немає версії **AABB**, яка використовує цілочисельні координати.

\ **Примітка:** Від'ємні значення для :ref:`size<class_AABB_property_size>` не підтримуються. З від'ємним розміром більшість методів **AABB** працюють неправильно. Використовуйте :ref:`abs()<class_AABB_method_abs>`, щоб отримати еквівалентний **AABB** з невід'ємним розміром.

\ **Примітка:** У булевому контексті значення **AABB** повертає значення ``false``, якщо обидва значення :ref:`position<class_AABB_property_position>` та :ref:`size<class_AABB_property_size>` дорівнюють нулю (дорівнюють :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`). В іншому випадку значення завжди повертає значення ``true``.

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Покажчик математичної документації <../tutorials/math/index>`

- :doc:`Векторна математика <../tutorials/math/vector_math>`

- :doc:`Поглиблена векторна математика <../tutorials/math/vectors_advanced>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`end<class_AABB_property_end>`           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`position<class_AABB_property_position>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_AABB_property_size>`         | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ )                                                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ from\: :ref:`AABB<class_AABB>`\ )                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`abs<class_AABB_method_abs>`\ (\ ) |const|                                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_AABB_method_encloses>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`expand<class_AABB_method_expand>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_center<class_AABB_method_get_center>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_endpoint<class_AABB_method_get_endpoint>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_longest_axis<class_AABB_method_get_longest_axis>`\ (\ ) |const|                                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_longest_axis_index<class_AABB_method_get_longest_axis_index>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_longest_axis_size<class_AABB_method_get_longest_axis_size>`\ (\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_shortest_axis<class_AABB_method_get_shortest_axis>`\ (\ ) |const|                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_shortest_axis_index<class_AABB_method_get_shortest_axis_index>`\ (\ ) |const|                                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_shortest_axis_size<class_AABB_method_get_shortest_axis_size>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_support<class_AABB_method_get_support>`\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_volume<class_AABB_method_get_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`grow<class_AABB_method_grow>`\ (\ by\: :ref:`float<class_float>`\ ) |const|                                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_AABB_method_has_point>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_surface<class_AABB_method_has_surface>`\ (\ ) |const|                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_volume<class_AABB_method_has_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`intersection<class_AABB_method_intersection>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_AABB_method_intersects>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects_plane<class_AABB_method_intersects_plane>`\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const|                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_ray<class_AABB_method_intersects_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_segment<class_AABB_method_intersects_segment>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_AABB_method_is_equal_approx>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const|                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_AABB_method_is_finite>`\ (\ ) |const|                                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`merge<class_AABB_method_merge>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_AABB_operator_neq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`operator *<class_AABB_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_AABB_operator_eq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                      |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AABB_property_end:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **end** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_end>`

Кінцева точка. Зазвичай це кут у верхньому правому куті та задній частині рамки, що еквівалентно ``позиція + розмір``. Встановлення цієї точки впливає на :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_position>`

Початкова точка. Зазвичай це кут нижнього лівого та переднього кута обмежувальної рамки.

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_size>`

Ширина, висота та глибина обмежувальної рамки, починаючи з :ref:`position<class_AABB_property_position>`. Встановлення цього значення також впливає на точку :ref:`end<class_AABB_property_end>`.

\ **Примітка:** Рекомендується встановлювати невід’ємні значення ширини, висоти та глибини. Це пояснюється тим, що більшість методів у Godot припускають, що :ref:`position<class_AABB_property_position>` — це нижній лівий задній кут, а :ref:`end<class_AABB_property_end>` — верхній правий передній кут. Щоб отримати еквівалентну обмежувальну рамку з невід’ємним розміром, використовуйте :ref:`abs()<class_AABB_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_AABB_constructor_AABB:

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ ) :ref:`🔗<class_AABB_constructor_AABB>`

Створює **AABB** зі значеннями :ref:`position<class_AABB_property_position>` і :ref:`sizr<class_AABB_property_sizr>` установленими на :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ from\: :ref:`AABB<class_AABB>`\ )

Створює **AABB** як копію заданого **AABB**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ )

Створює **AABB** за ``position`` і ``size``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AABB_method_abs:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **abs**\ (\ ) |const| :ref:`🔗<class_AABB_method_abs>`

Повертає **AABB**, еквівалентний цій обмежувальній рамці, з її шириною, висотою та глибиною, зміненими на невід’ємні значення. 


.. tabs:: 

 .. code-tab:: gdscript
 
    змінна коробка = AABB(Вектор3(5, 0, 5), Вектор3(-20, -10, -5)) 
    var absolute = box.abs() 
    print(absolute.position) # Друк (-15.0, -10.0, 0.0) 
    print(absolute.size) # Друк (20.0, 10.0, 5.0)  

 .. code-tab:: csharp
 
    var box = new Aabb(new Vector3(5, 0, 5), new Vector3(-20, -10, -5)); 
    var absolute = box.Abs(); 
    GD.Print(absolute.Position); // Виводить (-15, -10, 0) 
    GD.Print(absolute.Size);     // Друк (20, 10, 5)  

 

\ **Примітка:** Рекомендується використовувати цей метод, коли :ref:`size<class_AABB_property_size>` є від’ємним, оскільки більшість інших методів у Godot припускають, що компоненти :ref:`size<class_AABB_property_size>` більші за ``0``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_encloses>`

Повертає ``true``, якщо ця обмежувальна рамка *повністю* охоплює рамку ``with``. Краї обох коробок включені.


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(0, 0, 0), Vector3(4, 4, 4))
    var b = AABB(Vector3(1, 1, 1), Vector3(3, 3, 3))
    var c = AABB(Vector3(2, 2, 2), Vector3(8, 8, 8))

    print(a.encloses(a)) # Виводить true
    print(a.encloses(b)) # Виводить true
    print(a.encloses(c)) # Виводить false

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(0, 0, 0), new Vector3(4, 4, 4));
    var b = new Aabb(new Vector3(1, 1, 1), new Vector3(3, 3, 3));
    var c = new Aabb(new Vector3(2, 2, 2), new Vector3(8, 8, 8));

    GD.Print(a.Encloses(a)); // Виводить True
    GD.Print(a.Encloses(b)); // Виводить True
    GD.Print(a.Encloses(c)); // Виводить False



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_expand:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **expand**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_expand>`

Повертає копію цієї обмежувальної рамки, розширену для вирівнювання країв із заданим ``to_point``, якщо необхідно. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var box = AABB(Vector3(0, 0, 0), Vector3(5, 2, 5)) 

    box = box.expand(Vector3(10, 0, 0)) 
    print(box.position) # Друкує (0.0, 0.0, 0.0) 
    print(box.size) # Друк (10.0, 2.0, 5.0) 

    box = box.expand(Vector3(-5, 0, 5)) 
    print(box.position) # Друк (-5.0, 0.0, 0.0) 
    print(box.size) # Друк (15.0, 2.0, 5.0)  

 .. code-tab:: csharp
 
    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 5)); 

    box = box.Expand(new Vector3(10, 0, 0)); 
    GD.Print(box.Position); // Виводить (0, 0, 0) 
    GD.Print(box.Size);     // Друк (10, 2, 5) 

    box = box.Expand(new Vector3(-5, 0, 5)); 
    GD.Print(box.Position); // Друкує (-5, 0, 0) 
    GD.Print(box.Size);     // Друк (15, 2, 5)  



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_center:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_center**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_center>`

Повертає центральну точку обмежувальної рамки. Це те саме, що ``позиція + (розмір / 2.0)``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_endpoint:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_endpoint**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AABB_method_get_endpoint>`

Повертає позицію однієї з 8 вершин, що складають цю обмежувальну рамку. З ``idx``, що дорівнює ``0``, це те саме, що й :ref:`position<class_AABB_property_position>`, а ``idx``, що дорівнює ``7`` :ref:`end<class_AABB_property_end>`, те саме, що й :ref:`end<class_AABB_property_end>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_longest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis>`

Повертає найдовшу нормалізовану вісь :ref:`size<class_AABB_property_size>` цієї обмежувальної рамки як :ref:`Vector3<class_Vector3>` (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`, :ref:`Vector3.UP<class_Vector3_constant_UP>` або :ref:`Vector3.BACK<class_Vector3_constant_BACK>`).


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_longest_axis()) # Друк (0, 0, 1)
    print(box.get_longest_axis_index()) # Друкує 2
    print(box.get_longest_axis_size()) # Друкує 8

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetLongestAxis()); // Виводить (0, 0, 1)
    GD.Print(box.GetLongestAxisIndex()); // Друкує 2
    GD.Print(box.GetLongestAxisSize()); // Друкує 8



 Дивіться також :ref:`get_longest_axis_index()<class_AABB_method_get_longest_axis_index>` і :ref:`get_longest_axis_size()<class_AABB_method_get_longest_axis_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_longest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_index>`

Повертає індекс до найдовшої осі :ref:`size<class_AABB_property_size>` цієї обмежувальної рамки (див. :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`, :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>` і :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`).

 Для прикладу див. :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_longest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_size>`

Повертає найдовший розміри :ref:`size<class_AABB_property_size>` цього обмежувального прямокутника.

Для прикладу див. :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_shortest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis>`

Повертає найкоротшу нормалізовану вісь :ref:`size<class_AABB_property_size>` цієї обмежувальної рамки як :ref:`Vector3<class_Vector3>` (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`, :ref:`Vector3.UP<class_Vector3_constant_UP>` або :ref:`Vector3.BACK<class_Vector3_constant_BACK>`).


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_shortest_axis()) # Друк (1, 0, 0)
    print(box.get_shortest_axis_index()) # Виводить 0
    print(box.get_shortest_axis_size()) # Друкує 2

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetShortestAxis()); // Виводить (1, 0, 0)
    GD.Print(box.GetShortestAxisIndex()); // Виводить 0
    GD.Print(box.GetShortestAxisSize()); // Друкує 2



 Дивіться також :ref:`get_shortest_axis_index()<class_AABB_method_get_shortest_axis_index>` і :ref:`get_shortest_axis_size()<class_AABB_method_get_shortest_axis_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_shortest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_index>`

Повертає індекс до найкоротшої осі :ref:`size<class_AABB_property_size>` цієї обмежувальної рамки (див. :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`, :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>` і :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`).

 Для прикладу див. :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_shortest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_size>`

Повертає найкоротший розмір :ref:`size<class_AABB_property_size>` цієї обмежувальної рамки.

Для прикладу див. :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_support:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_support**\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_get_support>`

Повертає позицію вершини цієї обмежувальної рамки, яка знаходиться найдальше в заданому напрямку. Ця точка широко відома як опорна точка в алгоритмах виявлення зіткнень.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_volume:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_volume>`

Повертає об’єм обмежувальної рамки. Це еквівалентно ``size.x * size.y * size.z``. Дивіться також :ref:`has_volume()<class_AABB_method_has_volume>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_grow:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **grow**\ (\ by\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_AABB_method_grow>`

Повертає копію цієї обмежувальної рамки, розширену з усіх боків на задану величину ``by``. Натомість від’ємне значення зменшує коробку.


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(4, 4, 4), Vector3(8, 8, 8)).grow(4)
    print(a.position) # Друк (0, 0, 0)
    print(a.size) # Відбитки (16, 16, 16)

    var b = AABB(Vector3(0, 0, 0), Vector3(8, 4, 2)).grow(2)
    print(b.position) # Друк (-2, -2, -2)
    print(b.size) # Відбитки (12, 8, 6)

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(4, 4, 4), new Vector3(8, 8, 8)).Grow(4);
    GD.Print(a.Position); // Виводить (0, 0, 0)
    GD.Print(a.Size); // Друк (16, 16, 16)

    var b = new Aabb(new Vector3(0, 0, 0), new Vector3(8, 4, 2)).Grow(2);
    GD.Print(b.Position); // Друк (-2, -2, -2)
    GD.Print(b.Size); // Друкує (12, 8, 6)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_has_point>`

Повертає ``true``, якщо обмежувальна рамка містить задану ``point``. Згідно з умовами, точки праворуч, зверху та спереду **не** включені.

\ **Примітка:** Цей метод не є надійним для **AABB** з *негативним* :ref:`size<class_AABB_property_size>`. Спочатку використовуйте :ref:`abs()<class_AABB_method_abs>`, щоб отримати дійсну обмежувальну рамку.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_surface:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_surface**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_surface>`

Повертає ``true``, якщо ця обмежувальна рамка має поверхню або довжину, тобто принаймні один компонент :ref:`size<class_AABB_property_size>` більший за ``0``. В іншому випадку повертає ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_volume:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_volume>`

Повертає ``true``, якщо ширина, висота та глибина обмежувальної рамки додатні. Дивіться також :ref:`get_volume()<class_AABB_method_get_volume>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersection:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **intersection**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersection>`

Повертає перетин між цією обмежувальною рамкою та ``with``. Якщо поля не перетинаються, повертає порожній **AABB**. Якщо рамки перетинаються на краю, повертає плоский **AABB** без обсягу (див. :ref:`has_surface()<class_AABB_method_has_surface>` і :ref:`has_volume()<class_AABB_method_has_volume>`).


.. tabs::

 .. code-tab:: gdscript

    var box1 = AABB(Vector3(0, 0, 0), Vector3(5, 2, 8))
    var box2 = AABB(Vector3(2, 0, 2), Vector3(8, 4, 4))

    var intersection = box1.intersection(box2)
    print(intersection.position) # Вивести (2, 0, 2)
    print(intersection.size) # Друк (3, 2, 4)

 .. code-tab:: csharp

    var box1 = new Aabb(новий Vector3(0, 0, 0), new Vector3(5, 2, 8));
    var box2 = new Aabb(новий Vector3(2, 0, 2), new Vector3(8, 4, 4));

    var intersection = box1.Intersection(box2);
    GD.Print(intersection.position); // Виводить (2, 0, 2)
    GD.Print(intersection.size); // Друкує (3, 2, 4)



\ **Примітка:** Якщо вам потрібно лише знати, чи перетинаються дві обмежувальні рамки, замість цього використовуйте :ref:`intersects()<class_AABB_method_intersects>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersects>`

Повертає ``true``, якщо ця обмежувальна рамка накладається на рамку ``with``. Краї обох полів *завжди* виключаються.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_plane:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects_plane**\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_plane>`

Повертає ``true``, якщо ця обмежувальна рамка знаходиться по обидва боки заданої ``plane``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_ray>`

Повертає першу точку перетину цієї обмежувальної рамки та заданого променя як :ref:`Vector3<class_Vector3>`. Якщо перетину не відбувається, повертає ``null``.

 Промінь починається в ``from``, звернений до ``dir`` і тягнеться до нескінченності.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_segment**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_segment>`

Повертає першу точку перетину цієї обмежувальної рамки та заданого сегмента як :ref:`Vector3<class_Vector3>`. Якщо перетину не відбувається, повертає ``null``.

 Сегмент починається в ``from`` і закінчується в ``to``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_is_equal_approx>`

Повертає ``true``, якщо ця обмежувальна рамка та ``aabb`` приблизно однакові, шляхом виклику :ref:`Vector3.is_equal_approx()<class_Vector3_method_is_equal_approx>` для :ref:`position<class_AABB_property_position>` і :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_AABB_method_is_finite>`

Повертає ``true``, якщо значення цієї обмежувальної рамки скінченні, шляхом виклику :ref:`Vector3.is_finite()<class_Vector3_method_is_finite>` для :ref:`position<class_AABB_property_position>` і :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_merge:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **merge**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_merge>`

Повертає **AABB**, який охоплює як цю обмежувальну рамку, так і ``with`` по краях. Дивіться також :ref:`encloses()<class_AABB_method_encloses>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_AABB_operator_neq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_neq_AABB>`

Повертає ``true``, якщо :ref:`position<class_AABB_property_position>` або :ref:`size<class_AABB_property_size>` обох обмежувальних рамок не однакові.

\ **Примітка:** Через помилки точності з плаваючою комою, краще використати :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>`, який є більш надійним.

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_AABB_operator_mul_Transform3D>`

Зворотно перетворює (множить) **AABB** на задану матрицю перетворення :ref:`Transform3D<class_Transform3D>` за припущенням, що базис перетворення є ортонормальним (тобто обертання/відображення є правильним, масштабування/перекіс – ні).

\ ``aabb * transform`` еквівалентний ``transform.inverse() * aabb``. Див. :ref:`Transform3D.inverse()<class_Transform3D_method_inverse>`.

 Для перетворення шляхом зворотного до афінного перетворення (наприклад, із масштабуванням) замість нього можна використовувати ``transform.affine_inverse() * aabb``. Див. :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_eq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_eq_AABB>`

Повертає ``true``, якщо :ref:`position<class_AABB_property_position>` і :ref:`size<class_AABB_property_size>` обмежувальних рамок точно рівні, відповідно.

\ **Примітка:** Через похибки точності обчислень з плаваючою комою, розгляньте можливість використання :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>`, який є більш надійним.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
