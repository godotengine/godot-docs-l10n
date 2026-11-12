:github_url: hide

.. _class_WebXRInterface:

WebXRInterface
==============

**Успадковує:** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Інтерфейс XR за допомогою WebXR.

.. rst-class:: classref-introduction-group

Опис
--------

WebXR — це відкритий стандарт, який дозволяє створювати програми VR і AR, які запускаються у веб-браузері.

Таким чином, цей інтерфейс доступний лише під час запуску веб-експорту.

WebXR підтримує широкий спектр пристроїв, від дуже потужних (наприклад, Valve Index, HTC Vive, Oculus Rift і Quest) до набагато менш потужних (наприклад, Google Cardboard, Oculus Go, GearVR або простих смартфонів).

Оскільки WebXR базується на JavaScript, він широко використовує зворотні виклики, що означає, що **WebXRInterface** змушений використовувати сигнали, тоді як інші інтерфейси XR натомість використовували б функції, які негайно повертають результат. Це робить ініціалізацію **WebXRInterface** трохи складнішою, ніж інші інтерфейси XR.

Ось мінімальний код, необхідний для початку захоплюючого сеансу VR:

::

    розширює Node3D

    var webxr_interface
    var vr_supported = false

    func _ready():
     # Ми припускаємо, що цей вузол має дочірню кнопку.
     # Ця кнопка призначена для того, щоб користувач дав згоду на вхід у режим реальної реальності.
     $Button.pressed.connect(self._on_button_pressed)

    webxr_interface = XRServer.find_interface("WebXR")
     якщо webxr_interface:
     # WebXR використовує багато асинхронних зворотних викликів, тому ми підключаємось до різних
     # сигнали для їх отримання.
    webxr_interface.session_supported.connect(self._webxr_session_supported)
    webxr_interface.session_started.connect(self._webxr_session_started)
    webxr_interface.session_ended.connect(self._webxr_session_ended)
    webxr_interface.session_failed.connect(self._webxr_session_failed)

     # Це негайно повертає - наш метод _webxr_session_supported().
     # (який ми підключили до сигналу "session_supported" вище) буде
     # нам зателефонують пізніше, щоб повідомити нам, чи підтримується це чи ні.
    webxr_interface.is_session_supported("immersive-vr")

    func _webxr_session_supported(session_mode, supported):
    if session_mode == 'immersive-vr':
    vr_supported = supported 

    func _on_button_pressed():
    if vr_supported not:
    OS.alert("Ваш браузер не підтримує VR")
    return 

     # Ми хочемо захоплюючого сеансу VR, на відміну від AR ("immersive-ar") або
     # простий переглядач 3DoF ('переглядач').
    webxr_interface.session_mode = 'immersive-vr'
     # 'bounded-floor' — масштаб кімнати, 'local-floor' — стоячи або сидячи
     # досвід (це дає вам 1,6 м над землею, якщо у вас гарнітура 3DoF),
     # тоді як «локальний» ставить вас на XROrigin.
     # Цей список означає, що він спочатку спробує запитати 'bounded-floor', а потім
     # резервний варіант на 'local-floor' і зрештою на 'local', якщо нічого іншого немає
     # підтримується.
    webxr_interface.requested_reference_space_types = 'обмежений поверх, локальний поверх, локальний'
     # Щоб використовувати 'local-floor' або 'bounded-floor', ми також повинні
     # позначити функції як обов’язкові чи необов’язкові. Включивши «відстеження рук»
     # як додаткова функція, вона буде ввімкнена, якщо підтримується.
    webxr_interface.required_features = 'local-floor'
    webxr_interface.optional_features = 'bounded-floor, hand-tracking'

     # Це поверне false, якщо ми не зможемо навіть запитати сеанс,
     # однак пізніше в цьому процесі може виникнути асинхронна помилка, тому ми
     # знати, чи дійсно це вдалося чи не вдалося, лише коли наш
     Викликаються # методи _webxr_session_started() або _webxr_session_failed().
    if not webxr_interface.initialize():
    OS.alert("Не вдалося ініціалізувати")
    return 

    func _webxr_session_started():
     $Button.visible = false
     # Це повідомляє Godot почати рендеринг на гарнітурі.
    get_viewport().use_xr = true
     # Це буде типовий еталонний простір, який ви остаточно отримали
     # типу, які ви запитували вище. Це корисно, якщо ви хочете, щоб гра
     # працювати трохи інакше в 'bounded-floor' проти 'local-floor'.
    print("Тип посилального простору: ", webxr_interface.reference_space_type)
     # Це буде список функцій, які були успішно ввімкнені
     # (за винятком браузерів, які не підтримують цю властивість).
    print("Увімкнені функції: ", webxr_interface.enabled_features)

    func _webxr_session_ended():
     $Button.visible = ture
     # Якщо користувач виходить із режиму занурення, ми повідомляємо Godot відобразити в Інтернеті
     # сторінка знову.
    get_viewport().use_xr = false

    func _webxr_session_failed(message):
    OS.alert("Не вдалося ініціалізувати: " + повідомлення)

Є кілька способів обробки введення "контролера":

- Використання вузлів :ref:`XRController3D<class_XRController3D>` і їхніх сигналів :ref:`XRController3D.button_pressed<class_XRController3D_signal_button_pressed>` і :ref:`XRController3D.button_released<class_XRController3D_signal_button_released>`. Так зазвичай обробляються контролери в програмах XR у Godot, однак це працюватиме лише з розширеними контролерами віртуальної реальності, такими як контролери Oculus Touch або Index, наприклад.

- Використання :ref:`select<class_WebXRInterface_signal_select>`, :ref:`squeeze<class_WebXRInterface_signal_squeeze>` та пов’язаних сигналів. Цей метод працюватиме як для розширених контролерів віртуальної реальності, так і для нетрадиційних джерел введення, як-от дотик до екрана, голосова команда чи натискання кнопки на самому пристрої.

Ви можете використовувати обидва методи, щоб дозволити вашій грі чи додатку підтримувати ширший або вужчий набір пристроїв і методів введення або дозволити розширенішу взаємодію з більш досконалими пристроями.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Як зробити VR-гра для WebXR з Godot 4 <https://www.snopekgames.com/tutorial/2023/how-make-vr-game-webxr-godot-4>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`disable_webxr_layers<class_WebXRInterface_property_disable_webxr_layers>`                       |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`enabled_features<class_WebXRInterface_property_enabled_features>`                               |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`optional_features<class_WebXRInterface_property_optional_features>`                             |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`reference_space_type<class_WebXRInterface_property_reference_space_type>`                       |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`requested_reference_space_types<class_WebXRInterface_property_requested_reference_space_types>` |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`required_features<class_WebXRInterface_property_required_features>`                             |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`session_mode<class_WebXRInterface_property_session_mode>`                                       |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`visibility_state<class_WebXRInterface_property_visibility_state>`                               |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                               | :ref:`get_available_display_refresh_rates<class_WebXRInterface_method_get_available_display_refresh_rates>`\ (\ ) |const|                                    |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | :ref:`get_display_refresh_rate<class_WebXRInterface_method_get_display_refresh_rate>`\ (\ ) |const|                                                          |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` | :ref:`get_input_source_target_ray_mode<class_WebXRInterface_method_get_input_source_target_ray_mode>`\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRControllerTracker<class_XRControllerTracker>`   | :ref:`get_input_source_tracker<class_WebXRInterface_method_get_input_source_tracker>`\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const|                 |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_input_source_active<class_WebXRInterface_method_is_input_source_active>`\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const|                     |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`is_session_supported<class_WebXRInterface_method_is_session_supported>`\ (\ session_mode\: :ref:`String<class_String>`\ )                              |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`set_display_refresh_rate<class_WebXRInterface_method_set_display_refresh_rate>`\ (\ refresh_rate\: :ref:`float<class_float>`\ )                        |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_WebXRInterface_signal_display_refresh_rate_changed:

.. rst-class:: classref-signal

**display_refresh_rate_changed**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_display_refresh_rate_changed>`

Після зміни частоти оновлення дисплея.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_reference_space_reset:

.. rst-class:: classref-signal

**reference_space_reset**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_reference_space_reset>`

Увімкнути, щоб вказати, що посилання було скидання або переналаштувати.

Якщо користувач змінив розміри ігрового простору (які ви можете отримати доступ через :ref:`XRInterface.get_play_area()<class_XRInterface_method_get_play_area>`) або / натиснути кнопку до останнього положення.

Див. `WebXR's XRReferenceSpace скидання  <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpace/reset_event>`__ для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_select:

.. rst-class:: classref-signal

**select**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_select>`

Після того, як один з джерел вводу закінчив свою «примірну дію».

Використовуйте :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` і :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` для отримання додаткової інформації про джерело введення.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectend:

.. rst-class:: classref-signal

**selectend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectend>`

Увімкнено, коли один з джерел вводу закінчив свою «примірну дію».

Використовуйте :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` і :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` для отримання додаткової інформації про джерело введення.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectstart:

.. rst-class:: classref-signal

**selectstart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectstart>`

Увімкнено, коли один з джерел введення почав свою «примірну дію».

Використовуйте :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` і :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` для отримання додаткової інформації про джерело введення.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_ended:

.. rst-class:: classref-signal

**session_ended**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_session_ended>`

Увімкнено, коли користувач закінчує сеанс WebXR (що можна зробити за допомогою UI з браузера або пристрою).

У цьому пункті ви повинні зробити ``get_viewport().use_xr = false``, щоб інструктувати Godot, щоб відновити рендеринг на екрані.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_failed:

.. rst-class:: classref-signal

**session_failed**\ (\ message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebXRInterface_signal_session_failed>`

Випробувано :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>`, якщо сеанс не запускається.

\ ``message`` може додатково містити повідомлення про помилку від WebXR або порожній рядок, якщо немає повідомлення.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_started:

.. rst-class:: classref-signal

**session_started**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_session_started>`

Випробувано :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>`, якщо розпочато сеанс.

У цій точці, це безпечно зробити ``get_viewport().use_xr = true`` для інструктального Godot для запуску рендерингу на пристрій XR.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_supported:

.. rst-class:: classref-signal

**session_supported**\ (\ session_mode\: :ref:`String<class_String>`, supported\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_WebXRInterface_signal_session_supported>`

Видається методом :ref:`is_session_supported()<class_WebXRInterface_method_is_session_supported>`, щоб вказати, чи підтримується заданий параметр ``session_mode``.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeeze:

.. rst-class:: classref-signal

**squeeze**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeeze>`

Після того, як один з джерел вводу закінчив свою «примірну стискну дію».

Використовуйте :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` і :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` для отримання додаткової інформації про джерело введення.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezeend:

.. rst-class:: classref-signal

**squeezeend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezeend>`

Увімкнено, коли одна з джерел вводу завершила свою «прозору дію».

Використовуйте :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` і :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` для отримання додаткової інформації про джерело введення.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezestart:

.. rst-class:: classref-signal

**squeezestart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezestart>`

Увімкнено, коли одна з джерел вводу розпочала свою «примірну дію».

Використовуйте :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` і :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` для отримання додаткової інформації про джерело введення.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_visibility_state_changed:

.. rst-class:: classref-signal

**visibility_state_changed**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_visibility_state_changed>`

Видається, коли змінюється :ref:`visibility_state<class_WebXRInterface_property_visibility_state>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_WebXRInterface_TargetRayMode:

.. rst-class:: classref-enumeration

enum **TargetRayMode**: :ref:`🔗<enum_WebXRInterface_TargetRayMode>`

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_UNKNOWN** = ``0``

Ми не знаємо режим цільового променя.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_GAZE:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_GAZE** = ``1``

Цільові промені виявляються на очах глядача та точках у напрямку, які вони шукають.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_TRACKED_POINTER:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_TRACKED_POINTER** = ``2``

Цільовий промінь з ручного тостера, швидше за все, VR сенсорний контролер.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_SCREEN** = ``3``

Цільовий промінь від сенсорного екрана, миша або іншого пристрою вводу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_WebXRInterface_property_disable_webxr_layers:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_webxr_layers** :ref:`🔗<class_WebXRInterface_property_disable_webxr_layers>`

.. rst-class:: classref-property-setget

- |void| **set_disable_webxr_layers**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_disable_webxr_layers**\ (\ )

If ``true``, the WebXR Layers API won't be used even when the browser supports it.

Godot falls back to this mode automatically when the browser doesn't support WebXR Layers and the polyfill isn't in use.

This doesn't have any effect on the interface when already initialized.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_enabled_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **enabled_features** :ref:`🔗<class_WebXRInterface_property_enabled_features>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_enabled_features**\ (\ )

A comma-separated list of features that were successfully enabled by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

This may include features requested by setting :ref:`required_features<class_WebXRInterface_property_required_features>` and :ref:`optional_features<class_WebXRInterface_property_optional_features>`, and will only be available after :ref:`session_started<class_WebXRInterface_signal_session_started>` has been emitted.

\ **Note:** This may not be supported by all web browsers, in which case it will be an empty string.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_optional_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **optional_features** :ref:`🔗<class_WebXRInterface_property_optional_features>`

.. rst-class:: classref-property-setget

- |void| **set_optional_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_optional_features**\ (\ )

A comma-separated list of optional features used by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

If a user's browser or device doesn't support one of the given features, initialization will continue, but you won't be able to use the requested feature.

This doesn't have any effect on the interface when already initialized.

See the MDN documentation on `WebXR's session features <https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features>`__ for a list of possible values.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_reference_space_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **reference_space_type** :ref:`🔗<class_WebXRInterface_property_reference_space_type>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_reference_space_type**\ (\ )

Тип простору посилань (зі списку запитуваних типів, встановленого у властивості :ref:`requested_reference_space_types<class_WebXRInterface_property_requested_reference_space_types>`), який зрештою використовувався методом ``XRInterface.initialize`` під час налаштування сеансу WebXR.

Можливі значення взяті з `WebXR XRReferenceSpaceType <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType>`__. Якщо ви хочете використовувати певний тип простору посилань, він має бути вказаний у :ref:`required_features<class_WebXRInterface_property_required_features>` або :ref:`optional_features<class_WebXRInterface_property_optional_features>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_requested_reference_space_types:

.. rst-class:: classref-property

:ref:`String<class_String>` **requested_reference_space_types** :ref:`🔗<class_WebXRInterface_property_requested_reference_space_types>`

.. rst-class:: classref-property-setget

- |void| **set_requested_reference_space_types**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_requested_reference_space_types**\ (\ )

A comma-separated list of reference space types used by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

The reference space types are requested in order, and the first one supported by the user's device or browser will be used. The :ref:`reference_space_type<class_WebXRInterface_property_reference_space_type>` property contains the reference space type that was ultimately selected.

This doesn't have any effect on the interface when already initialized.

Possible values come from `WebXR's XRReferenceSpaceType <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType>`__. If you want to use a particular reference space type, it must be listed in either :ref:`required_features<class_WebXRInterface_property_required_features>` or :ref:`optional_features<class_WebXRInterface_property_optional_features>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_required_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **required_features** :ref:`🔗<class_WebXRInterface_property_required_features>`

.. rst-class:: classref-property-setget

- |void| **set_required_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_required_features**\ (\ )

A comma-separated list of required features used by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

If a user's browser or device doesn't support one of the given features, initialization will fail and :ref:`session_failed<class_WebXRInterface_signal_session_failed>` will be emitted.

This doesn't have any effect on the interface when already initialized.

See the MDN documentation on `WebXR's session features <https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features>`__ for a list of possible values.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_session_mode:

.. rst-class:: classref-property

:ref:`String<class_String>` **session_mode** :ref:`🔗<class_WebXRInterface_property_session_mode>`

.. rst-class:: classref-property-setget

- |void| **set_session_mode**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_session_mode**\ (\ )

Режим сеансу використовується :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` при налаштуванні сеансу WebXR.

Це не має ніякого ефекту на інтерфейсі, коли вже ініціалізовано.

Можливі значення ` WebXR's XRSessionMode <https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode>`__, в тому числі: ``"immersive-vr"``, ``"immersive-ar"``, і ``"inline"``.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_visibility_state:

.. rst-class:: classref-property

:ref:`String<class_String>` **visibility_state** :ref:`🔗<class_WebXRInterface_property_visibility_state>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_visibility_state**\ (\ )

Призначається, якщо зображення сеансу WebXR видно користувачеві.

Можливі значення ` WebXR's XRVisibilityState <https://developer.mozilla.org/en-US/docs/Web/API/XRVisibilityState>`__, в тому числі ``"hidden"``, `` "невидимий"``, і ``"невидимий-blurred"``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_WebXRInterface_method_get_available_display_refresh_rates:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_available_display_refresh_rates**\ (\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_available_display_refresh_rates>`

Повертаємо ціни на оновлення, що підтримується струмом HMD. Тільки повернулися, якщо ця функція підтримується браузером і після того, як інтерфейс був ініціалізований.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_display_refresh_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_display_refresh_rate**\ (\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_display_refresh_rate>`

Повертає частоту оновлення дисплея для поточного HMD. Не підтримується на всіх HMDs і браузерах. Не можна повідомляти про точну вартість до використання :ref:`set_display_refresh_rate()<class_WebXRInterface_method_set_display_refresh_rate>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_input_source_target_ray_mode:

.. rst-class:: classref-method

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **get_input_source_target_ray_mode**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_input_source_target_ray_mode>`

Повертаємо цільовий режим променя для вказаного ``input_source_id``.

Це може допомогти інтерпретувати вхід, що надходить з цього джерела введення. `XRInputSource.targetRayMode <https://developer.mozilla.org/en-US/docs/Web/API/XRInputSource/targetRayMode>`__ для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_input_source_tracker:

.. rst-class:: classref-method

:ref:`XRControllerTracker<class_XRControllerTracker>` **get_input_source_tracker**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_input_source_tracker>`

Отримує :ref:`XRControllerTracker<class_XRControllerTracker>` для заданого ``input_source_id``.

У контексті WebXR джерелом вхідного сигналу може бути вдосконалений VR-контролер, такий як контролери Oculus Touch або Index, або навіть дотик до екрана, голосова команда чи натискання кнопки на самому пристрої. Коли використовується нетрадиційне джерело вхідного сигналу, інтерпретуйте положення та орієнтацію :ref:`XRPositionalTracker<class_XRPositionalTracker>` як промінь, що вказує на об'єкт, з яким користувач бажає взаємодіяти.

Використовуйте цей метод, щоб отримати інформацію про джерело вхідного сигналу, яке спрацювало один із цих сигналів:

- :ref:`selectstart<class_WebXRInterface_signal_selectstart>`\ 

- :ref:`select<class_WebXRInterface_signal_select>`\ 

- :ref:`selectend<class_WebXRInterface_signal_selectend>`\ 

- :ref:`squeezestart<class_WebXRInterface_signal_squeezestart>`\ 

- :ref:`squeeze<class_WebXRInterface_signal_squeeze>`\ 

- :ref:`squeezestart<class_WebXRInterface_signal_squeezestart>`

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_is_input_source_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_source_active**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_is_input_source_active>`

Повертає ``true``, якщо є активне джерело введення з заданим ``вхід_source_id``.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_is_session_supported:

.. rst-class:: classref-method

|void| **is_session_supported**\ (\ session_mode\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebXRInterface_method_is_session_supported>`

Перевіряє, якщо надана ``session_mode`` підтримується браузером користувача.

Можливі значення ` WebXR's XRSessionMode <https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode>`__, в тому числі: ``"immersive-vr``, ``"immersive-ar"``, і ``"inline"``.

Цей метод повертає нічого, замість того, як він випромінює сигнал :ref:`session_supported<class_WebXRInterface_signal_session_supported>` з результатом.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_set_display_refresh_rate:

.. rst-class:: classref-method

|void| **set_display_refresh_rate**\ (\ refresh_rate\: :ref:`float<class_float>`\ ) :ref:`🔗<class_WebXRInterface_method_set_display_refresh_rate>`

Налаштовує частоту оновлення дисплея для поточного HMD. Не підтримується на всіх HMDs і браузерах. Не втрачайте ефект прямо до того, як :ref:`display_refresh_rate_changed<class_WebXRInterface_signal_display_refresh_rate_changed>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
