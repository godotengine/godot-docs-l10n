:github_url: hide

.. _class_GLTFAnimation:

GLTFAnimation
=============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Chargement et sauvegarde de fichiers durant l’exécution <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`loop<class_GLTFAnimation_property_loop>`                   | ``false`` |
   +-----------------------------+------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`original_name<class_GLTFAnimation_property_original_name>` | ``""``    |
   +-----------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_additional_data<class_GLTFAnimation_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_additional_data<class_GLTFAnimation_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GLTFAnimation_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_GLTFAnimation_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_loop**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFAnimation_property_original_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_name** = ``""`` :ref:`🔗<class_GLTFAnimation_property_original_name>`

.. rst-class:: classref-property-setget

- |void| **set_original_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_name**\ (\ )

Le nom original de l'animation.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GLTFAnimation_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFAnimation_method_get_additional_data>`

Obtient des données arbitraires supplémentaires dans cette instance **GLTFAnimation**. Cela peut être utilisé pour garder des données d'état par nœud dans les classes :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, ce qui est important parce qu'elles sont sans état.

L'argument devrait être le nom de la :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (ne doit pas forcément correspondre au nom de l'extension dans le fichier glTF), et la valeur de renvoi peut être tout ce que vous définissez. Si rien n'a été défini, la valeur de renvoi est ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFAnimation_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFAnimation_method_set_additional_data>`

Définit des données arbitraires supplémentaires dans cette instance **GLTFAnimation**. Cela peut être utilisé pour garder des données d'état par nœud dans les classes :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, ce qui est important parce qu'elles sont sans état.

Le premier argument devrait être le nom de la :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (ne doit pas forcément correspondre au nom de l'extension dans le fichier glTF), et le deuxième argument peut être tout ce que vous voulez.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
