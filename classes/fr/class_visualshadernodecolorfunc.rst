:github_url: hide

.. _class_VisualShaderNodeColorFunc:

VisualShaderNodeColorFunc
=========================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une fonction :ref:`Color<class_Color>` à utiliser dans le graphe de shader visuel.

.. rst-class:: classref-introduction-group

Description
-----------

Accepte une :ref:`Color<class_Color>` pour le port d'entrée et la transforme en fonction de :ref:`function<class_VisualShaderNodeColorFunc_property_function>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeColorFunc_Function>` | :ref:`function<class_VisualShaderNodeColorFunc_property_function>` | ``0`` |
   +----------------------------------------------------------+--------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeColorFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeColorFunc_Function>`

.. _class_VisualShaderNodeColorFunc_constant_FUNC_GRAYSCALE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_GRAYSCALE** = ``0``

Convertit une couleur en niveau de gris à partir de la formule suivante :

::

    vec3 c = input;
    float max1 = max(c.r, c.g);
    float max2 = max(max1, c.b);
    float max3 = max(max1, max2);
    return vec3(max3, max3, max3);

.. _class_VisualShaderNodeColorFunc_constant_FUNC_HSV2RGB:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_HSV2RGB** = ``1``

Convertit le vecteur TSV en équivalent RGB.

.. _class_VisualShaderNodeColorFunc_constant_FUNC_RGB2HSV:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_RGB2HSV** = ``2``

Convertit le vecteur RGB en équivalent TSV.

.. _class_VisualShaderNodeColorFunc_constant_FUNC_SEPIA:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_SEPIA** = ``3``

Applique un effet sépia à partir de la formule suivante :

::

    vec3 c = input;
    float r = (c.r * 0.393) + (c.g * 0.769) + (c.b * 0.189);
    float g = (c.r * 0.349) + (c.g * 0.686) + (c.b * 0.168);
    float b = (c.r * 0.272) + (c.g * 0.534) + (c.b * 0.131);
    return vec3(r, g, b);

.. _class_VisualShaderNodeColorFunc_constant_FUNC_LINEAR_TO_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_LINEAR_TO_SRGB** = ``4``

Converts color from linear encoding to nonlinear sRGB encoding using the following formula:

::

    const vec3 a = vec3(0.055f);
    return mix((vec3(1.0f) + a) * pow(c.rgb, vec3(1.0f / 2.4f)) - a, 12.92f * c.rgb, lessThan(c.rgb, vec3(0.0031308f)));

The Compatibility renderer uses a simpler formula that may produce undefined behavior with negative input values:

::

    vec3 c = input;
    return max(vec3(1.055) * pow(c, vec3(0.416666667)) - vec3(0.055), vec3(0.0));

.. _class_VisualShaderNodeColorFunc_constant_FUNC_SRGB_TO_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_SRGB_TO_LINEAR** = ``5``

Converts color from nonlinear sRGB encoding to linear encoding using the following formula:

::

    vec3 c = input;
    return mix(pow((c.rgb + vec3(0.055)) * (1.0 / (1.0 + 0.055)), vec3(2.4)), c.rgb * (1.0 / 12.92), lessThan(c.rgb, vec3(0.04045)));

The Compatibility renderer uses a simpler formula that behaves poorly with negative input values:

::

    vec3 c = input;
    return c * (c * (c * 0.305306011 + 0.682171111) + 0.012522878);

.. _class_VisualShaderNodeColorFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_MAX** = ``6``

Représente la taille de l'énumération :ref:`Function<enum_VisualShaderNodeColorFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeColorFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeColorFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeColorFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **get_function**\ (\ )

A function to be applied to the input color.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
