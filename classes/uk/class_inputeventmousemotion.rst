:github_url: hide

.. _class_InputEventMouseMotion:

InputEventMouseMotion
=====================

**Успадковує:** :ref:`InputEventMouse<class_InputEventMouse>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляємо мишу або ручний рух.

.. rst-class:: classref-introduction-group

Опис
--------

Зберігає інформацію про рух миші або пера. Це включає відносне положення, абсолютне положення та швидкість. Див. :ref:`Node._input()<class_Node_private_method__input>`. 

\ **Примітка:** За замовчуванням ця подія генерується щонайбільше один раз на відтворений кадр. Якщо вам потрібні точніші звіти про вхідні дані, встановіть :ref:`Input.use_accumulated_input<class_Input_property_use_accumulated_input>` на ``false``, щоб події виникали якомога частіше. Якщо ви використовуєте InputEventMouseMotion для малювання ліній, також подумайте про використання :ref:`Geometry2D.bresenham_line()<class_Geometry2D_method_bresenham_line>`, щоб уникнути видимих прогалин у лініях, якщо користувач швидко рухає мишею. 

\ **Примітка:** Ця подія може виникати навіть тоді, коли миша не рухалася операційною системою чи самим Godot. Якщо вам справді потрібно знати, чи рухалася миша (наприклад, щоб не показувати спливаючу підказку), вам слід перевірити, що ``relative.is_zero_approx()`` має значення ``false``.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Вхіду Події <../tutorials/inputs/inputevent>`

- :doc:`Мишка і координати введення <../tutorials/inputs/mouse_and_input_coordinates>`

- `Демонстрація 3D вокселів <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`pen_inverted<class_InputEventMouseMotion_property_pen_inverted>`       | ``false``         |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`pressure<class_InputEventMouseMotion_property_pressure>`               | ``0.0``           |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`relative<class_InputEventMouseMotion_property_relative>`               | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_velocity<class_InputEventMouseMotion_property_screen_velocity>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`tilt<class_InputEventMouseMotion_property_tilt>`                       | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`velocity<class_InputEventMouseMotion_property_velocity>`               | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_InputEventMouseMotion_property_pen_inverted:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pen_inverted** = ``false`` :ref:`🔗<class_InputEventMouseMotion_property_pen_inverted>`

.. rst-class:: classref-property-setget

- |void| **set_pen_inverted**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pen_inverted**\ (\ )

Повертає ``true`` при використанні торця шпильки.

\ **Примітка:** Дана нерухомість реалізується на Linux, macOS і Windows.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_pressure:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure** = ``0.0`` :ref:`🔗<class_InputEventMouseMotion_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure**\ (\ )

Представляє тиск, користувач кладе на ручку. Діапазони ``0.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_relative**\ (\ )

Позиція миші відносно попередньої позиції (позиція в останньому кадрі). 

\ **Примітка:** Оскільки **InputEventMouseMotion** може виникати лише під час руху миші, перевіркою цієї властивості неможливо надійно визначити, коли миша припинила рух. Може знадобитися окремий короткий таймер. 

\ **Примітка: ** :ref:`relative<class_InputEventMouseMotion_property_relative>` автоматично масштабується відповідно до коефіцієнта масштабування вмісту, який визначається налаштуваннями режиму розтягування проекту. Це означає, що чутливість миші буде різною залежно від роздільної здатності під час використання :ref:`relative<class_InputEventMouseMotion_property_relative>` у сценарії, який обробляє націлювання миші в режимі миші :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`. Щоб уникнути цього, замість цього використовуйте :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_relative>`

.. rst-class:: classref-property-setget

- |void| **set_screen_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_relative**\ (\ )

Немасштабована позиція миші відносно попередньої позиції в системі координат екрана (позиція в останньому кадрі). 

\ **Примітка:** Оскільки **InputEventMouseMotion** може виникати лише під час руху миші, перевіркою цієї властивості неможливо надійно визначити, коли миша припинила рух. Може знадобитися окремий короткий таймер. 

\ **Примітка:** Ця координата *не* масштабується відповідно до коефіцієнта масштабування вмісту або викликів :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`. Цьому слід надавати перевагу над :ref:`relative<class_InputEventMouseMotion_property_relative>` для наведення миші під час використання режиму миші :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`, незалежно від режиму розтягування проекту.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_screen_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_velocity**\ (\ )

Немасштабована швидкість руху миші в пікселях за секунду в екранних координатах. Ця швидкість *не* масштабується відповідно до коефіцієнта масштабування вмісту або викликів методу :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`.

\ **Примітка:** У режимі :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` :ref:`screen_velocity<class_InputEventMouseMotion_property_screen_velocity>` повертає ``(0, 0)``, оскільки курсор миші прихований і заблокований. Використовуйте :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` для наведення миші у режимі :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_tilt:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **tilt** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_tilt>`

.. rst-class:: classref-property-setget

- |void| **set_tilt**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_tilt**\ (\ )

Представляє кути нахилу ручки. Позитивне X-координатне значення вказує на те, що тент вправо. Позитивне значення Y-координат вказує на нахил до користувача. Діапазони з ``-1.0`` до ``1.0`` для обох осей.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

Швидкість руху миші в пікселях за секунду.

\ **Примітка:** Значення :ref:`velocity<class_InputEventMouseMotion_property_velocity>` автоматично масштабується відповідно до коефіцієнта масштабування вмісту, який визначається налаштуваннями режиму розтягування проекту. Це означає, що чутливість миші може відрізнятися залежно від роздільної здатності.

\ **Примітка:** У режимі :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` :ref:`velocity<class_InputEventMouseMotion_property_velocity>` повертає ``(0, 0)``, оскільки курсор миші прихований і заблокований. Використовуйте :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` для наведення миші у режимі :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
