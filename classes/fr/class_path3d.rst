:github_url: hide

.. _class_Path3D:

Path3D
======

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Contient un chemin :ref:`Curve3D<class_Curve3D>` à suivre par les nœuds :ref:`PathFollow3D<class_PathFollow3D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Peut avoir des nœuds enfants :ref:`PathFollow3D<class_PathFollow3D>` se déplaçant le long de la :ref:`Curve3D<class_Curve3D>`. Voir :ref:`PathFollow3D<class_PathFollow3D>` pour plus d'informations sur l'utilisation.

Notez que le chemin est considéré comme relatif aux nœuds déplacés (enfants du :ref:`PathFollow3D<class_PathFollow3D>`). Ainsi, la courbe devrait généralement commencer par un vecteur zéro ``(0, 0, 0)``.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------+-----------------------+
   | :ref:`Curve3D<class_Curve3D>` | :ref:`curve<class_Path3D_property_curve>`                           |                       |
   +-------------------------------+---------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_custom_color<class_Path3D_property_debug_custom_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+---------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Path3D_signal_curve_changed:

.. rst-class:: classref-signal

**curve_changed**\ (\ ) :ref:`🔗<class_Path3D_signal_curve_changed>`

Émis quand cette :ref:`curve<class_Path3D_property_curve>` change.

.. rst-class:: classref-item-separator

----

.. _class_Path3D_signal_debug_color_changed:

.. rst-class:: classref-signal

**debug_color_changed**\ (\ ) :ref:`🔗<class_Path3D_signal_debug_color_changed>`

Émis quand :ref:`debug_custom_color<class_Path3D_property_debug_custom_color>` change.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Path3D_property_curve:

.. rst-class:: classref-property

:ref:`Curve3D<class_Curve3D>` **curve** :ref:`🔗<class_Path3D_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve3D<class_Curve3D>`\ )
- :ref:`Curve3D<class_Curve3D>` **get_curve**\ (\ )

Une :ref:`Curve3D<class_Curve3D>` décrivant le chemin.

.. rst-class:: classref-item-separator

----

.. _class_Path3D_property_debug_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_custom_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Path3D_property_debug_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_custom_color**\ (\ )

La couleur personnalisée à utiliser pour dessiner le chemin dans l'éditeur. Si défini à :ref:`Color.BLACK<class_Color_constant_BLACK>` (par défaut), la couleur définie dans :ref:`ProjectSettings.debug/shapes/paths/geometry_color<class_ProjectSettings_property_debug/shapes/paths/geometry_color>` est utilisée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
