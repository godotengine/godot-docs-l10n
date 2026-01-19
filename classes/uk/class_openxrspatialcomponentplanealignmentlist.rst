:github_url: hide

.. _class_OpenXRSpatialComponentPlaneAlignmentList:

OpenXRSpatialComponentPlaneAlignmentList
========================================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Об'єкт для зберігання даних результатів вирівнювання площини запитів.

.. rst-class:: classref-introduction-group

Опис
--------

Об'єкт для зберігання результатів вирівнювання площини запитів під час виклику :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` | :ref:`get_plane_alignment<class_OpenXRSpatialComponentPlaneAlignmentList_method_get_plane_alignment>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment:

.. rst-class:: classref-enumeration

enum **PlaneAlignment**: :ref:`🔗<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>`

.. _class_OpenXRSpatialComponentPlaneAlignmentList_constant_PLANE_ALIGNMENT_HORIZONTAL_UPWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **PLANE_ALIGNMENT_HORIZONTAL_UPWARD** = ``0``

Літак спрямований вгору.

.. _class_OpenXRSpatialComponentPlaneAlignmentList_constant_PLANE_ALIGNMENT_HORIZONTAL_DOWNWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **PLANE_ALIGNMENT_HORIZONTAL_DOWNWARD** = ``1``

Літак спрямований вниз.

.. _class_OpenXRSpatialComponentPlaneAlignmentList_constant_PLANE_ALIGNMENT_VERTICAL:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **PLANE_ALIGNMENT_VERTICAL** = ``2``

Площина вирівняна вертикально.

.. _class_OpenXRSpatialComponentPlaneAlignmentList_constant_PLANE_ALIGNMENT_ARBITRARY:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **PLANE_ALIGNMENT_ARBITRARY** = ``3``

Площина має довільне вирівнювання.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRSpatialComponentPlaneAlignmentList_method_get_plane_alignment:

.. rst-class:: classref-method

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **get_plane_alignment**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPlaneAlignmentList_method_get_plane_alignment>`

Повертає вирівнювання площини для батьківської сутності в цій точці ``index``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
