:github_url: hide

.. _class_StyleBox:

StyleBox
========

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`, :ref:`StyleBoxFlat<class_StyleBoxFlat>`, :ref:`StyleBoxLine<class_StyleBoxLine>`, :ref:`StyleBoxTexture<class_StyleBoxTexture>`

Classe de base abstraite pour définir des boîtes stylisées pour des éléments d'UI.

.. rst-class:: classref-introduction-group

Description
-----------

**StyleBox** is an abstract base class for drawing stylized boxes for UI elements. It is used for panels, buttons, :ref:`LineEdit<class_LineEdit>` backgrounds, :ref:`Tree<class_Tree>` backgrounds, etc. and also for testing a transparency mask for pointer signals. If mask test fails on a **StyleBox** assigned as mask to a control, clicks and motion signals will go through it to the one below.

\ **Note:** For control nodes that have *Theme Properties*, the ``focus`` **StyleBox** is displayed over the ``normal``, ``hover`` or ``pressed`` **StyleBox**. This makes the ``focus`` **StyleBox** more reusable across different nodes.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_left<class_StyleBox_property_content_margin_left>`     | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_right<class_StyleBox_property_content_margin_right>`   | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_top<class_StyleBox_property_content_margin_top>`       | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_draw<class_StyleBox_private_method__draw>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |required| |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`           | :ref:`_get_draw_rect<class_StyleBox_private_method__get_draw_rect>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const|                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`_get_minimum_size<class_StyleBox_private_method__get_minimum_size>`\ (\ ) |virtual| |const|                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`_test_mask<class_StyleBox_private_method__test_mask>`\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const|   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`draw<class_StyleBox_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                                   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_content_margin<class_StyleBox_method_get_content_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CanvasItem<class_CanvasItem>` | :ref:`get_current_item_drawn<class_StyleBox_method_get_current_item_drawn>`\ (\ ) |const|                                                                      |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_margin<class_StyleBox_method_get_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_minimum_size<class_StyleBox_method_get_minimum_size>`\ (\ ) |const|                                                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_offset<class_StyleBox_method_get_offset>`\ (\ ) |const|                                                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_content_margin<class_StyleBox_method_set_content_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_content_margin_all<class_StyleBox_method_set_content_margin_all>`\ (\ offset\: :ref:`float<class_float>`\ )                                          |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`test_mask<class_StyleBox_method_test_mask>`\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_StyleBox_property_content_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_bottom** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

The bottom margin for the contents of this style box. Increasing this value reduces the space available to the contents from the bottom.

If this value is negative, it is ignored and a child-specific margin is used instead. For example, for :ref:`StyleBoxFlat<class_StyleBoxFlat>`, the border thickness (if any) is used instead.

It is up to the code using this style box to decide what these contents are: for example, a :ref:`Button<class_Button>` respects this content margin for the textual contents of the button.

\ :ref:`get_margin()<class_StyleBox_method_get_margin>` should be used to fetch this value as consumer instead of reading these properties directly. This is because it correctly respects negative values and the fallback mentioned above.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_left** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La marge gauche pour le contenu de cette stylebox. Augmenter cette valeur réduit l'espace disponible pour le contenu à partir de la gauche.

Se référer à :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` pour des considérations supplémentaires.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_right** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La marge droite pour le contenu de cette stylebox. Augmenter cette valeur réduit l'espace disponible pour le contenu à partir de la droite.

Se référer à :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` pour des considérations supplémentaires.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_top** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La marge du haut pour le contenu de cette stylebox. Augmenter cette valeur réduit l'espace disponible pour le contenu à partir du haut.

Se référer à :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` pour des considérations supplémentaires.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_StyleBox_private_method__draw:

.. rst-class:: classref-method

|void| **_draw**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |required| |const| :ref:`🔗<class_StyleBox_private_method__draw>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__get_draw_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **_get_draw_rect**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__get_draw_rect>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_minimum_size**\ (\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__get_minimum_size>`

Méthode virtuelle à implémenter par l'utilisateur. Renvoie une taille minimale personnalisée que la stylebox doit respecter lors du dessin. Par défaut :ref:`get_minimum_size()<class_StyleBox_method_get_minimum_size>` prend uniquement en compte les marges du contenu. Cette méthode peut être redéfinie pour ajouter une autre restriction de taille. Une combinaison du comportement par défaut et de la sortie de cette méthode sera utilisée pour tenir compte des deux tailles.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__test_mask:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_test_mask**\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__test_mask>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_StyleBox_method_draw>`

Dessine cette stylebox en utilisant un élément de canevasidentifié par le :ref:`RID<class_RID>` donné.

La valeur du :ref:`RID<class_RID>` peut soit être le résultat de :ref:`CanvasItem.get_canvas_item()<class_CanvasItem_method_get_canvas_item>` appelé sur un nœud dérivé de :ref:`CanvasItem<class_CanvasItem>` existant, ou directement de la création d'un élément de canevas dans le :ref:`RenderingServer<class_RenderingServer>` avec :ref:`RenderingServer.canvas_item_create()<class_RenderingServer_method_canvas_item_create>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_content_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBox_method_get_content_margin>`

Renvoie la marge par défaut du côté :ref:`Side<enum_@GlobalScope_Side>` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_current_item_drawn:

.. rst-class:: classref-method

:ref:`CanvasItem<class_CanvasItem>` **get_current_item_drawn**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_current_item_drawn>`

Renvoie le :ref:`CanvasItem<class_CanvasItem>` qui gère sa :ref:`CanvasItem.NOTIFICATION_DRAW<class_CanvasItem_constant_NOTIFICATION_DRAW>` ou sa méthode :ref:`CanvasItem._draw()<class_CanvasItem_private_method__draw>` actuellement.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBox_method_get_margin>`

Renvoie le décalage de la marge de contenu pour le côté :ref:`Side<enum_@GlobalScope_Side>` spécifié.

Les valeurs positives réduisent la taille vers l'intérieur, contrairement aux valeurs des marges de :ref:`Control<class_Control>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_minimum_size**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_minimum_size>`

Renvoie la taille minimale à laquelle cette stylebox peut être réduite.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_offset**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_offset>`

Renvoie le "décalage" d'une boîte de style. Cette fonction d'aide renvoie une valeur équivalente à ``Vector2(style.get_margin(MARGIN_LEFT), style.get_margin(MARGIN_TOP))``.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_set_content_margin:

.. rst-class:: classref-method

|void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBox_method_set_content_margin>`

Définit la valeur par défaut du côté :ref:`Side<enum_@GlobalScope_Side>` spécifié à ``offset`` pixels.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_set_content_margin_all:

.. rst-class:: classref-method

|void| **set_content_margin_all**\ (\ offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBox_method_set_content_margin_all>`

Définit la marge par défaut à ``offset`` pixels pour tous les côtés.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_test_mask:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_mask**\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_StyleBox_method_test_mask>`

Teste une position dans un rectangle, renvoie si elle passe le test de masque.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
