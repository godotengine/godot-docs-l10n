:github_url: hide

.. _class_OpenXRInteractionProfileEditorBase:

OpenXRInteractionProfileEditorBase
==================================

**Hérite de :** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`OpenXRInteractionProfileEditor<class_OpenXRInteractionProfileEditor>`

Classe de base pour l'édition des profils d'interaction.

.. rst-class:: classref-introduction-group

Description
-----------

Il s'agit d'une classe de base pour les éditeurs de profil d'interaction utilisé par l'éditeur d'action map OpenXR. Elle peut être utilisée pour créer des éditeurs sur mesure pour des profils d'interaction spécifiques.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`setup<class_OpenXRInteractionProfileEditorBase_method_setup>`\ (\ action_map\: :ref:`OpenXRActionMap<class_OpenXRActionMap>`, interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRInteractionProfileEditorBase_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ action_map\: :ref:`OpenXRActionMap<class_OpenXRActionMap>`, interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) :ref:`🔗<class_OpenXRInteractionProfileEditorBase_method_setup>`

Configure cet éditeur pour l'``action_map`` et le profil d'interaction ``interaction_profile`` fournis.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
