:github_url: hide

.. _class_XRController3D:

XRController3D
==============

**Успадковує:** :ref:`XRNode3D<class_XRNode3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Тривимірний вузол, що представляє контролер із просторовим відстеженням.

.. rst-class:: classref-introduction-group

Опис
--------

Це допоміжний 3D-вузол, пов'язаний з відстеженням контролерів. Він також пропонує кілька зручних переходів до стану кнопок тощо на контролерах.

Контролери пов'язані за їхнім ідентифікатором. Ви можете створювати вузли контролерів до того, як вони стануть доступними. Якщо у вашій грі завжди використовуються два контролери (по одному для кожної руки), ви можете попередньо визначити контролери з ідентифікаторами 1 та 2; вони стануть активними, як тільки контролери будуть ідентифіковані. Якщо ви очікуєте використання додаткових контролерів, вам слід реагувати на сигнали та додавати вузли XRController3D до вашої сцени.

Положення вузла контролера автоматично оновлюється :ref:`XRServer<class_XRServer>`. Це робить цей вузол ідеальним для додавання дочірніх вузлів для візуалізації контролера.

Поточний :ref:`XRInterface<class_XRInterface>` визначає назви вхідних даних. У випадку OpenXR це назви дій у поточному наборі дій з карти дій OpenXR.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                | :ref:`get_float<class_XRController3D_method_get_float>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                            | :ref:`get_input<class_XRController3D_method_get_input>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` | :ref:`get_tracker_hand<class_XRController3D_method_get_tracker_hand>`\ (\ ) |const|                                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_vector2<class_XRController3D_method_get_vector2>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|             |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_button_pressed<class_XRController3D_method_is_button_pressed>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_XRController3D_signal_button_pressed:

.. rst-class:: classref-signal

**button_pressed**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_button_pressed>`

При натисканні кнопки на цей контролер.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_button_released:

.. rst-class:: classref-signal

**button_released**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_button_released>`

Увімкніть, коли кнопка на цьому контролері виділяється.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_input_float_changed:

.. rst-class:: classref-signal

**input_float_changed**\ (\ action_name\: :ref:`String<class_String>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRController3D_signal_input_float_changed>`

Випробувано при запуску або аналогічному вході на цей коефіцієнт зміни значення.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_input_vector2_changed:

.. rst-class:: classref-signal

**input_vector2_changed**\ (\ action_name\: :ref:`String<class_String>`, value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_XRController3D_signal_input_vector2_changed>`

Увімкніть, коли пальчик або пальчик на цьому контролері переміщається.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_profile_changed:

.. rst-class:: classref-signal

**profile_changed**\ (\ role\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_profile_changed>`

При зміні профілю взаємодії на цьому контролері.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_XRController3D_method_get_float:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_float**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_float>`

Повертає числове значення для вхідного значення з заданим ``name``. Використовується для тригерів та датчиків захоплення.

\ **Примітка:** Поточний :ref:`XRInterface<class_XRInterface>` визначає ``назва параметра`` для кожного вхідного значення. У випадку OpenXR це назви дій у поточному наборі дій.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_input:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_input>`

Повертає :ref:`Variant<class_Variant>` для вхідних даних із заданим ``name of param``. Це працює для будь-якого типу вхідних даних, варіант буде типізовано відповідно до конфігурації дій.

\ **Примітка:** Поточний :ref:`XRInterface<class_XRInterface>` визначає ``name of param`` для кожного вхідного даних. У випадку OpenXR це назви дій у поточному наборі дій.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_tracker_hand:

.. rst-class:: classref-method

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **get_tracker_hand**\ (\ ) |const| :ref:`🔗<class_XRController3D_method_get_tracker_hand>`

Повертає руку, яка тримає цей контролер, якщо відома.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_vector2:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vector2**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_vector2>`

Повертає :ref:`Vector2<class_Vector2>` для вхідного значення з заданим ``name``. Використовується для джойстиків та клавіатури, що знаходяться на багатьох контролерах.

\ **Примітка:** Поточний :ref:`XRInterface<class_XRInterface>` визначає ``name`` для кожного вхідного значення. У випадку OpenXR це назви дій у поточному наборі дій.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_is_button_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_button_pressed**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_is_button_pressed>`

Повертає ``true``, якщо натиснуто кнопку з заданим ``name``.

\ **Примітка:** Поточний :ref:`XRInterface<class_XRInterface>` визначає ``name`` для кожного входу. У випадку OpenXR це назви дій у поточному наборі дій.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
