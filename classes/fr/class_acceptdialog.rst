:github_url: hide

.. _class_AcceptDialog:

AcceptDialog
============

**Hérite de :** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`ConfirmationDialog<class_ConfirmationDialog>`

Une boîte de dialogue de base utilisée pour la notification des utilisateurs.

.. rst-class:: classref-introduction-group

Description
-----------

Par défaut, **AcceptDialog** permet uniquement d'accepter ou de fermer la boîte de dialogue, avec le même résultat. Cependant, les signaux :ref:`confirmed<class_AcceptDialog_signal_confirmed>` et :ref:`canceled<class_AcceptDialog_signal_canceled>` permettent de différencier les deux actions, et la méthode :ref:`add_button()<class_AcceptDialog_method_add_button>` permet d'ajouter des boutons et des actions personnalisés.

\ **Remarque :** **AcceptDialog** est invisible par défaut. Pour le rendre visible, appelez l'une des méthodes ``popup_*`` de :ref:`Window<class_Window>` sur le nœud, telle que :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`dialog_autowrap<class_AcceptDialog_property_dialog_autowrap>`               | ``false``                                                                    |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`dialog_close_on_escape<class_AcceptDialog_property_dialog_close_on_escape>` | ``true``                                                                     |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`dialog_hide_on_ok<class_AcceptDialog_property_dialog_hide_on_ok>`           | ``true``                                                                     |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`dialog_text<class_AcceptDialog_property_dialog_text>`                       | ``""``                                                                       |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | exclusive                                                                         | ``true`` (overrides :ref:`Window<class_Window_property_exclusive>`)          |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | keep_title_visible                                                                | ``true`` (overrides :ref:`Window<class_Window_property_keep_title_visible>`) |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | maximize_disabled                                                                 | ``true`` (overrides :ref:`Window<class_Window_property_maximize_disabled>`)  |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | minimize_disabled                                                                 | ``true`` (overrides :ref:`Window<class_Window_property_minimize_disabled>`)  |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ok_button_text<class_AcceptDialog_property_ok_button_text>`                 | ``""``                                                                       |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | title                                                                             | ``"Alert!"`` (overrides :ref:`Window<class_Window_property_title>`)          |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | transient                                                                         | ``true`` (overrides :ref:`Window<class_Window_property_transient>`)          |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | visible                                                                           | ``false`` (overrides :ref:`Window<class_Window_property_visible>`)           |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | wrap_controls                                                                     | ``true`` (overrides :ref:`Window<class_Window_property_wrap_controls>`)      |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`add_button<class_AcceptDialog_method_add_button>`\ (\ text\: :ref:`String<class_String>`, right\: :ref:`bool<class_bool>` = false, action\: :ref:`String<class_String>` = ""\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`add_cancel_button<class_AcceptDialog_method_add_cancel_button>`\ (\ name\: :ref:`String<class_String>`\ )                                                                       |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Label<class_Label>`   | :ref:`get_label<class_AcceptDialog_method_get_label>`\ (\ )                                                                                                                           |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`get_ok_button<class_AcceptDialog_method_get_ok_button>`\ (\ )                                                                                                                   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`register_text_enter<class_AcceptDialog_method_register_text_enter>`\ (\ line_edit\: :ref:`LineEdit<class_LineEdit>`\ )                                                          |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_button<class_AcceptDialog_method_remove_button>`\ (\ button\: :ref:`Button<class_Button>`\ )                                                                             |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`           | :ref:`buttons_min_height<class_AcceptDialog_theme_constant_buttons_min_height>` | ``0``  |
   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`           | :ref:`buttons_min_width<class_AcceptDialog_theme_constant_buttons_min_width>`   | ``0``  |
   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`           | :ref:`buttons_separation<class_AcceptDialog_theme_constant_buttons_separation>` | ``10`` |
   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel<class_AcceptDialog_theme_style_panel>`                              |        |
   +---------------------------------+---------------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_AcceptDialog_signal_canceled:

.. rst-class:: classref-signal

**canceled**\ (\ ) :ref:`🔗<class_AcceptDialog_signal_canceled>`

Émis lorsque la fenêtre est fermée ou que le bouton créé avec :ref:`add_cancel_button()<class_AcceptDialog_method_add_cancel_button>` est pressé.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_signal_confirmed:

.. rst-class:: classref-signal

**confirmed**\ (\ ) :ref:`🔗<class_AcceptDialog_signal_confirmed>`

Émis lorsque le dialogue est accepté, c'est-à-dire lorsque le bouton OK est enfoncé.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_signal_custom_action:

.. rst-class:: classref-signal

**custom_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AcceptDialog_signal_custom_action>`

Émis lorsqu'un bouton personnalisé est appuyé. Voir :ref:`add_button()<class_AcceptDialog_method_add_button>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AcceptDialog_property_dialog_autowrap:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dialog_autowrap** = ``false`` :ref:`🔗<class_AcceptDialog_property_dialog_autowrap>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autowrap**\ (\ )

Défini le retour à la ligne automatique du texte dans la fenêtre de dialogue.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_dialog_close_on_escape:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dialog_close_on_escape** = ``true`` :ref:`🔗<class_AcceptDialog_property_dialog_close_on_escape>`

.. rst-class:: classref-property-setget

- |void| **set_close_on_escape**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_close_on_escape**\ (\ )

Si ``true``, la boîte de dialogue sera cachée lorsque l'action ``ui_close_dialog`` est pressée (par défaut, cette action est liée à o :kbd:`Echap`, ou :kbd:`Cmd + W` sur macOS).

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_dialog_hide_on_ok:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dialog_hide_on_ok** = ``true`` :ref:`🔗<class_AcceptDialog_property_dialog_hide_on_ok>`

.. rst-class:: classref-property-setget

- |void| **set_hide_on_ok**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_hide_on_ok**\ (\ )

Si ``true``, la boîte de dialogue est cachée quand le bouton OK est pressé. Vous pouvez le mettre à ``false`` si vous voulez, par exemple, valider l'entrée quand le signal :ref:`confirmed<class_AcceptDialog_signal_confirmed>` est reçu et masquer manuellement la boîte de dialogue.

\ **Note:** Plusieurs nœuds dérivés de cette classe peuvent avoir une valeur par défaut différente mais aussi leur propre logique intégrée qui outrepassera ce réglage. Par exemple :ref:`FileDialog<class_FileDialog>` utilise par défaut ``false``, et contient sa propre logique pour valider l'entrée qui est appelée quand vous pressez OK, puis va cacher le dialogue si cette entrée est valide. Telle quelle, cette propriété ne peut pas être utilisée dans :ref:`FileDialog<class_FileDialog>` pour désactiver la dissimulation de la boîte de dialogue quand OK est pressé.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_dialog_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **dialog_text** = ``""`` :ref:`🔗<class_AcceptDialog_property_dialog_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Le texte affiché par le dialogue.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_ok_button_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **ok_button_text** = ``""`` :ref:`🔗<class_AcceptDialog_property_ok_button_text>`

.. rst-class:: classref-property-setget

- |void| **set_ok_button_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ok_button_text**\ (\ )

Le texte affiché par le bouton OK (voir :ref:`get_ok_button()<class_AcceptDialog_method_get_ok_button>`). Si vide, un texte par défaut sera utilisé.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AcceptDialog_method_add_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **add_button**\ (\ text\: :ref:`String<class_String>`, right\: :ref:`bool<class_bool>` = false, action\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_AcceptDialog_method_add_button>`

Ajoute un bouton avec l'étiquette ``text`` et une ``action`` personnalisée à la boite de dialogue et renvoie le bouton créé.

Si l'``action`` n'est pas vide, appuyer sur le bouton émettra le signal :ref:`custom_action<class_AcceptDialog_signal_custom_action>` avec la chaîne d'action spécifiée.

Si ``true``, ``right`` placera le bouton à la droite des autres boutons frères.

Vous pouvez utiliser la méthode :ref:`remove_button()<class_AcceptDialog_method_remove_button>` pour supprimer de la boite de dialogue un bouton créé avec cette méthode.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_add_cancel_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **add_cancel_button**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AcceptDialog_method_add_cancel_button>`

Ajoute un bouton avec l'étiquette ``name`` et une action d'annulation à la boîte de dialogue et renvoie le bouton créé.

Vous pouvez utiliser la méthode :ref:`remove_button()<class_AcceptDialog_method_remove_button>` pour supprimer de la boite de dialogue un bouton un bouton créé avec cette méthode.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_get_label:

.. rst-class:: classref-method

:ref:`Label<class_Label>` **get_label**\ (\ ) :ref:`🔗<class_AcceptDialog_method_get_label>`

Renvoie le label utilisé pour le texte intégré.

\ **Avertissement :** Il s'agit d'un nœud interne nécessaire, le retirer et le libérer peut causer un plantage. Si vous voulez le cacher lui ou l'un de ses enfants, utilisez plutôt :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_get_ok_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **get_ok_button**\ (\ ) :ref:`🔗<class_AcceptDialog_method_get_ok_button>`

Renvoie l'instance du :ref:`Button<class_Button>` "OK".

\ **Avertissement :** Il s'agit d'un nœud interne nécessaire, le retirer et le libérer peut causer un plantage. Si vous voulez le cacher lui ou l'un de ses enfants, utilisez plutôt :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_register_text_enter:

.. rst-class:: classref-method

|void| **register_text_enter**\ (\ line_edit\: :ref:`LineEdit<class_LineEdit>`\ ) :ref:`🔗<class_AcceptDialog_method_register_text_enter>`

Ajoute une :ref:`LineEdit<class_LineEdit>` dans le dialogue. Quand on appuie sur la touche entrée, le dialogue sera accepté.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_remove_button:

.. rst-class:: classref-method

|void| **remove_button**\ (\ button\: :ref:`Button<class_Button>`\ ) :ref:`🔗<class_AcceptDialog_method_remove_button>`

Retire le ``button`` de la boite de dialogue. Ne libère PAS le ``button``. Le ``button`` doit être un :ref:`Button<class_Button>` ajouté avec la méthode :ref:`add_button()<class_AcceptDialog_method_add_button>` ou :ref:`add_cancel_button()<class_AcceptDialog_method_add_cancel_button>`. Après retrait, appuyer sur ``button`` n'émettra plus les signaux :ref:`custom_action<class_AcceptDialog_signal_custom_action>` ou :ref:`canceled<class_AcceptDialog_signal_canceled>` de la boite de dialogue.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_AcceptDialog_theme_constant_buttons_min_height:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_min_height** = ``0`` :ref:`🔗<class_AcceptDialog_theme_constant_buttons_min_height>`

La hauteur minimale de chaque bouton de la ligne inférieure (comme OK/Annuler) en pixels. Cela peut être augmenté pour rendre les boutons avec des textes courts plus faciles à cliquer/presser.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_theme_constant_buttons_min_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_min_width** = ``0`` :ref:`🔗<class_AcceptDialog_theme_constant_buttons_min_width>`

La largeur minimale de chaque bouton de la ligne inférieure (comme OK/Annuler) en pixels. Cela peut être augmenté pour rendre les boutons avec des textes courts plus faciles à cliquer/presser.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_theme_constant_buttons_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_separation** = ``10`` :ref:`🔗<class_AcceptDialog_theme_constant_buttons_separation>`

La taille de l'espace vertical entre le contenu de la fenêtre et la ligne de boutons.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_AcceptDialog_theme_style_panel>`

Le panneau qui remplit l'arrière-plan de la fenêtre.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
