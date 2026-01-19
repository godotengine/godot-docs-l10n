:github_url: hide

.. _class_CameraAttributesPractical:

CameraAttributesPractical
=========================

**Hérite de :** :ref:`CameraAttributes<class_CameraAttributes>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Paramètres de caméra en un format facile à utiliser.

.. rst-class:: classref-introduction-group

Description
-----------

Contrôle des attributs spécifiques à la caméra tels que l'exposition automatique, la profondeur de champ et la redéfinition de l'exposition.

Lors qu’utilisée dans un :ref:`WorldEnvironment<class_WorldEnvironment>`, elle fournit des paramètres par défaut pour l'exposition, l'exposition automatique et la profondeur de champ qui seront utilisés par toutes les caméras sans leurs propres :ref:`CameraAttributes<class_CameraAttributes>`, y compris la caméra de l'éditeur. Lors qu'utilisée dans une :ref:`Camera3D<class_Camera3D>`, elle redéfinira tout :ref:`CameraAttributes<class_CameraAttributes>` défini dans le :ref:`WorldEnvironment<class_WorldEnvironment>`. Lors qu'utilisée dans :ref:`VoxelGI<class_VoxelGI>` ou :ref:`LightmapGI<class_LightmapGI>`, seuls les paramètres d'exposition seront utilisés.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_max_sensitivity<class_CameraAttributesPractical_property_auto_exposure_max_sensitivity>` | ``800.0`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_min_sensitivity<class_CameraAttributesPractical_property_auto_exposure_min_sensitivity>` | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`                             | ``0.1``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`                 | ``10.0``  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`dof_blur_far_enabled<class_CameraAttributesPractical_property_dof_blur_far_enabled>`                   | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_far_transition<class_CameraAttributesPractical_property_dof_blur_far_transition>`             | ``5.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`               | ``2.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`dof_blur_near_enabled<class_CameraAttributesPractical_property_dof_blur_near_enabled>`                 | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dof_blur_near_transition<class_CameraAttributesPractical_property_dof_blur_near_transition>`           | ``1.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CameraAttributesPractical_property_auto_exposure_max_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_max_sensitivity** = ``800.0`` :ref:`🔗<class_CameraAttributesPractical_property_auto_exposure_max_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_max_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_max_sensitivity**\ (\ )

La sensibilité maximale (en ISO) utilisée pour calculer l'exposition automatique. Lors du calcul de la luminosité moyenne de la scène, les valeurs de couleur seront bornées à au moins cette valeur. Cela limite l'exposition automatique d'exposer en dessous d'une certaine luminosité, ce qui résulte en un point limite où la scène restera lumineuse.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_auto_exposure_min_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_min_sensitivity** = ``0.0`` :ref:`🔗<class_CameraAttributesPractical_property_auto_exposure_min_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_min_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_min_sensitivity**\ (\ )

La sensibilité minimale (en ISO) utilisée pour calculer l'exposition automatique. Lors du calcul de la luminosité moyenne de la scène, les valeurs de couleur seront bornées à au moins cette valeur. Cela limite l'exposition automatique d'exposer au dessus d'une certaine luminosité, ce qui résulte en un point limite où la scène restera sombre.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_amount:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_amount** = ``0.1`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_amount>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_amount**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_amount**\ (\ )

Définit la quantité maximale de flou. Lors de l'utilisation des montants de flou basés sur le physique, agira plutôt comme un multiplicateur. Des valeurs élevées mènent à une quantité accrue de flou, mais peuvent être beaucoup plus chères à calculer. Il est préférable de garder cela aussi bas que possible pour un style graphique donné.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_far_distance** = ``10.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_distance>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_far_distance**\ (\ )

Les objets plus loin de la :ref:`Camera3D<class_Camera3D>` que cette quantité seront floués par l'effet de profondeur de champ. Mesuré en mètres.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dof_blur_far_enabled** = ``false`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dof_blur_far_enabled**\ (\ )

Active le flou de profondeur de champ pour les objets plus loin que la distance :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`. La force du flou est contrôlée par :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` et modulée par :ref:`dof_blur_far_transition<class_CameraAttributesPractical_property_dof_blur_far_transition>`.

\ **Note :** Le flou de profondeur de champ n'est supporté que dans les moteur de rendu Forward+ et Mobile, pas Compatibilité.

\ **Note:** La profondeur du flou de champ n'est pas supportée sur les points de vue qui ont un fond transparent (où :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` est ``true``).

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_far_transition:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_far_transition** = ``5.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_far_transition>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_far_transition**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_far_transition**\ (\ )

Lorsque positive, la distance sur laquelle (à partir de :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>`) l'effet de flou va passer de 0 à :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`. Lorsqu'elle est négative, utilise une échelle basée sur la physique pour que l'effet de profondeur de champ aille de 0 à :ref:`dof_blur_far_distance<class_CameraAttributesPractical_property_dof_blur_far_distance>` et augmente d'une manière physiquement exacte lorsque les objets s'éloignent de la :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_near_distance** = ``2.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_distance>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_near_distance**\ (\ )

Les objets à cette distance de cette :ref:`Camera3D<class_Camera3D>` seront floués par l'effet de profondeur de champ. Mesuré en mètres.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dof_blur_near_enabled** = ``false`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dof_blur_near_enabled**\ (\ )

Active le flou de profondeur de champ pour les objets plus proches que la distance :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`. La force du flou est contrôlée par :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>` et modulée par :ref:`dof_blur_near_transition<class_CameraAttributesPractical_property_dof_blur_near_transition>`.

\ **Note :** Le flou de profondeur de champ n'est supporté que dans les moteurs de rendu Forward+ et Mobile, pas Compatibilité.

\ **Note :** Le flou de profondeur de champ n'est pas supporté sur les viewports qui ont un arrière-plan transparent (où :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` vaut ``true``).

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPractical_property_dof_blur_near_transition:

.. rst-class:: classref-property

:ref:`float<class_float>` **dof_blur_near_transition** = ``1.0`` :ref:`🔗<class_CameraAttributesPractical_property_dof_blur_near_transition>`

.. rst-class:: classref-property-setget

- |void| **set_dof_blur_near_transition**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dof_blur_near_transition**\ (\ )

Lorsque positive, la distance sur laquelle l'effet de flou va passer de 0 à :ref:`dof_blur_amount<class_CameraAttributesPractical_property_dof_blur_amount>`, finissant à :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>`. Lorsqu'elle est négative, utilise une échelle basée sur la physique pour que l'effet de profondeur de champ aille de 0 à :ref:`dof_blur_near_distance<class_CameraAttributesPractical_property_dof_blur_near_distance>` et augmente d'une manière physiquement exacte lorsque les objets s'approchent de la :ref:`Camera3D<class_Camera3D>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
