:github_url: hide

.. _class_OpenXRSpatialContextPersistenceConfig:

OpenXRSpatialContextPersistenceConfig
=====================================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Заголовок конфигурации для пространственного сохранения данных.

.. rst-class:: classref-introduction-group

Описание
----------------

Заголовок конфигурации для пространственного сохранения данных. Передайте его в метод ``OpenXRSpatialEntityExtension.create_spatial_context`` в качестве следующего параметра, чтобы создать пространственный контекст с возможностями пространственного сохранения данных.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_persistence_context<class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ )       |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_persistence_context<class_OpenXRSpatialContextPersistenceConfig_method_remove_persistence_context>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context:

.. rst-class:: classref-method

|void| **add_persistence_context**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context>`

Добавляет контекст постоянного хранения к этой конфигурации. Для создания действительной конфигурации необходимо добавить как минимум один контекст постоянного хранения. Создать контекст постоянного хранения можно, вызвав метод ``OpenXRSpatialAnchorCapability.create_persistence_context``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContextPersistenceConfig_method_remove_persistence_context:

.. rst-class:: classref-method

|void| **remove_persistence_context**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialContextPersistenceConfig_method_remove_persistence_context>`

Удаляет контекст постоянного хранения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
