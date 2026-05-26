:github_url: hide

.. _class_PopupPanel:

PopupPanel
==========

**Hérite de :** :ref:`Popup<class_Popup>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une popup avec un panneau en arrière-plan.

.. rst-class:: classref-introduction-group

Description
-----------

Une popup avec un panneau en arrière-plan. Tout contrôle enfant ajouté à ce nœud sera étiré pour correspondre à la taille du panneau (similaire à comment :ref:`PanelContainer<class_PanelContainer>` fonctionne). Si vous faites des fenêtres, regardez :ref:`Window<class_Window>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`DefaultCanvasItemTextureFilter<enum_Viewport_DefaultCanvasItemTextureFilter>` | canvas_item_default_texture_filter | ``4`` (overrides :ref:`Viewport<class_Viewport_property_canvas_item_default_texture_filter>`) |
   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`DefaultCanvasItemTextureRepeat<enum_Viewport_DefaultCanvasItemTextureRepeat>` | canvas_item_default_texture_repeat | ``3`` (overrides :ref:`Viewport<class_Viewport_property_canvas_item_default_texture_repeat>`) |
   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                             | transparent                        | ``true`` (overrides :ref:`Window<class_Window_property_transparent>`)                         |
   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                             | transparent_bg                     | ``true`` (overrides :ref:`Viewport<class_Viewport_property_transparent_bg>`)                  |
   +-------------------------------------------------------------------------------------+------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel<class_PopupPanel_theme_style_panel>` |
   +---------------------------------+--------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_PopupPanel_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_PopupPanel_theme_style_panel>`

:ref:`StyleBox<class_StyleBox>` pour le panneau de l'arrière-plan.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
