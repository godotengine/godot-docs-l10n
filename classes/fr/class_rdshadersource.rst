:github_url: hide

.. _class_RDShaderSource:

RDShaderSource
==============

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Code source de shader (utilisé par :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Description
-----------

Code source de shader sous forme de texte.

Voir aussi :ref:`RDShaderFile<class_RDShaderFile>`. **RDShaderSource** est uniquement destiné à être utilisé avec l'API :ref:`RenderingDevice<class_RenderingDevice>`. Il ne devrait pas être confondu avec la propre ressource :ref:`Shader<class_Shader>` de Godot, qui est ce que les différents nœuds de Godot utilisent pour la programmation haut-niveau de shaders.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` | :ref:`language<class_RDShaderSource_property_language>`                                           | ``0``  |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_any_hit<class_RDShaderSource_property_source_any_hit>`                               | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_closest_hit<class_RDShaderSource_property_source_closest_hit>`                       | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_compute<class_RDShaderSource_property_source_compute>`                               | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`                             | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_intersection<class_RDShaderSource_property_source_intersection>`                     | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_miss<class_RDShaderSource_property_source_miss>`                                     | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_raygen<class_RDShaderSource_property_source_raygen>`                                 | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`       | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`                                 | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_stage_source<class_RDShaderSource_method_get_stage_source>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|                               |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_stage_source<class_RDShaderSource_method_set_stage_source>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RDShaderSource_property_language:

.. rst-class:: classref-property

:ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` **language** = ``0`` :ref:`🔗<class_RDShaderSource_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>`\ )
- :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` **get_language**\ (\ )

The language the shader is written in.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_any_hit:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_any_hit** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_any_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's any hit stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_closest_hit:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_closest_hit** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_closest_hit>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's closest hit stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_compute:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_compute** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_compute>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's compute stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_fragment:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_fragment** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_fragment>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's fragment stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_intersection:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_intersection** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_intersection>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's intersection stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_miss:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_miss** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_miss>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's miss stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_raygen:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_raygen** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_raygen>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's ray generation stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_tesselation_control:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_tesselation_control** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_tesselation_control>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's tessellation control stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_tesselation_evaluation:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_tesselation_evaluation** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_tesselation_evaluation>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's tessellation evaluation stage.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_vertex:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_vertex** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_vertex>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Source code for the shader's vertex stage.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_RDShaderSource_method_get_stage_source:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const| :ref:`🔗<class_RDShaderSource_method_get_stage_source>`

Returns source code for the specified shader ``stage``. Equivalent to getting one of :ref:`source_compute<class_RDShaderSource_property_source_compute>`, :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`, :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`, :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` or :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_method_set_stage_source:

.. rst-class:: classref-method

|void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ ) :ref:`🔗<class_RDShaderSource_method_set_stage_source>`

Sets ``source`` code for the specified shader ``stage``. Equivalent to setting one of :ref:`source_compute<class_RDShaderSource_property_source_compute>`, :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`, :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`, :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` or :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`.

\ **Note:** If you set the compute shader source code using this method directly, remember to remove the Godot-specific hint ``#[compute]``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
