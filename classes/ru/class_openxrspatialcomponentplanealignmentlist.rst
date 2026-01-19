:github_url: hide

.. _class_OpenXRSpatialComponentPlaneAlignmentList:

OpenXRSpatialComponentPlaneAlignmentList
========================================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Объект для хранения данных о результатах выравнивания плоскости запроса.

.. rst-class:: classref-introduction-group

Описание
----------------

Объект для хранения данных о результатах выравнивания плоскости запроса при вызове метода :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` | :ref:`get_plane_alignment<class_OpenXRSpatialComponentPlaneAlignmentList_method_get_plane_alignment>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment:

.. rst-class:: classref-enumeration

enum **PlaneAlignment**: :ref:`🔗<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>`

.. _class_OpenXRSpatialComponentPlaneAlignmentList_constant_PLANE_ALIGNMENT_HORIZONTAL_UPWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **PLANE_ALIGNMENT_HORIZONTAL_UPWARD** = ``0``

Plane is facing upward.

.. _class_OpenXRSpatialComponentPlaneAlignmentList_constant_PLANE_ALIGNMENT_HORIZONTAL_DOWNWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **PLANE_ALIGNMENT_HORIZONTAL_DOWNWARD** = ``1``

Plane is facing downwards.

.. _class_OpenXRSpatialComponentPlaneAlignmentList_constant_PLANE_ALIGNMENT_VERTICAL:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **PLANE_ALIGNMENT_VERTICAL** = ``2``

Plane is vertically aligned.

.. _class_OpenXRSpatialComponentPlaneAlignmentList_constant_PLANE_ALIGNMENT_ARBITRARY:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **PLANE_ALIGNMENT_ARBITRARY** = ``3``

Plane has an arbitrary alignment.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRSpatialComponentPlaneAlignmentList_method_get_plane_alignment:

.. rst-class:: classref-method

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **get_plane_alignment**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPlaneAlignmentList_method_get_plane_alignment>`

Returns the plane alignment for the parent entity at this ``index``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
