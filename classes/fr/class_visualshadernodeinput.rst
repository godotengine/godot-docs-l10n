:github_url: hide

.. _class_VisualShaderNodeInput:

VisualShaderNodeInput
=====================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Represents the input shader parameter within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

Gives access to input variables (built-ins) available for the shader. See the shading reference for the list of available built-ins for each shader type (check ``Tutorials`` section for link).

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la référence de shading <../tutorials/shaders/shader_reference/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>` | :ref:`input_name<class_VisualShaderNodeInput_property_input_name>` | ``"[None]"`` |
   +-----------------------------+--------------------------------------------------------------------+--------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_input_real_name<class_VisualShaderNodeInput_method_get_input_real_name>`\ (\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_VisualShaderNodeInput_signal_input_type_changed:

.. rst-class:: classref-signal

**input_type_changed**\ (\ ) :ref:`🔗<class_VisualShaderNodeInput_signal_input_type_changed>`

Emitted when input is changed via :ref:`input_name<class_VisualShaderNodeInput_property_input_name>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeInput_property_input_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeInput_property_input_name>`

.. rst-class:: classref-property-setget

- |void| **set_input_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_name**\ (\ )

One of the several input constants in lower-case style like: "vertex" (\ ``VERTEX``) or "point_size" (\ ``POINT_SIZE``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_VisualShaderNodeInput_method_get_input_real_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_input_real_name**\ (\ ) |const| :ref:`🔗<class_VisualShaderNodeInput_method_get_input_real_name>`

Returns a translated name of the current constant in the Godot Shader Language. E.g. ``"ALBEDO"`` if the :ref:`input_name<class_VisualShaderNodeInput_property_input_name>` equal to ``"albedo"``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
