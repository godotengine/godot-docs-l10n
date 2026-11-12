:github_url: hide

.. _class_Trail3D:

Trail3D
=======

**继承：** :ref:`LineBase3D<class_LineBase3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A node to draw lines behind moving objects.

.. rst-class:: classref-introduction-group

描述
----

The **Trail3D** node draws a flat line in space, with an optional billboard mode.

\ **Note:** This node is designed for visual effects. For solid lines, pipes, and tubes, use a :ref:`CSGPolygon3D<class_CSGPolygon3D>` node in :ref:`CSGPolygon3D.MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>` mode.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                           | :ref:`color<class_Trail3D_property_color>`                           | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Gradient<class_Gradient>`                     | :ref:`color_gradient<class_Trail3D_property_color_gradient>`         |                       |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`emitting<class_Trail3D_property_emitting>`                     | ``true``              |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                           | :ref:`lifetime<class_Trail3D_property_lifetime>`                     | ``0.2``               |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`LimitMode<enum_Trail3D_LimitMode>`            | :ref:`limit_mode<class_Trail3D_property_limit_mode>`                 | ``0``                 |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`ShaderMaterial<class_ShaderMaterial>`         | :ref:`material<class_Trail3D_property_material>`                     |                       |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`MaterialMode<enum_LineBase3D_MaterialMode>`   | :ref:`material_mode<class_Trail3D_property_material_mode>`           | ``0``                 |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                           | :ref:`max_length<class_Trail3D_property_max_length>`                 |                       |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`MeshAlignment<enum_LineBase3D_MeshAlignment>` | :ref:`mesh_alignment<class_Trail3D_property_mesh_alignment>`         | ``1``                 |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                           | :ref:`min_section_length<class_Trail3D_property_min_section_length>` | ``0.2``               |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`pin_uv<class_Trail3D_property_pin_uv>`                         | ``false``             |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`TilingMode<enum_LineBase3D_TilingMode>`       | :ref:`tiling_mode<class_Trail3D_property_tiling_mode>`               | ``1``                 |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                           | :ref:`tiling_multiplier<class_Trail3D_property_tiling_multiplier>`   | ``1.0``               |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                           | :ref:`width<class_Trail3D_property_width>`                           | ``0.3``               |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+
   | :ref:`Curve<class_Curve>`                           | :ref:`width_curve<class_Trail3D_property_width_curve>`               |                       |
   +-----------------------------------------------------+----------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear<class_Trail3D_method_clear>`\ (\ )                                   |
   +---------------------------+----------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_current_length<class_Trail3D_method_get_current_length>`\ (\ ) |const| |
   +---------------------------+----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Trail3D_LimitMode:

.. rst-class:: classref-enumeration

enum **LimitMode**: :ref:`🔗<enum_Trail3D_LimitMode>`

.. _class_Trail3D_constant_LIMIT_MODE_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`LimitMode<enum_Trail3D_LimitMode>` **LIMIT_MODE_LIFETIME** = ``0``

Limit the trail length in time.

.. _class_Trail3D_constant_LIMIT_MODE_MAX_LENGTH:

.. rst-class:: classref-enumeration-constant

:ref:`LimitMode<enum_Trail3D_LimitMode>` **LIMIT_MODE_MAX_LENGTH** = ``1``

Limit the trail length in size.

.. _class_Trail3D_constant_LIMIT_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`LimitMode<enum_Trail3D_LimitMode>` **LIMIT_MODE_MAX** = ``2``

Represents the size of the :ref:`LimitMode<enum_Trail3D_LimitMode>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Trail3D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Trail3D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

The color of the trail.

\ **Note:** Colors with values above ``1.0`` (overbright) are not supported.

\ **Note:** To have a visible effect on a :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *must* be ``true``. For a :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` must be inserted in the shader's ``fragment()`` function. Otherwise, :ref:`color<class_Trail3D_property_color>` will have no visible effect.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_color_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_gradient** :ref:`🔗<class_Trail3D_property_color_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_color_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_gradient**\ (\ )

The color gradient over the trail length.

\ **Note:** Colors with values above ``1.0`` (overbright) are not supported.

\ **Note:** To have a visible effect on a :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *must* be ``true``. For a :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` must be inserted in the shader's ``fragment()`` function. Otherwise, :ref:`color<class_Trail3D_property_color>` will have no visible effect.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_Trail3D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

If ``true``, the trail will generate new points from its head.

\ **Note:** Only one active trail is supported. Setting this property to ``true`` will cause the existing trail mesh to be cleared.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``0.2`` :ref:`🔗<class_Trail3D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

The lifetime of the trail when :ref:`limit_mode<class_Trail3D_property_limit_mode>` is :ref:`LIMIT_MODE_LIFETIME<class_Trail3D_constant_LIMIT_MODE_LIFETIME>`.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_limit_mode:

.. rst-class:: classref-property

:ref:`LimitMode<enum_Trail3D_LimitMode>` **limit_mode** = ``0`` :ref:`🔗<class_Trail3D_property_limit_mode>`

.. rst-class:: classref-property-setget

- |void| **set_limit_mode**\ (\ value\: :ref:`LimitMode<enum_Trail3D_LimitMode>`\ )
- :ref:`LimitMode<enum_Trail3D_LimitMode>` **get_limit_mode**\ (\ )

Whether to limit the trail by lifetime or length.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_material:

.. rst-class:: classref-property

:ref:`ShaderMaterial<class_ShaderMaterial>` **material** :ref:`🔗<class_Trail3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`ShaderMaterial<class_ShaderMaterial>`\ )
- :ref:`ShaderMaterial<class_ShaderMaterial>` **get_material**\ (\ )

The material to assign to the trail mesh when :ref:`material_mode<class_Trail3D_property_material_mode>` is :ref:`LineBase3D.MATERIAL_MODE_CUSTOM<class_LineBase3D_constant_MATERIAL_MODE_CUSTOM>`.

\ **Tip:** To preserve billboarding, use the following shader as a base:

::

    shader_type spatial;
    render_mode blend_mix, depth_draw_never, unshaded, skip_vertex_transform, cull_disabled;

    void vertex() {
        // Billboarding code for trails
        // CUSTOM0 contains the tangent of the trail and the width.
        if (dot(CUSTOM0.xyz, CUSTOM0.xyz) > 0.0) {
            vec3 p = (inverse(MODELVIEW_MATRIX) * vec4(0.0, 0.0, 0.0, 1.0)).xyz;
            p = VERTEX - p;
            vec3 t = CUSTOM0.xyz;
            vec3 binormal = normalize(cross(p, t));
            vec3 normal = normalize(cross(t, binormal));
            vec3 tangent = normalize(cross(binormal, normal));
            VERTEX += CUSTOM0.w * binormal;
            NORMAL = normal;
            TANGENT = tangent;
            BINORMAL = binormal;
        }
    }

    void fragment() {
        ALBEDO = COLOR.rgb;
        ALPHA = COLOR.a;
    }

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_material_mode:

.. rst-class:: classref-property

:ref:`MaterialMode<enum_LineBase3D_MaterialMode>` **material_mode** = ``0`` :ref:`🔗<class_Trail3D_property_material_mode>`

.. rst-class:: classref-property-setget

- |void| **set_material_mode**\ (\ value\: :ref:`MaterialMode<enum_LineBase3D_MaterialMode>`\ )
- :ref:`MaterialMode<enum_LineBase3D_MaterialMode>` **get_material_mode**\ (\ )

The material mode for the trail.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_length** :ref:`🔗<class_Trail3D_property_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_length**\ (\ )

The maximum length of the trail when :ref:`limit_mode<class_Trail3D_property_limit_mode>` is :ref:`LIMIT_MODE_MAX_LENGTH<class_Trail3D_constant_LIMIT_MODE_MAX_LENGTH>`.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_mesh_alignment:

.. rst-class:: classref-property

:ref:`MeshAlignment<enum_LineBase3D_MeshAlignment>` **mesh_alignment** = ``1`` :ref:`🔗<class_Trail3D_property_mesh_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_alignment**\ (\ value\: :ref:`MeshAlignment<enum_LineBase3D_MeshAlignment>`\ )
- :ref:`MeshAlignment<enum_LineBase3D_MeshAlignment>` **get_mesh_alignment**\ (\ )

Alignment of the trail. Possible options are :ref:`LineBase3D.MESH_ALIGNMENT_LOCAL<class_LineBase3D_constant_MESH_ALIGNMENT_LOCAL>` for a 3D line, and :ref:`LineBase3D.MESH_ALIGNMENT_BILLBOARD<class_LineBase3D_constant_MESH_ALIGNMENT_BILLBOARD>` for a billboarded line.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_min_section_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_section_length** = ``0.2`` :ref:`🔗<class_Trail3D_property_min_section_length>`

.. rst-class:: classref-property-setget

- |void| **set_min_section_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_section_length**\ (\ )

Minimum required distance before adding a new section.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_pin_uv:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pin_uv** = ``false`` :ref:`🔗<class_Trail3D_property_pin_uv>`

.. rst-class:: classref-property-setget

- |void| **set_pin_uv**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pin_uv**\ (\ )

If ``true``, pins the UVs to their positions in space.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_tiling_mode:

.. rst-class:: classref-property

:ref:`TilingMode<enum_LineBase3D_TilingMode>` **tiling_mode** = ``1`` :ref:`🔗<class_Trail3D_property_tiling_mode>`

.. rst-class:: classref-property-setget

- |void| **set_tiling_mode**\ (\ value\: :ref:`TilingMode<enum_LineBase3D_TilingMode>`\ )
- :ref:`TilingMode<enum_LineBase3D_TilingMode>` **get_tiling_mode**\ (\ )

How to tile the UVs across the length of the trail.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_tiling_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **tiling_multiplier** = ``1.0`` :ref:`🔗<class_Trail3D_property_tiling_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_tiling_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tiling_multiplier**\ (\ )

UV multiplier across the length of the trail.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``0.3`` :ref:`🔗<class_Trail3D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

Width of the trail.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_property_width_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **width_curve** :ref:`🔗<class_Trail3D_property_width_curve>`

.. rst-class:: classref-property-setget

- |void| **set_width_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_width_curve**\ (\ )

Width across the length of the trail.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Trail3D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_Trail3D_method_clear>`

Clears the trail.

.. rst-class:: classref-item-separator

----

.. _class_Trail3D_method_get_current_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_current_length**\ (\ ) |const| :ref:`🔗<class_Trail3D_method_get_current_length>`

Returns the current length of the trail.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
