:github_url: hide

.. _class_Rect2:

Rect2
=====

A 2D вісь вирівнюється з'єднувальна коробка з використанням плавучих координат.

.. rst-class:: classref-introduction-group

Опис
--------

Вбудований тип :ref:`Variant<class_Variant>` **Rect2** представляє прямокутник, вирівняний по осях, у двовимірному просторі. Він визначається його :ref:`position<class_Rect2_property_position>` та :ref:`size<class_Rect2_property_size>`, які є :ref:`Vector2<class_Vector2>`. Він часто використовується для швидких перевірок перекриття (див. :ref:`intercepts()<class_Rect2_method_intercepts>`). Хоча сам **Rect2** вирівняний по осях, його можна поєднати з :ref:`Transform2D<class_Transform2D>` для представлення повернутого або скошеного прямокутника.

Для цілочисельних координат використовуйте :ref:`Rect2i<class_Rect2i>`. 3D-еквівалент **Rect2** - :ref:`AABB<class_AABB>`.

\ **Примітка:** Від'ємні значення для ``розміру елемента`` не підтримуються. З від'ємним розміром більшість методів **Rect2** працюють неправильно. Використовуйте :ref:`abs()<class_Rect2_method_abs>`, щоб отримати еквівалентний **Rect2** з невід'ємним розміром.

\ **Примітка:** У булевому контексті значення **Rect2** повертає значення ``false``, якщо обидва значення :ref:`position<class_Rect2_property_position>` та :ref:`size<class_Rect2_property_size>` дорівнюють нулю (дорівнюють :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`). В іншому випадку значення завжди повертає значення ``true``.

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

   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`end<class_Rect2_property_end>`           | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_Rect2_property_position>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_Rect2_property_size>`         | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ )                                                                                                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`abs<class_Rect2_method_abs>`\ (\ ) |const|                                                                                                                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_Rect2_method_encloses>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`expand<class_Rect2_method_expand>`\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_area<class_Rect2_method_get_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_center<class_Rect2_method_get_center>`\ (\ ) |const|                                                                                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_support<class_Rect2_method_get_support>`\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow<class_Rect2_method_grow>`\ (\ amount\: :ref:`float<class_float>`\ ) |const|                                                                                                                             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_individual<class_Rect2_method_grow_individual>`\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_side<class_Rect2_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const|                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_area<class_Rect2_method_has_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_Rect2_method_has_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`intersection<class_Rect2_method_intersection>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_Rect2_method_intersects>`\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_Rect2_method_is_equal_approx>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_Rect2_method_is_finite>`\ (\ ) |const|                                                                                                                                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`merge<class_Rect2_method_merge>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator !=<class_Rect2_operator_neq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`operator *<class_Rect2_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator ==<class_Rect2_operator_eq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Rect2_property_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **end** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_end>`

Точка закінчення. Це, як правило, нижній кут прямокутника, і еквівалентно ``позиція + розмір``. Налаштування цієї точки впливає на :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_position>`

Точка походження. Зазвичай верхній лівий кут прямокутника.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_size>`

Ширина та висота прямокутника, починаючи з :ref:`position<class_Rect2_property_position>`. Встановлення цього значення також впливає на точку :ref:`end<class_Rect2_property_end>`.

\ **Примітка:** Рекомендується встановлювати ширину та висоту на невід'ємні значення, оскільки більшість методів у Godot припускають, що :ref:`position<class_Rect2_property_position>` – це верхній лівий кут, а :ref:`end<class_Rect2_property_end>` – нижній правий кут. Щоб отримати еквівалентний прямокутник з невід'ємним розміром, використовуйте :ref:`abs()<class_Rect2_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_Rect2_constructor_Rect2:

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ ) :ref:`🔗<class_Rect2_constructor_Rect2>`

Створює **Rect2** з його :ref:`position<class_Rect2_property_position>` і :ref:`size<class_Rect2_property_size>` встановлено на :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

**Rect2** як копія даної **Rect2**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

Створює **Rect2** з :ref:`Rect2i<class_Rect2i>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )

Constructs a **Rect2** by ``position`` і ``size``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ )

Створює **Rect2**, встановлюючи його :ref:`position<class_Rect2_property_position>` до (``x``, ``y``), та його :ref:`size<class_Rect2_property_size>` до (``width``, ``height``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Rect2_method_abs:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2_method_abs>`

Повертає **Rect2**, еквівалентний цьому прямокутнику, з його шириною та висотою, зміненими на невід’ємні значення, а :ref:`position<class_Rect2_property_position>` — верхнім лівим кутом прямокутника. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var rect = Rect2(25, 25, -100, -50) 
    var absolute = rect.abs() # absolute це Rect2(-75, -25, 100, 50)  

 .. code-tab:: csharp
 
    var rect = new Rect2(25, 25, -100, -50); 
    var absolute = rect.Abs(); // абсолютним є Rect2(-75, -25, 100, 50)  

 

\ **Примітка:** Рекомендується використовувати цей метод, коли :ref:`size<class_Rect2_property_size>` має від’ємне значення, оскільки більшість інших методів у Godot припускають, що :ref:`position<class_Rect2_property_position>` — це верхній лівий кут, а :ref:`end<class_Rect2_property_end>` — нижній правий кут.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_encloses>`

Повертає ``true``, якщо цей прямокутник *повнено* закриває ``b`` прямокутник.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_expand:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **expand**\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_expand>`

Повертає копію цього прямокутника, розгорнуту для вирівнювання країв із заданою точкою ``to``, якщо необхідно.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(0, 0, 5, 2)

    rect = rect.expand(Vector2(10, 0)) # rect is Rect2(0, 0, 10, 2)
    rect = rect.expand(Vector2(-5, 5)) # rect is Rect2(-5, 0, 15, 5)

 .. code-tab:: csharp

    var rect = new Rect2(0, 0, 5, 2);

    rect = rect.Expand(new Vector2(10, 0)); // rect is Rect2(0, 0, 10, 2)
    rect = rect.Expand(new Vector2(-5, 5)); // rect is Rect2(-5, 0, 15, 5)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_area:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_area>`

Повертає область прямокутника. ``size.x * розмір.y``. Дивитися також :ref:`has_area()<class_Rect2_method_has_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_center>`

Повертає центральну точку прямокутника. Це так само, як ``позиція + (розмір / 2.0)``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_support:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_support**\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_get_support>`

Повертає позицію вершини цієї обмежувальної рамки, яка знаходиться найдальше в заданому напрямку. Ця точка широко відома як опорна точка в алгоритмах виявлення зіткнень.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow>`

Повертає копію цього прямокутника, розширену з усіх боків на задане значення ``amount``. Від'ємне значення ``amount`` натомість зменшує прямокутник. Див. також :ref:`grow_individual()<class_Rect2_method_grow_individual>` та :ref:`grow_side()<class_Rect2_method_grow_side>`.


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2(4, 4, 8, 8).grow(4) # a is Rect2(0, 0, 16, 16)
    var b = Rect2(0, 0, 8, 4).grow(2) # b is Rect2(-2, -2, 12, 8)

 .. code-tab:: csharp

    var a = new Rect2(4, 4, 8, 8).Grow(4); // a is Rect2(0, 0, 16, 16)
    var b = new Rect2(0, 0, 8, 4).Grow(2); // b is Rect2(-2, -2, 12, 8)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_individual**\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_individual>`

Повертає копію цього прямокутника з його сторонами ``left``, ``top``, ``right`` та ``bottom``, подовженими на задані значення. Від'ємні значення натомість зменшують сторони. Див. також :ref:`grow()<class_Rect2_method_grow>` та :ref:`grow_side()<class_Rect2_method_grow_side>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_side>`

Повертає копію цього прямокутника з його ``side``, розширеною на задане значення ``amount`` (див. константи :ref:`Side<enum_@GlobalScope_Side>`). Від'ємне значення ``amount`` натомість зменшує прямокутник. Див. також :ref:`grow()<class_Rect2_method_grow>` та :ref:`grow_individual()<class_Rect2_method_grow_individual>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_has_area>`

Повертає ``true``, якщо цей прямокутник має позитивну ширину і висоту. Дивись також :ref:`get_area()<class_Rect2_method_get_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_has_point>`

Повертає ``true``, якщо прямокутник містить задану точку ``point``. За домовленістю, точки на правому та нижньому краях **не** враховуються.

\ **Примітка:** Цей метод ненадійний для **Rect2** з *від’ємним* :ref:`size<class_Rect2_property_size>`. Спочатку використовуйте :ref:`abs()<class_Rect2_method_abs>`, щоб отримати коректний прямокутник.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **intersection**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_intersection>`

Повертає перетин між цим прямокутником і ``b``. Якщо прямокутники не перетинаються, повертає порожній **Rect2**. 


.. tabs:: 

 .. code-tab:: gdscript
 
    змінна rect1 = Rect2(0, 0, 5, 10) 
    змінна rect2 = Rect2(2, 0, 8, 4) 

    var a = rect1.intersection(rect2) # a is Rect2(2, 0, 3, 4)  

 .. code-tab:: csharp
 
    var rect1 = new Rect2(0, 0, 5, 10); 
    var rect2 = new Rect2(2, 0, 8, 4); 

    var a = rect1.Intersection(rect2); // a є Rect2(2, 0, 3, 4)  

 

\ **Примітка:** Якщо вам потрібно лише знати, чи накладаються два прямокутники, натомість використовуйте :ref:`intersects()<class_Rect2_method_intersects>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Rect2_method_intersects>`

Повертає значення ``true``, якщо цей прямокутник перетинається з прямокутником ``b``. Краї обох прямокутників виключаються, якщо тільки значення ``include_borders`` не дорівнює ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_is_equal_approx>`

Повертає ``true``, якщо цей прямокутник та ``rect`` приблизно рівні, викликаючи :ref:`Vector2.is_equal_approx()<class_Vector2_method_is_equal_approx>` для :ref:`position<class_Rect2_property_position>` та :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Rect2_method_is_finite>`

Повертає ``true``, якщо значення цього прямокутника скінченні, викликаючи :ref:`Vector2.is_finite()<class_Vector2_method_is_finite>` для :ref:`position<class_Rect2_property_position>` та :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_merge:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **merge**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_merge>`

Повертає **Rect2**, який оточує як цей прямокутник, так і ``b`` по краях. Див. також :ref:`enclosures()<class_Rect2_method_enclosures>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Rect2_operator_neq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_neq_Rect2>`

Повертаємо ``true``, якщо :ref:`position<class_Rect2_property_position>` або :ref:`size<class_Rect2_property_size>` обох прямокутників не дорівнює.

\ **Примітка:** У зв'язку з похибками з плаваючою точкою, розглянемо використання :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>` замість того, яка є більш надійним.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Rect2_operator_mul_Transform2D>`

Неперевершено трансформується (мультати) **Rect2** заданим :ref:`Transform2D<class_Transform2D>` матрицею перетворення, під припущенням, що трансформаційна основа є ортонормальним (тобто обертання / рефлекція є дрібним, масштабування / шавлія не).

\ ``rect * трансформатор`` еквівалент ``transform.inverse() * ct``. :ref:`Transform2D.inverse()<class_Transform2D_method_inverse>`.

Для перетворення інверсом афінової трансформації (наприклад, з масштабуванням) ``transform.affine_inverse() * ct`` може використовуватися замість. :ref:`Transform2D.affine_inverse()<class_Transform2D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_eq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_eq_Rect2>`

Повертає ``true``, якщо обидва значення прямокутників, :ref:`position<class_Rect2_property_position>` та :ref:`size<class_Rect2_property_size>`, абсолютно рівні відповідно.

\ **Примітка:** Через помилки точності чисел з плаваючою комою, розгляньте можливість використання :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>`, що є надійнішим.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
