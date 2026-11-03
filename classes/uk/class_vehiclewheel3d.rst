:github_url: hide

.. _class_VehicleWheel3D:

VehicleWheel3D
==============

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Корпус фізики 3D для :ref:`VehicleBody3D<class_VehicleBody3D>`, що імітує поведінку колеса.

.. rst-class:: classref-introduction-group

Опис
--------

Вуз, який використовується як дитина :ref:`VehicleBody3D<class_VehicleBody3D>`, щоб імітувати поведінку одного з його коліс. Цей вузол також виступає в якості комірця, щоб виявити, якщо колесо доторкнеться поверхні.

\ **Примітка:** Цей клас відомий питання і не призначений для забезпечення реалістичної фізики автомобілів 3D. Якщо ви хочете розширити фізику транспортних засобів, вам може знадобитися записувати власну фізичну інтеграцію за допомогою іншого класу :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `3Д Вантажівка Таун Демо <https://store.godotengine.org/asset/godot-foundation/truck-town-demo/>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`brake<class_VehicleWheel3D_property_brake>`                               | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>`   | ``0.83``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`damping_relaxation<class_VehicleWheel3D_property_damping_relaxation>`     | ``0.88``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`engine_force<class_VehicleWheel3D_property_engine_force>`                 | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                      | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`steering<class_VehicleWheel3D_property_steering>`                         | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_max_force<class_VehicleWheel3D_property_suspension_max_force>` | ``6000.0``                                                                    |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_stiffness<class_VehicleWheel3D_property_suspension_stiffness>` | ``5.88``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_travel<class_VehicleWheel3D_property_suspension_travel>`       | ``0.2``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_as_steering<class_VehicleWheel3D_property_use_as_steering>`           | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_as_traction<class_VehicleWheel3D_property_use_as_traction>`           | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_friction_slip<class_VehicleWheel3D_property_wheel_friction_slip>`   | ``10.5``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_radius<class_VehicleWheel3D_property_wheel_radius>`                 | ``0.5``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_rest_length<class_VehicleWheel3D_property_wheel_rest_length>`       | ``0.15``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_roll_influence<class_VehicleWheel3D_property_wheel_roll_influence>` | ``0.1``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`   | :ref:`get_contact_body<class_VehicleWheel3D_method_get_contact_body>`\ (\ ) |const|     |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_contact_normal<class_VehicleWheel3D_method_get_contact_normal>`\ (\ ) |const| |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_contact_point<class_VehicleWheel3D_method_get_contact_point>`\ (\ ) |const|   |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_rpm<class_VehicleWheel3D_method_get_rpm>`\ (\ ) |const|                       |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_skidinfo<class_VehicleWheel3D_method_get_skidinfo>`\ (\ ) |const|             |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_in_contact<class_VehicleWheel3D_method_is_in_contact>`\ (\ ) |const|           |
   +-------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VehicleWheel3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

Повільняє колесо, застосовуючи гальмівну силу. Колесо сповільнюється, якщо він контактує з поверхнею. В залежності від :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` транспортного засобу. Для автомобіля з масовим набором до 1000, спробуйте значення в діапазоні 25 - 30 для жорстких гальмівних гальмів.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_damping_compression:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_compression** = ``0.83`` :ref:`🔗<class_VehicleWheel3D_property_damping_compression>`

.. rst-class:: classref-property-setget

- |void| **set_damping_compression**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_compression**\ (\ )

Амортизація пружини підвіски під час стиснення, тобто коли колесо рухається вгору відносно автомобіля. Вимірюється в ньютон-секундах на міліметр (Н⋅с/мм) або мегаграмах на секунду (Мг/с). Це значення має бути від 0,0 (без демпфування) до 1,0, але може бути більше. Значення 0,0 означає, що автомобіль продовжуватиме підстрибувати, оскільки пружина зберігає свою енергію. Хорошим значенням для цього є приблизно 0,3 для звичайного автомобіля, 0,5 для гоночного автомобіля.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_damping_relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_relaxation** = ``0.88`` :ref:`🔗<class_VehicleWheel3D_property_damping_relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_damping_relaxation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_relaxation**\ (\ )

Амортизація пружини підвіски під час відскоку або висування, тобто коли колесо рухається вниз відносно автомобіля. Вимірюється в ньютон-секундах на міліметр (Н⋅с/мм) або мегаграмах на секунду (Мг/с). Це значення має бути від 0,0 (без демпфування) до 1,0, але може бути більше. Це значення завжди має бути трохи вищим за властивість :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>`. Для значення :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>` 0,3 спробуйте значення релаксації 0,5.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

Прискорює колесо, застосовуючи зусилля двигуна. Колесо використовується тільки при контакті з поверхнею. :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` транспортного засобу впливає на прискорення транспортного засобу. Для автомобіля з великим набором до 1000, спробуйте значення в діапазоні 25 - 50 для прискорення.

\ **Примітка:** Симулятор не бере ефекту передач в рахунок, потрібно додати логіку для цього, якщо ви хочете імітувати редуктори.

Негативне значення призведе до розвороту коліс.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

Рульовий кут для коліс, в радіях. Налаштування цього до ненульового значення призведе до повороту транспортного засобу, коли він рухається.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_max_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_max_force** = ``6000.0`` :ref:`🔗<class_VehicleWheel3D_property_suspension_max_force>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_max_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_max_force**\ (\ )

Максимальна сила пружини може протистояти. Це значення має бути вище чверті :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` :ref:`VehicleBody3D<class_VehicleBody3D>` або пружина не буде нести вагу транспортного засобу. Хороші результати часто отримують за значенням, що становить близько 3 × до 4 × цього числа.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_stiffness** = ``5.88`` :ref:`🔗<class_VehicleWheel3D_property_suspension_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_stiffness**\ (\ )

Жорсткість підвіски, виміряна в Ньютонах на міліметр (Н/мм) або мегаграмах на секунду в квадраті (Мг/с²). Використовуйте значення нижче 50 для автомобіля позашляховика, значення від 50 до 100 для гоночного автомобіля та спробуйте приблизно 200 для автомобіля Формули-1.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_travel:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_travel** = ``0.2`` :ref:`🔗<class_VehicleWheel3D_property_suspension_travel>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_travel**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_travel**\ (\ )

Це відстань підвіски може подорожувати. У міру того, як Godot одиниці еквівалентні метрам, зберігайте цю установку відносно низькою. Спробуйте значення між 0.1 і 0.3 залежно від типу автомобіля.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_use_as_steering:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_as_steering** = ``false`` :ref:`🔗<class_VehicleWheel3D_property_use_as_steering>`

.. rst-class:: classref-property-setget

- |void| **set_use_as_steering**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_used_as_steering**\ (\ )

Якщо значення ``true``, це колесо буде повертатися, коли автомобіль керуватиме. Це значення використовується разом із :ref:`VehicleBody3D.steering<class_VehicleBody3D_property_steering>` та ігнорується, якщо ви використовуєте значення :ref:`steering<class_VehicleWheel3D_property_steering>` для кожного колеса.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_use_as_traction:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_as_traction** = ``false`` :ref:`🔗<class_VehicleWheel3D_property_use_as_traction>`

.. rst-class:: classref-property-setget

- |void| **set_use_as_traction**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_used_as_traction**\ (\ )

Якщо значення ``true``, це колесо передає силу двигуна на землю, щоб рухати транспортний засіб вперед. Це значення використовується разом із :ref:`VehicleBody3D.engine_force<class_VehicleBody3D_property_engine_force>` та ігнорується, якщо ви використовуєте значення :ref:`engine_force<class_VehicleWheel3D_property_engine_force>` для кожного колеса.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_friction_slip:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_friction_slip** = ``10.5`` :ref:`🔗<class_VehicleWheel3D_property_wheel_friction_slip>`

.. rst-class:: classref-property-setget

- |void| **set_friction_slip**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction_slip**\ (\ )

Це визначає, скільки зчеплення має це колесо. Поєднується з налаштування тертя поверхні, з якою колесо в контакті. 0,0 означає відсутність зчеплення, 1,0 означає нормальне зчеплення. Для створення дрифта на автівці намагайтеся встановлювати зчеплення задніх коліс трохи нижче, ніж на передніх колесах, або використовуйте нижче значення для імітації зношення шин.

Для новачків краще ставити 1,0.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_radius** = ``0.5`` :ref:`🔗<class_VehicleWheel3D_property_wheel_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Радіус колеса в метрах.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_rest_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_rest_length** = ``0.15`` :ref:`🔗<class_VehicleWheel3D_property_wheel_rest_length>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_rest_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_rest_length**\ (\ )

Це відстань в метрах коліс знизиться з точки його походження. Не встановіть це до 0.0 і перемістіть колесо в позицію, замість того, щоб перемістити точку походження вашого колеса (гізмо в Godot) до положення колеса займеться при знизі, потім використовуйте довжину решти, щоб перемістити колесо вниз до положення, вона повинна бути в тому випадку, коли автомобіль знаходиться в іншому місці.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_roll_influence:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_roll_influence** = ``0.1`` :ref:`🔗<class_VehicleWheel3D_property_wheel_roll_influence>`

.. rst-class:: classref-property-setget

- |void| **set_roll_influence**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_roll_influence**\ (\ )

Це значення впливає на рулон вашого автомобіля. Якщо встановити до 1.0 для всіх коліс, ваш автомобіль буде протистояти рулону тіла, тоді як значення 0.0 буде схильне до прокатки.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_VehicleWheel3D_method_get_contact_body:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_contact_body**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_body>`

Повертаємо вузол контактування тіла, якщо діє в дерево, як :ref:`Node3D<class_Node3D>`. На даний момент :ref:`GridMap<class_GridMap>` не підтримується, тому вузол завжди буде тип :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

Повертаємо ``null``, якщо колесо не контактує з поверхнею, або контактний корпус не є :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_contact_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_normal**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_normal>`

Повертає нормаль зіткнення підвіски у світовому просторі, якщо колесо контактує. Якщо колесо ні з чим не контактує, повертає вектор, що вказує прямо вздовж осі підвіски на автомобіль у світовому просторі.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_contact_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_point**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_point>`

Повертає точку зіткнення підвіски у світовому просторі, якщо колесо контактує. Якщо колесо ні з чим не контактує, повертає максимальну точку променя колеса у світовому просторі, яка визначається ``wheel_rest_length + wheel_radius``.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_rpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rpm**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_rpm>`

Повернення обертальної швидкості колеса в оборотах за хвилину.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_skidinfo:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skidinfo**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_skidinfo>`

Повертає значення між 0.0 і 1,0, що вказує на те, що це колесо пропускається. 0.0 - катання на лижах (колесник втратив зчеплення, наприклад, ількість місцевості), 1.0 означає не пропустити (колесо має повне зчеплення, наприклад, суху асфальтову дорогу).

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_is_in_contact:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_contact**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_is_in_contact>`

Повертаємо ``true``, якщо це колесо контактує з поверхнею.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
