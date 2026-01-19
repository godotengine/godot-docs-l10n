:github_url: hide

.. _class_OpenXRInteractionProfileMetadata:

OpenXRInteractionProfileMetadata
================================

**Успадковує:** :ref:`Object<class_Object>`

Регулятори класу Meta в OpenXR.

.. rst-class:: classref-introduction-group

Опис
--------

Даний клас дозволяє OpenXR ядро та розширення для реєстрації метаданих, що стосуються підтримуваних пристроїв взаємодії, таких як контролери, трекери, пристрої гаптичних тощо. В першу чергу використовується редактором і для очищення будь-якої карти дій шляхом видалення розширених записів при необхідності.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_interaction_profile<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ )                                                                                                                                        |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_io_path<class_OpenXRInteractionProfileMetadata_method_register_io_path>`\ (\ interaction_profile\: :ref:`String<class_String>`, display_name\: :ref:`String<class_String>`, toplevel_path\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`, action_type\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_path_rename<class_OpenXRInteractionProfileMetadata_method_register_path_rename>`\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                     |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_profile_rename<class_OpenXRInteractionProfileMetadata_method_register_profile_rename>`\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                               |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_top_level_path<class_OpenXRInteractionProfileMetadata_method_register_top_level_path>`\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ )                                                                                                                                                  |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRInteractionProfileMetadata_method_register_interaction_profile:

.. rst-class:: classref-method

|void| **register_interaction_profile**\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`

Реєструє профіль взаємодії, використовуючи його позначення OpenXR (наприклад, ``/interaction_profiles/khr/simple_controller`` – це профіль простого профілю контролера OpenXR).

\ ``display_name`` – це опис, що відображається користувачеві. ``openxr_path`` – це шлях до профілю взаємодії, що реєструється. ``openxr_extension_names`` необов'язково обмежує цей профіль вказаним увімкненим/доступним розширенням. Якщо розширення недоступне, профіль та всі пов'язані записи, що використовуються в карті дій, фільтруються.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_io_path:

.. rst-class:: classref-method

|void| **register_io_path**\ (\ interaction_profile\: :ref:`String<class_String>`, display_name\: :ref:`String<class_String>`, toplevel_path\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`, action_type\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_io_path>`

Реєструє шлях вводу/виводу для заданого ``interaction_profile``. Профіль мав бути попередньо зареєстрований за допомогою методу :ref:`register_interaction_profile()<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`. ``display_name`` – це опис, що відображається користувачеві. ``toplevel_path`` визначає шлях прив'язки, до якого може бути прив'язаний цей ввід/вивід (наприклад, ``/user/hand/left`` або ``/user/hand/right``). ``openxr_path`` – це дія вводу/виводу, яка реєструється (наприклад, ``/user/hand/left/input/aim/pose``). ``openxr_extension_names`` обмежує цей ввід/вивід увімкненим/доступним розширенням, це не обов'язково має повторювати розширення в профілі, але стосується розширення, що перекривається (наприклад, ``XR_EXT_palm_pose``, що вводить шляхи вводу ``…/input/palm_ext/pose``). ``action_type`` визначає тип вхідних або вихідних даних, що надаються OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_path_rename:

.. rst-class:: classref-method

|void| **register_path_rename**\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_path_rename>`

Дозволяє перейменовувати старі вхідні/вихідні шляхи на нові шляхи для завантаження та обробки старих карт дій.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_profile_rename:

.. rst-class:: classref-method

|void| **register_profile_rename**\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_profile_rename>`

Дозволяє перейменовувати старі шляхи профілів взаємодії на нові шляхи для завантаження та обробки старих карт дій.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_top_level_path:

.. rst-class:: classref-method

|void| **register_top_level_path**\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_top_level_path>`

Реєструє шлях верхнього рівня, до якого можна прив'язати профілі. Наприклад, ``/user/hand/left`` посилається на точку прив'язки для лівої руки гравця. Розширення можуть реєструвати додаткові шляхи верхнього рівня, наприклад, розширення тактильного жилета може реєструвати ``/user/body/vest``.

\ ``display_name`` – це ім'я, яке відображається користувачеві. ``openxr_path`` – це шлях верхнього рівня, що реєструється. ``openxr_extension_names`` є необов'язковим і гарантує, що шлях верхнього рівня використовується лише тоді, коли вказане розширення доступне/увімкнено.

Коли шлях верхнього рівня прив'язується до OpenXR, створюється екземпляр :ref:`XRPositionalTracker<class_XRPositionalTracker>` для керування станом пристрою.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
