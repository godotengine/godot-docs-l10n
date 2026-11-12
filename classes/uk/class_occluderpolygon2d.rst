:github_url: hide

.. _class_OccluderPolygon2D:

OccluderPolygon2D
=================

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Захищаючи 2D полігон для LightOccluder2D.

.. rst-class:: classref-introduction-group

Опис
--------

Редактор об'єкта, який допомагає вивести 2D полігон, який використовується як ресурс для :ref:`LightOccluder2D<class_LightOccluder2D>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Переліки
----------------

.. _enum_OccluderPolygon2D_CullMode:

.. rst-class:: classref-enumeration

enum **CullMode**: :ref:`🔗<enum_OccluderPolygon2D_CullMode>`

.. _class_OccluderPolygon2D_constant_CULL_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_DISABLED** = ``0``

Вимкнення вимкнено. Дивитися :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`.

.. _class_OccluderPolygon2D_constant_CULL_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_CLOCKWISE** = ``1``

Кульчування здійснюється в цілодобовому напрямку. Дивитися :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`.

.. _class_OccluderPolygon2D_constant_CULL_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_COUNTER_CLOCKWISE** = ``2``

Кульлінг виконується в проти годинникової стрілки. Дивитися :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OccluderPolygon2D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``true`` :ref:`🔗<class_OccluderPolygon2D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

Якщо ``true``, закриває полігон. Закритий OccluderPolygon2D oc включає світло, що надходить з будь-якого напрямку. Відкритий OccluderPolygon2D oc включає в себе світло тільки в його напрямку.

.. rst-class:: classref-item-separator

----

.. _class_OccluderPolygon2D_property_cull_mode:

.. rst-class:: classref-property

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **cull_mode** = ``0`` :ref:`🔗<class_OccluderPolygon2D_property_cull_mode>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mode**\ (\ value\: :ref:`CullMode<enum_OccluderPolygon2D_CullMode>`\ )
- :ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **get_cull_mode**\ (\ )

Режим культування для використання.

.. rst-class:: classref-item-separator

----

.. _class_OccluderPolygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_OccluderPolygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

:ref:`Vector2<class_Vector2>` масив з індексом для позицій вершин полігона.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
