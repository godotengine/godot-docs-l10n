:github_url: hide

.. _class_FogMaterial:

FogMaterial
===========

**Hérite de :** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un matériau qui contrôle la façon dont le brouillard volumétrique est rendu, à attribuer à un :ref:`FogVolume<class_FogVolume>`.

.. rst-class:: classref-introduction-group

Description
-----------

Une ressource :ref:`Material<class_Material>` qui peut être utilisée par des :ref:`FogVolume<class_FogVolume>`\ s pour dessiner des effets volumétriques.

Si vous avez besoin d'effets plus avancés, utilisez un :doc:`shader de brouillard <../tutorials/shaders/shader_reference/fog_shader>` personnalisé.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`albedo<class_FogMaterial_property_albedo>`                   | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`density<class_FogMaterial_property_density>`                 | ``1.0``               |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Texture3D<class_Texture3D>` | :ref:`density_texture<class_FogMaterial_property_density_texture>` |                       |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`edge_fade<class_FogMaterial_property_edge_fade>`             | ``0.1``               |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`emission<class_FogMaterial_property_emission>`               | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`height_falloff<class_FogMaterial_property_height_falloff>`   | ``0.0``               |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_FogMaterial_property_albedo:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **albedo** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FogMaterial_property_albedo>`

.. rst-class:: classref-property-setget

- |void| **set_albedo**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_albedo**\ (\ )

La :ref:`Color<class_Color>` de la diffusion unique du :ref:`FogVolume<class_FogVolume>`. En interne, :ref:`albedo<class_FogMaterial_property_albedo>` est converti en diffusion unique, qui est mélangé additivement avec d'autres :ref:`FogVolume<class_FogVolume>`\ s et :ref:`Environment.volumetric_fog_albedo<class_Environment_property_volumetric_fog_albedo>`.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_density:

.. rst-class:: classref-property

:ref:`float<class_float>` **density** = ``1.0`` :ref:`🔗<class_FogMaterial_property_density>`

.. rst-class:: classref-property-setget

- |void| **set_density**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_density**\ (\ )

La densité du :ref:`FogVolume<class_FogVolume>`. Les objets plus denses sont plus opaques, mais peuvent souffrir d’artefacts de sous-échantillonnage qui ressemblent à des rayures. Des valeurs négatives peuvent être utilisées pour soustraire le brouillard d'autres :ref:`FogVolume<class_FogVolume>` ou du brouillard volumétrique global.

\ **Note :** En raison d'une précision limitée, les valeurs de :ref:`density<class_FogMaterial_property_density>` entre ``-0.001`` et ``0.001`` (exclusives) agissent comme ``0.0``. Cela ne s'applique pas à :ref:`Environment.volumetric_fog_density<class_Environment_property_volumetric_fog_density>`.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_density_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **density_texture** :ref:`🔗<class_FogMaterial_property_density_texture>`

.. rst-class:: classref-property-setget

- |void| **set_density_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_density_texture**\ (\ )

La texture 3D utilisée pour l'échelle de la densité :ref:`density<class_FogMaterial_property_density>` du :ref:`FogVolume<class_FogVolume>`. Cela peut être utilisé pour faire varier la densité du brouillard dans le :ref:`FogVolume<class_FogVolume>` avec toute sorte de motif statique. Pour des effets animés, envisagez d'utiliser un :doc:`shader de brouillard <../tutorials/shaders/shader_reference/fog_shader>` personnalisé.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_edge_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_fade** = ``0.1`` :ref:`🔗<class_FogMaterial_property_edge_fade>`

.. rst-class:: classref-property-setget

- |void| **set_edge_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_fade**\ (\ )

La dureté des bords du :ref:`FogVolume<class_FogVolume>`. Une valeur plus élevée résultera en des bords plus lisses, tandis qu'une valeur plus basse résultera en des bords plus nets.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_emission:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **emission** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_FogMaterial_property_emission>`

.. rst-class:: classref-property-setget

- |void| **set_emission**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_emission**\ (\ )

Le :ref:`Color<class_Color>` de la lumière émise par le :ref:`FogVolume<class_FogVolume>`. La lumière émise ne projettera pas de lumière ou d'ombres sur d'autres objets, mais peut être utile pour moduler la :ref:`Color<class_Color>` du :ref:`FogVolume<class_FogVolume>` indépendamment des sources de lumière.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_height_falloff:

.. rst-class:: classref-property

:ref:`float<class_float>` **height_falloff** = ``0.0`` :ref:`🔗<class_FogMaterial_property_height_falloff>`

.. rst-class:: classref-property-setget

- |void| **set_height_falloff**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height_falloff**\ (\ )

Le taux par lequel le brouillard basé sur la hauteur diminue de densité à mesure que la hauteur augmente dans le repère du monde. Une forte diminution résultera en une transition brute, tandis qu'une faible diminution résultera en une transition plus fluide. Une valeur de ``0.0`` résulte en un brouillard à densité uniforme. Le seuil de hauteur est déterminé par la hauteur du :ref:`FogVolume<class_FogVolume>` associé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
