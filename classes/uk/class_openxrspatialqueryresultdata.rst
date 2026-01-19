:github_url: hide

.. _class_OpenXRSpatialQueryResultData:

OpenXRSpatialQueryResultData
============================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Об'єкт для зберігання основних даних результатів запиту.

.. rst-class:: classref-introduction-group

Опис
--------

Об'єкт для зберігання основних даних результату запиту під час виклику :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`. Це завжди має бути перший запитуваний компонент.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                           | :ref:`get_capacity<class_OpenXRSpatialQueryResultData_method_get_capacity>`\ (\ ) |const|                                        |
   +---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                           | :ref:`get_entity_id<class_OpenXRSpatialQueryResultData_method_get_entity_id>`\ (\ index\: :ref:`int<class_int>`\ ) |const|       |
   +---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` | :ref:`get_entity_state<class_OpenXRSpatialQueryResultData_method_get_entity_state>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRSpatialQueryResultData_method_get_capacity:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_capacity**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialQueryResultData_method_get_capacity>`

Повертає кількість отриманих об'єктів.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialQueryResultData_method_get_entity_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_entity_id**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialQueryResultData_method_get_entity_id>`

Повертає ідентифікатор сутності (``XrSpatialEntityIdEXT``) для сутності за адресою ``index``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialQueryResultData_method_get_entity_state:

.. rst-class:: classref-method

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **get_entity_state**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialQueryResultData_method_get_entity_state>`

Повертає стан сутності для сутності в цьому стані ``index``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
