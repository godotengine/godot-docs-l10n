:github_url: hide

.. _class_OpenXRMarkerTracker:

OpenXRMarkerTracker
===================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`OpenXRSpatialEntityTracker<class_OpenXRSpatialEntityTracker>` **<** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Трекер просторових сутностей для нашого розширення відстеження маркерів просторових сутностей.

.. rst-class:: classref-introduction-group

Опис
--------

Трекер просторових сутностей для нашого розширення відстеження маркерів просторових сутностей OpenXR. Ці трекери ідентифікують сутності в нашому реальному просторі, виявлені візуальним маркером, таким як QRCode або Aruco, та відображають їхнє розташування у нашому віртуальному просторі.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`bounds_size<class_OpenXRMarkerTracker_property_bounds_size>` | ``Vector2(0, 0)`` |
   +---------------------------------------------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                               | :ref:`marker_id<class_OpenXRMarkerTracker_property_marker_id>`     | ``0``             |
   +---------------------------------------------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` | :ref:`marker_type<class_OpenXRMarkerTracker_property_marker_type>` | ``0``             |
   +---------------------------------------------------------------------+--------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_marker_data<class_OpenXRMarkerTracker_method_get_marker_data>`\ (\ ) |const|                                      |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_marker_data<class_OpenXRMarkerTracker_method_set_marker_data>`\ (\ marker_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OpenXRMarkerTracker_property_bounds_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **bounds_size** = ``Vector2(0, 0)`` :ref:`🔗<class_OpenXRMarkerTracker_property_bounds_size>`

.. rst-class:: classref-property-setget

- |void| **set_bounds_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_bounds_size**\ (\ )

Розмір меж для цього маркера.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRMarkerTracker_property_marker_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **marker_id** = ``0`` :ref:`🔗<class_OpenXRMarkerTracker_property_marker_id>`

.. rst-class:: classref-property-setget

- |void| **set_marker_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_marker_id**\ (\ )

Ідентифікатор маркера для цього маркера. Він повертається лише для маркерів Aruco та April Tag. Викличте :ref:`get_marker_data()<class_OpenXRMarkerTracker_method_get_marker_data>` для маркерів QRCode.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRMarkerTracker_property_marker_type:

.. rst-class:: classref-property

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **marker_type** = ``0`` :ref:`🔗<class_OpenXRMarkerTracker_property_marker_type>`

.. rst-class:: classref-property-setget

- |void| **set_marker_type**\ (\ value\: :ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>`\ )
- :ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **get_marker_type**\ (\ )

Тип маркера.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRMarkerTracker_method_get_marker_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_marker_data**\ (\ ) |const| :ref:`🔗<class_OpenXRMarkerTracker_method_get_marker_data>`

Повертає дані маркера для цього маркера. Може повертати значення типу :ref:`String<class_String>` або :ref:`PackedByteArray<class_PackedByteArray>`. Стосується лише маркерів на основі QR-кодів.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRMarkerTracker_method_set_marker_data:

.. rst-class:: classref-method

|void| **set_marker_data**\ (\ marker_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OpenXRMarkerTracker_method_set_marker_data>`

Встановлює дані маркера для цього маркера.

\ **Примітка:** Це має встановлюватися лише логікою виявлення маркерів.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
