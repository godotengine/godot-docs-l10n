:github_url: hide

.. _class_StreamedTexture2D:

StreamedTexture2D
=================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A texture that supports dynamic mipmap streaming for optimized VRAM usage.

.. rst-class:: classref-introduction-group

Description
-----------

StreamedTexture2D is a texture type that supports dynamic mipmap streaming. When texture streaming is enabled in the Project Settings (:ref:`ProjectSettings.rendering/textures/streaming/enabled<class_ProjectSettings_property_rendering/textures/streaming/enabled>`), these textures can have their mipmap levels dynamically loaded and unloaded based on usage.

The texture streaming system monitors which textures are visible in each frame and at what resolution they're being displayed. Textures that are far from the camera or not currently visible have their higher-resolution mipmap levels unloaded to save VRAM, while textures being displayed up close are loaded at higher resolutions.

This texture type is automatically created when importing images with the streaming-compatible importer.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`load_path<class_StreamedTexture2D_property_load_path>`               | ``""``                                                                                 |
   +-----------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`max_lod_override<class_StreamedTexture2D_property_max_lod_override>` | ``0``                                                                                  |
   +-----------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`min_lod_override<class_StreamedTexture2D_property_min_lod_override>` | ``0``                                                                                  |
   +-----------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | resource_local_to_scene                                                    | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_StreamedTexture2D_method_load>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_StreamedTexture2D_property_load_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **load_path** = ``""`` :ref:`🔗<class_StreamedTexture2D_property_load_path>`

.. rst-class:: classref-property-setget

- :ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_load_path**\ (\ )

The **StreamedTexture2D**'s file path to a ``.stex`` file.

.. rst-class:: classref-item-separator

----

.. _class_StreamedTexture2D_property_max_lod_override:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_lod_override** = ``0`` :ref:`🔗<class_StreamedTexture2D_property_max_lod_override>`

.. rst-class:: classref-property-setget

- |void| **set_max_lod_override**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_lod_override**\ (\ )

Overrides the maximum LOD (mipmap level) that can be loaded for this specific texture. Lower values allow higher resolution. A value of ``0`` uses the global setting from :ref:`ProjectSettings.rendering/textures/streaming/max_lod<class_ProjectSettings_property_rendering/textures/streaming/max_lod>`. Values ``1`` to ``14`` correspond to LOD levels ``0`` to ``13``.

.. rst-class:: classref-item-separator

----

.. _class_StreamedTexture2D_property_min_lod_override:

.. rst-class:: classref-property

:ref:`int<class_int>` **min_lod_override** = ``0`` :ref:`🔗<class_StreamedTexture2D_property_min_lod_override>`

.. rst-class:: classref-property-setget

- |void| **set_min_lod_override**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_min_lod_override**\ (\ )

Overrides the minimum LOD (mipmap level) this texture starts at when loaded. Higher values result in lower initial resolution. A value of ``0`` uses the global setting from :ref:`ProjectSettings.rendering/textures/streaming/min_lod<class_ProjectSettings_property_rendering/textures/streaming/min_lod>`. Values ``1`` to ``14`` correspond to LOD levels ``0`` to ``13``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_StreamedTexture2D_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamedTexture2D_method_load>`

Charge la texture au chemin ``path`` spécifié.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
