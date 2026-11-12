:github_url: hide

.. _class_GLTFPhysicsShape:

GLTFPhysicsShape
================

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Représente une forme physique glTF.

.. rst-class:: classref-introduction-group

Description
-----------

Représente une forme physique définie par les extensions glTF ``OMI_physics_shape`` ou ``OMI_collider``. Cette classe est un intermédiaire entre les données glTF et les nœuds de Godot, et elle est abstraite d'une manière qui permet d'ajouter du support à diverses extensions de physique glTF à l'avenir.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Chargement et sauvegarde de fichiers durant l’exécution <../tutorials/io/runtime_file_loading_and_saving>`

- `Extension glTF OMI_physics_shape <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_physics_shape>`__

- `Extension glTF OMI_collider <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/Archived/OMI_collider>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`               | :ref:`height<class_GLTFPhysicsShape_property_height>`               | ``2.0``              |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>` | :ref:`importer_mesh<class_GLTFPhysicsShape_property_importer_mesh>` |                      |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                 | :ref:`is_trigger<class_GLTFPhysicsShape_property_is_trigger>`       | ``false``            |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                   | :ref:`mesh_index<class_GLTFPhysicsShape_property_mesh_index>`       | ``-1``               |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`               | :ref:`radius<class_GLTFPhysicsShape_property_radius>`               | ``0.5``              |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`String<class_String>`             | :ref:`shape_type<class_GLTFPhysicsShape_property_shape_type>`       | ``""``               |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`           | :ref:`size<class_GLTFPhysicsShape_property_size>`                   | ``Vector3(1, 1, 1)`` |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_dictionary<class_GLTFPhysicsShape_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_node<class_GLTFPhysicsShape_method_from_node>`\ (\ shape_node\: :ref:`CollisionShape3D<class_CollisionShape3D>`\ ) |static| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_resource<class_GLTFPhysicsShape_method_from_resource>`\ (\ shape_resource\: :ref:`Shape3D<class_Shape3D>`\ ) |static|       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`             | :ref:`to_dictionary<class_GLTFPhysicsShape_method_to_dictionary>`\ (\ ) |const|                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CollisionShape3D<class_CollisionShape3D>` | :ref:`to_node<class_GLTFPhysicsShape_method_to_node>`\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ )                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Shape3D<class_Shape3D>`                   | :ref:`to_resource<class_GLTFPhysicsShape_method_to_resource>`\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ )                    |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GLTFPhysicsShape_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_GLTFPhysicsShape_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

La hauteur de la forme, en mètres. Ce n'est utilisé que lorsque le type de forme est ``"capsule"`` ou ``"cylinder"``. Cette valeur ne devrait pas être négative, et pour ``"capsule"`` elle devrait être au moins de deux fois le rayon.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_importer_mesh:

.. rst-class:: classref-property

:ref:`ImporterMesh<class_ImporterMesh>` **importer_mesh** :ref:`🔗<class_GLTFPhysicsShape_property_importer_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_importer_mesh**\ (\ value\: :ref:`ImporterMesh<class_ImporterMesh>`\ )
- :ref:`ImporterMesh<class_ImporterMesh>` **get_importer_mesh**\ (\ )

La ressource :ref:`ImporterMesh<class_ImporterMesh>` de la forme. Ce n'est utilisé que lorsque le type de forme est ``"hull"`` (enveloppe convexe) ou ``"trimesh"`` (maillage triangulaire concave).

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_is_trigger:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_trigger** = ``false`` :ref:`🔗<class_GLTFPhysicsShape_property_is_trigger>`

.. rst-class:: classref-property-setget

- |void| **set_is_trigger**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_trigger**\ (\ )

If ``true``, indicates that this shape is a trigger. For Godot, this means that the shape should be a child of an :ref:`Area3D<class_Area3D>` node.

This is the only variable not used in the :ref:`to_node()<class_GLTFPhysicsShape_method_to_node>` method, it's intended to be used alongside when deciding where to add the generated node as a child.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_mesh_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **mesh_index** = ``-1`` :ref:`🔗<class_GLTFPhysicsShape_property_mesh_index>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mesh_index**\ (\ )

L'index du maillage de la forme dans le fichier glTF. Ce n'est utilisé que lorsque le type de forme est ``"hull"`` (enveloppe convexe) ou ``"trimesh"`` (maillage triangulaire concave).

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_GLTFPhysicsShape_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Le rayon de la forme, en mètres. Ceci n'est utilisé que lorsque le type de forme est ``"capsule"``, ``"cylinder"``, ou ``"sphere"``. Cette valeur ne devrait pas être négative.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_shape_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **shape_type** = ``""`` :ref:`🔗<class_GLTFPhysicsShape_property_shape_type>`

.. rst-class:: classref-property-setget

- |void| **set_shape_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_shape_type**\ (\ )

Le type de forme que cette forme représente. Les valeurs valides sont ``"box"``, ``"capsule"``, ``"cylinder"``, ``"sphere"``, ``"hull"``, et ``"trimesh"``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_GLTFPhysicsShape_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

La taille de la forme, en mètres. Ceci est utilisé uniquement lorsque le type de forme est ``"box"``, et elle représente le diamètre (\ ``"diameter"``) de la boîte. Cette valeur ne devrait pas être négative.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GLTFPhysicsShape_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_dictionary>`

Crée une nouvelle instance GLTFPhysicsShape en interprétant le :ref:`Dictionary<class_Dictionary>` donné.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_node**\ (\ shape_node\: :ref:`CollisionShape3D<class_CollisionShape3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_node>`

Crée une nouvelle instance GLTFPhysicsShape depuis le nœud Godot :ref:`CollisionShape3D<class_CollisionShape3D>` donné.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_from_resource:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_resource**\ (\ shape_resource\: :ref:`Shape3D<class_Shape3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_resource>`

Crée une nouvelle instance GLTFPhysicsShape depuis le nœud Godot :ref:`Shape3D<class_Shape3D>` donné.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFPhysicsShape_method_to_dictionary>`

Sérialise cette instance GLTFPhysicsShape en un :ref:`Dictionary<class_Dictionary>` dans le format défini par ``OMI_physics_shape``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_node:

.. rst-class:: classref-method

:ref:`CollisionShape3D<class_CollisionShape3D>` **to_node**\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GLTFPhysicsShape_method_to_node>`

Convertit cette instance GLTFPhysicsShape en un nœud Godot :ref:`CollisionShape3D<class_CollisionShape3D>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_resource:

.. rst-class:: classref-method

:ref:`Shape3D<class_Shape3D>` **to_resource**\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GLTFPhysicsShape_method_to_resource>`

Convertit cette instance GLTFPhysicsShape en un nœud Godot :ref:`Shape3D<class_Shape3D>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
