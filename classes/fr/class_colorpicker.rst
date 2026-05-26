:github_url: hide

.. _class_ColorPicker:

ColorPicker
===========

**Hérite de :** :ref:`VBoxContainer<class_VBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un widget qui fournit une interface pour sélectionner ou modifier une couleur.

.. rst-class:: classref-introduction-group

Description
-----------

Un widget qui fournit une interface pour sélectionner ou modifier une couleur. Il peut en option fournir des fonctionnalités comme un échantillonneur de couleur (pipette), des modes de couleur et des pré-réglages.

\ **Note :** Ce contrôle est le widget du sélecteur de couleur lui-même. Vous pouvez utiliser un :ref:`ColorPickerButton<class_ColorPickerButton>` au lieu de cela si vous avez besoin d'un bouton qui ouvre un **ColorPicker** dans une popup.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo d'interpolation tween <https://godotengine.org/asset-library/asset/2733>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`can_add_swatches<class_ColorPicker_property_can_add_swatches>`       | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                | :ref:`color<class_ColorPicker_property_color>`                             | ``Color(1, 1, 1, 1)`` |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`ColorModeType<enum_ColorPicker_ColorModeType>`     | :ref:`color_mode<class_ColorPicker_property_color_mode>`                   | ``0``                 |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`color_modes_visible<class_ColorPicker_property_color_modes_visible>` | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`deferred_mode<class_ColorPicker_property_deferred_mode>`             | ``false``             |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`edit_alpha<class_ColorPicker_property_edit_alpha>`                   | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`edit_intensity<class_ColorPicker_property_edit_intensity>`           | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`hex_visible<class_ColorPicker_property_hex_visible>`                 | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` | :ref:`picker_shape<class_ColorPicker_property_picker_shape>`               | ``0``                 |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`presets_visible<class_ColorPicker_property_presets_visible>`         | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`sampler_visible<class_ColorPicker_property_sampler_visible>`         | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`sliders_visible<class_ColorPicker_property_sliders_visible>`         | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_preset<class_ColorPicker_method_add_preset>`\ (\ color\: :ref:`Color<class_Color>`\ )                   |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_recent_preset<class_ColorPicker_method_add_recent_preset>`\ (\ color\: :ref:`Color<class_Color>`\ )     |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`erase_preset<class_ColorPicker_method_erase_preset>`\ (\ color\: :ref:`Color<class_Color>`\ )               |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`erase_recent_preset<class_ColorPicker_method_erase_recent_preset>`\ (\ color\: :ref:`Color<class_Color>`\ ) |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`get_presets<class_ColorPicker_method_get_presets>`\ (\ ) |const|                                            |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`get_recent_presets<class_ColorPicker_method_get_recent_presets>`\ (\ ) |const|                              |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Color<class_Color>`         | :ref:`focused_not_editing_cursor_color<class_ColorPicker_theme_color_focused_not_editing_cursor_color>` | ``Color(1, 1, 1, 0.275)`` |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`center_slider_grabbers<class_ColorPicker_theme_constant_center_slider_grabbers>`                  | ``1``                     |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`h_width<class_ColorPicker_theme_constant_h_width>`                                                | ``30``                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`label_width<class_ColorPicker_theme_constant_label_width>`                                        | ``10``                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`margin<class_ColorPicker_theme_constant_margin>`                                                  | ``4``                     |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`sv_height<class_ColorPicker_theme_constant_sv_height>`                                            | ``256``                   |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`sv_width<class_ColorPicker_theme_constant_sv_width>`                                              | ``256``                   |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`add_preset<class_ColorPicker_theme_icon_add_preset>`                                              |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`bar_arrow<class_ColorPicker_theme_icon_bar_arrow>`                                                |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`color_copy<class_ColorPicker_theme_icon_color_copy>`                                              |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`color_hue<class_ColorPicker_theme_icon_color_hue>`                                                |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`color_script<class_ColorPicker_theme_icon_color_script>`                                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`expanded_arrow<class_ColorPicker_theme_icon_expanded_arrow>`                                      |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folded_arrow<class_ColorPicker_theme_icon_folded_arrow>`                                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu_option<class_ColorPicker_theme_icon_menu_option>`                                            |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`overbright_indicator<class_ColorPicker_theme_icon_overbright_indicator>`                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`picker_cursor<class_ColorPicker_theme_icon_picker_cursor>`                                        |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`picker_cursor_bg<class_ColorPicker_theme_icon_picker_cursor_bg>`                                  |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sample_bg<class_ColorPicker_theme_icon_sample_bg>`                                                |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sample_revert<class_ColorPicker_theme_icon_sample_revert>`                                        |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`screen_picker<class_ColorPicker_theme_icon_screen_picker>`                                        |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`shape_circle<class_ColorPicker_theme_icon_shape_circle>`                                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`shape_rect<class_ColorPicker_theme_icon_shape_rect>`                                              |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`shape_rect_wheel<class_ColorPicker_theme_icon_shape_rect_wheel>`                                  |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`picker_focus_circle<class_ColorPicker_theme_style_picker_focus_circle>`                           |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`picker_focus_rectangle<class_ColorPicker_theme_style_picker_focus_rectangle>`                     |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`sample_focus<class_ColorPicker_theme_style_sample_focus>`                                         |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_ColorPicker_signal_color_changed:

.. rst-class:: classref-signal

**color_changed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_color_changed>`

Émis lorsque la couleur est changée.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_signal_preset_added:

.. rst-class:: classref-signal

**preset_added**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_preset_added>`

Émis lors de l'ajout d'un préréglage.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_signal_preset_removed:

.. rst-class:: classref-signal

**preset_removed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_preset_removed>`

Émis lorsqu’un préréglage est supprimé.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ColorPicker_ColorModeType:

.. rst-class:: classref-enumeration

enum **ColorModeType**: :ref:`🔗<enum_ColorPicker_ColorModeType>`

.. _class_ColorPicker_constant_MODE_RGB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_RGB** = ``0``

Permet d'éditer la couleur avec les sliders Rouge/Vert/Bleu dans l'espace de couleur sRGB.

.. _class_ColorPicker_constant_MODE_HSV:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_HSV** = ``1``

Permet d'éditer la couleur avec des sliders Teinte/Saturation/Luminosité (Hue, Saturation, Lightness).

.. _class_ColorPicker_constant_MODE_RAW:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_RAW** = ``2``

**Obsolète :** This is replaced by :ref:`MODE_LINEAR<class_ColorPicker_constant_MODE_LINEAR>`.



.. _class_ColorPicker_constant_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_LINEAR** = ``2``

Permet d'éditer la couleur avec des sliders Rouge/Vert/Bleu dans l'espace de couleur linéaire.

.. _class_ColorPicker_constant_MODE_OKHSL:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_OKHSL** = ``3``

Permet d'éditer la couleur avec les sliders Teinte/Saturation/Luminosité.

OK TSL est un nouvel espace de couleur semblable à TSL mais qui correspond mieux à la perception en utilisant l'espace de couleur Oklab qui est conçu pour être simple à utiliser, tout en faisant un bon travail pour prédire la luminosité, saturation et teinte perçues.

\ `Espaces de couleur Oktsv et Oktsl <https://bottosson.github.io/posts/colorpicker/>`__

.. rst-class:: classref-item-separator

----

.. _enum_ColorPicker_PickerShapeType:

.. rst-class:: classref-enumeration

enum **PickerShapeType**: :ref:`🔗<enum_ColorPicker_PickerShapeType>`

.. _class_ColorPicker_constant_SHAPE_HSV_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_HSV_RECTANGLE** = ``0``

Espace de couleur rectangulaire Modèle de couleur TSV.

.. _class_ColorPicker_constant_SHAPE_HSV_WHEEL:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_HSV_WHEEL** = ``1``

Espace de couleur rectangulaire Modèle de couleur TSV avec une roue.

.. _class_ColorPicker_constant_SHAPE_VHS_CIRCLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_VHS_CIRCLE** = ``2``

Espace de couleur circulaire Modèle de couleur TSV. Utilise la saturation comme rayon.

.. _class_ColorPicker_constant_SHAPE_OKHSL_CIRCLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OKHSL_CIRCLE** = ``3``

Espace de couleur circulaire Modèle de couleur TSL OK.

.. _class_ColorPicker_constant_SHAPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_NONE** = ``4``

La forme de l'espace de couleur et le bouton de sélection de forme sont cachés. Ne peut pas être sélectionné parmi le popup des formes.

.. _class_ColorPicker_constant_SHAPE_OK_HS_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OK_HS_RECTANGLE** = ``5``

Rectangle de Modèle de couleur OKHSL avec une luminosité constante.

.. _class_ColorPicker_constant_SHAPE_OK_HL_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OK_HL_RECTANGLE** = ``6``

Rectangle de Modèle de couleur OKHSL avec une saturation constante.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ColorPicker_property_can_add_swatches:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_add_swatches** = ``true`` :ref:`🔗<class_ColorPicker_property_can_add_swatches>`

.. rst-class:: classref-property-setget

- |void| **set_can_add_swatches**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_swatches_enabled**\ (\ )

Si ``true``, il est possible d'ajouter des préréglages sous Nuanciers. Si ``false``, le bouton pour ajouter des préréglages est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_ColorPicker_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_pick_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_pick_color**\ (\ )

La couleur actuellement sélectionnée.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color_mode:

.. rst-class:: classref-property

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **color_mode** = ``0`` :ref:`🔗<class_ColorPicker_property_color_mode>`

.. rst-class:: classref-property-setget

- |void| **set_color_mode**\ (\ value\: :ref:`ColorModeType<enum_ColorPicker_ColorModeType>`\ )
- :ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **get_color_mode**\ (\ )

Le mode de couleur actuellement sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color_modes_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **color_modes_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_color_modes_visible>`

.. rst-class:: classref-property-setget

- |void| **set_modes_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_modes_visible**\ (\ )

Si ``true``, les boutons de mode de couleur sont visibles.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_deferred_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deferred_mode** = ``false`` :ref:`🔗<class_ColorPicker_property_deferred_mode>`

.. rst-class:: classref-property-setget

- |void| **set_deferred_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deferred_mode**\ (\ )

Si ``true``, la couleur ne s'appliquera que quand l'utilisateur relâche le bouton de la souris, sinon elle s'appliquera immédiatement en suivant le déplacement de la souris (ce qui peut causer des problèmes de performance).

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_edit_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_alpha** = ``true`` :ref:`🔗<class_ColorPicker_property_edit_alpha>`

.. rst-class:: classref-property-setget

- |void| **set_edit_alpha**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_alpha**\ (\ )

Si ``true``, affiche un slider de canal alpha (opacité).

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_edit_intensity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_intensity** = ``true`` :ref:`🔗<class_ColorPicker_property_edit_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_edit_intensity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_intensity**\ (\ )

Si ``true``, affiche un slider d'intensité. L'intensité est appliquée comme suit : convertir la couleur en encodage linéaire, multiplier la couleur par ``2 ** intensité``, puis la re-convertir en encodage sRGB non-linéaire.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_hex_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hex_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_hex_visible>`

.. rst-class:: classref-property-setget

- |void| **set_hex_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hex_visible**\ (\ )

Si ``true``, le champ de saisie du code de couleur hexadécimal est visible.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_picker_shape:

.. rst-class:: classref-property

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **picker_shape** = ``0`` :ref:`🔗<class_ColorPicker_property_picker_shape>`

.. rst-class:: classref-property-setget

- |void| **set_picker_shape**\ (\ value\: :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>`\ )
- :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **get_picker_shape**\ (\ )

La forme de la vue de l'espace de couleur.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_presets_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **presets_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_presets_visible>`

.. rst-class:: classref-property-setget

- |void| **set_presets_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_presets_visible**\ (\ )

Si ``true``, les préréglages de nuanciers et de couleurs récentes sont visibles.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_sampler_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sampler_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_sampler_visible>`

.. rst-class:: classref-property-setget

- |void| **set_sampler_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sampler_visible**\ (\ )

Si ``true``, l’échantillonneur de couleur et la prévisualisation de la couleur sont visibles.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_sliders_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sliders_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_sliders_visible>`

.. rst-class:: classref-property-setget

- |void| **set_sliders_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_sliders_visible**\ (\ )

Si ``true``, les sliders de couleurs sont visibles.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ColorPicker_method_add_preset:

.. rst-class:: classref-method

|void| **add_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_add_preset>`

Ajoute la couleur donnée à une liste de pré-réglages de couleur. Les pré-réglages sont affichés dans le sélecteur de couleurs que l'utilisateur pourra sélectionner.

\ **Note :** La liste des pré-réglages est seulement pour *ce* sélecteur de couleur.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_add_recent_preset:

.. rst-class:: classref-method

|void| **add_recent_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_add_recent_preset>`

Ajoute la couleur donnée à une liste de pré-réglages de couleur récents qui peuvent être re-sélectionnés plus tard. Les pré-réglages récents sont les couleurs qui ont été choisies récemment, un nouveau pré-réglage est automatiquement créé et ajouté aux pré-réglages récents quand vous choisissez une nouvelle couleur.

\ **Note :** La liste des pré-réglages récents est seulement pour *ce* sélecteur de couleur.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_erase_preset:

.. rst-class:: classref-method

|void| **erase_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_erase_preset>`

Retire la couleur donnée de la liste des pré-réglages de couleur de ce sélecteur de couleur.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_erase_recent_preset:

.. rst-class:: classref-method

|void| **erase_recent_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_erase_recent_preset>`

Retire la couleur donnée de la liste des pré-réglages de couleur récents de ce sélecteur de couleur.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_get_presets:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **get_presets**\ (\ ) |const| :ref:`🔗<class_ColorPicker_method_get_presets>`

Renvoie la liste des couleurs dans la palette du sélecteur de couleur.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_get_recent_presets:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **get_recent_presets**\ (\ ) |const| :ref:`🔗<class_ColorPicker_method_get_recent_presets>`

Renvoie la liste des couleurs dans les pré-réglages récents du sélecteur de couleur.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_ColorPicker_theme_color_focused_not_editing_cursor_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **focused_not_editing_cursor_color** = ``Color(1, 1, 1, 0.275)`` :ref:`🔗<class_ColorPicker_theme_color_focused_not_editing_cursor_color>`

Couleur du rectangle ou du cercle dessiné quand une partie de la forme du sélecteur a le focus mais est non modifiable via le clavier ou la manette. Affiché *par-dessus* la forme du sélecteur, donc une couleur partiellement transparente doit être utilisée pour s'assurer que la forme du sélecteur reste visible.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_center_slider_grabbers:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **center_slider_grabbers** = ``1`` :ref:`🔗<class_ColorPicker_theme_constant_center_slider_grabbers>`

Redéfinit la propriété de thème :ref:`Slider.center_grabber<class_Slider_theme_constant_center_grabber>` des sliders.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_h_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_width** = ``30`` :ref:`🔗<class_ColorPicker_theme_constant_h_width>`

La largeur de glisseur de la teinte.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_label_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **label_width** = ``10`` :ref:`🔗<class_ColorPicker_theme_constant_label_width>`

La largeur minimale des étiquettes de couleur à côté des sliders.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin** = ``4`` :ref:`🔗<class_ColorPicker_theme_constant_margin>`

La marge autour du **ColorPicker**.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_sv_height:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **sv_height** = ``256`` :ref:`🔗<class_ColorPicker_theme_constant_sv_height>`

La hauteur de la boite de sélection de la saturation.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_sv_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **sv_width** = ``256`` :ref:`🔗<class_ColorPicker_theme_constant_sv_width>`

La largeur de la boite de sélection de la saturation.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_add_preset:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **add_preset** :ref:`🔗<class_ColorPicker_theme_icon_add_preset>`

L'icône du bouton pour ajouter un préréglage.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_bar_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **bar_arrow** :ref:`🔗<class_ColorPicker_theme_icon_bar_arrow>`

La texture pour l’ascenseur en forme de flèche.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_copy:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_copy** :ref:`🔗<class_ColorPicker_theme_icon_color_copy>`

The icon for the button that copies the color in text format to the clipboard.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_hue:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_hue** :ref:`🔗<class_ColorPicker_theme_icon_color_hue>`

La texture personnalisée pour le glisseur de sélection de la teinte sur la droite.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_script:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_script** :ref:`🔗<class_ColorPicker_theme_icon_color_script>`

L'icône pour le bouton qui change le texte de la couleur en hexadécimal.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_expanded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow** :ref:`🔗<class_ColorPicker_theme_icon_expanded_arrow>`

L'icône pour le menu déroulant des préréglages de couleur lorsqu'étendu.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_folded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow** :ref:`🔗<class_ColorPicker_theme_icon_folded_arrow>`

L'icône pour le menu déroulant des préréglages de couleur lorsque replié.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_menu_option:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_option** :ref:`🔗<class_ColorPicker_theme_icon_menu_option>`

L'icône pour le menu des options des préréglages de couleur.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_overbright_indicator:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **overbright_indicator** :ref:`🔗<class_ColorPicker_theme_icon_overbright_indicator>`

L'indicateur utilisé pour signaler que la valeur de couleur est en dehors de l'intervalle 0-1.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_picker_cursor:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **picker_cursor** :ref:`🔗<class_ColorPicker_theme_icon_picker_cursor>`

L'image affichée sur la boîte/cercle de couleur (selon :ref:`picker_shape<class_ColorPicker_property_picker_shape>`), marquant la couleur actuellement sélectionnée.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_picker_cursor_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **picker_cursor_bg** :ref:`🔗<class_ColorPicker_theme_icon_picker_cursor_bg>`

L'image de remplissage affichée derrière le curseur du sélecteur.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_sample_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sample_bg** :ref:`🔗<class_ColorPicker_theme_icon_sample_bg>`

Panneau d'arrière-plan pour la boîte de prévisualisation des couleurs (visible lorsque la couleur est translucide).

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_sample_revert:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sample_revert** :ref:`🔗<class_ColorPicker_theme_icon_sample_revert>`

L'icône pour le bouton de rétablissement (visible au milieu de l' "ancienne" couleur quand elle diffère de la couleur actuellement sélectionnée). Cette icône est modulée avec une couleur foncée si l'"ancienne" couleur est assez lumineuse, de sorte que l'icône devrait être lumineuse pour assurer la visibilité dans les deux scénarios.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_screen_picker:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **screen_picker** :ref:`🔗<class_ColorPicker_theme_icon_screen_picker>`

L'icône pour le bouton de sélecteur de couleur d'écran.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_circle:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_circle** :ref:`🔗<class_ColorPicker_theme_icon_shape_circle>`

L'icône pour les formes de sélecteur circulaire.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_rect:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_rect** :ref:`🔗<class_ColorPicker_theme_icon_shape_rect>`

L'icône pour les formes de sélecteur rectangulaire.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_rect_wheel:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_rect_wheel** :ref:`🔗<class_ColorPicker_theme_icon_shape_rect_wheel>`

L'icône pour les formes de sélecteur en roue rectangulaire.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_picker_focus_circle:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **picker_focus_circle** :ref:`🔗<class_ColorPicker_theme_style_picker_focus_circle>`

La :ref:`StyleBox<class_StyleBox>` utilisée lorsque la partie en forme de cercle du sélecteur a le focus. S'affiche *par-dessus* la forme du sélecteur, donc une :ref:`StyleBox<class_StyleBox>` partiellement transparente devrait être utilisée pour s'assurer que la forme du sélecteur reste visible. Une :ref:`StyleBox<class_StyleBox>` qui représente un contour ou un soulignement fonctionne bien à cette fin. Pour désactiver l'effet visuel de focus, assignez une ressource :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Notez que la désactivation de l'effet visuel de focus va nuire à l'utilisabilité de la navigation clavier/contrôleur, ce qui n'est donc pas recommandé pour des raisons d'accessibilité.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_picker_focus_rectangle:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **picker_focus_rectangle** :ref:`🔗<class_ColorPicker_theme_style_picker_focus_rectangle>`

La :ref:`StyleBox<class_StyleBox>` utilisée lorsque la partie en forme de rectangle du sélecteur a le focus. S'affiche *par-dessus* la forme du sélecteur, donc une :ref:`StyleBox<class_StyleBox>` partiellement transparente devrait être utilisée pour s'assurer que la forme du sélecteur reste visible. Une :ref:`StyleBox<class_StyleBox>` qui représente un contour ou un soulignement fonctionne bien à cette fin. Pour désactiver l'effet visuel de focus, assignez une ressource :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Notez que la désactivation de l'effet visuel de focus va nuire à l'utilisabilité de la navigation clavier/contrôleur, ce qui n'est donc pas recommandé pour des raisons d'accessibilité.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_sample_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **sample_focus** :ref:`🔗<class_ColorPicker_theme_style_sample_focus>`

La :ref:`StyleBox<class_StyleBox>` utilisée lorsque la partie de l'ancien échantillon lorsqu'il a le focus. S'affiche *par-dessus* la forme du sélecteur, donc une :ref:`StyleBox<class_StyleBox>` partiellement transparente devrait être utilisée pour s'assurer que la forme du sélecteur reste visible. Une :ref:`StyleBox<class_StyleBox>` qui représente un contour ou un soulignement fonctionne bien à cette fin. Pour désactiver l'effet visuel de focus, assignez une ressource :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Notez que la désactivation de l'effet visuel de focus va nuire à l'utilisabilité de la navigation clavier/contrôleur, ce qui n'est donc pas recommandé pour des raisons d'accessibilité.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
