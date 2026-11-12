:github_url: hide

.. _class_LineBase3D:

LineBase3D
==========

**Наследует:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`Trail3D<class_Trail3D>`

A base class to draw a 3D line in space.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_LineBase3D_MeshAlignment:

.. rst-class:: classref-enumeration

enum **MeshAlignment**: :ref:`🔗<enum_LineBase3D_MeshAlignment>`

.. _class_LineBase3D_constant_MESH_ALIGNMENT_LOCAL:

.. rst-class:: classref-enumeration-constant

:ref:`MeshAlignment<enum_LineBase3D_MeshAlignment>` **MESH_ALIGNMENT_LOCAL** = ``0``

Align the line normal to the local Y axis of the line node.

.. _class_LineBase3D_constant_MESH_ALIGNMENT_BILLBOARD:

.. rst-class:: classref-enumeration-constant

:ref:`MeshAlignment<enum_LineBase3D_MeshAlignment>` **MESH_ALIGNMENT_BILLBOARD** = ``1``

Align the normal of each section of the LineBase3D to face the camera.

See also :ref:`SpriteBase3D.billboard<class_SpriteBase3D_property_billboard>` and :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`

.. _class_LineBase3D_constant_MESH_ALIGNMENT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`MeshAlignment<enum_LineBase3D_MeshAlignment>` **MESH_ALIGNMENT_MAX** = ``2``

Represents the size of the :ref:`MeshAlignment<enum_LineBase3D_MeshAlignment>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_LineBase3D_TilingMode:

.. rst-class:: classref-enumeration

enum **TilingMode**: :ref:`🔗<enum_LineBase3D_TilingMode>`

.. _class_LineBase3D_constant_TILING_MODE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`TilingMode<enum_LineBase3D_TilingMode>` **TILING_MODE_STRETCH** = ``0``

Assign UVs from ``0`` to ``1`` across the length of the line.

.. _class_LineBase3D_constant_TILING_MODE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`TilingMode<enum_LineBase3D_TilingMode>` **TILING_MODE_TILE** = ``1``

Assign UVs from ``0`` to current length, across the length of the line.

.. _class_LineBase3D_constant_TILING_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TilingMode<enum_LineBase3D_TilingMode>` **TILING_MAX** = ``2``

Represents the size of the :ref:`TilingMode<enum_LineBase3D_TilingMode>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_LineBase3D_MaterialMode:

.. rst-class:: classref-enumeration

enum **MaterialMode**: :ref:`🔗<enum_LineBase3D_MaterialMode>`

.. _class_LineBase3D_constant_MATERIAL_MODE_MIX:

.. rst-class:: classref-enumeration-constant

:ref:`MaterialMode<enum_LineBase3D_MaterialMode>` **MATERIAL_MODE_MIX** = ``0``

Assign a built-in mix material to the line.

.. _class_LineBase3D_constant_MATERIAL_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`MaterialMode<enum_LineBase3D_MaterialMode>` **MATERIAL_MODE_ADD** = ``1``

Assign a built-in additive material to the line.

.. _class_LineBase3D_constant_MATERIAL_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`MaterialMode<enum_LineBase3D_MaterialMode>` **MATERIAL_MODE_CUSTOM** = ``2``

Assign a custom material to the line.

.. _class_LineBase3D_constant_MATERIAL_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`MaterialMode<enum_LineBase3D_MaterialMode>` **MATERIAL_MODE_MAX** = ``3``

Represents the size of the :ref:`MaterialMode<enum_LineBase3D_MaterialMode>` enum.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
