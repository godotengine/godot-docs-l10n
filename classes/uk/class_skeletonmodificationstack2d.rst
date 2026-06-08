:github_url: hide

.. _class_SkeletonModificationStack2D:

SkeletonModificationStack2D
===========================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Ресурс, який містить стек :ref:`SkeletonModification2D<class_SkeletonModification2D>`.

.. rst-class:: classref-introduction-group

Опис
--------

Цей ресурс використовується Skeleton і містить стек :ref:`SkeletonModification2D<class_SkeletonModification2D>`.

Це контролює порядок змін і спосіб їх застосування. Порядок модифікацій особливо важливий для налаштувань IK для всього тіла, оскільки вам потрібно виконувати модифікації в правильному порядку, щоб отримати бажані результати. Наприклад, ви хочете виконати модифікацію хребта *перед* руками на скелеті гуманоїда.

Цей ресурс також контролює, наскільки сильно всі модифікації застосовуються до :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`enabled<class_SkeletonModificationStack2D_property_enabled>`                       | ``false`` |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`modification_count<class_SkeletonModificationStack2D_property_modification_count>` | ``0``     |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`strength<class_SkeletonModificationStack2D_property_strength>`                     | ``1.0``   |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`add_modification<class_SkeletonModificationStack2D_method_add_modification>`\ (\ modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ )                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`delete_modification<class_SkeletonModificationStack2D_method_delete_modification>`\ (\ mod_idx\: :ref:`int<class_int>`\ )                                                                       |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`enable_all_modifications<class_SkeletonModificationStack2D_method_enable_all_modifications>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                           |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`execute<class_SkeletonModificationStack2D_method_execute>`\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ )                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`get_is_setup<class_SkeletonModificationStack2D_method_get_is_setup>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModification2D<class_SkeletonModification2D>` | :ref:`get_modification<class_SkeletonModificationStack2D_method_get_modification>`\ (\ mod_idx\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton2D<class_Skeleton2D>`                         | :ref:`get_skeleton<class_SkeletonModificationStack2D_method_get_skeleton>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_modification<class_SkeletonModificationStack2D_method_set_modification>`\ (\ mod_idx\: :ref:`int<class_int>`, modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`setup<class_SkeletonModificationStack2D_method_setup>`\ (\ )                                                                                                                                    |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SkeletonModificationStack2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``false`` :ref:`🔗<class_SkeletonModificationStack2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

Якщо ``true``, буде викликана модифікація в стеку. Це обробляється автоматично через вузол :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_property_modification_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **modification_count** = ``0`` :ref:`🔗<class_SkeletonModificationStack2D_property_modification_count>`

.. rst-class:: classref-property-setget

- |void| **set_modification_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_modification_count**\ (\ )

Кількість модифікацій у стеці.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_SkeletonModificationStack2D_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

Міцність інтерполяції модифікацій у стеку. Значення ``0`` зробить це там, де модифікації не застосовуються, сила ``0,5`` буде застосована наполовину, а сила ``1`` дозволяють повністю застосувати модифікації та замінюють пози :ref:`Skeleton2D<class_Skeleton2D>` :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SkeletonModificationStack2D_method_add_modification:

.. rst-class:: classref-method

|void| **add_modification**\ (\ modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_add_modification>`

Додає переданий :ref:`SkeletonModification2D<class_SkeletonModification2D>` до стеку.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_delete_modification:

.. rst-class:: classref-method

|void| **delete_modification**\ (\ mod_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_delete_modification>`

Видаляє :ref:`SkeletonModification2D<class_SkeletonModification2D>` у позиції індексу ``mod_idx``, якщо він існує.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_enable_all_modifications:

.. rst-class:: classref-method

|void| **enable_all_modifications**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_enable_all_modifications>`

Вмикає всі :ref:`SkeletonModification2D<class_SkeletonModification2D>` у стеку.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_execute:

.. rst-class:: classref-method

|void| **execute**\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_execute>`

Виконує всі :ref:`SkeletonModification2D<class_SkeletonModification2D>` у стеку, які використовують той самий режим виконання, що й переданий ``execution_mode``, починаючи з індексу ``0`` до :ref:`modification_count<class_SkeletonModificationStack2D_property_modification_count>`.

\ **Примітка:** Порядок змін може мати значення залежно від модифікацій. Наприклад, модифікації на хребті повинні діяти перед модифікаціями на руках, щоб отримати правильні результати.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_is_setup:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_setup**\ (\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_is_setup>`

Повертає логічне значення, яке вказує, чи налаштовано стек модифікацій і чи можна його виконувати.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_modification:

.. rst-class:: classref-method

:ref:`SkeletonModification2D<class_SkeletonModification2D>` **get_modification**\ (\ mod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_modification>`

Повертаємо :ref:`SkeletonModification2D<class_SkeletonModification2D>` в індексі, що пройшов, ``mod_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton2D<class_Skeleton2D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_skeleton>`

Повертає вузол :ref:`Skeleton2D<class_Skeleton2D>`, до якого прив’язаний SkeletonModificationStack2D.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_set_modification:

.. rst-class:: classref-method

|void| **set_modification**\ (\ mod_idx\: :ref:`int<class_int>`, modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_set_modification>`

Встановлює модифікацію в ``mod_idx`` на передану модифікацію, ``modification``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_setup>`

Налаштовує стек модифікацій, щоб він міг виконуватися. Цю функцію має викликати :ref:`Skeleton2D<class_Skeleton2D>` і не слід викликати вручну, якщо ви не знаєте, що робите.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
