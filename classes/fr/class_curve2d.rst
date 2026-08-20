:github_url: hide

.. _class_Curve2D:

Curve2D
=======

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Décrit une courbe de Bézier dans l'espace 2D.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe décrit une courbe de Bézier en 2D. C'est principalement utilisé pour définir un chemin :ref:`Path2D<class_Path2D>`, mais ça peut être utilisé manuellement pour d'autres usages.

Ça garde un cache des points calculés le long de la courbe, pour accélérer les calculs ultérieurs.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`bake_interval<class_Curve2D_property_bake_interval>`                   | ``5.0``           |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`point_count<class_Curve2D_property_point_count>`                       | ``0``             |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`point_{index}/in<class_Curve2D_property_point_{index}/in>`             | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`point_{index}/out<class_Curve2D_property_point_{index}/out>`           | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`point_{index}/position<class_Curve2D_property_point_{index}/position>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_point<class_Curve2D_method_add_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, in\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), out\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), index\: :ref:`int<class_int>` = -1\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_points<class_Curve2D_method_clear_points>`\ (\ )                                                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_baked_length<class_Curve2D_method_get_baked_length>`\ (\ ) |const|                                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_baked_points<class_Curve2D_method_get_baked_points>`\ (\ ) |const|                                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_closest_offset<class_Curve2D_method_get_closest_offset>`\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                    |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_closest_point<class_Curve2D_method_get_closest_point>`\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_in<class_Curve2D_method_get_point_in>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_out<class_Curve2D_method_get_point_out>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_position<class_Curve2D_method_get_point_position>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_point<class_Curve2D_method_remove_point>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`sample<class_Curve2D_method_sample>`\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const|                                                                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`sample_baked<class_Curve2D_method_sample_baked>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`sample_baked_with_rotation<class_Curve2D_method_sample_baked_with_rotation>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const|                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`samplef<class_Curve2D_method_samplef>`\ (\ fofs\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_in<class_Curve2D_method_set_point_in>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_out<class_Curve2D_method_set_point_out>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_position<class_Curve2D_method_set_point_position>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`tessellate<class_Curve2D_method_tessellate>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const|                                                                                   |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`tessellate_even_length<class_Curve2D_method_tessellate_even_length>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 20.0\ ) |const|                                                         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Curve2D_property_bake_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_interval** = ``5.0`` :ref:`🔗<class_Curve2D_property_bake_interval>`

.. rst-class:: classref-property-setget

- |void| **set_bake_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_interval**\ (\ )

La distance en pixels entre deux points du cache qui sont voisins. Le changement recalcule le cache des points la fois suivante où :ref:`get_baked_points()<class_Curve2D_method_get_baked_points>` ou :ref:`get_baked_length()<class_Curve2D_method_get_baked_length>` sera appelée. Plus la distance est petite, plus il y a de points dans ce cache, et donc plus il consommera de mémoire, à utiliser donc avec soin.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve2D_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

Le nombre de points décrivant la courbe.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_property_point_{index}/in:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **point_{index}/in** = ``Vector2(0, 0)`` :ref:`🔗<class_Curve2D_property_point_{index}/in>`

The position of the control point leading to the vertex at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_property_point_{index}/out:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **point_{index}/out** = ``Vector2(0, 0)`` :ref:`🔗<class_Curve2D_property_point_{index}/out>`

The position of the control point leading out of the vertex at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_property_point_{index}/position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **point_{index}/position** = ``Vector2(0, 0)`` :ref:`🔗<class_Curve2D_property_point_{index}/position>`

La position du sommet à l'index ``index``.

\ **Note :** ``index`` est une valeur dans l'intervalle ``0 .. point_count - 1``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Curve2D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, in\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), out\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Curve2D_method_add_point>`

Ajoute un point avec la ``position`` spécifiée relative à la propre position de la courbe, avec des points de contrôle d'entrée ``in`` et de sortie ``out``. Ajoute le nouveau point à la fin de la liste des points.

Si ``index`` est spécifié, le point est inséré juste avant le point existant à l'index identifié par ``index``. Chaque point existant commençant à l'index ``index`` est décalé d'un vers le fond vers la liste des points. L'index doit être supérieur ou égal à ``0`` et ne doit pas dépasser le nombre de points existants dans la ligne. Voir :ref:`point_count<class_Curve2D_property_point_count>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve2D_method_clear_points>`

Supprime tous les points de la courbe.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_baked_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_baked_length**\ (\ ) |const| :ref:`🔗<class_Curve2D_method_get_baked_length>`

Renvoie la longueur totale de la courbe, à partir de la distance entre les points mis en cache. Si la densité est suffisante (voir :ref:`bake_interval<class_Curve2D_property_bake_interval>`), cette longeur devrait être une approximation suffisante.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_baked_points:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_baked_points**\ (\ ) |const| :ref:`🔗<class_Curve2D_method_get_baked_points>`

Renvoie le cache de points sous forme de :ref:`PackedVector2Array<class_PackedVector2Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_closest_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_offset**\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_closest_offset>`

Renvoie le décalage le plus proche de ``to_point``. Ce décalage est destiné à être utilisé dans :ref:`sample_baked()<class_Curve2D_method_sample_baked>`.

\ ``to_point`` doit être dans l'espace local de la courbe.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point**\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_closest_point>`

Renvoie le point en cache le plus proche (dans l'espace local de la courbe) de ``to_point``.

\ ``to_point`` doit être dans l'espace local de la courbe.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_in:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_in**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_in>`

Renvoie la position du point de contrôle menant vers le sommet d'index ``idx``. La position renvoyée est relative au sommet d'index ``idx``. Si l'index est hors limites, la fonction affiche une erreur dans la console, et renvoie ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_out:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_out**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_out>`

Renvoie la position du point de contrôle en partant du sommet d'index ``idx``. La position renvoyée est relative au sommet d'index ``idx``. Si l'index est hors limites, la fonction affiche une erreur dans la console, et renvoie ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_position>`

Renvoie la position du sommet d'index ``idx``. Si l'index est hors limites, la fonction affiche une erreur dans la console, et renvoie ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve2D_method_remove_point>`

Supprime le point d'index ``idx`` de la courbe. Affiche une erreur dans la console si ``idx`` est hors limites.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **sample**\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve2D_method_sample>`

Renvoie la position entre le sommet d'index ``idx`` et le sommet d'index ``idx + 1``, où ``t`` contrôle si le point est le premier sommet (``t = 0,0``), le dernier sommet (``t = 1.0``), ou entre les deux. Les valeurs de ``t`` en dehors de l'intervalle (``0.0 >= t <=1``) donnent des résultats inattendus, mais prévisibles.

Si ``idx`` est hors limites, il est tronqué au premier ou au dernier sommet, et ``t`` est ignoré. Si la courbe n'a pas de points, la fonction affiche une erreur dans la console, et renvoie ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample_baked:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **sample_baked**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve2D_method_sample_baked>`

Renvoie un point dans la courbe à la position ``offset``, où ``offset`` est mesuré en pixels le long de la courbe.

Pour cela, elle trouve les deux points dans le cache où ``offset`` se situe entre, puis interpole les valeurs. Cette interpolation est cubique si ``cubic`` vaut ``true``, ou linéaire s'il vaut ``false``.

L'interpolation cubique tend à mieux suivre les courbes, mais l'interpolation linéaire est plus rapide (et souvent bien assez précise).

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample_baked_with_rotation:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **sample_baked_with_rotation**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve2D_method_sample_baked_with_rotation>`

Similaire à :ref:`sample_baked()<class_Curve2D_method_sample_baked>`, mais renvoie une :ref:`Transform2D<class_Transform2D>` qui inclut une rotation le long de la courbe, avec :ref:`Transform2D.origin<class_Transform2D_property_origin>` comme position du point et le vecteur :ref:`Transform2D.x<class_Transform2D_property_x>` pointant dans la direction du chemin à ce point. Renvoie une transformation vide si la longueur de la courbe est de ``0``.

::

    var baked = curve.sample_baked_with_rotation(offset)
    # La Transform2D renvoyée peut être définie directement.
    transform = four
    # Vous pouvez également lire l'origine et la rotation séparément depuis la Transform2D renvoyée.
    position = baked.get_origin()
    rotation = baked.get_rotation()

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_samplef:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **samplef**\ (\ fofs\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve2D_method_samplef>`

Renvoie la position au sommet ``fofs``. Cela appelle :ref:`sample()<class_Curve2D_method_sample>` en utilisant la partie entière de ``fofs`` pour ``idx``, et sa partie décimale pour ``t``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_in:

.. rst-class:: classref-method

|void| **set_point_in**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_in>`

Définit la position du point de contrôle menant au sommet d'index ``idx``. Si l'index est hors des limites, la fonction affiche une erreur dans la console. La position est relative au sommet.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_out:

.. rst-class:: classref-method

|void| **set_point_out**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_out>`

Définit la position du point de contrôle partant du sommet d'index ``idx``. Si l'index est hors des limites, la fonction affiche une erreur dans la console. La position est relative au sommet.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_position>`

Définit la position pour le sommet d'index ``idx``. Si l'index est hors des limites, la fonction affiche une erreur dans la console.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_tessellate:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **tessellate**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const| :ref:`🔗<class_Curve2D_method_tessellate>`

Renvoie une liste de points le long de la courbe, avec une densité de point contrôlée par sa courbure. C'est-à-dire que les virages de la courbe auront plus de points que les segments bien droits.

Cette approximation génère des segments droits entre chaque point, puis divise ces segments jusqu'à ce que la nouvelle forme soit assez proche.

L'argument ``max_stages`` contrôle le nombre de divisions qu'un segment de courbe peut avoir avant qu'il soit considéré comme assez proche. Chaque division découpe le segment en deux, de sorte que les 5 étapes par défaut peuvent atteindre 32 divisions par segment de la courbe. Soyez donc prudent si vous augmentez cette valeur !

L'argument ``tolerance_degrees`` contrôle de quel angle, en degrés, le point du milieu d'un segment peut s'éloigner de la vraie courbe avant que le segment ne soit divisé.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_tessellate_even_length:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **tessellate_even_length**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 20.0\ ) |const| :ref:`🔗<class_Curve2D_method_tessellate_even_length>`

Renvoie une liste de points le long de la courbe, avec une densité presque uniforme. ``max_stages`` contrôle le nombre de subdivisions qu'un segment de courbe peut avoir avant qu'il ne soit considéré comme assez approximé. Chaque subdivision divise le segment en deux, de sorte que les 5 étapes par défaut peuvent atteindre jusqu'à 32 subdivisions par segment de courbe. À accroître avec soin !

\ ``tolerance_length`` contrôle la distance maximale entre deux points voisins, avant que le segment ne soit subdivisé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
