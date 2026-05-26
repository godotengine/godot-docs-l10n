:github_url: hide

.. meta::
	:keywords: text

.. _class_Label3D:

Label3D
=======

**Hérite de :** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud utilisé pour afficher du texte brut dans un espace 3D.

.. rst-class:: classref-introduction-group

Description
-----------

Un nœud utilisé pour afficher du texte brut dans un espace 3D. En ajustant différentes propriétés de ce nœud, vous pouvez configurer des choses comme l'apparence du texte et s'il fait toujours face à la caméra.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`3D text <../tutorials/3d/3d_text>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`alpha_antialiasing_edge<class_Label3D_property_alpha_antialiasing_edge>`                             | ``0.0``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>`           | :ref:`alpha_antialiasing_mode<class_Label3D_property_alpha_antialiasing_mode>`                             | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>`                            | :ref:`alpha_cut<class_Label3D_property_alpha_cut>`                                                         | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`alpha_hash_scale<class_Label3D_property_alpha_hash_scale>`                                           | ``1.0``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`alpha_scissor_threshold<class_Label3D_property_alpha_scissor_threshold>`                             | ``0.5``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                         | :ref:`autowrap_mode<class_Label3D_property_autowrap_mode>`                                                 | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]         | :ref:`autowrap_trim_flags<class_Label3D_property_autowrap_trim_flags>`                                     | ``192``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`                   | :ref:`billboard<class_Label3D_property_billboard>`                                                         | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` | cast_shadow                                                                                                | ``0`` (overrides :ref:`GeometryInstance3D<class_GeometryInstance3D_property_cast_shadow>`) |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`double_sided<class_Label3D_property_double_sided>`                                                   | ``true``                                                                                   |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`fixed_size<class_Label3D_property_fixed_size>`                                                       | ``false``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Font<class_Font>`                                                   | :ref:`font<class_Label3D_property_font>`                                                                   |                                                                                            |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`font_size<class_Label3D_property_font_size>`                                                         | ``32``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`GIMode<enum_GeometryInstance3D_GIMode>`                             | gi_mode                                                                                                    | ``0`` (overrides :ref:`GeometryInstance3D<class_GeometryInstance3D_property_gi_mode>`)     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`horizontal_alignment<class_Label3D_property_horizontal_alignment>`                                   | ``1``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`justification_flags<class_Label3D_property_justification_flags>`                                     | ``163``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                               | :ref:`language<class_Label3D_property_language>`                                                           | ``""``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`line_spacing<class_Label3D_property_line_spacing>`                                                   | ``0.0``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                                                 | :ref:`modulate<class_Label3D_property_modulate>`                                                           | ``Color(1, 1, 1, 1)``                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`no_depth_test<class_Label3D_property_no_depth_test>`                                                 | ``false``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                             | :ref:`offset<class_Label3D_property_offset>`                                                               | ``Vector2(0, 0)``                                                                          |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                                                 | :ref:`outline_modulate<class_Label3D_property_outline_modulate>`                                           | ``Color(0, 0, 0, 1)``                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`outline_render_priority<class_Label3D_property_outline_render_priority>`                             | ``-1``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`outline_size<class_Label3D_property_outline_size>`                                                   | ``12``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`pixel_size<class_Label3D_property_pixel_size>`                                                       | ``0.005``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`render_priority<class_Label3D_property_render_priority>`                                             | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`shaded<class_Label3D_property_shaded>`                                                               | ``false``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`         | :ref:`structured_text_bidi_override<class_Label3D_property_structured_text_bidi_override>`                 | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                 | :ref:`structured_text_bidi_override_options<class_Label3D_property_structured_text_bidi_override_options>` | ``[]``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                               | :ref:`text<class_Label3D_property_text>`                                                                   | ``""``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`text_direction<class_Label3D_property_text_direction>`                                               | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`                   | :ref:`texture_filter<class_Label3D_property_texture_filter>`                                               | ``3``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`uppercase<class_Label3D_property_uppercase>`                                                         | ``false``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`             | :ref:`vertical_alignment<class_Label3D_property_vertical_alignment>`                                       | ``1``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_Label3D_property_width>`                                                                 | ``500.0``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TriangleMesh<class_TriangleMesh>` | :ref:`generate_triangle_mesh<class_Label3D_method_generate_triangle_mesh>`\ (\ ) |const|                                                           |
   +-----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                 | :ref:`get_draw_flag<class_Label3D_method_get_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|                            |
   +-----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_draw_flag<class_Label3D_method_set_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Label3D_DrawFlags:

.. rst-class:: classref-enumeration

enum **DrawFlags**: :ref:`🔗<enum_Label3D_DrawFlags>`

.. _class_Label3D_constant_FLAG_SHADED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_SHADED** = ``0``

Si défini, les lumières dans l’environnement affectent l'étiquette.

.. _class_Label3D_constant_FLAG_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_DOUBLE_SIDED** = ``1``

Si défini, le texte sera aussi visible de derrière. Sinon, le texte sera invisible en regardant par derrière.

.. _class_Label3D_constant_FLAG_DISABLE_DEPTH_TEST:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_DISABLE_DEPTH_TEST** = ``2``

Désactive le test de profondeur, de sorte que cet objet sera dessiné devant tous les autres. Cependant, les objets dessinés après lui dans l'ordre d'affichage peuvent être devant.

.. _class_Label3D_constant_FLAG_FIXED_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_FIXED_SIZE** = ``3``

L'étiquette est mise à l'échelle suivant la distance pour qu'elle apparaisse toujours à la même taille à l'écran.

.. _class_Label3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_MAX** = ``4``

Représente la taille de l'énumération :ref:`DrawFlags<enum_Label3D_DrawFlags>`.

.. rst-class:: classref-item-separator

----

.. _enum_Label3D_AlphaCutMode:

.. rst-class:: classref-enumeration

enum **AlphaCutMode**: :ref:`🔗<enum_Label3D_AlphaCutMode>`

.. _class_Label3D_constant_ALPHA_CUT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_DISABLED** = ``0``

Ce mode réalise un mélange alpha standard. Il peut afficher des zones translucides, mais des problèmes de tri de la transparence peuvent être visibles lorsque plusieurs matériaux transparents se chevauchent. :ref:`GeometryInstance3D.cast_shadow<class_GeometryInstance3D_property_cast_shadow>` n'a aucun effet lorsque ce mode de transparence est utilisé, le **Label3D** ne projettera jamais d'ombres.

.. _class_Label3D_constant_ALPHA_CUT_DISCARD:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_DISCARD** = ``1``

This mode only allows fully transparent or fully opaque pixels. Harsh edges will be visible unless some form of screen-space antialiasing is enabled (see :ref:`ProjectSettings.rendering/anti_aliasing/quality/screen_space_aa<class_ProjectSettings_property_rendering/anti_aliasing/quality/screen_space_aa>`). This mode is also known as *alpha testing* or *1-bit transparency*.

\ **Note:** This mode might have issues with anti-aliased fonts and outlines, try adjusting :ref:`alpha_scissor_threshold<class_Label3D_property_alpha_scissor_threshold>` or using MSDF font.

\ **Note:** When using text with overlapping glyphs (e.g., cursive scripts), this mode might have transparency sorting issues between the main text and the outline.

.. _class_Label3D_constant_ALPHA_CUT_OPAQUE_PREPASS:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_OPAQUE_PREPASS** = ``2``

Ce mode dessine des pixels entièrement opaques lors de la pré-passe de profondeur. Ceci est plus lent que :ref:`ALPHA_CUT_DISABLED<class_Label3D_constant_ALPHA_CUT_DISABLED>` ou :ref:`ALPHA_CUT_DISCARD<class_Label3D_constant_ALPHA_CUT_DISCARD>`, mais ça permet d'afficher des zones translucides et des bords lisses tout en utilisant le tri approprié.

\ **Note :** Lors de l'utilisation de texte avec des caractères superposés (par exemple des cursives), ce mode pourrait avoir des problèmes de tri de la transparence entre le texte principal et le contour.

.. _class_Label3D_constant_ALPHA_CUT_HASH:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_HASH** = ``3``

Ce mode coupe toutes les valeurs en dessous d'un seuil dépendant de la position, le reste restera opaque.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Label3D_property_alpha_antialiasing_edge:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_antialiasing_edge** = ``0.0`` :ref:`🔗<class_Label3D_property_alpha_antialiasing_edge>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing_edge**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_antialiasing_edge**\ (\ )

Le seuil à partir duquel l'anticrénalage sera appliqué sur le canal alpha.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_antialiasing_mode:

.. rst-class:: classref-property

:ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **alpha_antialiasing_mode** = ``0`` :ref:`🔗<class_Label3D_property_alpha_antialiasing_mode>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing**\ (\ value\: :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>`\ )
- :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **get_alpha_antialiasing**\ (\ )

Le type d’anticrénelage alpha à appliquer.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_cut:

.. rst-class:: classref-property

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **alpha_cut** = ``0`` :ref:`🔗<class_Label3D_property_alpha_cut>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_cut_mode**\ (\ value\: :ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>`\ )
- :ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **get_alpha_cut_mode**\ (\ )

The alpha cutting mode to use for the sprite.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_hash_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_hash_scale** = ``1.0`` :ref:`🔗<class_Label3D_property_alpha_hash_scale>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_hash_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_hash_scale**\ (\ )

L'échelle de hachage pour Alpha Hash. Valeurs recommandées entre ``0`` et ``2``.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_scissor_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_scissor_threshold** = ``0.5`` :ref:`🔗<class_Label3D_property_alpha_scissor_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_scissor_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_scissor_threshold**\ (\ )

Le seuil à partir duquel le ciseau alpha ignorera les valeurs.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_Label3D_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

Si défini à quelque chose d'autre que :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>`, le texte retourne automatiquement à la ligne dans le rectangle délimitant du nœud. Si vous redimensionnez le nœud, il va changer sa hauteur automatiquement pour afficher tout le texte.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_autowrap_trim_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **autowrap_trim_flags** = ``192`` :ref:`🔗<class_Label3D_property_autowrap_trim_flags>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_trim_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_autowrap_trim_flags**\ (\ )

Drapeaux de trimming des espaces en autowrap. Voir :ref:`TextServer.BREAK_TRIM_START_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_START_EDGE_SPACES>` et :ref:`TextServer.BREAK_TRIM_END_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_END_EDGE_SPACES>` pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_billboard:

.. rst-class:: classref-property

:ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **billboard** = ``0`` :ref:`🔗<class_Label3D_property_billboard>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_mode**\ (\ value\: :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`\ )
- :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **get_billboard_mode**\ (\ )

Le mode de billboard à utiliser pour l'étiquette.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_double_sided:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_sided** = ``true`` :ref:`🔗<class_Label3D_property_double_sided>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

Si ``true``, le texte peut aussi être vu de derrière, si ``false``, il est invisible quand on le regarde de derrière.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_fixed_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fixed_size** = ``false`` :ref:`🔗<class_Label3D_property_fixed_size>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

Si ``true``, l'étiquette est rendue à la même taille indépendamment de la distance. La taille de l'étiquette à l'écran est la même que si la caméra était à ``1.0`` unité de l'origine de l'étiquette, peu importe la distance réelle de la caméra. Le champ de vision de la :ref:`Camera3D<class_Camera3D>` (ou :ref:`Camera3D.size<class_Camera3D_property_size>` en mode orthogonal/frustum) affecte toujours la taille à laquelle l'étiquette est dessinée.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **font** :ref:`🔗<class_Label3D_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_font**\ (\ )

Configuration de la police utilisée pour afficher le texte.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_size** = ``32`` :ref:`🔗<class_Label3D_property_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_size**\ (\ )

Taille de police du texte du **Label3D**. Pour rendre la police plus détaillée de près, augmentez :ref:`font_size<class_Label3D_property_font_size>` tout en diminuant :ref:`pixel_size<class_Label3D_property_pixel_size>` en même temps.

Les tailles de police plus élevées nécessitent plus de temps pour rendre de nouveaux caractères, ce qui peut causer du stuttering pendant le gameplay.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_horizontal_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **horizontal_alignment** = ``1`` :ref:`🔗<class_Label3D_property_horizontal_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Contrôle l'alignement horizontal du texte. Supporte à gauche, au centre, à droite, ou remplir (aussi connu comme justifié).

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_Label3D_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

Règles d'alignement du remplissage des lignes.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_Label3D_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Code de langue utilisé pour les algorithmes de retour à la ligne et de "text shaping". Si laissé vide, la langue actuelle est utilisée à la place.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``0.0`` :ref:`🔗<class_Label3D_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

Espacement vertical supplémentaire entre les lignes (en pixels), l'espacement est ajouté à la descente de la ligne. Cette valeur peut être négative.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Label3D_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

La :ref:`Color<class_Color>` du texte du **Label3D**.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_no_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **no_depth_test** = ``false`` :ref:`🔗<class_Label3D_property_no_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

Si ``true``, les tests de profondeur sont désactivés et l'objet sera dessiné suivant son ordre de rendu et non suivant sa distance.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Label3D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Le décalage du dessin du texte (en pixels).

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_outline_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **outline_modulate** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Label3D_property_outline_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_outline_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_outline_modulate**\ (\ )

La teinte du contour du texte.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_outline_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **outline_render_priority** = ``-1`` :ref:`🔗<class_Label3D_property_outline_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_outline_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outline_render_priority**\ (\ )

Définit la priorité de rendu pour la bordure du texte. Les objets les plus prioritaires seront affichés par-dessus des objets les moins prioritaires.

\ **Note :** Cela ne s'applique que si :ref:`alpha_cut<class_Label3D_property_alpha_cut>` est défini à :ref:`ALPHA_CUT_DISABLED<class_Label3D_constant_ALPHA_CUT_DISABLED>` (c'est la valeur par défaut).

\ **Note :** Cela ne s'applique qu'au tri des objets transparents. Cela n'affectera pas la façon dont les objets transparents sont triés par rapport aux objets opaques. C'est parce que les objets opaques ne sont pas triés, alors que les objets transparents sont triés de l'arrière vers l'avant (et suivant leur priorité).

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_outline_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outline_size** = ``12`` :ref:`🔗<class_Label3D_property_outline_size>`

.. rst-class:: classref-property-setget

- |void| **set_outline_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outline_size**\ (\ )

Taille du contour du texte.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.005`` :ref:`🔗<class_Label3D_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

La taille de la largeur d'un pixel sur l'étiquette pour la redimensionner en 3D. Pour rendre la police plus détaillée de près, augmentez :ref:`font_size<class_Label3D_property_font_size>` tout en diminuant :ref:`pixel_size<class_Label3D_property_pixel_size>` en même temps.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** = ``0`` :ref:`🔗<class_Label3D_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

Définit la priorité de rendu pour le texte. Les objets les plus prioritaires seront affichés par-dessus des objets les moins prioritaires.

\ **Note :** Cela ne s'applique que si :ref:`alpha_cut<class_Label3D_property_alpha_cut>` est défini à :ref:`ALPHA_CUT_DISABLED<class_Label3D_constant_ALPHA_CUT_DISABLED>` (c'est la valeur par défaut).

\ **Note :** Cela ne s'applique qu'au tri des objets transparents. Cela n'affectera pas la façon dont les objets transparents sont triés par rapport aux objets opaques. C'est parce que les objets opaques ne sont pas triés, alors que les objets transparents sont triés de l'arrière vers l'avant (et suivant leur priorité).

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_shaded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shaded** = ``false`` :ref:`🔗<class_Label3D_property_shaded>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

Si ``true``, la :ref:`Light3D<class_Light3D>` dans l':ref:`Environment<class_Environment>` a des effets sur l'étiquette.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_Label3D_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

Définit la redéfinition de l'algorithme BiDi pour le texte structuré.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_Label3D_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

Définit des options supplémentaires pour la redéfinition BiDi.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_Label3D_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Le texte à afficher à l'écran.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_text_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **text_direction** = ``0`` :ref:`🔗<class_Label3D_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_text_direction**\ (\ )

Direction d'écriture du texte de base.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **texture_filter** = ``3`` :ref:`🔗<class_Label3D_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`\ )
- :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **get_texture_filter**\ (\ )

Drapeaux de filtrage pour la texture.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_uppercase:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **uppercase** = ``false`` :ref:`🔗<class_Label3D_property_uppercase>`

.. rst-class:: classref-property-setget

- |void| **set_uppercase**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_uppercase**\ (\ )

Si ``true``, tous les textes seront en MAJUSCULE.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_vertical_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_alignment** = ``1`` :ref:`🔗<class_Label3D_property_vertical_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_alignment**\ (\ )

Contrôle l'alignement vertical du texte. Supporte en haut, au centre, et en bas.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``500.0`` :ref:`🔗<class_Label3D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

La largeur de texte (en pixels), utilisée pour les retours à la ligne et l'alignement de remplissage.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Label3D_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_Label3D_method_generate_triangle_mesh>`

Renvoie un :ref:`TriangleMesh<class_TriangleMesh>` avec les sommets de l'étiquette suivant sa configuration actuelle (comme :ref:`pixel_size<class_Label3D_property_pixel_size>`).

.. rst-class:: classref-item-separator

----

.. _class_Label3D_method_get_draw_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const| :ref:`🔗<class_Label3D_method_get_draw_flag>`

Renvoie la valeur de l'option donnée.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_method_set_draw_flag:

.. rst-class:: classref-method

|void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Label3D_method_set_draw_flag>`

Si ``true``, le drapeau ``flag`` spécifié sera activé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
