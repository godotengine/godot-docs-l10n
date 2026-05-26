:github_url: hide

.. _class_Curve:

Curve
=====

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une courbe mathématique.

.. rst-class:: classref-introduction-group

Description
-----------

Cette ressource décrit une courbe mathématique en définissant un ensemble de points et de tangentes à chaque point. Par défaut, elle s'étend entre ``0`` et ``1`` sur les axes X et Y, mais ces plages peuvent être modifiées.

Veuillez noter que de nombreuses ressources et nœuds supposent qu'ils reçoivent des *courbes unitaires*. Une courbe unitaire est une courbe dont le domaine (l'axe X) est compris entre ``0`` et ``1``. Certains exemples d'utilisation de courbes unitaires sont :ref:`CPUParticles2D.angle_curve<class_CPUParticles2D_property_angle_curve>` et :ref:`Line2D.width_curve<class_Line2D_property_width_curve>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`bake_resolution<class_Curve_property_bake_resolution>`                         | ``100``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`max_domain<class_Curve_property_max_domain>`                                   | ``1.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`max_value<class_Curve_property_max_value>`                                     | ``1.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`min_domain<class_Curve_property_min_domain>`                                   | ``0.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`min_value<class_Curve_property_min_value>`                                     | ``0.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`point_count<class_Curve_property_point_count>`                                 | ``0``             |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`point_{index}/left_mode<class_Curve_property_point_{index}/left_mode>`         | ``0``             |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`point_{index}/left_tangent<class_Curve_property_point_{index}/left_tangent>`   | ``0.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`point_{index}/position<class_Curve_property_point_{index}/position>`           | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`point_{index}/right_mode<class_Curve_property_point_{index}/right_mode>`       | ``0``             |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`point_{index}/right_tangent<class_Curve_property_point_{index}/right_tangent>` | ``0.0``           |
   +-------------------------------+--------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                      | :ref:`add_point<class_Curve_method_add_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, left_tangent\: :ref:`float<class_float>` = 0, right_tangent\: :ref:`float<class_float>` = 0, left_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0, right_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0\ ) |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`bake<class_Curve_method_bake>`\ (\ )                                                                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`clean_dupes<class_Curve_method_clean_dupes>`\ (\ )                                                                                                                                                                                                                                                             |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`clear_points<class_Curve_method_clear_points>`\ (\ )                                                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_domain_range<class_Curve_method_get_domain_range>`\ (\ ) |const|                                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TangentMode<enum_Curve_TangentMode>` | :ref:`get_point_left_mode<class_Curve_method_get_point_left_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                      |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_point_left_tangent<class_Curve_method_get_point_left_tangent>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`              | :ref:`get_point_position<class_Curve_method_get_point_position>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                        |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TangentMode<enum_Curve_TangentMode>` | :ref:`get_point_right_mode<class_Curve_method_get_point_right_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                    |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_point_right_tangent<class_Curve_method_get_point_right_tangent>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                              |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`get_value_range<class_Curve_method_get_value_range>`\ (\ ) |const|                                                                                                                                                                                                                                             |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`remove_point<class_Curve_method_remove_point>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                            |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`sample<class_Curve_method_sample>`\ (\ offset\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                  | :ref:`sample_baked<class_Curve_method_sample_baked>`\ (\ offset\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                               |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_left_mode<class_Curve_method_set_point_left_mode>`\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ )                                                                                                                                                           |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_left_tangent<class_Curve_method_set_point_left_tangent>`\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ )                                                                                                                                                                   |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                      | :ref:`set_point_offset<class_Curve_method_set_point_offset>`\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ )                                                                                                                                                                                |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_right_mode<class_Curve_method_set_point_right_mode>`\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ )                                                                                                                                                         |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_right_tangent<class_Curve_method_set_point_right_tangent>`\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ )                                                                                                                                                                 |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                     | :ref:`set_point_value<class_Curve_method_set_point_value>`\ (\ index\: :ref:`int<class_int>`, y\: :ref:`float<class_float>`\ )                                                                                                                                                                                       |
   +--------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Curve_signal_domain_changed:

.. rst-class:: classref-signal

**domain_changed**\ (\ ) :ref:`🔗<class_Curve_signal_domain_changed>`

Émis quand :ref:`max_domain<class_Curve_property_max_domain>` ou :ref:`min_domain<class_Curve_property_min_domain>` est changé.

.. rst-class:: classref-item-separator

----

.. _class_Curve_signal_range_changed:

.. rst-class:: classref-signal

**range_changed**\ (\ ) :ref:`🔗<class_Curve_signal_range_changed>`

Émis quand :ref:`max_value<class_Curve_property_max_value>` ou :ref:`min_value<class_Curve_property_min_value>` est changé.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Curve_TangentMode:

.. rst-class:: classref-enumeration

enum **TangentMode**: :ref:`🔗<enum_Curve_TangentMode>`

.. _class_Curve_constant_TANGENT_FREE:

.. rst-class:: classref-enumeration-constant

:ref:`TangentMode<enum_Curve_TangentMode>` **TANGENT_FREE** = ``0``

La tangente de ce côté du point est personnalisée.

.. _class_Curve_constant_TANGENT_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TangentMode<enum_Curve_TangentMode>` **TANGENT_LINEAR** = ``1``

La courbe calcule la tangente de ce côté du point comme la pente avec la demi-distance du point adjacent.

.. _class_Curve_constant_TANGENT_MODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`TangentMode<enum_Curve_TangentMode>` **TANGENT_MODE_COUNT** = ``2``

Le nombre total de modes de tangentes disponibles.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Curve_property_bake_resolution:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_resolution** = ``100`` :ref:`🔗<class_Curve_property_bake_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_bake_resolution**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_resolution**\ (\ )

Le nombre de points à inclure dans les données de cache de la courbe.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_max_domain:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_domain** = ``1.0`` :ref:`🔗<class_Curve_property_max_domain>`

.. rst-class:: classref-property-setget

- |void| **set_max_domain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_domain**\ (\ )

Le domaine maximum (coordonnée en X) que les points peuvent avoir.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_max_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_value** = ``1.0`` :ref:`🔗<class_Curve_property_max_value>`

.. rst-class:: classref-property-setget

- |void| **set_max_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_value**\ (\ )

La valeur maximale (coordonnée en Y) que les points peuvent avoir. Les tangentes peuvent causer des valeurs plus élevées entre les points.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_min_domain:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_domain** = ``0.0`` :ref:`🔗<class_Curve_property_min_domain>`

.. rst-class:: classref-property-setget

- |void| **set_min_domain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_domain**\ (\ )

Le domaine minimum (coordonnée en X) que les points peuvent avoir.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_min_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_value** = ``0.0`` :ref:`🔗<class_Curve_property_min_value>`

.. rst-class:: classref-property-setget

- |void| **set_min_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_value**\ (\ )

La valeur minimale (en coordonnée y) que les points peuvent avoir. Les tangentes peuvent causer des valeurs inférieures entre les points.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

Le nombre de points décrivant la courbe.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/left_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_{index}/left_mode** = ``0`` :ref:`🔗<class_Curve_property_point_{index}/left_mode>`

The left :ref:`TangentMode<enum_Curve_TangentMode>` for the point at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/left_tangent:

.. rst-class:: classref-property

:ref:`float<class_float>` **point_{index}/left_tangent** = ``0.0`` :ref:`🔗<class_Curve_property_point_{index}/left_tangent>`

The left tangent angle (in degrees) for the point at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **point_{index}/position** = ``Vector2(0, 0)`` :ref:`🔗<class_Curve_property_point_{index}/position>`

The position of the point at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/right_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_{index}/right_mode** = ``0`` :ref:`🔗<class_Curve_property_point_{index}/right_mode>`

The right :ref:`TangentMode<enum_Curve_TangentMode>` for the point at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_Curve_property_point_{index}/right_tangent:

.. rst-class:: classref-property

:ref:`float<class_float>` **point_{index}/right_tangent** = ``0.0`` :ref:`🔗<class_Curve_property_point_{index}/right_tangent>`

The right tangent angle (in degrees) for the point at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. point_count - 1`` range.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Curve_method_add_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, left_tangent\: :ref:`float<class_float>` = 0, right_tangent\: :ref:`float<class_float>` = 0, left_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0, right_mode\: :ref:`TangentMode<enum_Curve_TangentMode>` = 0\ ) :ref:`🔗<class_Curve_method_add_point>`

Ajoute un point à la courbe. Pour chaque côté, si le ``*_mode`` est :ref:`TANGENT_LINEAR<class_Curve_constant_TANGENT_LINEAR>`, l'angle ``*_tangent`` (en degrés) utilise la pente de la courbe définie par rapport à la demi-distance du point adjacent. Permet des spécifier des tangentes personnalisées avec ``*_tangent`` si ``*_mode`` est défini à :ref:`TANGENT_FREE<class_Curve_constant_TANGENT_FREE>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ ) :ref:`🔗<class_Curve_method_bake>`

Recalcule le cache des points de la courbe.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_clean_dupes:

.. rst-class:: classref-method

|void| **clean_dupes**\ (\ ) :ref:`🔗<class_Curve_method_clean_dupes>`

Retire les points dupliqués, c'est-à-dire les points qui sont moins de 0,00001 unités (valeur epsilon du moteur) de leur voisin sur la courbe.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve_method_clear_points>`

Supprime tous les points de la courbe.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_domain_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_domain_range**\ (\ ) |const| :ref:`🔗<class_Curve_method_get_domain_range>`

Renvoie la différence entre :ref:`min_domain<class_Curve_property_min_domain>` et :ref:`max_domain<class_Curve_property_max_domain>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_left_mode:

.. rst-class:: classref-method

:ref:`TangentMode<enum_Curve_TangentMode>` **get_point_left_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_left_mode>`

Renvoie le :ref:`TangentMode<enum_Curve_TangentMode>` de gauche pour le point à l'index ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_left_tangent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_left_tangent**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_left_tangent>`

Renvoie l'angle de la tangente gauche (en degrés) pour le point à l'index ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_position>`

Renvoie les coordonnées de la courbe au point à l'index ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_right_mode:

.. rst-class:: classref-method

:ref:`TangentMode<enum_Curve_TangentMode>` **get_point_right_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_right_mode>`

Renvoie le :ref:`TangentMode<enum_Curve_TangentMode>` à droite du point à l'index ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_point_right_tangent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_right_tangent**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve_method_get_point_right_tangent>`

Renvoie l'angle de la tangente droite (en degrés) pour le point à l'index ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_get_value_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_value_range**\ (\ ) |const| :ref:`🔗<class_Curve_method_get_value_range>`

Renvoie la différence entre :ref:`min_value<class_Curve_property_min_value>` et :ref:`max_value<class_Curve_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve_method_remove_point>`

Supprime le point à l'index ``index`` de la courbe.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_sample:

.. rst-class:: classref-method

:ref:`float<class_float>` **sample**\ (\ offset\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve_method_sample>`

Renvoie la valeur Y pour un point qui existerait à la position X ``offset`` le long de la courbe.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_sample_baked:

.. rst-class:: classref-method

:ref:`float<class_float>` **sample_baked**\ (\ offset\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve_method_sample_baked>`

Renvoie la valeur Y pour un point qui existerait à la position X ``offset`` le long de la courbe en utilisant le cache pré-calculé. Pré-calcule les points de la courbe si cela n'a pas déjà été fait.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_left_mode:

.. rst-class:: classref-method

|void| **set_point_left_mode**\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ ) :ref:`🔗<class_Curve_method_set_point_left_mode>`

Définit la :ref:`TangentMode<enum_Curve_TangentMode>` à gauche du point d'index ``index`` à ``mode``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_left_tangent:

.. rst-class:: classref-method

|void| **set_point_left_tangent**\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_left_tangent>`

Définit l'angle de la tangente gauche pour le point d'index ``index`` à ``tangent``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **set_point_offset**\ (\ index\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_offset>`

Assigns the horizontal position ``offset`` to the point at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_right_mode:

.. rst-class:: classref-method

|void| **set_point_right_mode**\ (\ index\: :ref:`int<class_int>`, mode\: :ref:`TangentMode<enum_Curve_TangentMode>`\ ) :ref:`🔗<class_Curve_method_set_point_right_mode>`

Définit la :ref:`TangentMode<enum_Curve_TangentMode>` à droite du point d'index ``index`` à ``mode``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_right_tangent:

.. rst-class:: classref-method

|void| **set_point_right_tangent**\ (\ index\: :ref:`int<class_int>`, tangent\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_right_tangent>`

Définit l'angle de la tangente droite pour le point d'index ``index`` à ``tangent``.

.. rst-class:: classref-item-separator

----

.. _class_Curve_method_set_point_value:

.. rst-class:: classref-method

|void| **set_point_value**\ (\ index\: :ref:`int<class_int>`, y\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve_method_set_point_value>`

Assigne la position verticale ``y`` au point à l'index ``index``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
