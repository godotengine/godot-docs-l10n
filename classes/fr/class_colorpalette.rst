:github_url: hide

.. _class_ColorPalette:

ColorPalette
============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une classe de ressource pour gérer une palette de couleurs, qui peut être chargée et sauvegardée en utilisant :ref:`ColorPicker<class_ColorPicker>`.

.. rst-class:: classref-introduction-group

Description
-----------

La ressource **ColorPalette** est conçue pour stocker et gérer une collection de couleurs. Cette ressource est utile dans les scénarios où un ensemble prédéfini de couleurs est nécessaire, comme pour créer des thèmes, concevoir des interfaces utilisateur ou gérer des ressources de jeu. Le contrôle intégré :ref:`ColorPicker<class_ColorPicker>` peut également utiliser **ColorPalette** sans code supplémentaire.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------+------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`colors<class_ColorPalette_property_colors>` | ``PackedColorArray()`` |
   +-------------------------------------------------+---------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ColorPalette_property_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **colors** = ``PackedColorArray()`` :ref:`🔗<class_ColorPalette_property_colors>`

.. rst-class:: classref-property-setget

- |void| **set_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_colors**\ (\ )

Un :ref:`PackedColorArray<class_PackedColorArray>` contenant les couleurs dans la palette.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
