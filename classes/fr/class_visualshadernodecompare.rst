:github_url: hide

.. _class_VisualShaderNodeCompare:

VisualShaderNodeCompare
=======================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une fonction de comparaison pour les types courants dans le graphe de shader visuel.

.. rst-class:: classref-introduction-group

Description
-----------

Compare ``a`` et ``b`` du type :ref:`type<class_VisualShaderNodeCompare_property_type>` par la fonction :ref:`function<class_VisualShaderNodeCompare_property_function>`. Renvoie un scalaire booléen. Traduit en instruction ``if`` dans le code du shader.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`Condition<enum_VisualShaderNodeCompare_Condition>`           | :ref:`condition<class_VisualShaderNodeCompare_property_condition>` | ``0`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeCompare_Function>`             | :ref:`function<class_VisualShaderNodeCompare_property_function>`   | ``0`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` | :ref:`type<class_VisualShaderNodeCompare_property_type>`           | ``0`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeCompare_ComparisonType:

.. rst-class:: classref-enumeration

enum **ComparisonType**: :ref:`🔗<enum_VisualShaderNodeCompare_ComparisonType>`

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR** = ``0``

Un scalaire à virgule flottante.

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR_INT:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR_INT** = ``1``

Un scalaire entier.

.. _class_VisualShaderNodeCompare_constant_CTYPE_SCALAR_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_SCALAR_UINT** = ``2``

Un scalaire entier non signé.

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_2D** = ``3``

Un type de vecteur 2D.

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_3D** = ``4``

Un type de vecteur 3D.

.. _class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_VECTOR_4D** = ``5``

Un type de vecteur 4D.

.. _class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_BOOLEAN** = ``6``

Un type booléen.

.. _class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_TRANSFORM** = ``7``

Le type de transformation (\ ``mat4``).

.. _class_VisualShaderNodeCompare_constant_CTYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **CTYPE_MAX** = ``8``

Représente la taille de l'énumération :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCompare_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeCompare_Function>`

.. _class_VisualShaderNodeCompare_constant_FUNC_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_EQUAL** = ``0``

La comparaison pour l'égalité (\ ``a == b``).

.. _class_VisualShaderNodeCompare_constant_FUNC_NOT_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_NOT_EQUAL** = ``1``

La comparaison pour l'égalité (\ ``a != b``).

.. _class_VisualShaderNodeCompare_constant_FUNC_GREATER_THAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_GREATER_THAN** = ``2``

Comparaison pour supérieur à (\ ``a > b``). Ne peut pas être utilisé si :ref:`type<class_VisualShaderNodeCompare_property_type>` est défini à :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` ou :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`.

.. _class_VisualShaderNodeCompare_constant_FUNC_GREATER_THAN_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_GREATER_THAN_EQUAL** = ``3``

Comparaison pour supérieur ou égal à (\ ``a >= b``). Ne peut pas être utilisé si :ref:`type<class_VisualShaderNodeCompare_property_type>` est défini à :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` ou :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`.

.. _class_VisualShaderNodeCompare_constant_FUNC_LESS_THAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_LESS_THAN** = ``4``

Comparaison pour inférieur à (\ ``a < b``). Ne peut pas être utilisé si :ref:`type<class_VisualShaderNodeCompare_property_type>` est défini à :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` ou :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`.

.. _class_VisualShaderNodeCompare_constant_FUNC_LESS_THAN_EQUAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_LESS_THAN_EQUAL** = ``5``

Comparison for less than or equal (\ ``a <= b``). Cannot be used if :ref:`type<class_VisualShaderNodeCompare_property_type>` set to :ref:`CTYPE_BOOLEAN<class_VisualShaderNodeCompare_constant_CTYPE_BOOLEAN>` or :ref:`CTYPE_TRANSFORM<class_VisualShaderNodeCompare_constant_CTYPE_TRANSFORM>`.

.. _class_VisualShaderNodeCompare_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **FUNC_MAX** = ``6``

Représente la taille de l'énumération :ref:`Function<enum_VisualShaderNodeCompare_Function>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCompare_Condition:

.. rst-class:: classref-enumeration

enum **Condition**: :ref:`🔗<enum_VisualShaderNodeCompare_Condition>`

.. _class_VisualShaderNodeCompare_constant_COND_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_ALL** = ``0``

Le résultat sera ``true`` si toutes les composantes du vecteur satisfont à la condition de comparaison.

.. _class_VisualShaderNodeCompare_constant_COND_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_ANY** = ``1``

Le résultat sera ``true`` si l’une des composantes du vecteur satisfait à la condition de comparaison.

.. _class_VisualShaderNodeCompare_constant_COND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **COND_MAX** = ``2``

Représente la taille de l'énumération :ref:`Condition<enum_VisualShaderNodeCompare_Condition>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeCompare_property_condition:

.. rst-class:: classref-property

:ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **condition** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_condition>`

.. rst-class:: classref-property-setget

- |void| **set_condition**\ (\ value\: :ref:`Condition<enum_VisualShaderNodeCompare_Condition>`\ )
- :ref:`Condition<enum_VisualShaderNodeCompare_Condition>` **get_condition**\ (\ )

Une condition supplémentaire qui sera appliquée si :ref:`type<class_VisualShaderNodeCompare_property_type>` est défini à :ref:`CTYPE_VECTOR_3D<class_VisualShaderNodeCompare_constant_CTYPE_VECTOR_3D>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCompare_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeCompare_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeCompare_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeCompare_Function>` **get_function**\ (\ )

Une fonction de comparaison.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCompare_property_type:

.. rst-class:: classref-property

:ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **type** = ``0`` :ref:`🔗<class_VisualShaderNodeCompare_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_comparison_type**\ (\ value\: :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>`\ )
- :ref:`ComparisonType<enum_VisualShaderNodeCompare_ComparisonType>` **get_comparison_type**\ (\ )

Le type à utiliser dans la comparaison.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
