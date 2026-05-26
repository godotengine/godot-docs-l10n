:github_url: hide

.. _class_SpriteBase3D:

SpriteBase3D
============

**Hereda:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AnimatedSprite3D<class_AnimatedSprite3D>`, :ref:`Sprite3D<class_Sprite3D>`

Nodo de sprite 2D en un entorno 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un nodo que muestra información de textura 2D en un entorno 3D. Véase también :ref:`Sprite3D<class_Sprite3D>` donde se definen muchas otras propiedades.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_antialiasing_edge<class_SpriteBase3D_property_alpha_antialiasing_edge>` | ``0.0``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` | :ref:`alpha_antialiasing_mode<class_SpriteBase3D_property_alpha_antialiasing_mode>` | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>`             | :ref:`alpha_cut<class_SpriteBase3D_property_alpha_cut>`                             | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_hash_scale<class_SpriteBase3D_property_alpha_hash_scale>`               | ``1.0``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_scissor_threshold<class_SpriteBase3D_property_alpha_scissor_threshold>` | ``0.5``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                  | :ref:`axis<class_SpriteBase3D_property_axis>`                                       | ``2``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`         | :ref:`billboard<class_SpriteBase3D_property_billboard>`                             | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`centered<class_SpriteBase3D_property_centered>`                               | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`double_sided<class_SpriteBase3D_property_double_sided>`                       | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`fixed_size<class_SpriteBase3D_property_fixed_size>`                           | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`flip_h<class_SpriteBase3D_property_flip_h>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`flip_v<class_SpriteBase3D_property_flip_v>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                       | :ref:`modulate<class_SpriteBase3D_property_modulate>`                               | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`no_depth_test<class_SpriteBase3D_property_no_depth_test>`                     | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                                   | :ref:`offset<class_SpriteBase3D_property_offset>`                                   | ``Vector2(0, 0)``     |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`pixel_size<class_SpriteBase3D_property_pixel_size>`                           | ``0.01``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                           | :ref:`render_priority<class_SpriteBase3D_property_render_priority>`                 | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`shaded<class_SpriteBase3D_property_shaded>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`         | :ref:`texture_filter<class_SpriteBase3D_property_texture_filter>`                   | ``3``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`transparent<class_SpriteBase3D_property_transparent>`                         | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TriangleMesh<class_TriangleMesh>` | :ref:`generate_triangle_mesh<class_SpriteBase3D_method_generate_triangle_mesh>`\ (\ ) |const|                                                                |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                 | :ref:`get_draw_flag<class_SpriteBase3D_method_get_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|                            |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`               | :ref:`get_item_rect<class_SpriteBase3D_method_get_item_rect>`\ (\ ) |const|                                                                                  |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_draw_flag<class_SpriteBase3D_method_set_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_SpriteBase3D_DrawFlags:

.. rst-class:: classref-enumeration

enum **DrawFlags**: :ref:`🔗<enum_SpriteBase3D_DrawFlags>`

.. _class_SpriteBase3D_constant_FLAG_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_TRANSPARENT** = ``0``

Si se fija, la transparencia de la textura y la opacidad se utilizan para hacer invisibles esas partes del sprite.

.. _class_SpriteBase3D_constant_FLAG_SHADED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_SHADED** = ``1``

Si se ajusta, las luces del entorno afectan al sprite.

.. _class_SpriteBase3D_constant_FLAG_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_DOUBLE_SIDED** = ``2``

Si está activado, la textura también se puede ver desde atrás. Si no, la textura es invisible cuando se mira desde atrás.

.. _class_SpriteBase3D_constant_FLAG_DISABLE_DEPTH_TEST:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_DISABLE_DEPTH_TEST** = ``3``

Desactiva la prueba de profundidad, así que este objeto se dibuja encima de todos los demás. Sin embargo, los objetos dibujados después de él en el orden de dibujo pueden cubrirlo.

.. _class_SpriteBase3D_constant_FLAG_FIXED_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_FIXED_SIZE** = ``4``

La etiqueta se escala según la profundidad para que siempre aparezca del mismo tamaño en la pantalla.

.. _class_SpriteBase3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_MAX** = ``5``

Representa el tamaño del enum :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`.

.. rst-class:: classref-item-separator

----

.. _enum_SpriteBase3D_AlphaCutMode:

.. rst-class:: classref-enumeration

enum **AlphaCutMode**: :ref:`🔗<enum_SpriteBase3D_AlphaCutMode>`

.. _class_SpriteBase3D_constant_ALPHA_CUT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_DISABLED** = ``0``

Este modo realiza una mezcla alfa estándar. Puede mostrar áreas translúcidas, pero los problemas de ordenación de la transparencia pueden ser visibles cuando varios materiales transparentes se superponen.

.. _class_SpriteBase3D_constant_ALPHA_CUT_DISCARD:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_DISCARD** = ``1``

Este modo solo permite píxeles totalmente transparentes o totalmente opacos. Los bordes duros serán visibles a menos que se active alguna forma de antialiasing en el espacio de la pantalla (véase :ref:`ProjectSettings.rendering/anti_aliasing/quality/screen_space_aa<class_ProjectSettings_property_rendering/anti_aliasing/quality/screen_space_aa>`). En el lado bueno, este modo no sufre problemas de ordenación de la transparencia cuando varios materiales transparentes se superponen. Este modo también se conoce como *prueba alfa* o *transparencia de 1 bit*.

.. _class_SpriteBase3D_constant_ALPHA_CUT_OPAQUE_PREPASS:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_OPAQUE_PREPASS** = ``2``

Este modo dibuja píxeles completamente opacos en el pre-pase de profundidad. Esto es más lento que :ref:`ALPHA_CUT_DISABLED<class_SpriteBase3D_constant_ALPHA_CUT_DISABLED>` o :ref:`ALPHA_CUT_DISCARD<class_SpriteBase3D_constant_ALPHA_CUT_DISCARD>`, pero permite mostrar áreas translúcidas y bordes suaves mientras se usa la ordenación adecuada.

.. _class_SpriteBase3D_constant_ALPHA_CUT_HASH:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_HASH** = ``3``

Este modo corta todos los valores por debajo de un umbral espacialmente determinista; el resto permanecerá opaco.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SpriteBase3D_property_alpha_antialiasing_edge:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_antialiasing_edge** = ``0.0`` :ref:`🔗<class_SpriteBase3D_property_alpha_antialiasing_edge>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing_edge**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_antialiasing_edge**\ (\ )

Threshold at which antialiasing will be applied on the alpha channel.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_antialiasing_mode:

.. rst-class:: classref-property

:ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **alpha_antialiasing_mode** = ``0`` :ref:`🔗<class_SpriteBase3D_property_alpha_antialiasing_mode>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing**\ (\ value\: :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>`\ )
- :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **get_alpha_antialiasing**\ (\ )

El tipo de antialiasing alfa que se aplicará.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_cut:

.. rst-class:: classref-property

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **alpha_cut** = ``0`` :ref:`🔗<class_SpriteBase3D_property_alpha_cut>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_cut_mode**\ (\ value\: :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>`\ )
- :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **get_alpha_cut_mode**\ (\ )

El modo de corte alfa a utilizar para el sprite.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_hash_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_hash_scale** = ``1.0`` :ref:`🔗<class_SpriteBase3D_property_alpha_hash_scale>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_hash_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_hash_scale**\ (\ )

The hashing scale for Alpha Hash. Recommended values between ``0`` and ``2``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_scissor_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_scissor_threshold** = ``0.5`` :ref:`🔗<class_SpriteBase3D_property_alpha_scissor_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_scissor_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_scissor_threshold**\ (\ )

Umbral en el que el alpha scissor descartará los valores.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_axis:

.. rst-class:: classref-property

:ref:`Axis<enum_Vector3_Axis>` **axis** = ``2`` :ref:`🔗<class_SpriteBase3D_property_axis>`

.. rst-class:: classref-property-setget

- |void| **set_axis**\ (\ value\: :ref:`Axis<enum_Vector3_Axis>`\ )
- :ref:`Axis<enum_Vector3_Axis>` **get_axis**\ (\ )

La dirección en la que se orienta el frente de la textura.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_billboard:

.. rst-class:: classref-property

:ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **billboard** = ``0`` :ref:`🔗<class_SpriteBase3D_property_billboard>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_mode**\ (\ value\: :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`\ )
- :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **get_billboard_mode**\ (\ )

El modo billboard a usar para el sprite.

\ **Nota:** Cuando el billboard está habilitado y el material también proyecta sombras, los billboards se orientarán hacia **la** cámara en la escena al renderizar sombras. En escenas con múltiples cámaras, la sombra deseada no puede ser determinada y esto resultará en un comportamiento indefinido. Véase `GitHub Pull Request #72638 <https://github.com/godotengine/godot/pull/72638>`__ para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_SpriteBase3D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

Si es ``true``, la textura se centrará.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_double_sided:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_sided** = ``true`` :ref:`🔗<class_SpriteBase3D_property_double_sided>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Si es ``true``, la textura también se puede ver desde atrás, si ``false``, es invisible cuando se mira desde atrás.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_fixed_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fixed_size** = ``false`` :ref:`🔗<class_SpriteBase3D_property_fixed_size>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Si es ``true``, la textura se renderiza al mismo tamaño independientemente de la distancia. El tamaño de la textura en pantalla es el mismo que si la cámara estuviera a ``1.0`` unidades de distancia del origen de la textura, independientemente de la distancia real de la cámara. El campo de visión de la :ref:`Camera3D<class_Camera3D>` (o :ref:`Camera3D.size<class_Camera3D_property_size>` en modo ortogonal/frustum) todavía afecta el tamaño en que se dibuja el sprite.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_SpriteBase3D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Si es ``true``, la textura se voltea horizontalmente.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_SpriteBase3D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Si es ``true``, la textura se voltea verticalmente.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_SpriteBase3D_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Un valor de color utilizado para *multiplicar* los colores de la textura. Puede usarse para dar color de ambiente o para simular el color de la luz ambiental.

\ **Nota:** A diferencia de :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>` para 2D, los colores con valores superiores a ``1.0`` (sobresaturados) no son compatibles.

\ **Nota:** Si se define un :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>` en el **SpriteBase3D**, el material de sobrescritura debe configurarse para tener en cuenta los colores de los vértices para el albedo. De lo contrario, el color definido en :ref:`modulate<class_SpriteBase3D_property_modulate>` será ignorado. Para un :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` debe ser ``true``. Para un :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` debe insertarse en la función ``fragment()`` del shader.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_no_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **no_depth_test** = ``false`` :ref:`🔗<class_SpriteBase3D_property_no_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Si es ``true``, la prueba de profundidad está desactivada y el objeto se dibujará en orden de renderizado.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_SpriteBase3D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

El desplazamiento de dibujo de la textura.

\ **Nota:** Cuando aumentas :ref:`offset<class_SpriteBase3D_property_offset>`.y en Sprite3D, el sprite se mueve hacia arriba en el espacio mundial (es decir, +Y es hacia arriba).

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.01`` :ref:`🔗<class_SpriteBase3D_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

El tamaño del ancho de un píxel en el sprite para escalarlo en 3D.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** = ``0`` :ref:`🔗<class_SpriteBase3D_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

Sets the render priority for the sprite. Higher priority objects will be sorted in front of lower priority objects.

\ **Note:** This only applies if :ref:`alpha_cut<class_SpriteBase3D_property_alpha_cut>` is set to :ref:`ALPHA_CUT_DISABLED<class_SpriteBase3D_constant_ALPHA_CUT_DISABLED>` (default value).

\ **Note:** This only applies to sorting of transparent objects. This will not impact how transparent objects are sorted relative to opaque objects. This is because opaque objects are not sorted, while transparent objects are sorted from back to front (subject to priority).

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_shaded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shaded** = ``false`` :ref:`🔗<class_SpriteBase3D_property_shaded>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Si es ``true``, la :ref:`Light3D<class_Light3D>` en el :ref:`Environment<class_Environment>` tiene efectos en el sprite.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **texture_filter** = ``3`` :ref:`🔗<class_SpriteBase3D_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`\ )
- :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **get_texture_filter**\ (\ )

Marcas de filtro para la textura.

\ **Nota:** El filtrado lineal puede causar artefactos alrededor de los bordes, que son especialmente notables en texturas opacas. Para evitar esto, utiliza texturas con colores transparentes o idénticos alrededor de los bordes.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_transparent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transparent** = ``true`` :ref:`🔗<class_SpriteBase3D_property_transparent>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Si es ``true``, la transparencia de la textura y la opacidad se usan para hacer invisibles estas partes del sprite.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SpriteBase3D_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_SpriteBase3D_method_generate_triangle_mesh>`

Devuelve una :ref:`TriangleMesh<class_TriangleMesh>` con los vértices del sprite siguiendo su configuración actual (como su :ref:`axis<class_SpriteBase3D_property_axis>` y :ref:`pixel_size<class_SpriteBase3D_property_pixel_size>`).

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_get_draw_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const| :ref:`🔗<class_SpriteBase3D_method_get_draw_flag>`

Devuelve el valor de la flag especificada.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_get_item_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_item_rect**\ (\ ) |const| :ref:`🔗<class_SpriteBase3D_method_get_item_rect>`

Devuelve el rectángulo que representa a este sprite.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_set_draw_flag:

.. rst-class:: classref-method

|void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SpriteBase3D_method_set_draw_flag>`

Si es ``true``, la bandera especificada será activada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
