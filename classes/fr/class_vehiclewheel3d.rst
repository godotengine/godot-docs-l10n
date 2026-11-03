:github_url: hide

.. _class_VehicleWheel3D:

VehicleWheel3D
==============

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un corps physique 3D pour un :ref:`VehicleBody3D<class_VehicleBody3D>` qui simule le comportement d'une roue.

.. rst-class:: classref-introduction-group

Description
-----------

Un nœud utilisé comme enfant d'un :ref:`VehicleBody3D<class_VehicleBody3D>` parent pour simuler le comportement d'une de ses roues. Ce nœud agit également comme une forme de collision pour détecter si la roue touche une surface.

\ **Note :** Cette classe a des problèmes connus et n'est pas conçue pour fournir une physique réaliste des véhicules 3D. Si vous voulez de la physique avancée pour des véhicules, vous pouvez avoir besoin d'écrire votre propre intégration physique en utilisant une autre classe :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo 3D « Truck Town » <https://store.godotengine.org/asset/godot-foundation/truck-town-demo/>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`brake<class_VehicleWheel3D_property_brake>`                               | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>`   | ``0.83``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`damping_relaxation<class_VehicleWheel3D_property_damping_relaxation>`     | ``0.88``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`engine_force<class_VehicleWheel3D_property_engine_force>`                 | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                      | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`steering<class_VehicleWheel3D_property_steering>`                         | ``0.0``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_max_force<class_VehicleWheel3D_property_suspension_max_force>` | ``6000.0``                                                                    |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_stiffness<class_VehicleWheel3D_property_suspension_stiffness>` | ``5.88``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`suspension_travel<class_VehicleWheel3D_property_suspension_travel>`       | ``0.2``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_as_steering<class_VehicleWheel3D_property_use_as_steering>`           | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_as_traction<class_VehicleWheel3D_property_use_as_traction>`           | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_friction_slip<class_VehicleWheel3D_property_wheel_friction_slip>`   | ``10.5``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_radius<class_VehicleWheel3D_property_wheel_radius>`                 | ``0.5``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_rest_length<class_VehicleWheel3D_property_wheel_rest_length>`       | ``0.15``                                                                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`wheel_roll_influence<class_VehicleWheel3D_property_wheel_roll_influence>` | ``0.1``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`   | :ref:`get_contact_body<class_VehicleWheel3D_method_get_contact_body>`\ (\ ) |const|     |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_contact_normal<class_VehicleWheel3D_method_get_contact_normal>`\ (\ ) |const| |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_contact_point<class_VehicleWheel3D_method_get_contact_point>`\ (\ ) |const|   |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_rpm<class_VehicleWheel3D_method_get_rpm>`\ (\ ) |const|                       |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_skidinfo<class_VehicleWheel3D_method_get_skidinfo>`\ (\ ) |const|             |
   +-------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_in_contact<class_VehicleWheel3D_method_is_in_contact>`\ (\ ) |const|           |
   +-------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VehicleWheel3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

Ralentit la roue en appliquant une force de freinage. La roue n'est ralentie que si elle est en contact avec une surface. La force que vous devez appliquer pour ralentir adéquatement votre véhicule dépend de la masse :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` du véhicule. Pour un véhicule dont la masse est fixée à 1000, essayez une valeur dans l'intervalle 25-30 pour un freinage dur.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_damping_compression:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_compression** = ``0.83`` :ref:`🔗<class_VehicleWheel3D_property_damping_compression>`

.. rst-class:: classref-property-setget

- |void| **set_damping_compression**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_compression**\ (\ )

L'amortissement appliqué au ressort de suspension lorsqu'il se compresse, ce qui signifie que la roue monte par rapport au véhicule. Il est mesuré en newton-secondes par millimètre (N⋅s/mm), ou mégagrammes par seconde (Mg/s). Cette valeur devrait être entre 0.0 (pas d'amortissement) et 1.0, mais peut être plus. Une valeur de 0.0 signifie que la voiture continuera de rebondir car le ressort conserve son énergie. Une bonne valeur pour ceci est d'environ 0.3 pour une voiture normale, 0.5 pour une voiture de course.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_damping_relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_relaxation** = ``0.88`` :ref:`🔗<class_VehicleWheel3D_property_damping_relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_damping_relaxation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_relaxation**\ (\ )

L'amortissement appliqué au ressort de suspension lorsqu'il rebondit ou s'étend, ce qui signifie que la roue descend par rapport au véhicule. Il est mesuré en newton-secondes par millimètre (N⋅s/mm), ou mégagrammes par seconde (Mg/s). Cette valeur devrait être entre 0.0 (pas d'amortissement) et 1.0, mais peut être plus. Cette valeur devrait toujours être légèrement supérieure à la propriété :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>`. Pour une valeur :ref:`damping_compression<class_VehicleWheel3D_property_damping_compression>` de 0.3, essayez une valeur de relaxation de 0.5.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

Accélère la roue en appliquant une force moteur. La roue n'est accélérée que si elle est en contact avec une surface. La masse :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` du véhicule a un effet sur l'accélération du véhicule. Pour un véhicule avec une masse de 1000, essayez une valeur dans l'intervalle 25-50 pour l'accélération.

\ **Note :** La simulation ne prend pas en compte l'effet des rapports de vitesse, vous devrez ajouter de la logique pour cela si vous souhaitez simuler des rapports de vitesse.

Une valeur négative entraînera la marche arrière de la roue.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleWheel3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

L'angle de direction de la roue, en radians. Définir cette valeur à une valeur non nulle fera tourner le véhicule quand il se déplace.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_max_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_max_force** = ``6000.0`` :ref:`🔗<class_VehicleWheel3D_property_suspension_max_force>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_max_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_max_force**\ (\ )

La force maximale à laquelle le ressort peut résister. Cette valeur devrait être supérieure à un quart de la masse :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` du :ref:`VehicleBody3D<class_VehicleBody3D>` ou sinon le ressort ne portera pas le poids du véhicule. Les bons résultats sont souvent obtenus avec une valeur d'environ 3× à 4× ce nombre.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_stiffness** = ``5.88`` :ref:`🔗<class_VehicleWheel3D_property_suspension_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_stiffness**\ (\ )

La rigidité de la suspension, en Newtons par millimètre (N/mm), ou mégagrammes par seconde carrée. Utilisez une valeur inférieure à 50 pour une voiture tout terrain, une valeur entre 50 et 100 pour une voiture de course et essayez quelque chose autour de 200 pour quelque chose comme une voiture de Formule 1.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_suspension_travel:

.. rst-class:: classref-property

:ref:`float<class_float>` **suspension_travel** = ``0.2`` :ref:`🔗<class_VehicleWheel3D_property_suspension_travel>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_travel**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_travel**\ (\ )

Il s'agit de la distance que la suspension peut parcourir. Comme les unités de Godot sont équivalentes aux mètres, gardez ce paramètre relativement bas. Essayez une valeur entre 0,1 et 0,3 selon le type de voiture.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_use_as_steering:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_as_steering** = ``false`` :ref:`🔗<class_VehicleWheel3D_property_use_as_steering>`

.. rst-class:: classref-property-setget

- |void| **set_use_as_steering**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_used_as_steering**\ (\ )

Si ``true``, cette roue sera tournée lorsque la voiture tourne. Cette valeur est utilisée en conjonction avec :ref:`VehicleBody3D.steering<class_VehicleBody3D_property_steering>` et ignorée si vous utilisez plutôt la valeur :ref:`steering<class_VehicleWheel3D_property_steering>` par roue.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_use_as_traction:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_as_traction** = ``false`` :ref:`🔗<class_VehicleWheel3D_property_use_as_traction>`

.. rst-class:: classref-property-setget

- |void| **set_use_as_traction**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_used_as_traction**\ (\ )

Si ``true``, cette roue transfère la force du moteur au sol pour propulser le véhicule vers l'avant. Cette valeur est utilisée en conjonction avec :ref:`VehicleBody3D.engine_force<class_VehicleBody3D_property_engine_force>` et est ignorée si vous utilisez plutôt la valeur par roue :ref:`engine_force<class_VehicleWheel3D_property_engine_force>`.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_friction_slip:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_friction_slip** = ``10.5`` :ref:`🔗<class_VehicleWheel3D_property_wheel_friction_slip>`

.. rst-class:: classref-property-setget

- |void| **set_friction_slip**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction_slip**\ (\ )

Cela détermine combien d'adhérence possède cette roue. Elle est combiné avec le paramètre de friction de la surface avec laquelle la roue est en contact. 0.0 signifie pas d'adhérence, 1.0 est l'adhérence normale. Pour une configuration de voiture de dérapage, essayez de définir l'adhérence des roues arrière légèrement plus bas que celle des roues avant, ou utilisez une valeur inférieure pour simuler l'usure du pneu.

Il est préférable de définir cela à 1.0 au début.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_radius** = ``0.5`` :ref:`🔗<class_VehicleWheel3D_property_wheel_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

La rayon de la roue en mètres.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_rest_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_rest_length** = ``0.15`` :ref:`🔗<class_VehicleWheel3D_property_wheel_rest_length>`

.. rst-class:: classref-property-setget

- |void| **set_suspension_rest_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_suspension_rest_length**\ (\ )

Il s'agit de la distance en mètres de laquelle la roue est abaissée de son point d'origine. Ne définissez pas ceci à 0.0 et déplacez la roue à la position, déplacez plutôt le point d'origine de votre roue (le manipulateur dans Godot) à la position que la roue prendra lorsque la suspension est au minimum, puis utilisez la longueur de repos pour déplacer la roue vers le bas à la position à laquelle elle devrait être lorsque la voiture est au repos.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_property_wheel_roll_influence:

.. rst-class:: classref-property

:ref:`float<class_float>` **wheel_roll_influence** = ``0.1`` :ref:`🔗<class_VehicleWheel3D_property_wheel_roll_influence>`

.. rst-class:: classref-property-setget

- |void| **set_roll_influence**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_roll_influence**\ (\ )

Cette valeur affecte la roulade de votre véhicule. Si défini à 1.0 pour toutes les roues, votre véhicule résistera aux roulades, tandis qu'une valeur de 0.0 provoquera des roulades.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_VehicleWheel3D_method_get_contact_body:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_contact_body**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_body>`

Renvoie le nœud du corps en contact si valide dans l'arbre, en tant que :ref:`Node3D<class_Node3D>`. Pour le moment, :ref:`GridMap<class_GridMap>` n'est pas supporté de sorte que le nœud sera toujours de type :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

Renvoie ``null`` si la roue n'est pas en contact avec une surface, ou si le corps en contact n'est pas un :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_contact_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_normal**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_normal>`

Renvoie la normale de la collision de la suspension dans l'espace global si la roue est en contact. Si la roue n'est pas en contact avec quoi que ce soit, renvoie un vecteur pointant directement le long de l'axe de suspension vers le véhicule dans l'espace global.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_contact_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_point**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_contact_point>`

Renvoie le point de la collision de la suspension dans l'espace global si la roue est en contact. Si la roue n'est pas en contact avec quoi que ce soit, renvoie le point maximal du raycast de la roue dans l'espace global, défini par ``wheel_rest_length + wheel_radius``.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_rpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rpm**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_rpm>`

Renvoie la vitesse de rotation de la roue en tours par minute.

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_get_skidinfo:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skidinfo**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_get_skidinfo>`

Renvoie une valeur entre 0.0 et 1.0 qui indique si cette roue dérape. 0.0 est le dérapage (la roue a perdu l'adhérence, p.ex. sur terrain glacé), 1.0 signifie pas de dérapage (la roue a pleine adhérence, p.ex. sur route en asphalte sèche).

.. rst-class:: classref-item-separator

----

.. _class_VehicleWheel3D_method_is_in_contact:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_contact**\ (\ ) |const| :ref:`🔗<class_VehicleWheel3D_method_is_in_contact>`

Renvoie ``true`` si cette roue est en contact avec une surface.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
