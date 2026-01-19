:github_url: hide

.. _class_MeshInstance2D:

MeshInstance2D
==============

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud utilisé pour afficher des :ref:`Mesh<class_Mesh>` en 2D.

.. rst-class:: classref-introduction-group

Description
-----------

Node used for displaying a :ref:`Mesh<class_Mesh>` in 2D. This can be faster to render compared to displaying a :ref:`Sprite2D<class_Sprite2D>` node with large transparent areas, especially if the node takes up a lot of space on screen at high viewport resolutions. This is because using a mesh designed to fit the sprite's opaque areas will reduce GPU fill rate utilization (at the cost of increased vertex processing utilization).

When a :ref:`Mesh<class_Mesh>` has to be instantiated more than thousands of times close to each other, consider using a :ref:`MultiMesh<class_MultiMesh>` in a :ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>` instead.

A **MeshInstance2D** can be created from an existing :ref:`Sprite2D<class_Sprite2D>` via a tool in the editor toolbar. Select the :ref:`Sprite2D<class_Sprite2D>` node, then choose **Sprite2D > Convert to MeshInstance2D** at the top of the 2D editor viewport.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`maillages 2D <../tutorials/2d/2d_meshes>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`           | :ref:`mesh<class_MeshInstance2D_property_mesh>`       |
   +-----------------------------------+-------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_MeshInstance2D_property_texture>` |
   +-----------------------------------+-------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_MeshInstance2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_MeshInstance2D_signal_texture_changed>`

Émis quand la :ref:`texture<class_MeshInstance2D_property_texture>` a changé.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_MeshInstance2D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshInstance2D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

Le :ref:`Mesh<class_Mesh>` qui sera affiché par le **MeshInstance2D**.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_MeshInstance2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La :ref:`Texture2D<class_Texture2D>` qui sera utilisée si vous utilisez le :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` par défaut. Peut être accédée via ``TEXTURE`` dans le shader du CanvasItem.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
