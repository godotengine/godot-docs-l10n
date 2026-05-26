:github_url: hide

.. _class_Quaternion:

Quaternion
==========

Un quaternion unitaire utilisé pour représenter des rotations 3D.

.. rst-class:: classref-introduction-group

Description
-----------

The **Quaternion** built-in :ref:`Variant<class_Variant>` type is a 4D data structure that represents rotation in the form of a `Hamilton convention quaternion <https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation>`__. Compared to the :ref:`Basis<class_Basis>` type which can store both rotation and scale, quaternions can *only* store rotation.

A **Quaternion** is composed by 4 floating-point components: :ref:`w<class_Quaternion_property_w>`, :ref:`x<class_Quaternion_property_x>`, :ref:`y<class_Quaternion_property_y>`, and :ref:`z<class_Quaternion_property_z>`. These components are very compact in memory, and because of this some operations are more efficient and less likely to cause floating-point errors. Methods such as :ref:`get_angle()<class_Quaternion_method_get_angle>`, :ref:`get_axis()<class_Quaternion_method_get_axis>`, and :ref:`slerp()<class_Quaternion_method_slerp>` are faster than their :ref:`Basis<class_Basis>` counterparts.

For a great introduction to quaternions, see `this video by 3Blue1Brown <https://www.youtube.com/watch?v=d4EgbgTm0Bg>`__. You do not need to know the math behind quaternions, as Godot provides several helper methods that handle it for you. These include :ref:`slerp()<class_Quaternion_method_slerp>` and :ref:`spherical_cubic_interpolate()<class_Quaternion_method_spherical_cubic_interpolate>`, as well as the ``*`` operator.

\ **Note:** Quaternions must be normalized before being used for rotation (see :ref:`normalized()<class_Quaternion_method_normalized>`).

\ **Note:** Similarly to :ref:`Vector2<class_Vector2>` and :ref:`Vector3<class_Vector3>`, the components of a quaternion use 32-bit precision by default, unlike :ref:`float<class_float>` which is always 64-bit. If double precision is needed, compile the engine with the option ``precision=double``.

\ **Note:** In a boolean context, a quaternion will evaluate to ``false`` if it's equal to :ref:`IDENTITY<class_Quaternion_constant_IDENTITY>`. Otherwise, a quaternion will always evaluate to ``true``.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir :ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `La vidéo de 3Blue1Brown sur les quaternions <https://www.youtube.com/watch?v=d4EgbgTm0Bg>`__

- `Visualisation en ligne de quaternion <https://quaternions.online/>`__

- `Utiliser les transformations 3D <../tutorials/3d/using_transforms.html#interpolating-with-quaternions>`__

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

- `Visualisation avancée de quaternions <https://iwatake2222.github.io/rotation_master/rotation_master.html>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`w<class_Quaternion_property_w>` | ``1.0`` |
   +---------------------------+---------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`x<class_Quaternion_property_x>` | ``0.0`` |
   +---------------------------+---------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`y<class_Quaternion_property_y>` | ``0.0`` |
   +---------------------------+---------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`z<class_Quaternion_property_z>` | ``0.0`` |
   +---------------------------+---------------------------------------+---------+

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ )                                                                                                                             |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )                                                                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ arc_from\: :ref:`Vector3<class_Vector3>`, arc_to\: :ref:`Vector3<class_Vector3>`\ )                                           |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ from\: :ref:`Basis<class_Basis>`\ )                                                                                           |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`Quaternion<class_Quaternion_constructor_Quaternion>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`, w\: :ref:`float<class_float>`\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`angle_to<class_Quaternion_method_angle_to>`\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`dot<class_Quaternion_method_dot>`\ (\ with\: :ref:`Quaternion<class_Quaternion>`\ ) |const|                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`exp<class_Quaternion_method_exp>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`from_euler<class_Quaternion_method_from_euler>`\ (\ euler\: :ref:`Vector3<class_Vector3>`\ ) |static|                                                                                                                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_angle<class_Quaternion_method_get_angle>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_axis<class_Quaternion_method_get_axis>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_euler<class_Quaternion_method_get_euler>`\ (\ order\: :ref:`int<class_int>` = 2\ ) |const|                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`inverse<class_Quaternion_method_inverse>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_equal_approx<class_Quaternion_method_is_equal_approx>`\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const|                                                                                                                                                                                                                                                                                   |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_finite<class_Quaternion_method_is_finite>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_normalized<class_Quaternion_method_is_normalized>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`length<class_Quaternion_method_length>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`length_squared<class_Quaternion_method_length_squared>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`log<class_Quaternion_method_log>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`normalized<class_Quaternion_method_normalized>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`slerp<class_Quaternion_method_slerp>`\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                                                                   |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`slerpni<class_Quaternion_method_slerpni>`\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`spherical_cubic_interpolate<class_Quaternion_method_spherical_cubic_interpolate>`\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`spherical_cubic_interpolate_in_time<class_Quaternion_method_spherical_cubic_interpolate_in_time>`\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`, b_t\: :ref:`float<class_float>`, pre_a_t\: :ref:`float<class_float>`, post_b_t\: :ref:`float<class_float>`\ ) |const| |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_Quaternion_operator_neq_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_Quaternion_operator_mul_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_Quaternion_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_Quaternion_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_Quaternion_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator +<class_Quaternion_operator_sum_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator -<class_Quaternion_operator_dif_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator /<class_Quaternion_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator /<class_Quaternion_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_Quaternion_operator_eq_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator []<class_Quaternion_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator unary+<class_Quaternion_operator_unplus>`\ (\ )                                                  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator unary-<class_Quaternion_operator_unminus>`\ (\ )                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Quaternion_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_Quaternion_constant_IDENTITY>`

La quaternion d'identité, représentant une rotation nulle. Il s'agit de la même rotation que :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`.

Si un :ref:`Vector3<class_Vector3>` est pivoté (multiplié) par ce quaternion, il ne changera pas.

\ **Note :** En GDScript, cette constante est équivalente à créer un :ref:`Quaternion<class_Quaternion_constructor_Quaternion>` sans aucun argument. Cela peut être utilisé pour rendre votre code plus clair, et pour être consistant avec le C#.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Quaternion_property_w:

.. rst-class:: classref-property

:ref:`float<class_float>` **w** = ``1.0`` :ref:`🔗<class_Quaternion_property_w>`

La composante W du quaternion. Il s'agit de la partie "réelle".

\ **Note :** Les composantes des quaternions ne devraient habituellement pas être modifiées directement.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_property_x:

.. rst-class:: classref-property

:ref:`float<class_float>` **x** = ``0.0`` :ref:`🔗<class_Quaternion_property_x>`

La composante X du quaternion. Il s'agit de la valeur le long de l'axe "imaginaire" ``i``.

\ **Note :** Les composantes des quaternions ne devraient habituellement pas être modifiées directement.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_property_y:

.. rst-class:: classref-property

:ref:`float<class_float>` **y** = ``0.0`` :ref:`🔗<class_Quaternion_property_y>`

La composante Y du quaternion. Il s'agit de la valeur le long de l'axe "imaginaire" ``j``.

\ **Note :** Les composantes des quaternions ne devraient habituellement pas être modifiées directement.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_property_z:

.. rst-class:: classref-property

:ref:`float<class_float>` **z** = ``0.0`` :ref:`🔗<class_Quaternion_property_z>`

La composante Z du quaternion. Il s'agit de la valeur le long de l'axe "imaginaire" ``k``.

\ **Note :** Les composantes des quaternions ne devraient habituellement pas être modifiées directement.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Quaternion_constructor_Quaternion:

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ ) :ref:`🔗<class_Quaternion_constructor_Quaternion>`

Construit un **Quaternion** identique à :ref:`IDENTITY<class_Quaternion_constant_IDENTITY>`.

\ **Note :** En C#, cela construit un **Quaternion** avec toutes ses composantes définies à ``0.0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )

Construit un **Quaternion** comme copie du **Quaternion** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ arc_from\: :ref:`Vector3<class_Vector3>`, arc_to\: :ref:`Vector3<class_Vector3>`\ )

Construit un **Quaternion** représentant l'arc le plus court entre ``arc_from`` et ``arc_to``. Cela peut être imaginé comme deux points intersectant la surface d'une sphère de rayon ``1.0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )

Construit un **Quaternion** représentant la rotation autour de l'axe ``axis`` de l'``angle`` donné, en radians. L'axe doit être un vecteur normalisé.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ from\: :ref:`Basis<class_Basis>`\ )

Construit un **Quaternion** depuis la rotation :ref:`Basis<class_Basis>` donnée.

Ce constructeur est plus rapide que :ref:`Basis.get_rotation_quaternion()<class_Basis_method_get_rotation_quaternion>`, mais la base donnée doit être *orthonormalisée* (voir :ref:`Basis.orthonormalized()<class_Basis_method_orthonormalized>`). Sinon, le constructeur échoue et renvoie :ref:`IDENTITY<class_Quaternion_constant_IDENTITY>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Quaternion<class_Quaternion>` **Quaternion**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`, w\: :ref:`float<class_float>`\ )

Construit un **Quaternion** défini par les valeurs données.

\ **Note :** Seuls les quaternions normalisés représentent une rotation, si ces valeurs ne sont pas normalisées, le nouveau **Quaternion** ne sera pas une rotation valide.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Quaternion_method_angle_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **angle_to**\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const| :ref:`🔗<class_Quaternion_method_angle_to>`

Renvoie l'angle entre ce quaternion et ``to``. Il s'agit de la magnitude de l'angle dont vous auriez besoin de pivoter pour aller de l'un à l'autre.

\ **Note :** La magnitude de l'erreur de flottant pour cette méthode est anormalement élevée, donc les méthodes telles que ``is_zero_approx`` ne fonctionneront pas de manière fiable.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_dot:

.. rst-class:: classref-method

:ref:`float<class_float>` **dot**\ (\ with\: :ref:`Quaternion<class_Quaternion>`\ ) |const| :ref:`🔗<class_Quaternion_method_dot>`

Renvoie le produit scalaire entre ce quaternion et ``with``.

C'est équivalent à ``(quat.x * with.x) + (quat.y * with.y) + (quat.z * with.z) + (quat.w * with.w)``.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_exp:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **exp**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_exp>`

Renvoie l'exponentielle de ce quaternion. L'axe de rotation du résultat est l'axe de rotation normalisé de ce quaternion, l'angle est le résultat de la longueur de la partie vectorielle de ce quaternion.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_from_euler:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **from_euler**\ (\ euler\: :ref:`Vector3<class_Vector3>`\ ) |static| :ref:`🔗<class_Quaternion_method_from_euler>`

Constructs a new **Quaternion** from the given :ref:`Vector3<class_Vector3>` of `Euler angles <https://en.wikipedia.org/wiki/Euler_angles>`__, in radians. In Godot, Euler angles always use intrinsic order. This method always uses the intrinsic YXZ convention (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`).

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_get_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_angle**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_get_angle>`

Renvoie l'angle de la rotation représentée par ce quaternion.

\ **Note:** Le quaternion doit être normalisé.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_get_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_axis**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_get_axis>`

Renvoie l'axe de rotation de la rotation représentée par ce quaternion.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_get_euler:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_euler**\ (\ order\: :ref:`int<class_int>` = 2\ ) |const| :ref:`🔗<class_Quaternion_method_get_euler>`

Returns this quaternion's rotation as a :ref:`Vector3<class_Vector3>` of `Euler angles <https://en.wikipedia.org/wiki/Euler_angles>`__, in radians.

The order of each consecutive rotation can be changed with ``order`` (see :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` constants). In Godot, Euler angles always use intrinsic order. By default, the intrinsic YXZ convention is used (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`): since we are decomposing, local Z (roll) is calculated first, then local X (pitch), and lastly local Y (yaw). When using the opposite method :ref:`from_euler()<class_Quaternion_method_from_euler>` to compose a rotation, this order is reversed.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_inverse:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **inverse**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_inverse>`

Renvoie la version inverse de ce quaternion, inversant le signe de chaque composante excepté :ref:`w<class_Quaternion_property_w>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to\: :ref:`Quaternion<class_Quaternion>`\ ) |const| :ref:`🔗<class_Quaternion_method_is_equal_approx>`

Renvoie ``true`` si ce quaternion et ``to`` sont approximativement égaux, en appelant :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_is_finite>`

Renvoie ``true`` si ce quaternion est fini, en appelant :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_is_normalized:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_normalized**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_is_normalized>`

Renvoie ``true`` si ce quaternion est normalisé. Voir aussi :ref:`normalized()<class_Quaternion_method_normalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_length>`

Renvoie la longueur de ce quaternion, aussi appelée magnitude.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_length_squared:

.. rst-class:: classref-method

:ref:`float<class_float>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_length_squared>`

Renvoie la longueur au carré de ce quaternion.

\ **Note :** Cette méthode est plus rapide que :ref:`length()<class_Quaternion_method_length>` donc préférez-la si vous avez seulement besoin de comparer des longueurs de quaternion.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_log:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **log**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_log>`

Renvoie le logarithme de ce quaternion. Multiple l'axe de rotation de ce quaternion par son angle de rotation, et stocke le résultat dans la partie vectorielle du quaternion renvoyé (:ref:`x<class_Quaternion_property_x>`, :ref:`y<class_Quaternion_property_y>` et :ref:`z<class_Quaternion_property_z>`). La partie réelle du quaternion renvoyé (:ref:`w<class_Quaternion_property_w>`) vaut toujours ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_normalized:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **normalized**\ (\ ) |const| :ref:`🔗<class_Quaternion_method_normalized>`

Renvoie une copie de ce quaternion, normalisé de sorte à ce que sa longueur soit ``1.0``. Voir aussi :ref:`is_normalized()<class_Quaternion_method_is_normalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_slerp:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **slerp**\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_slerp>`

Effectue une interpolation linéaire sphérique avec le quaternion ``to`` et un poids ``weight`` donnés, et renvoie le résultat. Les deux quaternions doivent être normalisés.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_slerpni:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **slerpni**\ (\ to\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_slerpni>`

Effectue une interpolation linéaire sphérique avec le quaternion ``to`` et un poids ``weight`` donnés, et renvoie le résultat. Contrairement à :ref:`slerp()<class_Quaternion_method_slerp>`, cette méthode ne vérifie pas si le chemin de rotation est inférieur à 90 degrés. Les deux quaternions doivent être normalisés.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_spherical_cubic_interpolate:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **spherical_cubic_interpolate**\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_spherical_cubic_interpolate>`

Effectue une interpolation sphérique cubique entre les quaternions ``pre_a``, ce vecteur, ``b``, et ``post_b``, par la quantité ``weight`` donnée.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_method_spherical_cubic_interpolate_in_time:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **spherical_cubic_interpolate_in_time**\ (\ b\: :ref:`Quaternion<class_Quaternion>`, pre_a\: :ref:`Quaternion<class_Quaternion>`, post_b\: :ref:`Quaternion<class_Quaternion>`, weight\: :ref:`float<class_float>`, b_t\: :ref:`float<class_float>`, pre_a_t\: :ref:`float<class_float>`, post_b_t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Quaternion_method_spherical_cubic_interpolate_in_time>`

Effectue une interpolation sphérique cubique entre les quaternions ``pre_a``, ce vecteur, ``b``, et ``post_b``, par la quantité ``weight`` donnée.

Elle peut effectuer une interpolation plus lisse que :ref:`spherical_cubic_interpolate()<class_Quaternion_method_spherical_cubic_interpolate>` pour les valeurs temporelles.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Quaternion_operator_neq_Quaternion:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_neq_Quaternion>`

Renvoie ``true`` si les composantes des deux quaternions ne sont pas exactement égales.

\ **Note :** À cause des erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Quaternion_method_is_equal_approx>` à la place, qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_mul_Quaternion>`

Compose (multiplie) deux quaternions. Cela tourne le quaternion ``right`` (l'enfant) par ce quaternion (le parent).

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Quaternion_operator_mul_Vector3>`

Fait tourner (multiplie) le vecteur ``right`` par ce quaternion, renvoyant un :ref:`Vector3<class_Vector3>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Quaternion_operator_mul_float>`

Multiplie chaque composante du **Quaternion** par le flottant :ref:`float<class_float>` de droite.

Cette opération ne veut rien dire seule, mais peut-être utilisée comme partie d'une plus grande expression.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Quaternion_operator_mul_int>`

Multiplie chaque composante du **Quaternion** par l'entier :ref:`int<class_int>` de droite.

Cette opération ne veut rien dire seule, mais peut-être utilisée comme partie d'une plus grande expression.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_sum_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator +**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_sum_Quaternion>`

Ajoute chaque composante du **Quaternion** de gauche à celles du **Quaternion** de droite.

Cette opération ne veut rien dire seule, mais peut être utilisée comme partie d'une plus grande expression, comme l'approximation d'une rotation intermédiaire entre deux rotations proches.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_dif_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator -**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_dif_Quaternion>`

Soustrait chaque composante du **Quaternion** de gauche par celles du **Quaternion** de droite.

Cette opération ne veut rien dire seule, mais peut être utilisée comme partie d'une plus grande expression.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_div_float:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Quaternion_operator_div_float>`

Multiple chaque composante du **Quaternion** de gauche par celles du **Quaternion** de droite.

Cette opération ne veut rien dire seule, mais peut être utilisée comme partie d'une plus grande expression.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_div_int:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Quaternion_operator_div_int>`

Divise chaque composante du **Quaternion** de gauche par celles du **Quaternion** de droite.

Cette opération ne veut rien dire seule, mais peut être utilisée comme partie d'une plus grande expression.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_eq_Quaternion:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Quaternion_operator_eq_Quaternion>`

Renvoie ``true`` si les composantes des deux quaternions sont exactement égales.

\ **Note :** À cause des erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Quaternion_method_is_equal_approx>` à la place, qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Quaternion_operator_idx_int>`

Accède à chaque composante de ce quaternion par leur index.

L'index ``0`` est le même que :ref:`x<class_Quaternion_property_x>`, l'index ``1`` est le même que :ref:`y<class_Quaternion_property_y>`, l'index ``2`` est le même que :ref:`z<class_Quaternion_property_z>`, et l'index ``3`` est le même que :ref:`w<class_Quaternion_property_w>`.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_unplus:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator unary+**\ (\ ) :ref:`🔗<class_Quaternion_operator_unplus>`

Renvoie la même valeur comme si ``+`` n'était pas là. Le ``+`` unaire ne fait rien, mais peut parfois rendre votre code plus lisible.

.. rst-class:: classref-item-separator

----

.. _class_Quaternion_operator_unminus:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator unary-**\ (\ ) :ref:`🔗<class_Quaternion_operator_unminus>`

Renvoie la valeur négative du **Quaternion**. C'est la même que de multiplier toutes les composantes par ``-1``. Cette opération résulte en un quaternion qui représente la même rotation.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
