:github_url: hide

.. _class_TextureRect:

TextureRect
===========

**Hérite de :** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contrôle qui affiche une texture.

.. rst-class:: classref-introduction-group

Description
-----------

Un contrôle qui affiche une texture, par exemple une icône dans un GUI. Le placement de la texture peut être contrôlé avec la propriété :ref:`stretch_mode<class_TextureRect_property_stretch_mode>`. Elle peut être redimensionnée, répétée, ou rester centrée dans son rectangle délimitant.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`ExpandMode<enum_TextureRect_ExpandMode>`   | :ref:`expand_mode<class_TextureRect_property_expand_mode>`   | ``0``                                                                 |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flip_h<class_TextureRect_property_flip_h>`             | ``false``                                                             |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flip_v<class_TextureRect_property_flip_v>`             | ``false``                                                             |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`     | mouse_filter                                                 | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`StretchMode<enum_TextureRect_StretchMode>` | :ref:`stretch_mode<class_TextureRect_property_stretch_mode>` | ``0``                                                                 |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                | :ref:`texture<class_TextureRect_property_texture>`           |                                                                       |
   +--------------------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_TextureRect_ExpandMode:

.. rst-class:: classref-enumeration

enum **ExpandMode**: :ref:`🔗<enum_TextureRect_ExpandMode>`

.. _class_TextureRect_constant_EXPAND_KEEP_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_KEEP_SIZE** = ``0``

La taille minimale sera égale à la taille de la texture, c'est-à-dire **TextureRect** ne peut être plus petit que la texture.

.. _class_TextureRect_constant_EXPAND_IGNORE_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_IGNORE_SIZE** = ``1``

La taille de la texture ne sera pas considérée pour le calcul de la taille minimale, ainsi le **TextureRect** peut être rétréci en dessous de la taille de la texture.

.. _class_TextureRect_constant_EXPAND_FIT_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_WIDTH** = ``2``

La hauteur de la texture sera ignorée. La largeur minimale sera égale à la hauteur actuelle. Utilisable pour les dispositions horizontales, par exemple à l'intérieur d'un :ref:`HBoxContainer<class_HBoxContainer>`.

.. _class_TextureRect_constant_EXPAND_FIT_WIDTH_PROPORTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_WIDTH_PROPORTIONAL** = ``3``

Comme :ref:`EXPAND_FIT_WIDTH<class_TextureRect_constant_EXPAND_FIT_WIDTH>`, mais garde le rapport d'aspect de texture.

.. _class_TextureRect_constant_EXPAND_FIT_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_HEIGHT** = ``4``

La largeur de la texture sera ignorée. La hauteur minimale sera égale à la largeur actuelle. Utile pour les dispositions verticales, par exemple à l'intérieur d'un :ref:`VBoxContainer<class_VBoxContainer>`.

.. _class_TextureRect_constant_EXPAND_FIT_HEIGHT_PROPORTIONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **EXPAND_FIT_HEIGHT_PROPORTIONAL** = ``5``

Comme :ref:`EXPAND_FIT_HEIGHT<class_TextureRect_constant_EXPAND_FIT_HEIGHT>`, mais garde le rapport d'aspect de texture.

.. rst-class:: classref-item-separator

----

.. _enum_TextureRect_StretchMode:

.. rst-class:: classref-enumeration

enum **StretchMode**: :ref:`🔗<enum_TextureRect_StretchMode>`

.. _class_TextureRect_constant_STRETCH_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_SCALE** = ``0``

Change l'échelle pour adapter le rectangle total du nœud.

.. _class_TextureRect_constant_STRETCH_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_TILE** = ``1``

Tile inside the node's bounding rectangle.

\ **Note:** :ref:`STRETCH_TILE<class_TextureRect_constant_STRETCH_TILE>` mode is not supported for :ref:`texture<class_TextureRect_property_texture>` set to an :ref:`AtlasTexture<class_AtlasTexture>` with non-zero :ref:`AtlasTexture.margin<class_AtlasTexture_property_margin>`.

.. _class_TextureRect_constant_STRETCH_KEEP:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP** = ``2``

La texture conserve sa taille d’origine et reste dans le coin supérieur gauche du rectangle délimitant.

.. _class_TextureRect_constant_STRETCH_KEEP_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_CENTERED** = ``3``

La texture conserve sa taille d’origine et reste centrée dans le rectangle délimitant du nœud.

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT** = ``4``

Échelonne la texture pour s'adapter au rectangle délimitant du nœud, mais maintient le rapport d'aspect de la texture.

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT_CENTERED** = ``5``

Adapte la texture à la taille de l'élément en la centrant et en maintenant ses proportions.

.. _class_TextureRect_constant_STRETCH_KEEP_ASPECT_COVERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureRect_StretchMode>` **STRETCH_KEEP_ASPECT_COVERED** = ``6``

Échelonne la texture pour que le côté le plus court rentre dans le rectangle délimitant du nœud. L'autre côté est coupé aux limites du nœud.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_TextureRect_property_expand_mode:

.. rst-class:: classref-property

:ref:`ExpandMode<enum_TextureRect_ExpandMode>` **expand_mode** = ``0`` :ref:`🔗<class_TextureRect_property_expand_mode>`

.. rst-class:: classref-property-setget

- |void| **set_expand_mode**\ (\ value\: :ref:`ExpandMode<enum_TextureRect_ExpandMode>`\ )
- :ref:`ExpandMode<enum_TextureRect_ExpandMode>` **get_expand_mode**\ (\ )

**Expérimental :** Using :ref:`EXPAND_FIT_WIDTH<class_TextureRect_constant_EXPAND_FIT_WIDTH>`, :ref:`EXPAND_FIT_WIDTH_PROPORTIONAL<class_TextureRect_constant_EXPAND_FIT_WIDTH_PROPORTIONAL>`, :ref:`EXPAND_FIT_HEIGHT<class_TextureRect_constant_EXPAND_FIT_HEIGHT>`, or :ref:`EXPAND_FIT_HEIGHT_PROPORTIONAL<class_TextureRect_constant_EXPAND_FIT_HEIGHT_PROPORTIONAL>` may result in unstable behavior in some :ref:`Container<class_Container>` controls. This behavior may be re-evaluated and changed in the future.

Définit comment la taille minimale est déterminée en fonction de la taille de la texture.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TextureRect_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Si ``true``, la texture est inversée horizontalement.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TextureRect_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Si ``true``, la texture est inversée verticalement.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_TextureRect_StretchMode>` **stretch_mode** = ``0`` :ref:`🔗<class_TextureRect_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_TextureRect_StretchMode>`\ )
- :ref:`StretchMode<enum_TextureRect_StretchMode>` **get_stretch_mode**\ (\ )

Contrôle le comportement de la texture en redimensionnant le rectangle délimitant du nœud.

.. rst-class:: classref-item-separator

----

.. _class_TextureRect_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_TextureRect_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La ressource :ref:`Texture2D<class_Texture2D>` du nœud.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
