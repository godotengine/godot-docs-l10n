:github_url: hide

.. _class_OccluderPolygon2D:

OccluderPolygon2D
=================

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Определяет 2D-полигон для LightOccluder2D.

.. rst-class:: classref-introduction-group

Описание
----------------

Редактор, который поможет вам нарисовать 2D-полигон, используемый в качестве ресурса для :ref:`LightOccluder2D<class_LightOccluder2D>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`closed<class_OccluderPolygon2D_property_closed>`       | ``true``                 |
   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+
   | :ref:`CullMode<enum_OccluderPolygon2D_CullMode>`    | :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>` | ``0``                    |
   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_OccluderPolygon2D_property_polygon>`     | ``PackedVector2Array()`` |
   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_OccluderPolygon2D_CullMode:

.. rst-class:: classref-enumeration

enum **CullMode**: :ref:`🔗<enum_OccluderPolygon2D_CullMode>`

.. _class_OccluderPolygon2D_constant_CULL_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_DISABLED** = ``0``

Отбраковка отключена. См. :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`.

.. _class_OccluderPolygon2D_constant_CULL_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_CLOCKWISE** = ``1``

Отбраковка производится по часовой стрелке. См. :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`.

.. _class_OccluderPolygon2D_constant_CULL_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_COUNTER_CLOCKWISE** = ``2``

Отбраковка производится против часовой стрелки. См. :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OccluderPolygon2D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``true`` :ref:`🔗<class_OccluderPolygon2D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

Если ``true``, закрывает многоугольник. Закрытый OccluderPolygon2D закрывает свет, идущий с любого направления. Открытый OccluderPolygon2D закрывает свет только в направлении своего контура.

.. rst-class:: classref-item-separator

----

.. _class_OccluderPolygon2D_property_cull_mode:

.. rst-class:: classref-property

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **cull_mode** = ``0`` :ref:`🔗<class_OccluderPolygon2D_property_cull_mode>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mode**\ (\ value\: :ref:`CullMode<enum_OccluderPolygon2D_CullMode>`\ )
- :ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **get_cull_mode**\ (\ )

Режим отбраковки, который следует использовать.

.. rst-class:: classref-item-separator

----

.. _class_OccluderPolygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_OccluderPolygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Массив :ref:`Vector2<class_Vector2>` с индексом положений вершин многоугольника.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
