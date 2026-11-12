:github_url: hide

.. _class_MobileVRInterface:

MobileVRInterface
=================

**Успадковує:** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Створення мобільної VR.

.. rst-class:: classref-introduction-group

Опис
--------

Це загальна реалізація віртуальної реальності для мобільних пристроїв, де вам потрібно надати деталі про використовуваний телефон і HMD. Він не спирається на жодну існуючу структуру. Це найпростіший інтерфейс, який у нас є. Для кращого ефекту потрібен мобільний телефон з гіроскопом і акселерометром. 

Зауважте, що навіть якщо позиційне відстеження відсутнє, камера вважатиме, що гарнітура знаходиться на висоті 1,85 метра. Ви можете змінити це, встановивши :ref:`eye_height<class_MobileVRInterface_property_eye_height>`. 

Ви можете ініціалізувати цей інтерфейс наступним чином: 

::
 
    var interface = XRServer.find_interface("Native mobile") 
    if interface and interface.initialize(): 
        get_viewport().use_xr = true  

\ **Примітка:** для Android :ref:`ProjectSettings.input_devices/sensors/enable_accelerometer<class_ProjectSettings_property_input_devices/sensors/enable_accelerometer>`, :ref:`ProjectSettings.input_devices/sensors/enable_gravity<class_ProjectSettings_property_input_devices/sensors/enable_gravity>`, :ref:`ProjectSettings.input_devices/sensors/enable_gyroscope<class_ProjectSettings_property_input_devices/sensors/enable_gyroscope>` і :ref:`ProjectSettings.input_devices/sensors/enable_magnetometer<class_ProjectSettings_property_input_devices/sensors/enable_magnetometer>` має бути ввімкнено.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`display_to_lens<class_MobileVRInterface_property_display_to_lens>` | ``4.0``                                                                            |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`display_width<class_MobileVRInterface_property_display_width>`     | ``14.5``                                                                           |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`eye_height<class_MobileVRInterface_property_eye_height>`           | ``1.85``                                                                           |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`iod<class_MobileVRInterface_property_iod>`                         | ``6.0``                                                                            |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`k1<class_MobileVRInterface_property_k1>`                           | ``0.215``                                                                          |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`k2<class_MobileVRInterface_property_k2>`                           | ``0.215``                                                                          |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                          | :ref:`offset_rect<class_MobileVRInterface_property_offset_rect>`         | ``Rect2(0, 0, 1, 1)``                                                              |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`oversample<class_MobileVRInterface_property_oversample>`           | ``1.5``                                                                            |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`vrs_min_radius<class_MobileVRInterface_property_vrs_min_radius>`   | ``20.0``                                                                           |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                          | :ref:`vrs_strength<class_MobileVRInterface_property_vrs_strength>`       | ``1.0``                                                                            |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` | xr_play_area_mode                                                        | ``1`` (overrides :ref:`XRInterface<class_XRInterface_property_xr_play_area_mode>`) |
   +----------------------------------------------------+--------------------------------------------------------------------------+------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_MobileVRInterface_property_display_to_lens:

.. rst-class:: classref-property

:ref:`float<class_float>` **display_to_lens** = ``4.0`` :ref:`🔗<class_MobileVRInterface_property_display_to_lens>`

.. rst-class:: classref-property-setget

- |void| **set_display_to_lens**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_display_to_lens**\ (\ )

Відстань між дисплеєм і лінзами всередині пристрою в сантиметрах.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_display_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **display_width** = ``14.5`` :ref:`🔗<class_MobileVRInterface_property_display_width>`

.. rst-class:: classref-property-setget

- |void| **set_display_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_display_width**\ (\ )

Ширина дисплея в сантиметрах.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_eye_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **eye_height** = ``1.85`` :ref:`🔗<class_MobileVRInterface_property_eye_height>`

.. rst-class:: classref-property-setget

- |void| **set_eye_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_eye_height**\ (\ )

Висота, при якій камера поміщається по відношенню до землі (тобто :ref:`XROrigin3D<class_XROrigin3D>` вузол).

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_iod:

.. rst-class:: classref-property

:ref:`float<class_float>` **iod** = ``6.0`` :ref:`🔗<class_MobileVRInterface_property_iod>`

.. rst-class:: classref-property-setget

- |void| **set_iod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_iod**\ (\ )

Інтерокулярна відстань, також відома як міжпублична відстань. Відстань між учнями лівого і правого ока.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_k1:

.. rst-class:: classref-property

:ref:`float<class_float>` **k1** = ``0.215`` :ref:`🔗<class_MobileVRInterface_property_k1>`

.. rst-class:: classref-property-setget

- |void| **set_k1**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_k1**\ (\ )

Код об'єктива k1 є одним з двох констанцій, які визначають міцність використовуваної лінзи і безпосередньо впливає на ефект спотворення об'єктива.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_k2:

.. rst-class:: classref-property

:ref:`float<class_float>` **k2** = ``0.215`` :ref:`🔗<class_MobileVRInterface_property_k2>`

.. rst-class:: classref-property-setget

- |void| **set_k2**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_k2**\ (\ )

Код об'єктива k2, див. k1.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_offset_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **offset_rect** = ``Rect2(0, 0, 1, 1)`` :ref:`🔗<class_MobileVRInterface_property_offset_rect>`

.. rst-class:: classref-property-setget

- |void| **set_offset_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_offset_rect**\ (\ )

Налаштуйте вихідний пункт відносно площі, що буде надано. Довжина 1 являє собою всю площу рендерингу на цій осі.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_oversample:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversample** = ``1.5`` :ref:`🔗<class_MobileVRInterface_property_oversample>`

.. rst-class:: classref-property-setget

- |void| **set_oversample**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_oversample**\ (\ )

Налаштування перезавантаження. Завдяки спотворенню об'єктива ми повинні надати нашим буферам більш високу роздільну здатність, тоді екран може нативно обробляти. Вартість між 1.5 і 2.0 часто забезпечує хороші результати, але за вартістю виконання.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_MobileVRInterface_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

Мінімальний радіус навколо вогнища, де повна якість гарантована, якщо VRS використовується як відсоток розміру екрану.

\ **Примітка:** Мобільні та переадресні + рендерери тільки. Потрібні :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` бути встановленими на :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`.

.. rst-class:: classref-item-separator

----

.. _class_MobileVRInterface_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_MobileVRInterface_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

Потужність використовується для розрахунку карти щільності VRS. Чим більше це значення, тим більш помітні VRS. Це покращує продуктивність за вартістю якості.

\ **Примітка:** Мобільні та переадресні + рендерери тільки. Потрібні :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` бути встановленими на :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
