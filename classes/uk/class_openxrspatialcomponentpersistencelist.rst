:github_url: hide

.. _class_OpenXRSpatialComponentPersistenceList:

OpenXRSpatialComponentPersistenceList
=====================================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Об'єкт для зберігання даних результатів запиту.

.. rst-class:: classref-introduction-group

Опис
--------

Об'єкт для зберігання даних результатів запиту під час виклику :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_persistent_state<class_OpenXRSpatialComponentPersistenceList_method_get_persistent_state>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_persistent_uuid<class_OpenXRSpatialComponentPersistenceList_method_get_persistent_uuid>`\ (\ index\: :ref:`int<class_int>`\ ) |const|   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRSpatialComponentPersistenceList_method_get_persistent_state:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_persistent_state**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPersistenceList_method_get_persistent_state>`

Повертає постійний стан (``XrSpatialPersistenceStateEXT``) для сутності за цим ``index``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentPersistenceList_method_get_persistent_uuid:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_persistent_uuid**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPersistenceList_method_get_persistent_uuid>`

Повертає постійний UUID для сутності за цією адресою ``index``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
