:github_url: hide

.. _class_bool:

bool
====

Un type booléen intégré.

.. rst-class:: classref-introduction-group

Description
-----------

Le booléen **bool** est un type :ref:`Variant<class_Variant>` intégré qui ne peut stocker qu'une de deux valeurs : ``true`` ou ``false``. Vous pouvez l'imaginer comme un interrupteur qui peut être allumé ou éteint, ou comme un chiffre binaire qui peut être soit 1 ou 0.

Les booléens peuvent être utilisés directement dans ``if``, et d'autres instructions conditionnelles :


.. tabs::

 .. code-tab:: gdscript

    var peut_tirer= true
    if peut_tirer:
        launch_bullet()

 .. code-tab:: csharp

    bool peutTirer = true;
    si (peutTirer)
    {
    TirerBalle();
    }



Tous les opérateurs de comparaison renvoient des booléens (``===``, ``)``, ``<=``, etc.) Ainsi, il n'est pas nécessaire de comparer les booléens eux-mêmes. Vous n'avez pas besoin d'ajouter ``== true`` ou ``== false``.

Les booléens peuvent être combinés avec les opérateurs logiques ``and``, ``or``, ``not`` pour créer des conditions complexes :


.. tabs::

 .. code-tab:: gdscript

    if balles > 0 and not est_en_recharge():
        tirer_balle()

    si balles == 0 ou est_en_recharge():
        jouer_bruit_clac()

 .. code-tab:: csharp

    if (balles > 0 && !EstEnRecharge())
    {
    TirerBalle();
    }

    if (balles == 0 || EstEnRecharge())
    {
        JouerBruitClac();
    }



\ **Note :** Dans les langues de programmation modernes, les opérateurs logiques sont évalués dans l'ordre. Toutes les conditions restantes sont ignorées si leur résultat n'aurait aucun effet sur la valeur finale. Ce concept est connu sous le nom de `évaluation de court-circuit <https://en.wikipedia.org/wiki/Short-circuit_evaluation>`__ et peut être utile pour éviter d'évaluer des conditions coûteuses dans certains cas critiques pour la performance.

\ **Note :** Par convention, les méthodes et les propriétés intégrées qui renvoient les booléens sont généralement définies comme des questions fermées, des adjectifs simples, etc... (:ref:`String.is_empty()<class_String_method_is_empty>`, :ref:`Node.can_process()<class_Node_method_can_process>`, :ref:`Camera2D.enabled<class_Camera2D_property_enabled>`, etc...).

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ )                                   |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`bool<class_bool>`\ )   |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`float<class_float>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`bool<class_bool_constructor_bool>`\ (\ from\: :ref:`int<class_int>`\ )     |
   +-------------------------+----------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_bool_operator_neq_bool>`\ (\ right\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator \<<class_bool_operator_lt_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )  |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_bool_operator_eq_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )  |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ><class_bool_operator_gt_bool>`\ (\ right\: :ref:`bool<class_bool>`\ )   |
   +-------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_bool_constructor_bool:

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ ) :ref:`🔗<class_bool_constructor_bool>`

Construit un **bool** défini à ``false``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`bool<class_bool>`\ )

Construit un **bool** comme copie du **bool** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`float<class_float>`\ )

Casts a :ref:`float<class_float>` value to a **bool**. Returns ``false`` if ``from`` is equal to ``0.0`` (including ``-0.0``), and ``true`` for all other values (including :ref:`@GDScript.INF<class_@GDScript_constant_INF>` and :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>`).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`bool<class_bool>` **bool**\ (\ from\: :ref:`int<class_int>`\ )

Casts an :ref:`int<class_int>` value to a **bool**. Returns ``false`` if ``from`` is equal to ``0``, and ``true`` for all other values.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_bool_operator_neq_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_neq_bool>`

Returns ``true`` if one **bool** is ``true`` and the other **bool** is ``false``. Equivalent to logical XOR (NEQ).

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_lt_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_lt_bool>`

Returns ``true`` if the left **bool** is ``false`` and ``right`` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_eq_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_eq_bool>`

Returns ``true`` if both **bool**\ s are ``true``, or if both **bool**\ s are ``false``. Equivalent to logical XNOR (EQ).

.. rst-class:: classref-item-separator

----

.. _class_bool_operator_gt_bool:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_bool_operator_gt_bool>`

Returns ``true`` if the left **bool** is ``true`` and ``right`` is ``false``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
