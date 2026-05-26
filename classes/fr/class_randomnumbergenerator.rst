:github_url: hide

.. _class_RandomNumberGenerator:

RandomNumberGenerator
=====================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fournit des méthodes pour générer des nombres pseudo-aléatoires.

.. rst-class:: classref-introduction-group

Description
-----------

RandomNumberGenerator est une classe pour générer des nombres pseudo-aléatoires. Elle utilise actuellement l'algorithme `PCG32 <http://www.pcg-random.org/>`__.

\ **Note :** L'implémentation de l'algorithme est un détail d'implémentation, sur lequel il ne faudrait pas se baser.

Pour générer un flottant aléatoire (dans un intervalle donné) basé sur une graine dépendante du temps :

::

    var rng = RandomNumberGenerator.new()
    func _ready():
        var mon_nombre_aleatoire = rng.randf_range(-10.0, 10.0)

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Génération de nombres aléatoires <../tutorials/math/random_number_generation>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`seed<class_RandomNumberGenerator_property_seed>`   | ``0`` |
   +-----------------------+----------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`state<class_RandomNumberGenerator_property_state>` | ``0`` |
   +-----------------------+----------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`rand_weighted<class_RandomNumberGenerator_method_rand_weighted>`\ (\ weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randf<class_RandomNumberGenerator_method_randf>`\ (\ )                                                                                        |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randf_range<class_RandomNumberGenerator_method_randf_range>`\ (\ from\: :ref:`float<class_float>`, to\: :ref:`float<class_float>`\ )          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`randfn<class_RandomNumberGenerator_method_randfn>`\ (\ mean\: :ref:`float<class_float>` = 0.0, deviation\: :ref:`float<class_float>` = 1.0\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`randi<class_RandomNumberGenerator_method_randi>`\ (\ )                                                                                        |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`randi_range<class_RandomNumberGenerator_method_randi_range>`\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ )                  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`randomize<class_RandomNumberGenerator_method_randomize>`\ (\ )                                                                                |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RandomNumberGenerator_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Initializes the random number generator state based on the given seed value. A given seed will give a reproducible sequence of pseudo-random numbers.

\ **Note:** The RNG does not have an avalanche effect, and can output similar random streams given similar seeds. Consider using a hash function to improve your seed quality if they're sourced externally.

\ **Note:** The default value of this property is pseudo-random, and changes when calling :ref:`randomize()<class_RandomNumberGenerator_method_randomize>`. The ``0`` value documented here is a placeholder, and not the actual default seed.

\ **Note:** Setting this property produces a side effect of changing the internal :ref:`state<class_RandomNumberGenerator_property_state>`, so make sure to initialize the seed *before* modifying the :ref:`state<class_RandomNumberGenerator_property_state>`:

::

    var rng = RandomNumberGenerator.new()
    rng.seed = hash("Godot")
    rng.state = 100 # Restore to some previously saved state.

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_property_state:

.. rst-class:: classref-property

:ref:`int<class_int>` **state** = ``0`` :ref:`🔗<class_RandomNumberGenerator_property_state>`

.. rst-class:: classref-property-setget

- |void| **set_state**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_state**\ (\ )

L'état actuel du générateur de nombres aléatoires. Enregistrez puis restaurez cette propriété pour restorer l'état du générateur à un état précédent :

::

    var rng = RandomNumberGenerator.new()
    print(rng.randf())
    var etat_sauvegarde = rng.state # Enregistre l'état actuel.
    print(rng.randf()) # Avance l'état interne.
    rng.state = etat_sauvegarde # Restaure l'état.
    print(rng.randf()) # Affiche la même valeur que précédemment.

\ **Note :** Ne définissez pas l'état sauvegardé à des valeurs arbitraires, car le générateur de nombre aléatoires a besoin que l'état ait des propriétés particulières pour se comporter correctement. Cet état ne devrait être défini qu'à partir de valeurs qui proviennent de la propriété de l'état lui-même. Pour initialiser le générateur avec une entrée arbitraire, utilisez plutôt :ref:`seed<class_RandomNumberGenerator_property_seed>`.

\ **Note :** La valeur par défaut de cette propriété est pseudo-aléatoire, et change lors de l'appel à :ref:`randomize()<class_RandomNumberGenerator_method_randomize>`. La valeur de ``0`` documentée ici est un placeholder, et non l'état par défaut réel.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_RandomNumberGenerator_method_rand_weighted:

.. rst-class:: classref-method

:ref:`int<class_int>` **rand_weighted**\ (\ weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_rand_weighted>`

Returns a random integer between ``0`` and the size of the array that is passed as a parameter. Each value in the array should be a floating-point number that represents the relative likelihood that it will be returned as an index. A higher value means the value is more likely to be returned as an index, while a value of ``0`` means it will never be returned as an index.

For example, if ``[0.5, 1, 1, 2]`` is passed as a parameter, then the method is twice as likely to return ``3`` (the index of the value ``2``) and twice as unlikely to return ``0`` (the index of the value ``0.5``) compared to the indices ``1`` and ``2``.

Prints an error and returns ``-1`` if the array is empty.


.. tabs::

 .. code-tab:: gdscript

    var rng = RandomNumberGenerator.new()

    var my_array = ["one", "two", "three", "four"]
    var weights = PackedFloat32Array([0.5, 1, 1, 2])

    # Prints one of the four elements in `my_array`.
    # It is more likely to print "four", and less likely to print "one".
    print(my_array[rng.rand_weighted(weights)])



.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf>`

Renvoie un flottant pseudo-aléatoire entre ``0.0`` et ``1.0`` (inclus).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randf_range:

.. rst-class:: classref-method

:ref:`float<class_float>` **randf_range**\ (\ from\: :ref:`float<class_float>`, to\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randf_range>`

Renvoie un flottant pseudo-aléatoire entre ``from`` et ``to`` (inclus).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randfn:

.. rst-class:: classref-method

:ref:`float<class_float>` **randfn**\ (\ mean\: :ref:`float<class_float>` = 0.0, deviation\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_RandomNumberGenerator_method_randfn>`

Renvoie un flottant pseudo-aléatoire, `distribué normalement <https://fr.wikipedia.org/wiki/Loi_normale>`__, depuis la moyenne ``mean`` et l'écart-type ``deviation`` spécifiés. Ceci est également connu en tant que loi gaussienne.

\ **Note :** Cette méthode utilise l'algorithme de la `méthode de Box-Muller <https://fr.wikipedia.org/wiki/M%C3%A9thode_de_Box-Muller>`__.

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi>`

Renvoie un entier non signé de 32 bits pseudo-aléatoire compris entre ``0`` et ``4294967295`` (inclus).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randi_range:

.. rst-class:: classref-method

:ref:`int<class_int>` **randi_range**\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RandomNumberGenerator_method_randi_range>`

Renvoie un entier signé de 32 bits pseudo-aléatoire compris entre ``from`` et ``to`` (inclus).

.. rst-class:: classref-item-separator

----

.. _class_RandomNumberGenerator_method_randomize:

.. rst-class:: classref-method

|void| **randomize**\ (\ ) :ref:`🔗<class_RandomNumberGenerator_method_randomize>`

Définit une graine basée sur le temps pour cette instance **RandomNumberGenerator**. Contrairement aux fonctions de génération de nombres aléatoires de :ref:`@GlobalScope<class_@GlobalScope>`, différentes instances de **RandomNumberGenerator** peuvent utiliser des graines différentes.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
