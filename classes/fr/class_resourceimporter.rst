:github_url: hide

.. _class_ResourceImporter:

ResourceImporter
================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`EditorImportPlugin<class_EditorImportPlugin>`, :ref:`ResourceImporterBitMap<class_ResourceImporterBitMap>`, :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>`, :ref:`ResourceImporterCSVTranslation<class_ResourceImporterCSVTranslation>`, :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`, :ref:`ResourceImporterImage<class_ResourceImporterImage>`, :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`, :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`, :ref:`ResourceImporterMP3<class_ResourceImporterMP3>`, :ref:`ResourceImporterOBJ<class_ResourceImporterOBJ>`, :ref:`ResourceImporterOggVorbis<class_ResourceImporterOggVorbis>`, :ref:`ResourceImporterScene<class_ResourceImporterScene>`, :ref:`ResourceImporterShaderFile<class_ResourceImporterShaderFile>`, :ref:`ResourceImporterSVG<class_ResourceImporterSVG>`, :ref:`ResourceImporterTexture<class_ResourceImporterTexture>`, :ref:`ResourceImporterTextureAtlas<class_ResourceImporterTextureAtlas>`, :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`

Classe de base pour les importateurs de ressources.

.. rst-class:: classref-introduction-group

Description
-----------

Il s'agit de la classe de base pour les importeurs de ressources de Godot. Pour implémenter vos propres importeurs de ressources en utilisant des plugins éditeur, voir :ref:`EditorImportPlugin<class_EditorImportPlugin>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Importer des plugins <../tutorials/plugins/editor/import_plugins>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_build_dependencies<class_ResourceImporter_private_method__get_build_dependencies>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ResourceImporter_ImportOrder:

.. rst-class:: classref-enumeration

enum **ImportOrder**: :ref:`🔗<enum_ResourceImporter_ImportOrder>`

.. _class_ResourceImporter_constant_IMPORT_ORDER_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` **IMPORT_ORDER_DEFAULT** = ``0``

L'ordre d'importation par défaut.

.. _class_ResourceImporter_constant_IMPORT_ORDER_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`ImportOrder<enum_ResourceImporter_ImportOrder>` **IMPORT_ORDER_SCENE** = ``100``

L'ordre d'importation des scènes, qui assure que les scènes sont importées *après* toutes les autres ressources de base telles que les textures. Les importateurs personnalisés devraient généralement avoir un ordre d'importation inférieur à ``100`` pour éviter les problèmes lors de l'importation de scènes qui comptent sur des ressources personnalisées.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ResourceImporter_private_method__get_build_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_build_dependencies**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceImporter_private_method__get_build_dependencies>`

Appelée lorsque l'éditeur de profil de compilation du moteur veut vérifier quelles options de compilation une ressource importée a besoin. Par exemple, :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>` a une propriété appelée :ref:`ResourceImporterDynamicFont.multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>`, qui nécessite à ce que le moteur soit compilé avec le module "msdfgen". Si cette ressource était une ressource personnalisée, ceci serait géré comme ceci :

::

    func _get_build_dependencies(path):
        var ressource = load(path)
        var dependances = PackedStringArray()

        if ressource.multichannel_signed_distance_field:
            dependances.push_back("module_msdfgen_enabled")

        return dependances

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
