:github_url: hide

.. _class_ArrayOccluder3D:

ArrayOccluder3D
===============

**Hérite de :** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Forme de polygone 3D à utiliser avec l'occlusion culling dans :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Description
-----------

**ArrayOccluder3D** stocke une forme de polygone 3D arbitraire qui peut être utilisée par le système d'occlusion culling du moteur. Ceci est analogue à :ref:`ArrayMesh<class_ArrayMesh>`, mais pour les occulteurs.

Voir la documentation de :ref:`OccluderInstance3D<class_OccluderInstance3D>` pour les instructions sur la mise en place de l'occlusion culling.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Occlusion culling <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`indices<class_ArrayOccluder3D_property_indices>`   | ``PackedInt32Array()``   |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`vertices<class_ArrayOccluder3D_property_vertices>` | ``PackedVector3Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_arrays<class_ArrayOccluder3D_method_set_arrays>`\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ArrayOccluder3D_property_indices:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **indices** = ``PackedInt32Array()`` :ref:`🔗<class_ArrayOccluder3D_property_indices>`

.. rst-class:: classref-property-setget

- |void| **set_indices**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_indices**\ (\ )

La position d'index de l'occulteur. Les indices déterminent quels points du tableau :ref:`vertices<class_ArrayOccluder3D_property_vertices>` devraient être dessinés, et dans quel ordre.

\ **Note :** L'occulteur est toujours mis à jour après avoir défini cette valeur. Si vous créez des occulteurs de façon procédurale, envisagez d'utiliser :ref:`set_arrays()<class_ArrayOccluder3D_method_set_arrays>` à la place pour éviter de mettre à jour l'occulteur deux fois lorsqu'il est créé.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_ArrayOccluder3D_property_vertices:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **vertices** = ``PackedVector3Array()`` :ref:`🔗<class_ArrayOccluder3D_property_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_vertices**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ )

Les positions des sommets de l'occulteur dans les coordonnées 3D locales.

\ **Note :** L'occulteur est toujours mis à jour après avoir défini cette valeur. Si vous créez des occulteur de façon procédurale, envisagez d'utiliser :ref:`set_arrays()<class_ArrayOccluder3D_method_set_arrays>` pour éviter de mettre à jour l'occulteur deux fois lorsqu'il est créé.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ArrayOccluder3D_method_set_arrays:

.. rst-class:: classref-method

|void| **set_arrays**\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_ArrayOccluder3D_method_set_arrays>`

Définit :ref:`indices<class_ArrayOccluder3D_property_indices>` et :ref:`vertices<class_ArrayOccluder3D_property_vertices>`, tout en mettant à jour l'occulteur final une fois seulement, après que les deux valeurs soient définies.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
