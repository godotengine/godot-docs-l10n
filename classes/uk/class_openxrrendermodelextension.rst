:github_url: hide

.. _class_OpenXRRenderModelExtension:

OpenXRRenderModelExtension
==========================

**Успадковує:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Цей клас реалізує розширення моделі рендерингу OpenXR.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас реалізує розширення OpenXR Render Model Extension. Якщо його ввімкнено, воно підтримуватиме список активних моделей рендерингу та надаватиме інтерфейс до даних моделі рендерингу.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`is_active<class_OpenXRRenderModelExtension_method_is_active>`\ (\ ) |const|                                                                                                                                        |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                     | :ref:`render_model_create<class_OpenXRRenderModelExtension_method_render_model_create>`\ (\ render_model_id\: :ref:`int<class_int>`\ )                                                                                   |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`render_model_destroy<class_OpenXRRenderModelExtension_method_render_model_destroy>`\ (\ render_model\: :ref:`RID<class_RID>`\ )                                                                                    |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]        | :ref:`render_model_get_all<class_OpenXRRenderModelExtension_method_render_model_get_all>`\ (\ )                                                                                                                          |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`render_model_get_animatable_node_count<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                        |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                               | :ref:`render_model_get_animatable_node_name<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name>`\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const|           |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                     | :ref:`render_model_get_animatable_node_transform<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform>`\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` | :ref:`render_model_get_confidence<class_OpenXRRenderModelExtension_method_render_model_get_confidence>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                                              |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                     | :ref:`render_model_get_root_transform<class_OpenXRRenderModelExtension_method_render_model_get_root_transform>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`         | :ref:`render_model_get_subaction_paths<class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths>`\ (\ render_model\: :ref:`RID<class_RID>`\ )                                                            |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                               | :ref:`render_model_get_top_level_path<class_OpenXRRenderModelExtension_method_render_model_get_top_level_path>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`render_model_is_animatable_node_visible<class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible>`\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const|       |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`                               | :ref:`render_model_new_scene_instance<class_OpenXRRenderModelExtension_method_render_model_new_scene_instance>`\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const|                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_OpenXRRenderModelExtension_signal_render_model_added:

.. rst-class:: classref-signal

**render_model_added**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_added>`

Видається, коли додається нова модель рендерингу.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_signal_render_model_removed:

.. rst-class:: classref-signal

**render_model_removed**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_removed>`

Видається, коли модель рендерингу видаляється.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_signal_render_model_top_level_path_changed:

.. rst-class:: classref-signal

**render_model_top_level_path_changed**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_signal_render_model_top_level_path_changed>`

Виникає, коли змінюється шлях верхнього рівня, пов'язаний з моделлю рендерингу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRRenderModelExtension_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_is_active>`

Повертає ``true``, якщо розширення моделі рендерингу OpenXR підтримується та ввімкнено.

\ **Примітка:** Це повертає дійсне значення лише після ініціалізації OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_create:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **render_model_create**\ (\ render_model_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_create>`

Створює об'єкт моделі рендерингу в OpenXR, використовуючи ідентифікатор моделі рендерингу.

\ **Примітка:** Ця функція доступна для залежних розширень OpenXR, які надають ідентифікатори моделей рендерингу для використання з розширенням моделі рендерингу.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_destroy:

.. rst-class:: classref-method

|void| **render_model_destroy**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_destroy>`

Знищує об'єкт моделі рендерингу в OpenXR, який було раніше створено за допомогою :ref:`render_model_create()<class_OpenXRRenderModelExtension_method_render_model_create>`.

\ **Примітка:** Ця функція доступна для залежних розширень OpenXR, які надають ідентифікатори моделі рендерингу для використання з розширенням моделі рендерингу.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **render_model_get_all**\ (\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_all>`

Повертає масив усіх активних моделей рендерингу, зареєстрованих з цим розширенням.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **render_model_get_animatable_node_count**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_count>`

Повертає кількість анімованих вузлів, які має ця модель рендерингу.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **render_model_get_animatable_node_name**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_name>`

Повертає назву заданого анімованого вузла.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **render_model_get_animatable_node_transform**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_animatable_node_transform>`

Повертає поточне локальне перетворення для анімованого вузла. Оновлюється кожного кадру.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_confidence:

.. rst-class:: classref-method

:ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>` **render_model_get_confidence**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_confidence>`

Повертає впевненість відстеження даних відстеження для моделі рендерингу.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_root_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **render_model_get_root_transform**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_root_transform>`

Повертає кореневе перетворення моделі рендерингу. Це відстежувана позиція відносно нашого вузла :ref:`XROrigin3D<class_XROrigin3D>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **render_model_get_subaction_paths**\ (\ render_model\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_subaction_paths>`

Повертає список активних шляхів піддії для цього ``render_model``.

\ **Примітка:** Якщо до ваших дій прив’язані пристрої, відмінні від доступних у запропонованих прив’язках взаємодії, ця інформація показує шляхи, пов’язані з прив’язками взаємодії, що імітуються цим пристроєм.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_get_top_level_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **render_model_get_top_level_path**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_get_top_level_path>`

Повертає шлях верхнього рівня, пов'язаний з цим ``render_model``. Якщо вказано, це визначає, чи пов'язана модель рендерингу з руками гравця чи іншою частиною тіла.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **render_model_is_animatable_node_visible**\ (\ render_model\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_is_animatable_node_visible>`

Повертає ``true``, якщо цей анімований вузол має бути видимим.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelExtension_method_render_model_new_scene_instance:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **render_model_new_scene_instance**\ (\ render_model\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRRenderModelExtension_method_render_model_new_scene_instance>`

Повертає екземпляр підсцени, що містить усі вузли :ref:`MeshInstance3D<class_MeshInstance3D>`, що дозволяють візуалізувати модель рендерингу.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
