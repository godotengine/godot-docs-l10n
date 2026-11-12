:github_url: hide

.. _class_OccluderPolygon2D:

OccluderPolygon2D
=================

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Définit un polygone 2D pour LightOccluder2D.

.. rst-class:: classref-introduction-group

Description
-----------

Aide de l'édition pour dessiner un polygone 2D utilisé comme ressource pour un :ref:`LightOccluder2D<class_LightOccluder2D>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`closed<class_OccluderPolygon2D_property_closed>`       | ``true``                 |
   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+
   | :ref:`CullMode<enum_OccluderPolygon2D_CullMode>`    | :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>` | ``0``                    |
   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_OccluderPolygon2D_property_polygon>`     | ``PackedVector2Array()`` |
   +-----------------------------------------------------+--------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_OccluderPolygon2D_CullMode:

.. rst-class:: classref-enumeration

enum **CullMode**: :ref:`🔗<enum_OccluderPolygon2D_CullMode>`

.. _class_OccluderPolygon2D_constant_CULL_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_DISABLED** = ``0``

Le culling est désactivé. Voir :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`.

.. _class_OccluderPolygon2D_constant_CULL_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_CLOCKWISE** = ``1``

Le culling se fait dans le sens horaire. Voir :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`.

.. _class_OccluderPolygon2D_constant_CULL_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **CULL_COUNTER_CLOCKWISE** = ``2``

Le culling se fait dans le sens horaire inversé. Voir :ref:`cull_mode<class_OccluderPolygon2D_property_cull_mode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OccluderPolygon2D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``true`` :ref:`🔗<class_OccluderPolygon2D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

Si ``true``, ferme (boucle) le polygone. Un OccluderPolygon2D fermé bloque la lumière provenant de n'importe quelle direction. Un OccluderPolygon2D ouvert ne bloque que la lumière qui vient en direction de son alignement.

.. rst-class:: classref-item-separator

----

.. _class_OccluderPolygon2D_property_cull_mode:

.. rst-class:: classref-property

:ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **cull_mode** = ``0`` :ref:`🔗<class_OccluderPolygon2D_property_cull_mode>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mode**\ (\ value\: :ref:`CullMode<enum_OccluderPolygon2D_CullMode>`\ )
- :ref:`CullMode<enum_OccluderPolygon2D_CullMode>` **get_cull_mode**\ (\ )

Le mode de culling à utiliser.

.. rst-class:: classref-item-separator

----

.. _class_OccluderPolygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_OccluderPolygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Un tableau de :ref:`Vector2<class_Vector2>` avec les index des positions des sommets du polygone.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
