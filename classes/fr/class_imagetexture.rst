:github_url: hide

.. _class_ImageTexture:

ImageTexture
============

**Hérite de :** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une :ref:`Texture2D<class_Texture2D>` basée sur une :ref:`Image<class_Image>`.

.. rst-class:: classref-introduction-group

Description
-----------

Une :ref:`Texture2D<class_Texture2D>` basée sur une :ref:`Image<class_Image>`. Pour qu'une image soit affichée, une **ImageTexture** doit être créée avec la méthode :ref:`create_from_image()<class_ImageTexture_method_create_from_image>`\  :

::

    var image = Image.load_from_file("res://icon.svg")
    var texture = ImageTexture.create_from_image(image)
    $Sprite2D.texture = texture

De cette façon, les textures peuvent être créées durant l'exécution en chargent les images à la fois depuis l'éditeur et de manière externe.

\ **Avertissement :** Préférez charger les texture importées avec :ref:`@GDScript.load()<class_@GDScript_method_load>` plutôt que dynamiquement depuis le système de fichier avec :ref:`Image.load()<class_Image_method_load>`, car cela peut ne pas fonctionner dans des projets exportés :

::

    var texture = load("res://icon.svg")
    $Sprite2D.texture = texture

C'est parce que les images doivent d'abord être importées en tant que :ref:`CompressedTexture2D<class_CompressedTexture2D>` d'abord pour être chargées avec :ref:`@GDScript.load()<class_@GDScript_method_load>`. Si vous préférez charger un fichier image comme n'importe quelle :ref:`Resource<class_Resource>`, importez-la comme une ressource :ref:`Image<class_Image>`, et ensuite chargez-la normalement avec la méthode :ref:`@GDScript.load()<class_@GDScript_method_load>`.

\ **Note :** L'image peut toujours être récupérée à partir d'une texture importée avec la méthode :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>`, qui renvoie une copie des données de l'image :

::

    var texture = load("res://icon.svg")
    var image = texture.get_image()

Une **ImageTexture** n'est pas prévue pour être opérée directement depuis l'interface de l'éditeur, et est principalement utilisée pour rendre des images à l'écran de manière dynamique depuis du code. Si vous devez générer des images de manière procédurale depuis l'éditeur, préférez enregistrer puis importer des imanges sous forme de texture personnalisée en implémentant un nouveau :ref:`EditorImportPlugin<class_EditorImportPlugin>`.

\ **Note :** La taille maximale de texture est de 16384×16384 pixels à cause des limitations des matériels graphiques.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Importer des images <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ImageTexture<class_ImageTexture>` | :ref:`create_from_image<class_ImageTexture_method_create_from_image>`\ (\ image\: :ref:`Image<class_Image>`\ ) |static| |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_image<class_ImageTexture_method_set_image>`\ (\ image\: :ref:`Image<class_Image>`\ )                          |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_size_override<class_ImageTexture_method_set_size_override>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )     |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`update<class_ImageTexture_method_update>`\ (\ image\: :ref:`Image<class_Image>`\ )                                |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ImageTexture_method_create_from_image:

.. rst-class:: classref-method

:ref:`ImageTexture<class_ImageTexture>` **create_from_image**\ (\ image\: :ref:`Image<class_Image>`\ ) |static| :ref:`🔗<class_ImageTexture_method_create_from_image>`

Crée une nouvelle **ImageTexture** et l'initialise en allouant et en définissant les données depuis une :ref:`Image<class_Image>`.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_image:

.. rst-class:: classref-method

|void| **set_image**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_set_image>`

Remplace les données de la texture par une nouvelle :ref:`Image<class_Image>`. Cela réattribuera de la nouvelle mémoire pour la texture.

Si vous voulez mettre à jour l'image, mais n'avez pas besoin de changer ses paramètres (format, taille), utilisez :ref:`update()<class_ImageTexture_method_update>` à la place pour de meilleures performances.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_size_override:

.. rst-class:: classref-method

|void| **set_size_override**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_ImageTexture_method_set_size_override>`

Redimensionne la texture aux dimensions spécifiées.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_update>`

Remplacer les données de la texture par une nouvelle :ref:`Image<class_Image>`.

\ **Note :** La texture doit être créée en utilisant :ref:`create_from_image()<class_ImageTexture_method_create_from_image>` ou initialisée en premier avec la méthode :ref:`set_image()<class_ImageTexture_method_set_image>` avant qu'elle puisse être mise à jour. Les nouvelles dimensions, format et configuration des mipmaps doivent correspondre à la configuration de l'image de la texture existante.

Utilisez cette méthode au lieu de :ref:`set_image()<class_ImageTexture_method_set_image>` si vous devez mettre à jour la texture fréquemment, car elle est plus rapide qu'allouer de la mémoire supplémentaire pour une nouvelle texture à chaque fois.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
