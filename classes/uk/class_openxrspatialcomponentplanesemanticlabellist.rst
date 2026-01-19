:github_url: hide

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList:

OpenXRSpatialComponentPlaneSemanticLabelList
============================================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Об'єкт для зберігання даних результатів семантичної мітки площини запитів.

.. rst-class:: classref-introduction-group

Опис
--------

Об'єкт для зберігання даних результатів семантичної мітки площини запитів під час виклику :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` | :ref:`get_plane_semantic_label<class_OpenXRSpatialComponentPlaneSemanticLabelList_method_get_plane_semantic_label>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel:

.. rst-class:: classref-enumeration

enum **PlaneSemanticLabel**: :ref:`🔗<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>`

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_constant_PLANE_SEMANTIC_LABEL_UNCATEGORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **PLANE_SEMANTIC_LABEL_UNCATEGORIZED** = ``1``

Некатегоризований літак.

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_constant_PLANE_SEMANTIC_LABEL_FLOOR:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **PLANE_SEMANTIC_LABEL_FLOOR** = ``2``

Площина представляє підлогу.

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_constant_PLANE_SEMANTIC_LABEL_WALL:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **PLANE_SEMANTIC_LABEL_WALL** = ``3``

Площина зображує стіну.

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_constant_PLANE_SEMANTIC_LABEL_CEILING:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **PLANE_SEMANTIC_LABEL_CEILING** = ``4``

Площина символізує стелю.

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_constant_PLANE_SEMANTIC_LABEL_TABLE:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **PLANE_SEMANTIC_LABEL_TABLE** = ``5``

Площина представляє поверхню столу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRSpatialComponentPlaneSemanticLabelList_method_get_plane_semantic_label:

.. rst-class:: classref-method

:ref:`PlaneSemanticLabel<enum_OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel>` **get_plane_semantic_label**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPlaneSemanticLabelList_method_get_plane_semantic_label>`

Повертає семантичну мітку площини для батьківської сутності в цій точці ``index``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
