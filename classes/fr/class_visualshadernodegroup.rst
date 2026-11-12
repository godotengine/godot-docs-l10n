:github_url: hide

.. _class_VisualShaderNodeGroup:

VisualShaderNodeGroup
=====================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A visual shader node that instances a :ref:`VisualShaderGroup<class_VisualShaderGroup>`.

.. rst-class:: classref-introduction-group

Description
-----------

Represents a :ref:`VisualShaderGroup<class_VisualShaderGroup>` inside a :ref:`VisualShader<class_VisualShader>` or another :ref:`VisualShaderGroup<class_VisualShaderGroup>`. Its input and output ports are defined by the assigned :ref:`group<class_VisualShaderNodeGroup_property_group>` resource.

If the group contains nodes incompatible with the current shader context, the outputs will use default values and a warning will be shown.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------+
   | :ref:`VisualShaderGroup<class_VisualShaderGroup>` | :ref:`group<class_VisualShaderNodeGroup_property_group>` |
   +---------------------------------------------------+----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeGroup_property_group:

.. rst-class:: classref-property

:ref:`VisualShaderGroup<class_VisualShaderGroup>` **group** :ref:`🔗<class_VisualShaderNodeGroup_property_group>`

.. rst-class:: classref-property-setget

- |void| **set_group**\ (\ value\: :ref:`VisualShaderGroup<class_VisualShaderGroup>`\ )
- :ref:`VisualShaderGroup<class_VisualShaderGroup>` **get_group**\ (\ )

The :ref:`VisualShaderGroup<class_VisualShaderGroup>` resource instanced by this node.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
