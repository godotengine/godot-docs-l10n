:github_url: hide

.. _class_ResourceImporterBMFont:

ResourceImporterBMFont
======================

**Hérite de :** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importe une police matricielle dans le format (``.fnt``) BMFont.

.. rst-class:: classref-introduction-group

Description
-----------

Le format BMFont est un format créé par le programme `BMFont <https://www.angelcode.com/products/bmfont/>`__. De nombreux programmes compatibles avec BMFont existent également, comme `BMGlyph <https://www.bmglyph.com/>`__.

Comparé à :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`, **ResourceImporterBMFont** prend en charge les polices matricielles avec différentes largeurs/hauteurs de glyphes.

Voir aussi :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Polices Bitmap - Utiliser des polices <../tutorials/ui/gui_using_fonts.html#bitmap-fonts>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`compress<class_ResourceImporterBMFont_property_compress>`         | ``true`` |
   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`Array<class_Array>` | :ref:`fallbacks<class_ResourceImporterBMFont_property_fallbacks>`       | ``[]``   |
   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`scaling_mode<class_ResourceImporterBMFont_property_scaling_mode>` | ``2``    |
   +---------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ResourceImporterBMFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterBMFont_property_compress>`

Si ``true``, utilise une compression sans perte pour la police résultante.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBMFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterBMFont_property_fallbacks>`

Liste des polices de repli à utiliser si un glyphe n'est pas trouvé dans cette police matricielle. Les polices au début du tableau sont tentées en premier.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBMFont_property_scaling_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **scaling_mode** = ``2`` :ref:`🔗<class_ResourceImporterBMFont_property_scaling_mode>`

Mode d'échelle de police.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
