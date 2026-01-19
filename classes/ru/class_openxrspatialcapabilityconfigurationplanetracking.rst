:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking:

OpenXRSpatialCapabilityConfigurationPlaneTracking
=================================================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Заголовок конфигурации для отслеживания плоскости.

.. rst-class:: classref-introduction-group

Описание
----------------

Заголовок конфигурации для отслеживания плоскости. Передайте его методу :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`, чтобы создать пространственный контекст с возможностями отслеживания плоскости.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`get_enabled_components<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_get_enabled_components>`\ (\ ) |const| |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`supports_labels<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_labels>`\ (\ )                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`supports_mesh_2d<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_mesh_2d>`\ (\ )                     |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`supports_polygons<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_polygons>`\ (\ )                   |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_get_enabled_components>`

Возвращает компоненты, включенные данной конфигурацией.

\ **Примечание:** Действительно только после использования данной конфигурации для создания пространственного контекста.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_labels:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_labels**\ (\ ) :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_labels>`

Возвращает ``true``, если мы поддерживаем компонент семантической метки плоскости (действительно только после начала сеанса OpenXR). Вы можете запрашивать эти данные, используя объект данных :ref:`OpenXRSpatialComponentPlaneSemanticLabelList<class_OpenXRSpatialComponentPlaneSemanticLabelList>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_mesh_2d:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_mesh_2d**\ (\ ) :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_mesh_2d>`

Возвращает ``true``, если мы поддерживаем компонент 2D-сетки (действительно только после начала сеанса OpenXR). Вы можете запрашивать эти данные, используя объект данных :ref:`OpenXRSpatialComponentMesh2DList<class_OpenXRSpatialComponentMesh2DList>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_polygons:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_polygons**\ (\ ) :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationPlaneTracking_method_supports_polygons>`

Возвращает ``true``, если мы поддерживаем компонент 2D-полигона (действительно только после начала сессии OpenXR). Вы можете запрашивать эти данные, используя объект данных :ref:`OpenXRSpatialComponentPolygon2DList<class_OpenXRSpatialComponentPolygon2DList>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
