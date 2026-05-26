:github_url: hide

.. _class_Button:

Button
======

**Hérite de :** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`CheckBox<class_CheckBox>`, :ref:`CheckButton<class_CheckButton>`, :ref:`ColorPickerButton<class_ColorPickerButton>`, :ref:`MenuButton<class_MenuButton>`, :ref:`OptionButton<class_OptionButton>`

Un bouton à thème qui peut contenir du texte et une icône.

.. rst-class:: classref-introduction-group

Description
-----------

**Button** est le bouton à thème standard. Il peut contenir du texte et une icône, et les affichera suivant le :ref:`Theme<class_Theme>` actuellement défini.

\ **Exemple :** Créer un bouton et lui connecter une méthode qui sera appelée quand le bouton est appuyé :


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var bouton = Button.new()
        bouton.text = "Cliquez moi"
        bouton.pressed.connect(_bouton_appuye)
        add_child(bouton)

    func _bouton_appuye():
        print("On m'a cliqué !")

 .. code-tab:: csharp

    public override void _Ready()
    {
        var bouton = new Button();
        bouton.Text = "Cliquez moi"
        bouton.Pressed += BoutonAppuye;
        AddChild(bouton);
    }

    private void BoutonAppuye()
    {
        GD.Print("On m'a cliqué !");
    }



Voir aussi :ref:`BaseButton<class_BaseButton>` qui contient les propriétés et méthodes communes associées à ce nœud.

\ **Note :** Les boutons n'interceptent pas les entrées tactiles et ne supporte donc pas le multi appui tactile, puisque l'émulation de la souris ne peut presser qu'un seul bouton à la fois. Utilisez :ref:`TouchScreenButton<class_TouchScreenButton>` pour les boutons qui déclenchent des actions ou des mouvements du gameplay.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo 2D « Dodge The Creeps » <https://godotengine.org/asset-library/asset/2712>`__

- `Démo de test de système d'exploitation <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | :ref:`alignment<class_Button_property_alignment>`                             | ``1``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                 | :ref:`autowrap_mode<class_Button_property_autowrap_mode>`                     | ``0``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] | :ref:`autowrap_trim_flags<class_Button_property_autowrap_trim_flags>`         | ``128``   |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                           | :ref:`clip_text<class_Button_property_clip_text>`                             | ``false`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                           | :ref:`expand_icon<class_Button_property_expand_icon>`                         | ``false`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                           | :ref:`flat<class_Button_property_flat>`                                       | ``false`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                                 | :ref:`icon<class_Button_property_icon>`                                       |           |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | :ref:`icon_alignment<class_Button_property_icon_alignment>`                   | ``0``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                       | :ref:`language<class_Button_property_language>`                               | ``""``    |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                       | :ref:`text<class_Button_property_text>`                                       | ``""``    |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                  | :ref:`text_direction<class_Button_property_text_direction>`                   | ``0``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`           | :ref:`text_overrun_behavior<class_Button_property_text_overrun_behavior>`     | ``0``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`     | :ref:`vertical_icon_alignment<class_Button_property_vertical_icon_alignment>` | ``1``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_color<class_Button_theme_color_font_color>`                                  | ``Color(0.875, 0.875, 0.875, 1)``   |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_disabled_color<class_Button_theme_color_font_disabled_color>`                | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_focus_color<class_Button_theme_color_font_focus_color>`                      | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_hover_color<class_Button_theme_color_font_hover_color>`                      | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_hover_pressed_color<class_Button_theme_color_font_hover_pressed_color>`      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_outline_color<class_Button_theme_color_font_outline_color>`                  | ``Color(0, 0, 0, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_pressed_color<class_Button_theme_color_font_pressed_color>`                  | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_disabled_color<class_Button_theme_color_icon_disabled_color>`                | ``Color(1, 1, 1, 0.4)``             |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_focus_color<class_Button_theme_color_icon_focus_color>`                      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_hover_color<class_Button_theme_color_icon_hover_color>`                      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_hover_pressed_color<class_Button_theme_color_icon_hover_pressed_color>`      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_normal_color<class_Button_theme_color_icon_normal_color>`                    | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_pressed_color<class_Button_theme_color_icon_pressed_color>`                  | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`align_to_largest_stylebox<class_Button_theme_constant_align_to_largest_stylebox>` | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`h_separation<class_Button_theme_constant_h_separation>`                           | ``4``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`icon_max_width<class_Button_theme_constant_icon_max_width>`                       | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`line_spacing<class_Button_theme_constant_line_spacing>`                           | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`outline_size<class_Button_theme_constant_outline_size>`                           | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Font<class_Font>`           | :ref:`font<class_Button_theme_font_font>`                                               |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`font_size<class_Button_theme_font_size_font_size>`                                |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`icon<class_Button_theme_icon_icon>`                                               |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`disabled<class_Button_theme_style_disabled>`                                      |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`disabled_mirrored<class_Button_theme_style_disabled_mirrored>`                    |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`focus<class_Button_theme_style_focus>`                                            |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`hover<class_Button_theme_style_hover>`                                            |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`hover_mirrored<class_Button_theme_style_hover_mirrored>`                          |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`hover_pressed<class_Button_theme_style_hover_pressed>`                            |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`hover_pressed_mirrored<class_Button_theme_style_hover_pressed_mirrored>`          |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`normal<class_Button_theme_style_normal>`                                          |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`normal_mirrored<class_Button_theme_style_normal_mirrored>`                        |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`pressed<class_Button_theme_style_pressed>`                                        |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`pressed_mirrored<class_Button_theme_style_pressed_mirrored>`                      |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Button_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``1`` :ref:`🔗<class_Button_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_text_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_text_alignment**\ (\ )

Politique d'alignement du texte pour le texte du bouton.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_Button_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

Si défini à autre chose que :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>`, le texte fait automatiquement des retours à la ligne dans le rectangle délimitant du nœud.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_autowrap_trim_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **autowrap_trim_flags** = ``128`` :ref:`🔗<class_Button_property_autowrap_trim_flags>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_trim_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_autowrap_trim_flags**\ (\ )

Drapeaux de trimming des espaces en autowrap. Voir :ref:`TextServer.BREAK_TRIM_START_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_START_EDGE_SPACES>` et :ref:`TextServer.BREAK_TRIM_END_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_END_EDGE_SPACES>` pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_clip_text:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_text** = ``false`` :ref:`🔗<class_Button_property_clip_text>`

.. rst-class:: classref-property-setget

- |void| **set_clip_text**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_text**\ (\ )

Si ``true``, le texte trop grand pour correspondre au bouton est coupé horizontalement. Si ``false``, le bouton sera toujours assez large pour contenir le texte. Le texte n'est pas coupé verticalement, et la hauteur du bouton n'est pas affectée par cette propriété.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_expand_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **expand_icon** = ``false`` :ref:`🔗<class_Button_property_expand_icon>`

.. rst-class:: classref-property-setget

- |void| **set_expand_icon**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_expand_icon**\ (\ )

Lors qu’activé, l'icône du bouton s'étendra/rétrécira pour correspondre à la taille du bouton tout en gardant son aspect. Voir aussi :ref:`icon_max_width<class_Button_theme_constant_icon_max_width>`.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_Button_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

Les boutons plats n’affichent pas de décoration.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **icon** :ref:`🔗<class_Button_property_icon>`

.. rst-class:: classref-property-setget

- |void| **set_button_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_button_icon**\ (\ )

L'icône du bouton, si du texte est présent, l'icône sera placée avant le texte.

Pour modifier la marge et l'espacement de l'icône, utilisez la propriété de thème :ref:`h_separation<class_Button_theme_constant_h_separation>` pour le **Button** et les propriétés ``content_margin_*`` des :ref:`StyleBox<class_StyleBox>`\ s utilisées.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_icon_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **icon_alignment** = ``0`` :ref:`🔗<class_Button_property_icon_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_icon_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_icon_alignment**\ (\ )

Spécifie si l'icône doit être alignée horizontalement sur la gauche, la droite ou au centre d'un bouton. Utilisez les mêmes constantes :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` que pour l'alignement du texte. Si centré horizontalement et verticalement, le texte sera dessiné sur l'icône.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_Button_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Code de langue utilisé pour les algorithmes de retour à la ligne et de "text shaping". Si laissé vide, la langue actuelle est utilisée à la place.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_Button_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Le texte du bouton qui sera affiché à l'intérieur de l'aire du bouton.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_Button_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Direction d'écriture du texte de base.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_Button_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

Définit le comportement de coupure lorsque le texte dépasse le rectangle délimitant du nœud.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_vertical_icon_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_icon_alignment** = ``1`` :ref:`🔗<class_Button_property_vertical_icon_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_icon_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_icon_alignment**\ (\ )

Spécifie si l'icône doit être alignée verticalement sur le haut, le bas ou le centre d'un bouton. Utilise les mêmes constantes :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` que pour l'alignement du texte. Si l'icône est centrée horizontalement et verticalement, elle sera affichée sur le texte.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_Button_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_Button_theme_color_font_color>`

La :ref:`Color<class_Color>` du texte par défaut du **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_Button_theme_color_font_disabled_color>`

La :ref:`Color<class_Color>` du texte utilisée quand le **Button** est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_focus_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_Button_theme_color_font_focus_color>`

La :ref:`Color<class_Color>` du texte utilisée lorsque le **Button** a le focus. Ne fait que remplacer la couleur normale du texte du bouton. Les couleurs définies pour les états désactivé, survolé et pressé sont prioritaires sur cette couleur.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_Button_theme_color_font_hover_color>`

La :ref:`Color<class_Color>` du texte utilisée quand le **Button** est survolé.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_font_hover_pressed_color>`

La :ref:`Color<class_Color>` du texte utilisée quand le **Button** est survolé et appuyé.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Button_theme_color_font_outline_color>`

La :ref:`Color<class_Color>` du contour du texte du **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_font_pressed_color>`

La :ref:`Color<class_Color>` du texte utilisée quand le **Button** est appuyé.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_disabled_color** = ``Color(1, 1, 1, 0.4)`` :ref:`🔗<class_Button_theme_color_icon_disabled_color>`

:ref:`Color<class_Color>` de modulation de l'icône utilisée quand le **Button** est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_focus_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_focus_color>`

:ref:`Color<class_Color>` de modulation de l'icône utilisée quand le **Button** a le focus. Ne fait que remplacer la couleur de modulation normale du bouton. Les couleurs définies pour les états désactivé, survolé et appuyé sont prioritaires sur cette couleur.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_hover_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_hover_color>`

:ref:`Color<class_Color>` de modulation de l'icône utilisée quand le **Button** est survolé.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_hover_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_hover_pressed_color>`

:ref:`Color<class_Color>` de modulation de l'icône utilisée quand le **Button** est survolé et appuyé.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_normal_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_normal_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_normal_color>`

:ref:`Color<class_Color>` de modulation de l'icône du **Button** par défaut.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_pressed_color>`

:ref:`Color<class_Color>` de modulation de l'icône utilisée quand le **Button** est appuyé.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_align_to_largest_stylebox:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **align_to_largest_stylebox** = ``0`` :ref:`🔗<class_Button_theme_constant_align_to_largest_stylebox>`

Cette constante agit comme un booléen. Si ``true``, la taille minimale du bouton et l'alignement du texte/icône sont toujours basés sur les marges de la Stylebox la plus grande, sinon ils sont basés sur les marges de la Stylebox de l'état du bouton actuel.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_Button_theme_constant_h_separation>`

L'espacement horizontal entre l'icône et le texte du **Button**. Les valeurs négatives seront traitées comme ``0`` lorsque utilisées.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_icon_max_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_width** = ``0`` :ref:`🔗<class_Button_theme_constant_icon_max_width>`

La largeur maximale autorisée de l'icône du **Button**. Cette limite est appliquée en plus de la taille par défaut de l'icône, ou sa taille élargie si :ref:`expand_icon<class_Button_property_expand_icon>` vaut ``true``. La hauteur est ajustée selon le rapport d'aspect de l'icône. Si le bouton a des icônes supplémentaires (par exemple :ref:`CheckBox<class_CheckBox>`), elles seront également limitées.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_line_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **line_spacing** = ``0`` :ref:`🔗<class_Button_theme_constant_line_spacing>`

Espacement vertical supplémentaire entre les lignes (en pixels), l'espacement est ajouté à la descente de la ligne. Cette valeur peut être négative.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_Button_theme_constant_outline_size>`

La taille du contour du texte.

\ **Note :** Si vous utilisez une police avec :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` activé, sa propriété :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` doit être définie à au moins *deux fois* la valeur de :ref:`outline_size<class_Button_theme_constant_outline_size>` pour que le rendu des contours soit correct. Sinon, le contour peut sembler coupé plus tôt que prévu.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_Button_theme_font_font>`

:ref:`Font<class_Font>` du texte du **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_Button_theme_font_size_font_size>`

La taille de police du texte du **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_icon_icon:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **icon** :ref:`🔗<class_Button_theme_icon_icon>`

Icône par défaut pour le **Button**. N'apparaît que si :ref:`icon<class_Button_property_icon>` n'est pas affectée.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled** :ref:`🔗<class_Button_theme_style_disabled>`

La :ref:`StyleBox<class_StyleBox>` utilisée quand le **Button** est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled_mirrored** :ref:`🔗<class_Button_theme_style_disabled_mirrored>`

:ref:`StyleBox<class_StyleBox>` utilisée lorsque le **Button** est désactivé (pour les dispositions de droite à gauche).

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_Button_theme_style_focus>`

:ref:`StyleBox<class_StyleBox>` utilisée lorsque le **Button** a le focus. La :ref:`StyleBox<class_StyleBox>` du :ref:`focus<class_Button_theme_style_focus>` est affichée *sur* la :ref:`StyleBox<class_StyleBox>` de base, donc une :ref:`StyleBox<class_StyleBox>` partiellement transparente devrait être utilisée pour s'assurer que la :ref:`StyleBox<class_StyleBox>` de base reste visible. Une :ref:`StyleBox<class_StyleBox>` qui représente un contour ou un sous-lignage fonctionne bien à cette fin. Pour désactiver l'effet visuel du focus, assignez une ressource :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Notez que la désactivation de l'effet visuel du focus va nuire à l'utilisabilité de la navigation avec clavier/contrôleur, ce qui n'est donc pas recommandé pour des raisons d'accessibilité.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_hover:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover** :ref:`🔗<class_Button_theme_style_hover>`

Le :ref:`StyleBox<class_StyleBox>` utilisé quand le **Button** est survolé.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_hover_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_mirrored** :ref:`🔗<class_Button_theme_style_hover_mirrored>`

:ref:`StyleBox<class_StyleBox>` utilisée lorsque le **Button** est survolé (pour les dispositions de droite à gauche).

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_hover_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed** :ref:`🔗<class_Button_theme_style_hover_pressed>`

:ref:`StyleBox<class_StyleBox>` utilisée quand le **Button** est appuyé et survolé en même temps.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_hover_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed_mirrored** :ref:`🔗<class_Button_theme_style_hover_pressed_mirrored>`

:ref:`StyleBox<class_StyleBox>` utilisée quand le **Button** est appuyé et survolé en même temps (pour les mises en pages droite à gauche).

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_normal:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal** :ref:`🔗<class_Button_theme_style_normal>`

:ref:`StyleBox<class_StyleBox>` par défaut pour le **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_normal_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_mirrored** :ref:`🔗<class_Button_theme_style_normal_mirrored>`

La :ref:`StyleBox<class_StyleBox>` par défaut pour le **Button** (pour les mises en page de droite à gauche).

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed** :ref:`🔗<class_Button_theme_style_pressed>`

Le :ref:`StyleBox<class_StyleBox>` utilisé quand le **Button** est appuyé.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_mirrored** :ref:`🔗<class_Button_theme_style_pressed_mirrored>`

:ref:`StyleBox<class_StyleBox>` utilisée quand le **Button** est appuyé en même temps (pour les mises en page droite à gauche).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
