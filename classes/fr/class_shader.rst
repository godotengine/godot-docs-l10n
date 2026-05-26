:github_url: hide

.. _class_Shader:

Shader
======

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`VisualShader<class_VisualShader>`

Un shader implémenté dans le langage de shader de Godot.

.. rst-class:: classref-introduction-group

Description
-----------

Un programme de shader personnalisé implémenté dans le langage de shader Godot, enregistré avec l'extension ``.gdshader``.

Cette classe est utilisée par un :ref:`ShaderMaterial<class_ShaderMaterial>` et vous permet d'écrire votre propre comportement personnalisé pour rendre des objets visuels ou mettre à jour des informations de particules. Pour une explication et des utilisations détaillées, veuillez consulter les tutoriels ci-dessous.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur les shaders <../tutorials/shaders/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`code<class_Shader_property_code>` | ``""`` |
   +-----------------------------+-----------------------------------------+--------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture<class_Texture>` | :ref:`get_default_texture_parameter<class_Shader_method_get_default_texture_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, index\: :ref:`int<class_int>` = 0\ ) |const|                                  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mode<enum_Shader_Mode>` | :ref:`get_mode<class_Shader_method_get_mode>`\ (\ ) |const|                                                                                                                                                           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`     | :ref:`get_shader_uniform_list<class_Shader_method_get_shader_uniform_list>`\ (\ get_groups\: :ref:`bool<class_bool>` = false\ )                                                                                       |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`inspect_native_shader_code<class_Shader_method_inspect_native_shader_code>`\ (\ )                                                                                                                               |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_default_texture_parameter<class_Shader_method_set_default_texture_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture<class_Texture>`, index\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Shader_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_Shader_Mode>`

.. _class_Shader_constant_MODE_SPATIAL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_SPATIAL** = ``0``

Le mode utilise pour afficher tous les objets 3D.

.. _class_Shader_constant_MODE_CANVAS_ITEM:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_CANVAS_ITEM** = ``1``

Le mode utilise pour afficher tous les objets 2D.

.. _class_Shader_constant_MODE_PARTICLES:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_PARTICLES** = ``2``

Le mode utilisé pour calculer les informations pour chaque particule individuellement. N'est pas utilisé pour l'affichage.

.. _class_Shader_constant_MODE_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_SKY** = ``3``

Mode utilisé pour dessiner le ciel. Fonctionne seulement e avec des shaders attachés aux objets :ref:`Sky<class_Sky>`.

.. _class_Shader_constant_MODE_FOG:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_FOG** = ``4``

Mode utilisé pour définir la couleur et la densité de l'effet de brouillard volumétrique.

.. _class_Shader_constant_MODE_TEXTURE_BLIT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_Shader_Mode>` **MODE_TEXTURE_BLIT** = ``5``

Mode used for drawing to DrawableTexture resources via blit calls.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Shader_property_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **code** = ``""`` :ref:`🔗<class_Shader_property_code>`

.. rst-class:: classref-property-setget

- |void| **set_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_code**\ (\ )

Renvoie le code de shader comme l'utilisateur l'a écrit, et non le code entièrement généré utilisé en interne.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Shader_method_get_default_texture_parameter:

.. rst-class:: classref-method

:ref:`Texture<class_Texture>` **get_default_texture_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Shader_method_get_default_texture_parameter>`

Renvoie la texture définie par défaut pour le paramètre spécifié.

\ **Note :** ``name`` doit correspondre exactement au nom de l'uniforme dans le code.

\ **Note :** Si le tableau d''échantillonneur est utilisé, utilisez l'index ``index`` pour accéder à la texture spécifiée.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_get_mode:

.. rst-class:: classref-method

:ref:`Mode<enum_Shader_Mode>` **get_mode**\ (\ ) |const| :ref:`🔗<class_Shader_method_get_mode>`

Renvoie le mode de shader pour le shader.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_get_shader_uniform_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_shader_uniform_list**\ (\ get_groups\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Shader_method_get_shader_uniform_list>`

Renvoie la liste des uniforms du shader qui peuvent être affectés à un :ref:`ShaderMaterial<class_ShaderMaterial>`, pour utiliser avec :ref:`ShaderMaterial.set_shader_parameter()<class_ShaderMaterial_method_set_shader_parameter>` et :ref:`ShaderMaterial.get_shader_parameter()<class_ShaderMaterial_method_get_shader_parameter>`. Les paramètres renvoyés sont contenus dans des dictionnaires dans un format similaire à ceux renvoyés par :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

Si l'argument ``get_groups`` vaut ``true``, les indices de regroupement des paramètres sont également inclus dans la liste.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_inspect_native_shader_code:

.. rst-class:: classref-method

|void| **inspect_native_shader_code**\ (\ ) :ref:`🔗<class_Shader_method_inspect_native_shader_code>`

Seulement disponible dans l'éditeur. Ouvre un popup qui visualise le code du shader généré, y compris toutes les variantes et le code interne du shader. Voir aussi :ref:`Material.inspect_native_shader_code()<class_Material_method_inspect_native_shader_code>`.

.. rst-class:: classref-item-separator

----

.. _class_Shader_method_set_default_texture_parameter:

.. rst-class:: classref-method

|void| **set_default_texture_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture<class_Texture>`, index\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Shader_method_set_default_texture_parameter>`

Définit la texture par défaut à utiliser avec un uniform de texture. La valeur par défaut est utilisée si une texture n'est pas définie dans le :ref:`ShaderMaterial<class_ShaderMaterial>`.

\ **Note :** ``name`` doit correspondre exactement au nom de l'uniform dans le code.

\ **Note :** Si le tableau d'échantillonneur est utilisé, utilisez ``index`` pour accéder à la texture spécifiée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
