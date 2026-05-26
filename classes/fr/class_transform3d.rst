:github_url: hide

.. _class_Transform3D:

Transform3D
===========

Une matrice 3×4 représentant une transformation 3D.

.. rst-class:: classref-introduction-group

Description
-----------

The **Transform3D** built-in :ref:`Variant<class_Variant>` type is a 3×4 matrix representing a transformation in 3D space. It contains a :ref:`Basis<class_Basis>`, which on its own can represent rotation, scale, and shear. Additionally, combined with its own :ref:`origin<class_Transform3D_property_origin>`, the transform can also represent a translation.

For a general introduction, see the :doc:`Matrices and transforms <../tutorials/math/matrices_and_transforms>` tutorial.

\ **Note:** Godot uses a `right-handed coordinate system <https://en.wikipedia.org/wiki/Right-hand_rule>`__, which is a common standard. For directions, the convention for built-in types like :ref:`Camera3D<class_Camera3D>` is for -Z to point forward (+X is right, +Y is up, and +Z is back). Other objects may use different direction conventions. For more information, see the `3D asset direction conventions <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__ tutorial.

\ **Note:** In a boolean context, a Transform3D will evaluate to ``false`` if it's equal to :ref:`IDENTITY<class_Transform3D_constant_IDENTITY>`. Otherwise, a Transform3D will always evaluate to ``true``.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir :ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur les mathématiques <../tutorials/math/index>`

- :doc:`Matrices et transformations <../tutorials/math/matrices_and_transforms>`

- :doc:`Utiliser les transformations 3D <../tutorials/3d/using_transforms>`

- `Démo de transformation matricielle <https://godotengine.org/asset-library/asset/2787>`__

- `Démo de jeu de plateforme en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Démo de jeu 2,5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`basis<class_Transform3D_property_basis>`   | ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`origin<class_Transform3D_property_origin>` | ``Vector3(0, 0, 0)``                 |
   +-------------------------------+--------------------------------------------------+--------------------------------------+

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ )                                                                                                                                                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ basis\: :ref:`Basis<class_Basis>`, origin\: :ref:`Vector3<class_Vector3>`\ )                                                                                      |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ from\: :ref:`Projection<class_Projection>`\ )                                                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`, origin\: :ref:`Vector3<class_Vector3>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`affine_inverse<class_Transform3D_method_affine_inverse>`\ (\ ) |const|                                                                                                                                           |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`interpolate_with<class_Transform3D_method_interpolate_with>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, weight\: :ref:`float<class_float>`\ ) |const|                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`inverse<class_Transform3D_method_inverse>`\ (\ ) |const|                                                                                                                                                         |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_equal_approx<class_Transform3D_method_is_equal_approx>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`\ ) |const|                                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_finite<class_Transform3D_method_is_finite>`\ (\ ) |const|                                                                                                                                                     |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`looking_at<class_Transform3D_method_looking_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |const| |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`orthonormalized<class_Transform3D_method_orthonormalized>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`rotated<class_Transform3D_method_rotated>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                                |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`rotated_local<class_Transform3D_method_rotated_local>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`scaled<class_Transform3D_method_scaled>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`scaled_local<class_Transform3D_method_scaled_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                        |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`translated<class_Transform3D_method_translated>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                           |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`translated_local<class_Transform3D_method_translated_local>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                               |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_Transform3D_operator_neq_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                             | :ref:`operator *<class_Transform3D_operator_mul_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`operator *<class_Transform3D_operator_mul_PackedVector3Array>`\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`                           | :ref:`operator *<class_Transform3D_operator_mul_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`operator *<class_Transform3D_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator /<class_Transform3D_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator /<class_Transform3D_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_Transform3D_operator_eq_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Transform3D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_IDENTITY>`

La **Transform3D** identité. Il s'agit d'une transformation sans translation, sans rotation, et une échelle de :ref:`Vector3.ONE<class_Vector3_constant_ONE>`. Sa :ref:`basis<class_Transform3D_property_basis>` est égale à :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`. Cela signifie également que :

- Son :ref:`Basis.x<class_Basis_property_x>` pointe vers la droite (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`);

- Son :ref:`Basis.y<class_Basis_property_y>` pointe vers le haut (:ref:`Vector3.UP<class_Vector3_constant_UP>`);

- Son :ref:`Basis.z<class_Basis_property_z>` pointe vers l'arrière(:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

::

    var transformation = Transform3D.IDENTITY
    var base = transformation.basis
    print("| X | Y | Z | Origine")
    print("| %.f | %.f | %.f | %.f" % [base.x.x, base.y.x, base.z.x, transform.origin.x])
    print("| %.f | %.f | %.f | %.f" % [base.x.y, base.y.y, base.z.y, transform.origin.y])
    print("| %.f | %.f | %.f | %.f" % [base.x.z, base.y.z, base.z.z, transform.origin.z])
    # Affiche :
    # | X | Y | Z | Origin
    # | 1 | 0 | 0 | 0
    # | 0 | 1 | 0 | 0
    # | 0 | 0 | 1 | 0

Si un :ref:`Vector3<class_Vector3>`, un :ref:`AABB<class_AABB>`, un :ref:`Plane<class_Plane>`, un :ref:`PackedVector3Array<class_PackedVector3Array>`, ou une autre **Transform3D** est transformé (multiplié) par cette constante, aucune transformation ne se produit.

\ **Note :** En GDScript, cette constante est équivalente à la création d'une :ref:`Transform3D<class_Transform3D_constructor_Transform3D>` sans aucun argument. Elle peut être utilisée pour rendre votre code plus clair, et pour la cohérence avec le C#.

.. _class_Transform3D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform3D(-1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_X>`

**Transform3D** avec effet miroir appliqué perpendiculairement au plan YZ. Sa base :ref:`basis<class_Transform3D_property_basis>` est égale à :ref:`Basis.FLIP_X<class_Basis_constant_FLIP_X>`.

.. _class_Transform3D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform3D(1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Y>`

**Transform3D** avec effet miroir appliqué perpendiculairement au plan XZ. Sa base :ref:`basis<class_Transform3D_property_basis>` est égale à :ref:`Basis.FLIP_Y<class_Basis_constant_FLIP_Y>`.

.. _class_Transform3D_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Z>`

**Transform3D** avec effet miroir appliqué perpendiculairement au plan XY. Sa base :ref:`basis<class_Transform3D_property_basis>` est égale à :ref:`Basis.FLIP_Z<class_Basis_constant_FLIP_Z>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Transform3D_property_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **basis** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Transform3D_property_basis>`

La :ref:`Basis<class_Basis>` de cette transformation. Elle est composée de 3 axes (:ref:`Basis.x<class_Basis_property_x>`, :ref:`Basis.y<class_Basis_property_y>`, et :ref:`Basis.z<class_Basis_property_z>`). Ensemble, ils représentent la rotation, l'échelle et le cisaillement de la transformation.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_property_origin:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Transform3D_property_origin>`

Le décalage de translation de la transformation. Dans l'espace 3D, cela peut être vu comme la position.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Transform3D_constructor_Transform3D:

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ ) :ref:`🔗<class_Transform3D_constructor_Transform3D>`

Construit une **Transform3D** identique à :ref:`IDENTITY<class_Transform3D_constant_IDENTITY>`.

\ **Note :** En C#, cela construit une **Transform3D** avec son :ref:`origin<class_Transform3D_property_origin>` et les composantes de sa :ref:`basis<class_Transform3D_property_basis>` définis à :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )

Construit une **Transform3D** à partir de la **Transform3D** donnée.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ basis\: :ref:`Basis<class_Basis>`, origin\: :ref:`Vector3<class_Vector3>`\ )

Construit une **Transform3D** à partir de la :ref:`Basis<class_Basis>` et du :ref:`Vector3<class_Vector3>` (la position) donnés.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Projection<class_Projection>`\ )

Construit une **Transform3D** depuis une :ref:`Projection<class_Projection>`. Comme **Transform3D** est une matrice 3×4 et :ref:`Projection<class_Projection>` est une matrice 4×4, cette opération coupe la dernière ligne de la matrice de projection (``from.x.w``, ``from.y.w``, ``from.z.w``, et ``from.w.w`` ne sont pas inclus dans la nouvelle transformation).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`, origin\: :ref:`Vector3<class_Vector3>`\ )

Construit une **Transform3D** à partir de quatre valeurs :ref:`Vector3<class_Vector3>` (également appelées colonnes de la matrice).

Les trois premiers arguments sont les axes de :ref:`basis<class_Transform3D_property_basis>` (:ref:`Basis.x<class_Basis_property_x>`, :ref:`Basis.y<class_Basis_property_y>` et :ref:`Basis.z<class_Basis_property_z>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Transform3D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_affine_inverse>`

Renvoie la version inversée de cette transformation. Contrairement à :ref:`inverse()<class_Transform3D_method_inverse>`, cette méthode fonctionne avec presque n'importe quelle base, y compris les non-uniformes, mais est plus lent. Voir aussi :ref:`Basis.inverse()<class_Basis_method_inverse>`.

\ **Note :** Pour que cette méthode puisse se finir correctement, la :ref:`basis<class_Transform3D_property_basis>` de la transformation doit avoir un déterminant qui ne vaut pas exactement ``0.0`` (voir :ref:`Basis.determinant()<class_Basis_method_determinant>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **interpolate_with**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_interpolate_with>`

Renvoie le résultat de l'interpolation linéaire entre cette transformation et ``xform`` selon le poids ``weight`` donné.

Le poids ``weight`` devrait être compris entre ``0.0`` et ``1.0`` (inclusifs). Les valeurs en dehors de cette plage sont permises et peuvent être utilisées pour effectuer à la place une *extrapolation*.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_inverse>`

Renvoie la `version inversée de cette transformation <https://fr.wikipedia.org/wiki/Matrice_inversible>`__. Voir aussi :ref:`Basis.inverse()<class_Basis_method_inverse>`.

\ **Note :** Pour que cette méthode puisse se finir correctement, la :ref:`basis<class_Transform3D_property_basis>` de la transformation doit être *orthonormée* (voir :ref:`orthonormalized()<class_Transform3D_method_orthonormalized>`). Cela signifie que la base ne devrait représenter qu'une rotation. Si ce n'est pas le cas, utilisez plutôt :ref:`affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`\ ) |const| :ref:`🔗<class_Transform3D_method_is_equal_approx>`

Renvoie ``true`` si cette transformation et ``xform`` sont approximativement égales, en utilisant :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_is_finite>`

Renvoie ``true`` si cette transformation est finie, en appelant :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Transform3D_method_looking_at>`

Renvoie une copie de cette transformation tournée de sorte que l'axe avant (-Z) pointe vers la position cible ``target``.

L'axe vers le haut (+Y) pointe aussi près du vecteur ``up`` que possible tout en restant perpendiculaire à l'axe avant. La transformation résultante est orthonormalisée. L'information existante de rotation, d'échelle et de cisaillement de la transformation originale est supprimée. Les vecteurs ``target`` et ``up`` ne peuvent être nuls, ne peuvent être parallèles entre eux, et sont définis dans l'espace global/parent.

Si ``use_model_front`` vaut ``true``, l'axe +Z (axe avant des ressources) est traité comme l'avant (implique que +X est la gauche) et pointe vers la position cible ``target``. Par défaut, l'axe -Z (avant de la caméra) est traité comme l'avant (implique que +X est la droite).

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_orthonormalized>`

Renvoie une copie de cette transformation avec sa :ref:`basis<class_Transform3D_property_basis>` orthonormalisée. Une base orthonormale est à la fois *orthogonale* (les axes sont perpendiculaires les uns aux autres) et *normalisée* (les axes ont une longueur de ``1.0``), ce qui signifie également qu'elle ne peut représenter qu'une rotation. Voir aussi :ref:`Basis.orthonormalized()<class_Basis_method_orthonormalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated>`

Renvoie une copie de cette transformation tournée autour de l'axe ``axis`` donné d'un angle ``angle`` donné (en radians).

L'axe ``axis`` doit être un vecteur normalisé (voir :ref:`Vector3.normalized()<class_Vector3_method_normalized>`). Si ``angle`` est positif, la base est tournée dans le sens antihoraire autour de l'axe.

Cette méthode est une version optimisée de la multiplication de la transformation ``X`` donnée avec une transformation de rotation ``R`` correspondante sur la gauche, c'est-à-dire ``R * X``.

Cela peut être considéré comme une transformation par rapport au repère global/parent.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated_local**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated_local>`

Renvoie une copie de cette transformation tournée autour de l'axe ``axis`` donné de l'angle ``angle`` donné (en radians).

L'axe ``axis`` doit être un vecteur normalisé dans le système de coordonnées local de la transformation. Par exemple, pour tourner autour de l'axe X local, utilisez :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`.

Cette méthode est une version optimisée de la multiplication de la transformation ``X`` donnée avec une transformation de rotation ``R`` correspondante sur la droite, c'est-à-dire ``X * R``.

Cela peut être considéré comme une transformation par rapport au repère local.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled>`

Renvoie une copie de cette transformation redimensionnée d'un facteur ``scale`` donné.

Cette méthode est une version optimisée de la multiplication de la transformation ``X`` donnée avec une transformation d'échelle ``S`` correspondante sur la gauche, c'est-à-dire ``S * X``.

Cela peut être considéré comme une transformation par rapport au repère global/parent.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled_local>`

Renvoie une copie de cette transformation redimensionnée d'un facteur ``scale`` donné.

Cette méthode est une version optimisée de la multiplication de la transformation ``X`` donnée avec une transformation d'échelle ``S`` correspondante sur la droite, c'est-à-dire ``X * S``.

Cela peut être considéré comme une transformation par rapport au repère local.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated>`

Renvoie une copie de cette transformation translatée d'un décalage ``offset`` donné.

Cette méthode est une version optimisée de la multiplication de la transformation ``X`` donnée avec une transformation de translation ``T`` correspondante sur la gauche, c'est-à-dire ``T * X``.

Cela peut être considéré comme une transformation par rapport au repère global/parent.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated_local**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated_local>`

Renvoie une copie de cette transformation translatée d'un décalage ``offset`` donné.

Cette méthode est une version optimisée de la multiplication de la transformation ``X`` donnée avec une transformation de translation ``T`` correspondante sur la droite, c'est-à-dire ``X* T``.

Cela peut être considéré comme une transformation par rapport au repère local.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Transform3D_operator_neq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_neq_Transform3D>`

Renvoie ``true`` si les composantes des deux transformations ne sont pas égales.

\ **Note :** En raison des erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Transform3D_method_is_equal_approx>` qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_AABB:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_Transform3D_operator_mul_AABB>`

Transforme (multiplie) cette :ref:`AABB<class_AABB>` par cette matrice de transformation.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`PackedVector3Array<class_PackedVector3Array>` **operator ***\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_Transform3D_operator_mul_PackedVector3Array>`

Transforme (multiplie) chaque élément :ref:`Vector3<class_Vector3>` du :ref:`PackedVector3Array<class_PackedVector3Array>` donné par cette matrice de transformation.

Sur de plus grands tableaux, cette opération est beaucoup plus rapide que de transformer chaque :ref:`Vector3<class_Vector3>` individuellement.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Plane:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator ***\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Plane>`

Transforme (multiplie) ce :ref:`Plane<class_Plane>` par cette matrice de transformation.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Transform3D>`

Transforme (multiplie) cette transformation par la transformation ``right``.

C'est l'opération effectuée entre les :ref:`Node3D<class_Node3D>`\ s parent et enfant.

\ **Note :** Si vous devez seulement modifier un attribut de cette transformation, envisagez à la place d'utiliser l'une des méthodes suivantes ::

- Pour la translation, voir :ref:`translated()<class_Transform3D_method_translated>` ou :ref:`translated_local()<class_Transform3D_method_translated_local>`.

- Pour la rotation, voir :ref:`rotated()<class_Transform3D_method_rotated>` ou :ref:`rotated_local()<class_Transform3D_method_rotated_local>`.

- Pour l'échelle, voir :ref:`scaled()<class_Transform3D_method_scaled>` ou :ref:`scaled_local()<class_Transform3D_method_scaled_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Vector3>`

Transforme (multiplie) ce :ref:`Vector3<class_Vector3>` par cette matrice de transformation.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_mul_float>`

Multiplie tous les composantes de la **Transform3D** par le :ref:`float<class_float>` donné, y compris l'origine :ref:`origin<class_Transform3D_property_origin>`. Cela affecte uniformément l'échelle de la transformation, en redimensionnant la :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_mul_int>`

Multiplie tous les composantes de la **Transform3D** par l':ref:`int<class_int>` donné, y compris l'origine :ref:`origin<class_Transform3D_property_origin>`. Cela affecte uniformément l'échelle de la transformation, en redimensionnant la :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_div_float>`

Divise tous les composantes de la **Transform3D** par le :ref:`float<class_float>` donné, y compris l'origine :ref:`origin<class_Transform3D_property_origin>`. Cela affecte uniformément l'échelle de la transformation, en redimensionnant la :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_div_int>`

Divise tous les composantes de la **Transform3D** par le :ref:`int<class_int>` donné, y compris l'origine :ref:`origin<class_Transform3D_property_origin>`. Cela affecte uniformément l'échelle de la transformation, en redimensionnant la :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_eq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_eq_Transform3D>`

Renvoie ``true`` si les composantes des deux transformations sont exactement égales.

\ **Note :** En raison des erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Transform3D_method_is_equal_approx>` qui est plus fiable.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
