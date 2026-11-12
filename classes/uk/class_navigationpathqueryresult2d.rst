:github_url: hide

.. _class_NavigationPathQueryResult2D:

NavigationPathQueryResult2D
===========================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляємо результат запиту 2D.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас зберігає результат запиту на 2D навігаційного шляху з :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання NavigationPathQueryObjects <../tutorials/navigation/navigation_using_navigationpathqueryobjects>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`path<class_NavigationPathQueryResult2D_property_path>`                     | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`path_length<class_NavigationPathQueryResult2D_property_path_length>`       | ``0.0``                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`path_owner_ids<class_NavigationPathQueryResult2D_property_path_owner_ids>` | ``PackedInt64Array()``   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]  | :ref:`path_rids<class_NavigationPathQueryResult2D_property_path_rids>`           | ``[]``                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`path_types<class_NavigationPathQueryResult2D_property_path_types>`         | ``PackedInt32Array()``   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------+
   | |void| | :ref:`reset<class_NavigationPathQueryResult2D_method_reset>`\ (\ ) |
   +--------+--------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_NavigationPathQueryResult2D_PathSegmentType:

.. rst-class:: classref-enumeration

enum **PathSegmentType**: :ref:`🔗<enum_NavigationPathQueryResult2D_PathSegmentType>`

.. _class_NavigationPathQueryResult2D_constant_PATH_SEGMENT_TYPE_REGION:

.. rst-class:: classref-enumeration-constant

:ref:`PathSegmentType<enum_NavigationPathQueryResult2D_PathSegmentType>` **PATH_SEGMENT_TYPE_REGION** = ``0``

Цей сегмент шляху проходить через область.

.. _class_NavigationPathQueryResult2D_constant_PATH_SEGMENT_TYPE_LINK:

.. rst-class:: classref-enumeration-constant

:ref:`PathSegmentType<enum_NavigationPathQueryResult2D_PathSegmentType>` **PATH_SEGMENT_TYPE_LINK** = ``1``

Цей сегмент шляху проходить за посиланням.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_NavigationPathQueryResult2D_property_path:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **path** = ``PackedVector2Array()`` :ref:`🔗<class_NavigationPathQueryResult2D_property_path>`

.. rst-class:: classref-property-setget

- |void| **set_path**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_path**\ (\ )

Отриманий масив шляху з навігаційного запиту. Усі позиції масиву шляху в глобальних координатах. Без індивідуальних параметрів запиту, це той самий шлях, який повернув :ref:`NavigationServer2D.map_get_path()<class_NavigationServer2D_method_map_get_path>`.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult2D_property_path_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_length** = ``0.0`` :ref:`🔗<class_NavigationPathQueryResult2D_property_path_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_length**\ (\ )

Повертає довжину шляху.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult2D_property_path_owner_ids:

.. rst-class:: classref-property

:ref:`PackedInt64Array<class_PackedInt64Array>` **path_owner_ids** = ``PackedInt64Array()`` :ref:`🔗<class_NavigationPathQueryResult2D_property_path_owner_ids>`

.. rst-class:: classref-property-setget

- |void| **set_path_owner_ids**\ (\ value\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )
- :ref:`PackedInt64Array<class_PackedInt64Array>` **get_path_owner_ids**\ (\ )

``ObjectID`` :ref:`Object<class_Object>`, які керують регіонами і зв'язують кожну точку шляху.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt64Array<class_PackedInt64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult2D_property_path_rids:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **path_rids** = ``[]`` :ref:`🔗<class_NavigationPathQueryResult2D_property_path_rids>`

.. rst-class:: classref-property-setget

- |void| **set_path_rids**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_path_rids**\ (\ )

:ref:`RID<class_RID>` регіонів і посилань, які кожен пункт шляху проходить через.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult2D_property_path_types:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **path_types** = ``PackedInt32Array()`` :ref:`🔗<class_NavigationPathQueryResult2D_property_path_types>`

.. rst-class:: classref-property-setget

- |void| **set_path_types**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_path_types**\ (\ )

Тип навігаційної примітивності (регіон або посилання), що кожен пункт шляху проходить через.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_NavigationPathQueryResult2D_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_NavigationPathQueryResult2D_method_reset>`

Відновити об'єкт результату до початкового стану. Це корисно для повторного використання об'єкта в декількох запитах.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
