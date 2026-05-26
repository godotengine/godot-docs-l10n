:github_url: hide

.. _class_Material:

Material
========

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BlitMaterial<class_BlitMaterial>`, :ref:`CanvasItemMaterial<class_CanvasItemMaterial>`, :ref:`FogMaterial<class_FogMaterial>`, :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`, :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`, :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`, :ref:`PlaceholderMaterial<class_PlaceholderMaterial>`, :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`, :ref:`ShaderMaterial<class_ShaderMaterial>`

Classe de base virtuelle pour appliquer des propriétés visuelles à un objet, comme la couleur et la rugosité.

.. rst-class:: classref-introduction-group

Description
-----------

**Material** est une ressource de base utilisée pour colorer et ombrager la géométrie. Tous les matériaux héritent d'elle et presque tous les nœuds dérivés de :ref:`VisualInstance3D<class_VisualInstance3D>` portent un **Material**. Quelques drapeaux et paramètres sont partagés entre tous les types de matériaux et sont configurés ici.

Notamment, vous pouvez hériter de **Material** pour créer votre propre type de matériau personnalisé dans un script ou dans une GDExtension.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de test des matériaux 3D <https://godotengine.org/asset-library/asset/2742>`__

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------+
   | :ref:`Material<class_Material>` | :ref:`next_pass<class_Material_property_next_pass>`             |
   +---------------------------------+-----------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`render_priority<class_Material_property_render_priority>` |
   +---------------------------------+-----------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_can_do_next_pass<class_Material_private_method__can_do_next_pass>`\ (\ ) |virtual| |const|               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_can_use_render_priority<class_Material_private_method__can_use_render_priority>`\ (\ ) |virtual| |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Mode<enum_Shader_Mode>`   | :ref:`_get_shader_mode<class_Material_private_method__get_shader_mode>`\ (\ ) |virtual| |required| |const|      |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`           | :ref:`_get_shader_rid<class_Material_private_method__get_shader_rid>`\ (\ ) |virtual| |required| |const|        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Material_method_create_placeholder>`\ (\ ) |const|                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`inspect_native_shader_code<class_Material_method_inspect_native_shader_code>`\ (\ )                       |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Material_constant_RENDER_PRIORITY_MAX:

.. rst-class:: classref-constant

**RENDER_PRIORITY_MAX** = ``127`` :ref:`🔗<class_Material_constant_RENDER_PRIORITY_MAX>`

La valeur maximale pour le paramètre :ref:`render_priority<class_Material_property_render_priority>`.

.. _class_Material_constant_RENDER_PRIORITY_MIN:

.. rst-class:: classref-constant

**RENDER_PRIORITY_MIN** = ``-128`` :ref:`🔗<class_Material_constant_RENDER_PRIORITY_MIN>`

La valeur minimale pour le paramètre :ref:`render_priority<class_Material_property_render_priority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Material_property_next_pass:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **next_pass** :ref:`🔗<class_Material_property_next_pass>`

.. rst-class:: classref-property-setget

- |void| **set_next_pass**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_next_pass**\ (\ )

Définit le **Material** à utiliser pour le prochain passe. Cela rend l'objet à nouveau en utilisant un matériau différent.

\ **Note :** Les matériaux :ref:`next_pass<class_Material_property_next_pass>` ne sont pas nécessairement dessinés immédiatement après le **Material** source. L'ordre de dessin est déterminé par les propriétés du matériau, :ref:`render_priority<class_Material_property_render_priority>`, et la distance à la caméra.

\ **Note :** Ceci ne s'applique qu'aux :ref:`StandardMaterial3D<class_StandardMaterial3D>`\ s et :ref:`ShaderMaterial<class_ShaderMaterial>`\ s avec le type "Spatial".

.. rst-class:: classref-item-separator

----

.. _class_Material_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** :ref:`🔗<class_Material_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

Définit la priorité de rendu des objets dans les scènes 3D. Des objets prioritaires plus élevés seront placés devant des objets prioritaires inférieurs. En d'autres termes, tous les objets avec une :ref:`render_priority<class_Material_property_render_priority>` de ``1`` rendront au-dessus de tous les objets avec une :ref:`render_priority<class_Material_property_render_priority>` de ``0``.

\ **Note :** Ceci ne s'applique qu'aux :ref:`StandardMaterial3D<class_StandardMaterial3D>`\ s et :ref:`ShaderMaterial<class_ShaderMaterial>`\ s avec le type "Spatial".

\ **Note :** Cela n'aura pas d'impact sur la façon dont les objets transparents sont triés par rapport aux objets opaques ou sur la façon dont les maillages dynamiques seront triés par rapport aux autres maillages opaques. C'est parce que tous les objets transparents sont dessinés après tous les objets opaques et que tous les maillages opaques dynamiques sont dessinés avant les autres maillages opaques.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Material_private_method__can_do_next_pass:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_do_next_pass**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_do_next_pass>`

Seulement exposée dans le but de la redéfinir. Vous ne pouvez pas appeler cette fonction directement. Utilisée en interne pour déterminer si :ref:`next_pass<class_Material_property_next_pass>` doit être affiché dans l'éditeur ou non.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__can_use_render_priority:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_use_render_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_use_render_priority>`

Seulement exposée dans le but de la redéfinir. Vous ne pouvez pas appeler cette fonction directement. Utilisée en interne pour déterminer si :ref:`render_priority<class_Material_property_render_priority>` doit être affiché dans l'éditeur ou non.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_mode:

.. rst-class:: classref-method

:ref:`Mode<enum_Shader_Mode>` **_get_shader_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_mode>`

Seulement exposée dans le but de la redéfinir. Vous ne pouvez pas appeler cette fonction directement. Utilisée en interne par plusieurs outils de l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_shader_rid**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_rid>`

Seulement exposée dans le but de la redéfinir. Vous ne pouvez pas appeler cette fonction directement. Utilisée en interne par plusieurs outils de l'éditeur. Utilisée pour accéder au RID du :ref:`Shader<class_Shader>` de ce **Material**.

.. rst-class:: classref-item-separator

----

.. _class_Material_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Material_method_create_placeholder>`

Crée une version placeholder de cette ressource (:ref:`PlaceholderMaterial<class_PlaceholderMaterial>`).

.. rst-class:: classref-item-separator

----

.. _class_Material_method_inspect_native_shader_code:

.. rst-class:: classref-method

|void| **inspect_native_shader_code**\ (\ ) :ref:`🔗<class_Material_method_inspect_native_shader_code>`

Seulement disponible dans l'éditeur. Ouvre un popup qui visualise le code de shader généré, y compris toutes les variantes et le code interne du shader. Voir aussi :ref:`Shader.inspect_native_shader_code()<class_Shader_method_inspect_native_shader_code>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
