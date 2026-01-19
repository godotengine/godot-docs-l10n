:github_url: hide

.. _class_VisualInstance3D:

VisualInstance3D
================

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`Decal<class_Decal>`, :ref:`FogVolume<class_FogVolume>`, :ref:`GeometryInstance3D<class_GeometryInstance3D>`, :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>`, :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>`, :ref:`Light3D<class_Light3D>`, :ref:`LightmapGI<class_LightmapGI>`, :ref:`OccluderInstance3D<class_OccluderInstance3D>`, :ref:`OpenXRVisibilityMask<class_OpenXRVisibilityMask>`, :ref:`ReflectionProbe<class_ReflectionProbe>`, :ref:`RootMotionView<class_RootMotionView>`, :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>`, :ref:`VoxelGI<class_VoxelGI>`

Le parent de tous les nœuds visuels 3D.

.. rst-class:: classref-introduction-group

Description
-----------

La **VisualInstance3D** est utilisée pour connecter une ressource à une représentation visuelle. Tous les nœuds 3D visuels héritent de **VisualInstance3D**. En général, vous ne devriez pas accéder aux propriétés de la **VisualInstance3D** directement car elles sont accédées et gérées par les nœuds qui héritent de **VisualInstance3D**. **VisualInstance3D** est la représentation en nœud de l'instance :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`layers<class_VisualInstance3D_property_layers>`                                   | ``1``   |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`sorting_offset<class_VisualInstance3D_property_sorting_offset>`                   | ``0.0`` |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`bool<class_bool>`   | :ref:`sorting_use_aabb_center<class_VisualInstance3D_property_sorting_use_aabb_center>` |         |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`_get_aabb<class_VisualInstance3D_private_method__get_aabb>`\ (\ ) |virtual| |const|                                                                    |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`get_aabb<class_VisualInstance3D_method_get_aabb>`\ (\ ) |const|                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_base<class_VisualInstance3D_method_get_base>`\ (\ ) |const|                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_instance<class_VisualInstance3D_method_get_instance>`\ (\ ) |const|                                                                                |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_layer_mask_value<class_VisualInstance3D_method_get_layer_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_base<class_VisualInstance3D_method_set_base>`\ (\ base\: :ref:`RID<class_RID>`\ )                                                                  |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_layer_mask_value<class_VisualInstance3D_method_set_layer_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualInstance3D_property_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **layers** = ``1`` :ref:`🔗<class_VisualInstance3D_property_layers>`

.. rst-class:: classref-property-setget

- |void| **set_layer_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_mask**\ (\ )

The render layer(s) this **VisualInstance3D** is drawn on.

This object will only be visible for :ref:`Camera3D<class_Camera3D>`\ s whose cull mask includes any of the render layers this **VisualInstance3D** is set to.

For :ref:`Light3D<class_Light3D>`\ s, this can be used to control which **VisualInstance3D**\ s are affected by a specific light. For :ref:`GPUParticles3D<class_GPUParticles3D>`, this can be used to control which particles are effected by a specific attractor. For :ref:`Decal<class_Decal>`\ s, this can be used to control which **VisualInstance3D**\ s are affected by a specific decal.

To adjust :ref:`layers<class_VisualInstance3D_property_layers>` more easily using a script, use :ref:`get_layer_mask_value()<class_VisualInstance3D_method_get_layer_mask_value>` and :ref:`set_layer_mask_value()<class_VisualInstance3D_method_set_layer_mask_value>`.

\ **Note:** :ref:`VoxelGI<class_VoxelGI>`, SDFGI and :ref:`LightmapGI<class_LightmapGI>` will always take all layers into account to determine what contributes to global illumination. If this is an issue, set :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` to :ref:`GeometryInstance3D.GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>` for meshes and :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` to :ref:`Light3D.BAKE_DISABLED<class_Light3D_constant_BAKE_DISABLED>` for lights to exclude them from global illumination.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **sorting_offset** = ``0.0`` :ref:`🔗<class_VisualInstance3D_property_sorting_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sorting_offset**\ (\ )

La quantité par laquelle la profondeur de cette **VisualInstance3D** sera ajustée lors du tri par profondeur. Utilise les mêmes unités que le moteur (qui sont généralement des mètres). L'ajuster à une valeur plus élevée fera que les **VisualInstance3D** se dessinent de manière fiable sur les autres **VisualInstance3D** qui sont sinon positionnées au même endroit. Pour s'assurer qu'elle se dessine toujours au-dessus des autres objets autour d'elle (non positionnés au même endroit), définissez la valeur pour qu'elle soit supérieure à la distance entre cette **VisualInstance3D** et les autres **VisualInstance3D** à proximité.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_use_aabb_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sorting_use_aabb_center** :ref:`🔗<class_VisualInstance3D_property_sorting_use_aabb_center>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_use_aabb_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sorting_use_aabb_center**\ (\ )

Si ``true``, l'objet est trié en fonction du centre de l':ref:`AABB<class_AABB>`. L'objet sera trié en fonction de la position globale sinon.

Le tri basé sur le centre de la :ref:`AABB<class_AABB>` est généralement plus précis pour les modèles 3D. Le tri basé sur la position permet à la place de mieux contrôler l'ordre de dessin lorsqu'on travaille avec :ref:`GPUParticles3D<class_GPUParticles3D>` et :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_VisualInstance3D_private_method__get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **_get_aabb**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualInstance3D_private_method__get_aabb>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_aabb>`

Renvoie la :ref:`AABB<class_AABB>` (aussi connue comme la boîte délimitante) pour cette **VisualInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_base:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_base**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_base>`

Renvoie le RID de la ressource associée avec cette **VisualInstance3D**. Par exemple, si le nœud est une :ref:`MeshInstance3D<class_MeshInstance3D>`, cela renvoie le RID du :ref:`Mesh<class_Mesh>` associé.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_instance**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_instance>`

Renvoie le RID de cette instance. Ce RID est le même que le RID renvoyé par :ref:`RenderingServer.instance_create()<class_RenderingServer_method_instance_create>`. Ce RID est nécessaire si vous voulez appeler les fonctions de :ref:`RenderingServer<class_RenderingServer>` directement sur cette **VisualInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_layer_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_layer_mask_value>`

Renvoie si la couche spécifiée de :ref:`layers<class_VisualInstance3D_property_layers>` est activée ou non, compte tenu d'un numéro de couche ``layer_number`` entre 1 et 20.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_base:

.. rst-class:: classref-method

|void| **set_base**\ (\ base\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_base>`

Définit la ressource qui est instanciée par cette **VisualInstance3D**, ce qui modifie la façon dont le moteur gère la **VisualInstance3D** en interne. Équivalent à :ref:`RenderingServer.instance_set_base()<class_RenderingServer_method_instance_set_base>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_layer_mask_value:

.. rst-class:: classref-method

|void| **set_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_layer_mask_value>`

Selon ``value``, active ou désactive la couche spécifiée dans :ref:`layers<class_VisualInstance3D_property_layers>`, selon un numéro de couche ``layer_number`` entre 1 et 20.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
