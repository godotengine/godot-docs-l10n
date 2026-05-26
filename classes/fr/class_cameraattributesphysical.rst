:github_url: hide

.. _class_CameraAttributesPhysical:

CameraAttributesPhysical
========================

**Hérite de :** :ref:`CameraAttributes<class_CameraAttributes>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Paramètres de caméra basés sur la physique.

.. rst-class:: classref-introduction-group

Description
-----------

**CameraAttributesPhysical** is used to set rendering settings based on a physically-based camera's settings. It is responsible for exposure, auto-exposure, and depth of field.

When used in a :ref:`WorldEnvironment<class_WorldEnvironment>` it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own :ref:`CameraAttributes<class_CameraAttributes>`, including the editor camera. When used in a :ref:`Camera3D<class_Camera3D>` it will override any :ref:`CameraAttributes<class_CameraAttributes>` set in the :ref:`WorldEnvironment<class_WorldEnvironment>` and will override the :ref:`Camera3D<class_Camera3D>`\ s :ref:`Camera3D.far<class_Camera3D_property_far>`, :ref:`Camera3D.near<class_Camera3D_property_near>`, :ref:`Camera3D.fov<class_Camera3D_property_fov>`, and :ref:`Camera3D.keep_aspect<class_Camera3D_property_keep_aspect>` properties. When used in :ref:`VoxelGI<class_VoxelGI>` or :ref:`LightmapGI<class_LightmapGI>`, only the exposure settings will be used.

The default settings are intended for use in an outdoor environment, tips for settings for use in an indoor environment can be found in each setting's documentation.

\ **Note:** Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

\ **Note:** Auto-exposure is only supported in the Forward+ rendering method, not Mobile or Compatibility.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Unités physiques de caméra et de lumière <../tutorials/3d/physical_light_and_camera_units>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_max_exposure_value<class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value>` | ``10.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_min_exposure_value<class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value>` | ``-8.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`exposure_aperture<class_CameraAttributesPhysical_property_exposure_aperture>`                               | ``16.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`exposure_shutter_speed<class_CameraAttributesPhysical_property_exposure_shutter_speed>`                     | ``100.0``  |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_far<class_CameraAttributesPhysical_property_frustum_far>`                                           | ``4000.0`` |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>`                         | ``35.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_focus_distance<class_CameraAttributesPhysical_property_frustum_focus_distance>`                     | ``10.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`frustum_near<class_CameraAttributesPhysical_property_frustum_near>`                                         | ``0.05``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_fov<class_CameraAttributesPhysical_method_get_fov>`\ (\ ) |const| |
   +---------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_max_exposure_value** = ``10.0`` :ref:`🔗<class_CameraAttributesPhysical_property_auto_exposure_max_exposure_value>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_max_exposure_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_max_exposure_value**\ (\ )

La luminance maximale (en EV100) utilisée pour calculer l'exposition automatique. Lors du calcul de la luminosité moyenne de la scène, les valeurs de couleur seront bornées à au moins cette valeur. Cela empêche l'exposition automatique à une exposition en dessous d'une certaine luminosité, résultant en un point limite où la scène restera lumineuse.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_min_exposure_value** = ``-8.0`` :ref:`🔗<class_CameraAttributesPhysical_property_auto_exposure_min_exposure_value>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_min_exposure_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_min_exposure_value**\ (\ )

La luminance minimale (en EV100) utilisée pour calculer l'exposition automatique. Lors du calcul de la luminosité moyenne de la scène, les valeurs de couleur seront bornées à au moins cette valeur. Cela empêche l'exposition automatique à une exposition au dessus d'une certaine luminosité, résultant en un point limite où la scène restera sombre.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_exposure_aperture:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_aperture** = ``16.0`` :ref:`🔗<class_CameraAttributesPhysical_property_exposure_aperture>`

.. rst-class:: classref-property-setget

- |void| **set_aperture**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_aperture**\ (\ )

Taille de l'ouverture de la caméra, mesurée en f-stops. Un f-stop est un rapport sans unité entre la longueur focale de la caméra et le diamètre de l'ouverture. Un haut réglage de l'ouverture résultera en une ouverture plus petite qui mène à une image plus sombre et à un focus plus net. Une faible ouverture résulte en une ouverture large qui permet d'obtenir plus de lumière résultant en une image plus lumineuse et moins nette. Le défaut est approprié pour l'extérieur en journée (c.-à-d. pour une utilisation avec une :ref:`DirectionalLight3D<class_DirectionalLight3D>` par défaut), pour l'éclairage d'intérieur, une valeur entre 2 et 4 est plus appropriée.

Seulement disponible lorsque :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` est activé.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_exposure_shutter_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_shutter_speed** = ``100.0`` :ref:`🔗<class_CameraAttributesPhysical_property_exposure_shutter_speed>`

.. rst-class:: classref-property-setget

- |void| **set_shutter_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shutter_speed**\ (\ )

Temps d'ouverture et de fermeture de l'obturateur, valant ``1 / shutter_speed`` secondes. Une valeur plus élevée fera rentrer moins de lumière (résultant en une image plus foncée), tandis qu'une valeur plus basse fera rentrer plus de lumière (résultant en une image plus lumineuse).

Seulement disponible lorsque :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` est activé.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_far:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_far** = ``4000.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_far>`

.. rst-class:: classref-property-setget

- |void| **set_far**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_far**\ (\ )

Valeur de redéfinition pour :ref:`Camera3D.far<class_Camera3D_property_far>`. Utilisé en interne pour calculer la profondeur de champ. Lors qu’attaché à une :ref:`Camera3D<class_Camera3D>` dans sa propriété :ref:`Camera3D.attributes<class_Camera3D_property_attributes>`, elle remplacera la propriété :ref:`Camera3D.far<class_Camera3D_property_far>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_focal_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_focal_length** = ``35.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_focal_length>`

.. rst-class:: classref-property-setget

- |void| **set_focal_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_focal_length**\ (\ )

Distance entre l'objectif de la caméra et l'ouverture de la caméra, mesurée en millimètres. Contrôle le champ de vision et la profondeur de champ. Une longueur focale plus grande entraînera un champ de vision plus petit et une profondeur de champ plus étrointe, ce qui signifie que moins d'objets seront mis au point. Une plus petite longueur focale se traduira par un champ de vision plus large et une plus grande profondeur de champ signifiant plus d'objets seront mis au point. Lors qu'attaché à une :ref:`Camera3D<class_Camera3D>` comme son attribut :ref:`Camera3D.attributes<class_Camera3D_property_attributes>`, elle redéfinira la propriété :ref:`Camera3D.fov<class_Camera3D_property_fov>` et la propriété :ref:`Camera3D.keep_aspect<class_Camera3D_property_keep_aspect>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_focus_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_focus_distance** = ``10.0`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_focus_distance>`

.. rst-class:: classref-property-setget

- |void| **set_focus_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_focus_distance**\ (\ )

Distance à la caméra de l'objet qui aura le focus, mesurée en mètres. En interne, cela sera borné à au moins 1 millimètre de plus que la focale du frustum :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributesPhysical_property_frustum_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **frustum_near** = ``0.05`` :ref:`🔗<class_CameraAttributesPhysical_property_frustum_near>`

.. rst-class:: classref-property-setget

- |void| **set_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_near**\ (\ )

Valeur de redéfinition pour :ref:`Camera3D.near<class_Camera3D_property_near>`. Utilisé en interne pour calculer la profondeur de champ. Lors qu’attaché à une :ref:`Camera3D<class_Camera3D>` dans sa propriété :ref:`Camera3D.attributes<class_Camera3D_property_attributes>`, elle remplacera la propriété :ref:`Camera3D.near<class_Camera3D_property_near>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_CameraAttributesPhysical_method_get_fov:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fov**\ (\ ) |const| :ref:`🔗<class_CameraAttributesPhysical_method_get_fov>`

Renvoie le champ de vision vertical qui correspond à la distance focale du frustum :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>`. Cette valeur est calculée en interne lorsque :ref:`frustum_focal_length<class_CameraAttributesPhysical_property_frustum_focal_length>` est changé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
