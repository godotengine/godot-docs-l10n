:github_url: hide

.. _class_OpenXRSpatialComponentData:

OpenXRSpatialComponentData
==========================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`OpenXRSpatialComponentAnchorList<class_OpenXRSpatialComponentAnchorList>`, :ref:`OpenXRSpatialComponentBounded2DList<class_OpenXRSpatialComponentBounded2DList>`, :ref:`OpenXRSpatialComponentBounded3DList<class_OpenXRSpatialComponentBounded3DList>`, :ref:`OpenXRSpatialComponentMarkerList<class_OpenXRSpatialComponentMarkerList>`, :ref:`OpenXRSpatialComponentMesh2DList<class_OpenXRSpatialComponentMesh2DList>`, :ref:`OpenXRSpatialComponentMesh3DList<class_OpenXRSpatialComponentMesh3DList>`, :ref:`OpenXRSpatialComponentParentList<class_OpenXRSpatialComponentParentList>`, :ref:`OpenXRSpatialComponentPersistenceList<class_OpenXRSpatialComponentPersistenceList>`, :ref:`OpenXRSpatialComponentPlaneAlignmentList<class_OpenXRSpatialComponentPlaneAlignmentList>`, :ref:`OpenXRSpatialComponentPlaneSemanticLabelList<class_OpenXRSpatialComponentPlaneSemanticLabelList>`, :ref:`OpenXRSpatialComponentPolygon2DList<class_OpenXRSpatialComponentPolygon2DList>`, :ref:`OpenXRSpatialQueryResultData<class_OpenXRSpatialQueryResultData>`

Объект для хранения данных о компонентах пространственных объектов OpenXR.

.. rst-class:: classref-introduction-group

Описание
----------------

Объект для хранения данных о компонентах пространственных объектов OpenXR.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_component_type<class_OpenXRSpatialComponentData_private_method__get_component_type>`\ (\ ) |virtual| |const|                       |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_structure_data<class_OpenXRSpatialComponentData_private_method__get_structure_data>`\ (\ next\: :ref:`int<class_int>`\ ) |virtual| |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`_set_capacity<class_OpenXRSpatialComponentData_private_method__set_capacity>`\ (\ capacity\: :ref:`int<class_int>`\ ) |virtual|         |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_component_type<class_OpenXRSpatialComponentData_method_get_component_type>`\ (\ ) |const|                                           |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_capacity<class_OpenXRSpatialComponentData_method_set_capacity>`\ (\ capacity\: :ref:`int<class_int>`\ )                             |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRSpatialComponentData_private_method__get_component_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_component_type**\ (\ ) |virtual| |const| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__get_component_type>`

Возвращает тип компонента, для которого мы храним данные.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_private_method__get_structure_data:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_structure_data**\ (\ next\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__get_structure_data>`

Возвращает указатель на структурные данные, которые будут отправлены вместе с запросом на создание снимка. Этот указатель должен оставаться действительным до тех пор, пока существует данный объект.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_private_method__set_capacity:

.. rst-class:: classref-method

|void| **_set_capacity**\ (\ capacity\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__set_capacity>`

Задает ожидаемую емкость, определяемую системой запросов пространственных объектов. Буферы должны быть инициализированы правильным объемом памяти.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_method_get_component_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_component_type**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentData_method_get_component_type>`

Получает ``XrSpatialComponentTypeEXT`` из **OpenXRSpatialComponentData**.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_method_set_capacity:

.. rst-class:: classref-method

|void| **set_capacity**\ (\ capacity\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialComponentData_method_set_capacity>`

Задает ожидаемую емкость, определяемую системой запросов пространственных объектов. Буферы должны быть инициализированы правильным объемом памяти.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
