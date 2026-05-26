:github_url: hide

.. _class_PackedFloat32Array:

PackedFloat32Array
==================

Un tableau compacté de valeurs flottantes de 32 bits.

.. rst-class:: classref-introduction-group

Description
-----------

An array specifically designed to hold 32-bit floating-point values (float). Packs data tightly, so it saves memory for large array sizes.

If you need to pack 64-bit floats tightly, see :ref:`PackedFloat64Array<class_PackedFloat64Array>`.

\ **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use :ref:`duplicate()<class_PackedFloat32Array_method_duplicate>`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

\ **Note:** In a boolean context, a packed array will evaluate to ``false`` if it's empty. Otherwise, a packed array will always evaluate to ``true``.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir :ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`PackedFloat32Array<class_PackedFloat32Array_constructor_PackedFloat32Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`PackedFloat32Array<class_PackedFloat32Array_constructor_PackedFloat32Array>`\ (\ from\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`PackedFloat32Array<class_PackedFloat32Array_constructor_PackedFloat32Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedFloat32Array_method_append>`\ (\ value\: :ref:`float<class_float>`\ )                                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedFloat32Array_method_append_array>`\ (\ array\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedFloat32Array_method_bsearch>`\ (\ value\: :ref:`float<class_float>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedFloat32Array_method_clear>`\ (\ )                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedFloat32Array_method_count>`\ (\ value\: :ref:`float<class_float>`\ ) |const|                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`duplicate<class_PackedFloat32Array_method_duplicate>`\ (\ ) |const|                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedFloat32Array_method_erase>`\ (\ value\: :ref:`float<class_float>`\ )                                                      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedFloat32Array_method_fill>`\ (\ value\: :ref:`float<class_float>`\ )                                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedFloat32Array_method_find>`\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get<class_PackedFloat32Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedFloat32Array_method_has>`\ (\ value\: :ref:`float<class_float>`\ ) |const|                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedFloat32Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedFloat32Array_method_is_empty>`\ (\ ) |const|                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedFloat32Array_method_push_back>`\ (\ value\: :ref:`float<class_float>`\ )                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedFloat32Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedFloat32Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedFloat32Array_method_reverse>`\ (\ )                                                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedFloat32Array_method_rfind>`\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedFloat32Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedFloat32Array_method_size>`\ (\ ) |const|                                                                                   |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`slice<class_PackedFloat32Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedFloat32Array_method_sort>`\ (\ )                                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedFloat32Array_method_to_byte_array>`\ (\ ) |const|                                                                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedFloat32Array_operator_neq_PackedFloat32Array>`\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`operator +<class_PackedFloat32Array_operator_sum_PackedFloat32Array>`\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedFloat32Array_operator_eq_PackedFloat32Array>`\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`operator []<class_PackedFloat32Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_PackedFloat32Array_constructor_PackedFloat32Array:

.. rst-class:: classref-constructor

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **PackedFloat32Array**\ (\ ) :ref:`🔗<class_PackedFloat32Array_constructor_PackedFloat32Array>`

Construit un **PackedFloat32Array** vide.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **PackedFloat32Array**\ (\ from\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )

Construit un **PackedFloat32Array** comme une copie du **PackedFloat32Array** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **PackedFloat32Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Construit un nouveau **PackedFloat32Array**. Optionnellement, vous pouvez passer un :ref:`Array<class_Array>` générique qui sera converti.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PackedFloat32Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_append>`

Ajoute un élément à la fin du tableau (c'est un raccourci vers :ref:`push_back()<class_PackedFloat32Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_PackedFloat32Array_method_append_array>`

Ajoute un **PackedFloat32Array** à la fin de ce tableau.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`float<class_float>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_bsearch>`

Cherche l'index d'une valeur existante (ou l'index d'insertion qui maintient l'ordre de tri, si la valeur n'est pas encore présente dans le tableau) en utilisant la recherche binaire. Optionnellement, un spécificateur ``before`` peut être passé. Si ``false``, l'index renvoyé vient après toutes les entrées existantes de la valeur dans le tableau.

\ **Note :** Appeler :ref:`bsearch()<class_PackedFloat32Array_method_bsearch>` sur un tableau non trié résulte en un comportement inattendu.

\ **Note :** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ne se comporte pas comme les autres nombres. Par conséquent, les résultats de cette méthode peuvent ne pas être corrects si des NaNs sont inclus.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedFloat32Array_method_clear>`

Efface le contenu du tableau. C'est équivalent à :ref:`resize()<class_PackedFloat32Array_method_resize>` avec une taille de ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_count>`

Renvoie le nombre de fois qu'un élément apparaît dans le tableau.

\ **Note :** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ne se comporte pas comme les autres nombres. Par conséquent, les résultats de cette méthode peuvent ne pas être corrects si des NaNs sont inclus.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_duplicate>`

Crée une copie du tableau, et le renvoie.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_erase>`

Removes the first occurrence of a value from the array and returns ``true``. If the value does not exist in the array, nothing happens and ``false`` is returned. To remove an element by index, use :ref:`remove_at()<class_PackedFloat32Array_method_remove_at>` instead.

\ **Note:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` doesn't behave the same as other numbers. Therefore, the results from this method may not be accurate if NaNs are included.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_fill>`

Attribue la valeur donnée à tous les éléments du tableau. Cela peut généralement être utilisé avec :ref:`resize()<class_PackedFloat32Array_method_resize>` pour créer un tableau avec une taille donnée et des éléments initialisés.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_find>`

Cherche le tableau pour une valeur et renvoie son index ou ``-1`` si elle n'est pas trouvé. Optionnellement, l'index de recherche initial peut être passé.

\ **Note :** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ne se comporte pas comme les autres nombres. Par conséquent, les résultats de cette méthode peuvent ne pas être corrects si des NaNs sont inclus.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_get:

.. rst-class:: classref-method

:ref:`float<class_float>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_get>`

Returns the 32-bit float at the given ``index`` in the array. If ``index`` is out-of-bounds or negative, this method fails and returns ``0.0``.

This method is similar (but not identical) to the ``[]`` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_has>`

Renvoie ``true`` si le tableau contient la valeur ``value``.

\ **Note :** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ne se comporte pas comme les autres nombres. Par conséquent, les résultats de cette méthode peuvent ne pas être corrects si des NaNs sont inclus.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_insert>`

Insérer un nouvel élément à une position donnée dans le tableau. La position doit être valide, ou à la fin du tableau (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_is_empty>`

Renvoie ``true`` si le tableau est vide.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_push_back>`

Ajoute un élément à la fin du tableau.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat32Array_method_remove_at>`

Retire l'élément du tableau à l'index donné.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat32Array_method_resize>`

Définit la taille du tableau. Si le tableau est agrandi, réserve des éléments à la fin du tableau. Si le tableau est rétrécit, tronque le tableau à la nouvelle taille. Appeler :ref:`resize()<class_PackedFloat32Array_method_resize>` une fois et attribuer les nouvelles valeurs est plus rapide que l'ajout de nouveaux éléments un par un.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` sur le succès, ou une des constantes :ref:`Error<enum_@GlobalScope_Error>` suivantes si cette méthode échoue : :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si la taille est négative, ou :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` si les allocations échouent. Utilisez :ref:`size()<class_PackedFloat32Array_method_size>` pour trouver la taille réelle du tableau après le redimensionnement.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedFloat32Array_method_reverse>`

Inverse l'ordre des éléments du tableau.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_rfind>`

Cherche le tableau en sens inverse. Optionnellement, un index de recherche initial peut être passé. Si négatif, l'indice initial est considéré comme relatif par rapport à la fin du tableau.

\ **Note :** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ne se comporte pas comme les autres nombres. Par conséquent, les résultats de cette méthode peuvent ne pas être corrects si des NaNs sont inclus.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_set>`

Change la flottant à la position donnée.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_size>`

Renvoie le nombre d'éléments dans le tableau.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_slice>`

Renvoie la tranche du **PackedFloat32Array**, de ``begin`` (inclusive) à ``end`` (exclusive), en tant que nouveau **PackedFloat32Array**.

La valeur absolue de ``begin`` et ``end`` sera bornée à la taille du tableau, de sorte que la valeur par défaut pour ``end`` le fait trancher à la taille du tableau par défaut (c.a.d. ``arr.slice(1)`` est un raccourci pour ``arr.slice(1, arr.size())``).

Si ``begin`` ou ``end`` sont négatifs, ils seront par rapport à la fin du tableau (c.a.d. ``arr.slice(0, -2)`` est un raccourci pour ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedFloat32Array_method_sort>`

Trie les éléments du tableau dans l'ordre ascendant.

\ **Note :** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ne se comporte pas comme les autres nombres. Par conséquent, les résultats de cette méthode peuvent ne pas être corrects si des NaNs sont inclus.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_to_byte_array>`

Renvoie une copie des données converties en un :ref:`PackedByteArray<class_PackedByteArray>`, où chaque élément a été encodé en 4 octets.

La taille du nouveau tableau sera de ``float32_array.size() * 4``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_PackedFloat32Array_operator_neq_PackedFloat32Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_PackedFloat32Array_operator_neq_PackedFloat32Array>`

Renvoie ``true`` si le contenu des tableaux diffère.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_operator_sum_PackedFloat32Array:

.. rst-class:: classref-operator

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **operator +**\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_PackedFloat32Array_operator_sum_PackedFloat32Array>`

Renvoie un nouveau **PackedFloat32Array** avec le contenu de ``right`` ajouté à la fin de ce tableau. Pour une meilleure performance, envisagez d'utiliser :ref:`append_array()<class_PackedFloat32Array_method_append_array>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_operator_eq_PackedFloat32Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_PackedFloat32Array_operator_eq_PackedFloat32Array>`

Renvoie ``true`` si le contenu des deux tableaux est le même, c.a.d. qu'ils ont tous leurs flottants égaux aux indices correspondants.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat32Array_operator_idx_int>`

Renvoie le flottant :ref:`float<class_float>` à la position ``index``. Les indices négatifs peuvent être utilisés pour accéder aux éléments à partir de la fin. L'utilisation d'un index hors des limites du tableau entraînera une erreur.

Notez que le type :ref:`float<class_float>` est en 64 bits, contrairement aux valeurs stockées dans le tableau.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
