:github_url: hide

.. _class_AreaLight3D:

AreaLight3D
===========

**Успадковує:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Площинне джерело світла, наприклад, неонова лампа або екран.

.. rst-class:: classref-introduction-group

Опис
--------

Площинне світло — це тип вузла :ref:`Light3D<class_Light3D>`, який випромінює світло на двовимірну площину у формі прямокутника. Інтенсивність світла зменшується із відстанню. Це зменшення можна налаштувати, змінюючи значення параметрів energy, :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>` та :ref:`area_range<class_AreaLight3D_property_area_range>`.

Світло випромінюється у напрямку -Z глобальної бази вузла. Для світла без повороту це означає, що світло випромінюється вперед, освітлюючи передню сторону 3D-моделі (див. :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` та :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`).

Площинні джерела світла можуть відкидати м'які тіні за допомогою PCSS, що можна регулювати, змінюючи параметр розміру. Карта тіней малюється від центру джерела світла.

\ **Примітка:** Площинні джерела світла мають обмежену підтримку в рендерерах Mobile та Compatibility. У рендерері Mobile розмір півтіні не змінюється так, як це має бути при використанні PCSS. У рендерері Compatibility площинні джерела світла не можуть відкидати тіні.

\ **Попередження:** Тіні, що відкидаються площинним джерелом світла, можуть виглядати некоректно, якщо об’єкт, що відкидає тіні, не має достатньої кількості підрозділів і знаходиться дуже близько до площинного джерела світла. Це те саме обмеження, що й у режимі тіней «Dual Paraboloid» для :ref:`OmniLight3D<class_OmniLight3D>`.

\ **Продуктивність:** Площинні джерела світла більш вимогливі до графічного процесора порівняно з оміні- та точковими джерелами світла. У режимі Forward+ виникає додаткове навантаження на графічний процесор для *всіх* об’єктів, що візуалізуються, щойно у полі огляду з’являється хоча б одне площинне джерело світла (через особливості кластерного освітлення). Рекомендується використовувати їх лише для кінематографічних сцен або при роботі на високопродуктивних пристроях.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `3D світло та тіні <../tutorials/3d/lights_and_shadows.html#area-light>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`area_attenuation<class_AreaLight3D_property_area_attenuation>`           | ``1.0``                                                                       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`area_normalize_energy<class_AreaLight3D_property_area_normalize_energy>` | ``true``                                                                      |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`area_range<class_AreaLight3D_property_area_range>`                       | ``5.0``                                                                       |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`area_size<class_AreaLight3D_property_area_size>`                         | ``Vector2(1, 1)``                                                             |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`area_texture<class_AreaLight3D_property_area_texture>`                   |                                                                               |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | light_size                                                                     | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_size>`)         |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | shadow_normal_bias                                                             | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +-----------------------------------+--------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AreaLight3D_property_area_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_attenuation** = ``1.0`` :ref:`🔗<class_AreaLight3D_property_area_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Регулює функцію ослаблення світла залежно від відстані для цього джерела розсіяного світла.

Значення ``0.0`` забезпечить постійну яскравість на більшій частині діапазону, але світло плавно ослаблюватиметься на краях діапазону. Використовуйте значення ``2.0`` для фізично точних джерел світла, оскільки це забезпечує правильне ослаблення світла пропорційно до квадрату відстані.

\ **Примітка:** Встановлення ослаблення на ``2.0`` або вище може призвести до того, що віддалені об'єкти отримуватимуть мінімальне освітлення, навіть якщо вони знаходяться в межах діапазону. Наприклад, при діапазоні ``4096`` об'єкт на відстані ``100`` одиниць ослаблюється з коефіцієнтом ``0.0001``. При стандартній яскравості ``1`` світло не буде видно на такій відстані.

\ **Примітка:** Використання від’ємних значень або значень, більших за ``10.0``, може призвести до несподіваних результатів.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_normalize_energy:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **area_normalize_energy** = ``true`` :ref:`🔗<class_AreaLight3D_property_area_normalize_energy>`

.. rst-class:: classref-property-setget

- |void| **set_area_normalize_energy**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_area_normalizing_energy**\ (\ )

Визначає, чи нормалізується (ділиться) енергія на площу поверхні джерела світла. Якщо встановлено значення ``true``, зміна розміру не впливає на загальну потужність випромінювання і не призводить до істотної зміни яскравості сцени.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **area_range** = ``5.0`` :ref:`🔗<class_AreaLight3D_property_area_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Площа зони в метрах. Цей параметр визначає максимальну відстань від будь-якої точки зони, на якій зона все ще може випромінювати світло.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **area_size** = ``Vector2(1, 1)`` :ref:`🔗<class_AreaLight3D_property_area_size>`

.. rst-class:: classref-property-setget

- |void| **set_area_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_area_size**\ (\ )

Розміри (ширина та висота) ділянки в метрах.

.. rst-class:: classref-item-separator

----

.. _class_AreaLight3D_property_area_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **area_texture** :ref:`🔗<class_AreaLight3D_property_area_texture>`

.. rst-class:: classref-property-setget

- |void| **set_area_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_area_texture**\ (\ )

Додаткова текстура, яку можна використовувати як джерело світла. Зміна текстури під час виконання може вплинути на продуктивність, оскільки її потрібно відтворити в атласі площинного світла з використанням відфільтрованих міпмап.

Якщо текстура не призначена, площинне світло випромінює рівномірне світло по всій своїй поверхні.

\ **Примітка:** Текстури площинного світла підтримуються лише в методах рендерингу «Forward+» та «Mobile», але не в методі «Compatibility». Щоб зменшити вплив на продуктивність при зміні текстур під час виконання, переконайтеся, що кожен розмір площинної текстури є кратним 128 пікселів або степенем числа 2. Це усуває необхідність у проході масштабування, що уповільнює зміну текстур. Текстури не обов'язково мають бути квадратними, щоб бути оптимальними. Прикладами оптимальних розмірів текстур є 32x64, 128x128 та 256x384.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
