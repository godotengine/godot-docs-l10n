:github_url: hide

.. _class_PanoramaSkyMaterial:

PanoramaSkyMaterial
===================

**Hérite de :** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un matériau qui fournit une texture spéciale à un :ref:`Sky<class_Sky>`, généralement un panorama HDR.

.. rst-class:: classref-introduction-group

Description
-----------

Une ressource référencée dans un ciel :ref:`Sky<class_Sky>` qui est utilisée pour dessiner un arrière-plan. Les fonctions de matériau de ciel en panorama **PanoramaSkyMaterial** sont similaires aux skyboxes dans d'autre moteurs, à la différence qu'ils utilisent une skymap équi-rectengulaire à la place d'une :ref:`Cubemap<class_Cubemap>`.

Utiliser un panorama HDR est fortement recommandé pour des réflexions précises et de haute qualité. Godot supporte les HDR de rayonnements (\ ``.hdr``) et les formats d'images OpenEXR (\ ``.exr``) dans ce but.

Vous pouvez utiliser `cet outil <https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html>`__ pour convertir une cubemap en une skymap équi-rectengulaire.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`         | :ref:`energy_multiplier<class_PanoramaSkyMaterial_property_energy_multiplier>` | ``1.0``  |
   +-----------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`           | :ref:`filter<class_PanoramaSkyMaterial_property_filter>`                       | ``true`` |
   +-----------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`panorama<class_PanoramaSkyMaterial_property_panorama>`                   |          |
   +-----------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PanoramaSkyMaterial_property_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy_multiplier** = ``1.0`` :ref:`🔗<class_PanoramaSkyMaterial_property_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy_multiplier**\ (\ )

Le multiplicateur de luminosité générale du ciel. Des valeurs plus élevées résulteront en un ciel plus lumineux.

.. rst-class:: classref-item-separator

----

.. _class_PanoramaSkyMaterial_property_filter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter** = ``true`` :ref:`🔗<class_PanoramaSkyMaterial_property_filter>`

.. rst-class:: classref-property-setget

- |void| **set_filtering_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_filtering_enabled**\ (\ )

Une valeur booléenne pour déterminer si la texture de l'arrière-plan doit être filtrée ou pas.

.. rst-class:: classref-item-separator

----

.. _class_PanoramaSkyMaterial_property_panorama:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **panorama** :ref:`🔗<class_PanoramaSkyMaterial_property_panorama>`

.. rst-class:: classref-property-setget

- |void| **set_panorama**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_panorama**\ (\ )

La :ref:`Texture2D<class_Texture2D>` à appliquer au **PanoramaSkyMaterial**.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
