:github_url: hide

.. _class_SubViewport:

SubViewport
===========

**Hérite de :** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une interface vers un monde de jeu qui ne crée pas de fenêtre ou ne dessine pas directement à l'écran.

.. rst-class:: classref-introduction-group

Description
-----------

**SubViewport** isole une région rectangulaire d'une scène à afficher indépendamment. Cela peut être utilisé, par exemple, pour afficher l'interface utilisateur dans l'espace 3D.

\ **Note :** **SubViewport** est un :ref:`Viewport<class_Viewport>` qui n'est pas une :ref:`Window<class_Window>`, c'est-à-dire qu'il ne dessine rien par lui-même. Pour afficher quoi que ce soit, **SubViewport** doit avoir une taille non nulle et être placé à l'intérieur d'un :ref:`SubViewportContainer<class_SubViewportContainer>` ou assigné à une :ref:`ViewportTexture<class_ViewportTexture>`.

\ **Note :** Les :ref:`InputEvent<class_InputEvent>` ne sont pas transmis à un **SubViewport** autonome par défaut. Pour assurer la propagation des :ref:`InputEvent<class_InputEvent>`, un **SubViewport** peut être placé à l'intérieur d'un :ref:`SubViewportContainer<class_SubViewportContainer>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation des Viewports <../tutorials/rendering/viewports>`

- :doc:`Transformations du canevas et de la fenêtre d'affichage <../tutorials/2d/2d_transforms>`

- `Démo de GUI dans un Viewport 3D <https://godotengine.org/asset-library/asset/2807>`__

- `Démo pour de la 3D dans un viewport 2D <https://godotengine.org/asset-library/asset/2804>`__

- `Démo pour de la 2D dans un viewport 3D <https://godotengine.org/asset-library/asset/2803>`__

- `Démo de capture d'écran <https://godotengine.org/asset-library/asset/2808>`__

- `Démo de l'écran partagé dynamique <https://godotengine.org/asset-library/asset/2806>`__

- `Démo de redimensionnement de la résolution 3D <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`ClearMode<enum_SubViewport_ClearMode>`   | :ref:`render_target_clear_mode<class_SubViewport_property_render_target_clear_mode>`   | ``0``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`UpdateMode<enum_SubViewport_UpdateMode>` | :ref:`render_target_update_mode<class_SubViewport_property_render_target_update_mode>` | ``2``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                | :ref:`size<class_SubViewport_property_size>`                                           | ``Vector2i(512, 512)`` |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                | :ref:`size_2d_override<class_SubViewport_property_size_2d_override>`                   | ``Vector2i(0, 0)``     |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                        | :ref:`size_2d_override_stretch<class_SubViewport_property_size_2d_override_stretch>`   | ``false``              |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                          | :ref:`view_count<class_SubViewport_property_view_count>`                               | ``1``                  |
   +------------------------------------------------+----------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_SubViewport_ClearMode:

.. rst-class:: classref-enumeration

enum **ClearMode**: :ref:`🔗<enum_SubViewport_ClearMode>`

.. _class_SubViewport_constant_CLEAR_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_ALWAYS** = ``0``

Toujours effacer la cible de rendu avant d'y dessiner.

.. _class_SubViewport_constant_CLEAR_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_NEVER** = ``1``

Ne jamais nettoyer la cible de rendu.

.. _class_SubViewport_constant_CLEAR_MODE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`ClearMode<enum_SubViewport_ClearMode>` **CLEAR_MODE_ONCE** = ``2``

Vider la cible de rendu pour la trame suivante, puis passer en :ref:`CLEAR_MODE_NEVER<class_SubViewport_constant_CLEAR_MODE_NEVER>`.

.. rst-class:: classref-item-separator

----

.. _enum_SubViewport_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_SubViewport_UpdateMode>`

.. _class_SubViewport_constant_UPDATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_DISABLED** = ``0``

Ne pas mettre à jour la cible de rendu.

.. _class_SubViewport_constant_UPDATE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_ONCE** = ``1``

Mettre à jour la cible de rendu une seule fois, puis passer en mode :ref:`UPDATE_DISABLED<class_SubViewport_constant_UPDATE_DISABLED>`.

.. _class_SubViewport_constant_UPDATE_WHEN_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_WHEN_VISIBLE** = ``2``

Mettre à jour la cible de rendu seulement quand elle est visible. Il s'agit de la valeur par défaut.

.. _class_SubViewport_constant_UPDATE_WHEN_PARENT_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_WHEN_PARENT_VISIBLE** = ``3``

Mettre à jour la cible de rendu seulement quand son parent est visible.

.. _class_SubViewport_constant_UPDATE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **UPDATE_ALWAYS** = ``4``

Mettre toujours à jour la cible de rendu.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SubViewport_property_render_target_clear_mode:

.. rst-class:: classref-property

:ref:`ClearMode<enum_SubViewport_ClearMode>` **render_target_clear_mode** = ``0`` :ref:`🔗<class_SubViewport_property_render_target_clear_mode>`

.. rst-class:: classref-property-setget

- |void| **set_clear_mode**\ (\ value\: :ref:`ClearMode<enum_SubViewport_ClearMode>`\ )
- :ref:`ClearMode<enum_SubViewport_ClearMode>` **get_clear_mode**\ (\ )

Le mode de nettoyage quand le sub-viewport est utilisé comme cible de rendu.

\ **Note :** Cette propriété est destinée à une utilisation 2D.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_render_target_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_SubViewport_UpdateMode>` **render_target_update_mode** = ``2`` :ref:`🔗<class_SubViewport_property_render_target_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_SubViewport_UpdateMode>`\ )
- :ref:`UpdateMode<enum_SubViewport_UpdateMode>` **get_update_mode**\ (\ )

Le mode de mise à jour lorsque le sub-viewport est utilisé comme cible de rendu.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(512, 512)`` :ref:`🔗<class_SubViewport_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size**\ (\ )

La largeur et la hauteur du sub-viewport. Doit être défini à une valeur supérieure ou égale à 2 pixels dans les deux dimensions. Sinon, rien ne sera affiché.

\ **Note :** Si le nœud parent est un :ref:`SubViewportContainer<class_SubViewportContainer>` et son :ref:`SubViewportContainer.stretch<class_SubViewportContainer_property_stretch>` vaut ``true``, la taille du viewport ne peut pas être modifiée manuellement.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size_2d_override:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size_2d_override** = ``Vector2i(0, 0)`` :ref:`🔗<class_SubViewport_property_size_2d_override>`

.. rst-class:: classref-property-setget

- |void| **set_size_2d_override**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size_2d_override**\ (\ )

La redéfinition de la taille 2D du sub-viewport. Si la largeur ou la hauteur vaut ``0``, la redéfinition est désactivée.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_size_2d_override_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **size_2d_override_stretch** = ``false`` :ref:`🔗<class_SubViewport_property_size_2d_override_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_size_2d_override_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_size_2d_override_stretch_enabled**\ (\ )

Si ``true``, la redéfinition de la taille 2D affecte également l'étirement.

.. rst-class:: classref-item-separator

----

.. _class_SubViewport_property_view_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **view_count** = ``1`` :ref:`🔗<class_SubViewport_property_view_count>`

.. rst-class:: classref-property-setget

- |void| **set_view_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_view_count**\ (\ )

The number of view layers we are rendering to. Set this to ``2`` to enable stereo rendering.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
