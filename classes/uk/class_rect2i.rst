:github_url: hide

.. _class_Rect2i:

Rect2i
======

A 2D вісь вирівнюється за допомогою цілих координат.

.. rst-class:: classref-introduction-group

Опис
--------

Вбудований тип :ref:`Variant<class_Variant>` **Rect2i** представляє прямокутник, вирівняний по осях, у двовимірному просторі, використовуючи цілочисельні координати. Він визначається його :ref:`position<class_Rect2i_property_position>` та :ref:`size<class_Rect2i_property_size>`, які є :ref:`Vector2i<class_Vector2i>`. Оскільки він не обертається, його часто використовують для швидких перевірок перекриття (див. :ref:`intercepts()<class_Rect2i_method_intercepts>`).

Щодо координат з плаваючою комою див. :ref:`Rect2<class_Rect2>`.

\ **Примітка:** Від'ємні значення для ``розміру елемента`` не підтримуються. З від'ємним розміром більшість методів **Rect2i** працюють неправильно. Використовуйте :ref:`abs()<class_Rect2i_method_abs>`, щоб отримати еквівалентний **Rect2i** з невід'ємним розміром.

\ **Примітка:** У булевому контексті **Rect2i** оцінюється як ``false``, якщо обидва :ref:`position<class_Rect2i_property_position>` та :ref:`size<class_Rect2i_property_size>` дорівнюють нулю (дорівнюють :ref:`Vector2i.ZERO<class_Vector2i_constant_ZERO>`). В іншому випадку він завжди оцінюється як ``true``.

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Покажчик математичної документації <../tutorials/math/index>`

- :doc:`Векторна математика <../tutorials/math/vector_math>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`end<class_Rect2i_property_end>`           | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`position<class_Rect2i_property_position>` | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`size<class_Rect2i_property_size>`         | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ )                                                                                                                      |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                    |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`\ )                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`abs<class_Rect2i_method_abs>`\ (\ ) |const|                                                                                                                                                   |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`encloses<class_Rect2i_method_encloses>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`expand<class_Rect2i_method_expand>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                       |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_area<class_Rect2i_method_get_area>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`get_center<class_Rect2i_method_get_center>`\ (\ ) |const|                                                                                                                                     |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow<class_Rect2i_method_grow>`\ (\ amount\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow_individual<class_Rect2i_method_grow_individual>`\ (\ left\: :ref:`int<class_int>`, top\: :ref:`int<class_int>`, right\: :ref:`int<class_int>`, bottom\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow_side<class_Rect2i_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_area<class_Rect2i_method_has_area>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_point<class_Rect2i_method_has_point>`\ (\ point\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`intersection<class_Rect2i_method_intersection>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`intersects<class_Rect2i_method_intersects>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                    |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`merge<class_Rect2i_method_merge>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Rect2i_operator_neq_Rect2i>`\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Rect2i_operator_eq_Rect2i>`\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ )  |
   +-------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Rect2i_property_end:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **end** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_end>`

Точка закінчення. Це, як правило, нижній кут прямокутника, і еквівалентно ``позиція + розмір``. Налаштування цієї точки впливає на :ref:`size<class_Rect2i_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_property_position:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **position** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_position>`

Точка походження. Зазвичай верхній лівий кут прямокутника.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_size>`

Ширина та висота прямокутника, починаючи з :ref:`position<class_Rect2i_property_position>`. Встановлення цього значення також впливає на точку :ref:`end<class_Rect2i_property_end>`.

\ **Примітка:** Рекомендується встановлювати ширину та висоту на невід'ємні значення, оскільки більшість методів у Godot припускають, що :ref:`position<class_Rect2i_property_position>` – це верхній лівий кут, а :ref:`end<class_Rect2i_property_end>` – нижній правий кут. Щоб отримати еквівалентний прямокутник з невід'ємним розміром, використовуйте :ref:`abs()<class_Rect2i_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_Rect2i_constructor_Rect2i:

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ ) :ref:`🔗<class_Rect2i_constructor_Rect2i>`

Конструює **Rect2i** з його :ref:`position<class_Rect2i_property_position>` і :ref:`size<class_Rect2i_property_size>` встановлено на :ref:`Vector2i.ZERO<class_Vector2i_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

**Rect2i** як копія даної **Rect2i**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

Створює **Rect2i** з :ref:`Rect2<class_Rect2>`. Координати з плаваючою комою скорочуються.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`\ )

Constructs a **Rect2i** by ``position`` і ``size``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ )

Constructs a **Rect2i** шляхом налаштування його :ref:`position<class_Rect2i_property_position>` до (``x``, ``y``), а також його :ref:`size<class_Rect2i_property_size>` до (``width``, ``height``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Rect2i_method_abs:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_abs>`

Повертає **Rect2i**, еквівалентний цьому прямокутнику, з його шириною та висотою, зміненими на невід’ємні значення, а його :ref:`position<class_Rect2i_property_position>` — верхнім лівим кутом прямокутника. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var rect = Rect2i(25, 25, -100, -50) 
    var absolute = rect.abs() # absolute це Rect2i(-75, -25, 100, 50)  

 .. code-tab:: csharp
 
    var rect = new Rect2I(25, 25, -100, -50); 
    var absolute = rect.Abs(); // абсолютним є Rect2I(-75, -25, 100, 50)  

 

\ **Примітка:** Рекомендується використовувати цей метод, коли :ref:`size<class_Rect2i_property_size>` має від’ємне значення, оскільки більшість інших методів у Godot припускають, що :ref:`position<class_Rect2i_property_position>` — це верхній лівий кут, а :ref:`end<class_Rect2i_property_end>` — нижній правий кут.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_encloses>`

Повертаємо ``true``, якщо це **Rect2i** повністю закриває інший.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_expand:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **expand**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_expand>`

Повертає копію цього прямокутника, розгорнуту для вирівнювання країв із заданою точкою ``to``, якщо необхідно. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var rect = Rect2i(0, 0, 5, 2) 

    rect = rect.expand(Vector2i(10, 0)) # rect це Rect2i(0, 0, 10, 2) 
    rect = rect.expand(Vector2i(-5, 5)) # rect це Rect2i(-5, 0, 15, 5)  

 .. code-tab:: csharp
 
    var rect = new Rect2I(0, 0, 5, 2); 

    rect = rect.Expand(new Vector2I(10, 0)); // rect це Rect2I(0, 0, 10, 2) 
    rect = rect.Expand(new Vector2I(-5, 5)); // rect це Rect2I(-5, 0, 15, 5)  



.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_get_area:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_get_area>`

Повертає область прямокутника. ``size.x * розмір.y``. Дивитися також :ref:`has_area()<class_Rect2i_method_has_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_get_center>`

Повертає центральну точку прямокутника. Це так само, як ``позиція + (розмір / 2)``.

\ **Примітка:** Якщо розмір :ref:`size<class_Rect2i_property_size>` є непарним, результат буде округлений до :ref:`position<class_Rect2i_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow**\ (\ amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow>`

Повертає копію цього прямокутника, подовженого з усіх боків на заданий параметр ``amount``. Натомість від’ємне значення ``amount`` зменшує прямокутник. Дивіться також :ref:`grow_individual()<class_Rect2i_method_grow_individual>` і :ref:`grow_side()<class_Rect2i_method_grow_side>`. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var a = Rect2i(4, 4, 8, 8).grow(4) # a is Rect2i(0, 0, 16, 16) 
    var b = Rect2i(0, 0, 8, 4).grow(2) # b це Rect2i(-2, -2, 12, 8)  

 .. code-tab:: csharp
 
    var a = new Rect2I(4, 4, 8, 8).Grow(4); // a є Rect2I(0, 0, 16, 16) 
    var b = new Rect2I(0, 0, 8, 4).Grow(2); // b є Rect2I(-2, -2, 12, 8)  



.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow_individual**\ (\ left\: :ref:`int<class_int>`, top\: :ref:`int<class_int>`, right\: :ref:`int<class_int>`, bottom\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow_individual>`

Повертає копію цього прямокутника з його сторонами ``left``, ``top``, ``right`` та ``bottom``, подовженими на задані значення. Від'ємні значення натомість зменшують сторони. Див. також :ref:`grow()<class_Rect2i_method_grow>` та :ref:`grow_side()<class_Rect2i_method_grow_side>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow_side>`

Повертає копію цього прямокутника з його ``side``, розширеною на задане значення ``amount`` (див. константи :ref:`Side<enum_@GlobalScope_Side>`). Від'ємне значення ``amount`` натомість зменшує прямокутник. Див. також :ref:`grow()<class_Rect2i_method_grow>` та :ref:`grow_individual()<class_Rect2i_method_grow_individual>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_has_area>`

Повертає ``true``, якщо цей прямокутник має позитивну ширину і висоту. Дивись також :ref:`get_area()<class_Rect2i_method_get_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_has_point>`

Повертаємо ``true``, якщо прямокутник містить даний ``point``. За конвенцією точки на правих і нижніх краях **not** включено.

\ **Примітка:** Цей метод не надійний для **Rect2i** з *негативним * :ref:`size<class_Rect2i_property_size>`. Використовуйте :ref:`abs()<class_Rect2i_method_abs>` спочатку, щоб отримати дійсний прямокутник.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **intersection**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_intersection>`

Повертає перетин між цим прямокутником і ``b``. Якщо прямокутники не перетинаються, повертає порожній **Rect2i**. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var a = Rect2i(0, 0, 5, 10) 
    var b = Rect2i(2, 0, 8, 4) 

    var c = a.intersection(b) # c is Rect2i(2, 0, 3, 4)  

 .. code-tab:: csharp
 
    var a = new Rect2I(0, 0, 5, 10); 
    var b = new Rect2I(2, 0, 8, 4); 

    var c = rect1.Intersection(rect2); // c є Rect2I(2, 0, 3, 4)  

 

\ **Примітка:** Якщо вам потрібно лише знати, чи накладаються два прямокутники, натомість використовуйте :ref:`intersects()<class_Rect2i_method_intersects>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_intersects>`

Повертає ``true``, якщо цей прямокутник перекриває з прямокутником ``b``. Виключені краї обох прямокутників.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_merge:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **merge**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_merge>`

Повертаємо **Rect2i**, який закриває як цей прямокутник, так і ``b`` по краях. Дивись також :ref:`encloses()<class_Rect2i_method_encloses>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Rect2i_operator_neq_Rect2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_Rect2i_operator_neq_Rect2i>`

Повертаємо ``true``, якщо :ref:`position<class_Rect2i_property_position>` або :ref:`size<class_Rect2i_property_size>` обох прямокутників не дорівнює.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_operator_eq_Rect2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_Rect2i_operator_eq_Rect2i>`

Повертає ``true``, якщо обидва :ref:`position<class_Rect2i_property_position>` і :ref:`size<class_Rect2i_property_size>` прямокутників однакові, відповідно.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
