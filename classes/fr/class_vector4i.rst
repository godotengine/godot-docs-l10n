:github_url: hide

.. _class_Vector4i:

Vector4i
========

Un vecteur 4D utilisant des coordonnés entières.

.. rst-class:: classref-introduction-group

Description
-----------

Une structure de 4 éléments qui peut être utilisée pour représenter des coordonnées de grille 4D ou tout autre quadruplet d'entiers.

Elle utilise des coordonnées entières et elle est donc préférable à :ref:`Vector4<class_Vector4>` quand une précision exacte est nécessaire. Par défaut, ces valeurs sont limitées à 32 bits, et contrairement à :ref:`Vector4<class_Vector4>`, elle ne peut être configurée avec une option de compilation du moteur. Utilisez :ref:`int<class_int>` ou :ref:`PackedInt64Array<class_PackedInt64Array>` si des valeurs 64 bits sont nécessaires.

\ **Note :** Avec des booléens, un Vector4i sera évalué à ``false`` s'il est égal à ``Vector4i(0, 0, 0,0)``. Sinon, un Vector4i sera toujours évalué à ``true``.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`w<class_Vector4i_property_w>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`x<class_Vector4i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector4i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`z<class_Vector4i_property_z>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ )                                                                                                             |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ from\: :ref:`Vector4i<class_Vector4i>`\ )                                                                     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ from\: :ref:`Vector4<class_Vector4>`\ )                                                                       |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, w\: :ref:`int<class_int>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`abs<class_Vector4i_method_abs>`\ (\ ) |const|                                                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`clamp<class_Vector4i_method_clamp>`\ (\ min\: :ref:`Vector4i<class_Vector4i>`, max\: :ref:`Vector4i<class_Vector4i>`\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`clampi<class_Vector4i_method_clampi>`\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`distance_squared_to<class_Vector4i_method_distance_squared_to>`\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const|             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`distance_to<class_Vector4i_method_distance_to>`\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`length<class_Vector4i_method_length>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`length_squared<class_Vector4i_method_length_squared>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`max<class_Vector4i_method_max>`\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`max_axis_index<class_Vector4i_method_max_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`maxi<class_Vector4i_method_maxi>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`min<class_Vector4i_method_min>`\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`min_axis_index<class_Vector4i_method_min_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`mini<class_Vector4i_method_mini>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`sign<class_Vector4i_method_sign>`\ (\ ) |const|                                                                                 |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`snapped<class_Vector4i_method_snapped>`\ (\ step\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`snappedi<class_Vector4i_method_snappedi>`\ (\ step\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator !=<class_Vector4i_operator_neq_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator %<class_Vector4i_operator_mod_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator %<class_Vector4i_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator *<class_Vector4i_operator_mul_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`   | :ref:`operator *<class_Vector4i_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator *<class_Vector4i_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator +<class_Vector4i_operator_sum_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator -<class_Vector4i_operator_dif_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator /<class_Vector4i_operator_div_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`   | :ref:`operator /<class_Vector4i_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator /<class_Vector4i_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<<class_Vector4i_operator_lt_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<=<class_Vector4i_operator_lte_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ==<class_Vector4i_operator_eq_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ><class_Vector4i_operator_gt_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator >=<class_Vector4i_operator_gte_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`operator []<class_Vector4i_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator unary+<class_Vector4i_operator_unplus>`\ (\ )                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator unary-<class_Vector4i_operator_unminus>`\ (\ )                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Vector4i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector4i_Axis>`

.. _class_Vector4i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_X** = ``0``

La valeur de l'énumération pour l'axe X. Renvoyé par :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` et :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_Y** = ``1``

La valeur de l'énumération pour l'axe Y. Retourné par :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` et :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_Z** = ``2``

La valeur de l'énumération pour l'axe Z. Renvoyé par :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` et :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_W:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_W** = ``3``

La valeur de l'énumération pour l'axe W. Renvoyé par :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` et :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Vector4i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector4i(0, 0, 0, 0)`` :ref:`🔗<class_Vector4i_constant_ZERO>`

Le vecteur zéro, un vecteur avec tous ses composants définis ``0``.

.. _class_Vector4i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector4i(1, 1, 1, 1)`` :ref:`🔗<class_Vector4i_constant_ONE>`

Le vecteur unitaire, un vecteur avec tous ses composants définis à ``1``.

.. _class_Vector4i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector4i(-2147483648, -2147483648, -2147483648, -2147483648)`` :ref:`🔗<class_Vector4i_constant_MIN>`

Vecteur minimum, un vecteur avec toutes ses composantes égales à ``INT32_MIN``. Peut être utilisé comme un équivalent entier négatif de :ref:`Vector4.INF<class_Vector4_constant_INF>`.

.. _class_Vector4i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector4i(2147483647, 2147483647, 2147483647, 2147483647)`` :ref:`🔗<class_Vector4i_constant_MAX>`

Vecteur maximum, un vecteur avec toutes ses composantes égales à ``INT32_MAX``. Peut être utilisé comme un équivalent entier de :ref:`Vector4.INF<class_Vector4_constant_INF>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Vector4i_property_w:

.. rst-class:: classref-property

:ref:`int<class_int>` **w** = ``0`` :ref:`🔗<class_Vector4i_property_w>`

La composante W du vecteur. Aussi accessible en utilisant la position d'index ``[3]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector4i_property_x>`

La composante vectorielle X. Également accessible en utilisant le code de position index ``[0]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector4i_property_y>`

La composante vectorielle X. Également accessible en utilisant le code de position index ``[1]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_z:

.. rst-class:: classref-property

:ref:`int<class_int>` **z** = ``0`` :ref:`🔗<class_Vector4i_property_z>`

Le composant vectoriel Z. Également accessible en utilisant l'index ``[2]``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Vector4i_constructor_Vector4i:

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ ) :ref:`🔗<class_Vector4i_constructor_Vector4i>`

Construit un **Vector4i** initialisé par défaut, avec toutes ses composantes définies à ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ from\: :ref:`Vector4i<class_Vector4i>`\ )

Construit un **Vector4i** comme copie du **Vector4i** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ from\: :ref:`Vector4<class_Vector4>`\ )

Construit un nouveau **Vector4i** depuis le :ref:`Vector4<class_Vector4>` donné en tronquant les parties fractionnelles des composantes (arrondissant vers 0). Pour un comportement différent, envisagez de passer le résultat de :ref:`Vector4.ceil()<class_Vector4_method_ceil>`, :ref:`Vector4.floor()<class_Vector4_method_floor>` ou :ref:`Vector4.round()<class_Vector4_method_round>` à ce constructeur à la place.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, w\: :ref:`int<class_int>`\ )

Renvoie un **Vector4i** avec les coordonnées spécifiées.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Vector4i_method_abs:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_abs>`

Renvoie un nouveau vecteur avec tous ses composantes en valeurs absolues (c'est-à-dire toujours positives).

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **clamp**\ (\ min\: :ref:`Vector4i<class_Vector4i>`, max\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_clamp>`

Renvoie un nouveau vecteur avec toutes les composantes bornées entre les composantes de ``min`` et ``max``, en exécutant :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_clampi>`

Renvoie un nouveau vecteur avec toutes les composantes bornées entre ``min`` et ``max``, en exécutant :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_distance_squared_to>`

Returns the squared `Euclidean distance <https://en.wikipedia.org/wiki/Euclidean_distance>`__ between this vector and ``to``.

This method runs faster than :ref:`distance_to()<class_Vector4i_method_distance_to>`, so prefer it if you need to compare vectors or need the squared distance for some formula.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_distance_to>`

Returns the `Euclidean distance <https://en.wikipedia.org/wiki/Euclidean_distance>`__ between this vector and ``to``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_length>`

Renvoie la longueur (magnitude) de ce vecteur.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_length_squared>`

Renvoie la longeur (magnitude) au carré de ce vecteur.

Cette méthode est plus rapide que :ref:`length()<class_Vector4i_method_length>` donc préférez-le si vous devez comparer des vecteurs ou avoir besoin de la distance carrée pour certaines formules.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_max:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **max**\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_max>`

Renvoie le maximum par composante de ceci et ``with``, équivalent à ``Vector4i(maxf(x, with.x), maxf(y, with.y), maxf(z, with.z), maxf(w,with.w))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_max_axis_index>`

Renvoie l'axe de la valeur la plus importante du vecteur. Voir les constantes\ ``AXIS_*``. Si tous les composants sont égaux, cette méthode renvoie :ref:`AXIS_X<class_Vector4i_constant_AXIS_X>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_maxi>`

Renvoie le maximum par composante de ceci et ``with``, équivalent à ``Vector4i(maxf(x, with), maxf(y, with), maxf(z, with), maxf(w,with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_min:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **min**\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_min>`

Renvoie le minimum par composante de ceci et ``with``, équivalent à ``Vector4i(mini(x, with.x), mini(y, with.y),mini(z,with.z),mini(w,with.w))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_min_axis_index>`

Renvoie l'axe de la valeur la moins importante du vecteur. Voir les constantes ``AXIS_*``. Si tous les composantes sont égales, cette méthode renvoie :ref:`AXIS_W<class_Vector4i_constant_AXIS_W>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_mini:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_mini>`

Renvoie le minimum par composante de ceci et ``with``, équivalent à ``Vector4i(mini(x, with), mini(y, with),mini(z,with),mini(w,with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_sign:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_sign>`

Renvoie un nouveau vecteur avec chaque composante définie à ``1`` si elle est positive, ``-1`` si elle est négative, et ``0`` si elle est nulle. Le résultat est identique à celui d'appeler :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **snapped**\ (\ step\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_snapped>`

Renvoie un nouveau vecteur avec chaque composante arrondie au multiple le plus proche de la composante correspondante dans ``step``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_snappedi>`

Renvoie un nouveau vecteur avec chaque composante arrondie au multiple le plus proche de ``step``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Vector4i_operator_neq_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_neq_Vector4i>`

Renvoie ``true`` si les vecteurs ne sont pas égaux.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mod_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator %**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_mod_Vector4i>`

Obtient le reste de la division euclidienne de chaque composante du **Vector4i** avec les composantes du **Vector4i** donné. Cette opération utilise une division tronquée, ce qui n'est souvent pas souhaité car elle ne fonctionne pas bien avec des nombres négatifs. Considérez d'utiliser :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` plutôt si vous voulez gérer les nombres négatifs.

::

    print(Vector4i(10, -20, 30, -40) % Vector4i(7, 8, 9, 10) # Affiche (3, -4, 3, 0)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_mod_int>`

Obtient le reste de la division euclidienne de chaque composante du **Vector4i** avec l'entier :ref:`int<class_int>` donné. Cette opération utilise une division tronquée, ce qui n'est souvent pas souhaité car elle ne fonctionne pas bien avec des nombres négatifs. Considérez d'utiliser :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` plutôt si vous voulez gérer les nombres négatifs.

::

    print(Vector4i(10, -20, 30, -40) % 7) # Affiche (3, -6, 2, -5)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_mul_Vector4i>`

Multiplie chaque composante du **Vector4i** par les composantes du **Vector4i** donné.

::

    print(Vector4i(10, 20, 30, 40) * Vector4i(3, 4, 5, 6)) # Affiche (30, 80, 150, 240)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector4i_operator_mul_float>`

Multiplie chaque composante du **Vector4i** par le flottant :ref:`float<class_float>` donné.

Renvoie une valeur :ref:`Vector4<class_Vector4>` à cause des opérations de virgule flottante.

::

    print(Vector4i(10, 20, 30, 40) * 2) # Affiche (20.0, 40.0, 60.0, 80.0)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_mul_int>`

Multiplie chaque composante du **Vector4i** par l'entier :ref:`int<class_int>` donné.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_sum_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator +**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_sum_Vector4i>`

Ajoute chaque composante du **Vector4i** aux composantes du **Vector4i** donné.

::

    print(Vector4i(10, 20, 30, 40) + Vector4i(3, 4, 5, 6)) # Affiche (13, 24, 35, 46)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_dif_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator -**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_dif_Vector4i>`

Soustrait chaque composant du **Vector4i** par les composantes du **Vector4i** donné.

::

    print(Vector4i(10, 20, 30, 40) - Vector4i(3, 4, 5, 6)) # Affiche (7, 16, 25, 34)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator /**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_div_Vector4i>`

Divise chaque composante du **Vector4i** par les composantes du **Vector4i** donné.

::

    print(Vector4i(10, 20, 30, 40) / Vector4i(2, 5, 3, 4)) # Affiche (5, 4, 10, 10)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector4i_operator_div_float>`

Divides each component of the **Vector4i** by the given :ref:`float<class_float>`.

Returns a Vector4 value due to floating-point operations.

::

    print(Vector4i(1, 2, 3, 4) / 2.5) # Prints (0.4, 0.8, 1.2, 1.6)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_div_int>`

Divise chaque composante du **Vector4i** par l'entier :ref:`int<class_int>` donné.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_lt_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_lt_Vector4i>`

Compare deux **Vector4i** en vérifiant en premier si la valeur en X du vecteur de gauche est inférieure à la valeur en X du vecteur ``right``. Si les deux valeurs en X sont exactement égales, alors il répète la vérification sur les valeurs en Y des deux vecteurs, sur les valeurs en Z des deux vecteurs, puis sur les valeurs en W. Cet opérateur est utile pour trier des vecteurs.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_lte_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_lte_Vector4i>`

Compare deux **Vector4i** en vérifiant en premier si la valeur en X du vecteur de gauche est inférieure ou égale à la valeur en X du vecteur ``right``. Si les deux valeurs en X sont exactement égales, alors il répète la vérification sur les valeurs en Y des deux vecteurs, sur les valeurs en Z des deux vecteurs, puis sur les valeurs en W. Cet opérateur est utile pour trier des vecteurs.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_eq_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_eq_Vector4i>`

Renvoie ``true`` si les vecteurs sont exactement égaux.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_gt_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_gt_Vector4i>`

Compare deux **Vector4i** en vérifiant en premier si la valeur en X du vecteur de gauche est supérieure à la valeur en X du vecteur ``right``. Si les deux valeurs en X sont exactement égales, alors il répète la vérification sur les valeurs en Y des deux vecteurs, sur les valeurs en Z des deux vecteurs, puis sur les valeurs en W. Cet opérateur est utile pour trier des vecteurs.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_gte_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_gte_Vector4i>`

Compare deux **Vector4i** en vérifiant en premier si la valeur en X du vecteur de gauche est supérieure ou égale à la valeur en X du vecteur ``right``. Si les deux valeurs en X sont exactement égales, alors il répète la vérification sur les valeurs en Y des deux vecteurs, sur les valeurs en Z des deux vecteurs, puis sur les valeurs en W. Cet opérateur est utile pour trier des vecteurs.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_idx_int>`

Accède aux composantes du vecteur par leur ``index``. ``v[0]`` est équivalent à ``v.x``, ``v[1]`` est équivalent à ``v.y``, ``v[2]`` est équivalent à ``v.z``, et ``v[3]`` est équivalent à ``v.w``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector4i_operator_unplus>`

Renvoie la même valeur comme si ``+`` n'était pas là. Le ``+`` unaire ne fait rien, mais peut parfois rendre votre code plus lisible.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector4i_operator_unminus>`

Renvoie la valeur négative du **Vector4i**. Revient à écrire ``Vector4i(-v.x, -v.y,-v.z,-v.w)``. Cette opération retourne la direction du vecteur tout en gardant la même magnitude.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
