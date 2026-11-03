:github_url: hide

.. _class_OpenXRActionMap:

OpenXRActionMap
===============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Collection of :ref:`OpenXRActionSet<class_OpenXRActionSet>` and :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` resources for the OpenXR module.

.. rst-class:: classref-introduction-group

Descripción
----------------------

OpenXR uses an action system similar to Godots Input map system to bind inputs and outputs on various types of XR controllers to named actions. OpenXR specifies more detail on these inputs and outputs than Godot supports.

Another important distinction is that OpenXR offers no control over these bindings. The bindings we register are suggestions, it is up to the XR runtime to offer users the ability to change these bindings. This allows the XR runtime to fill in the gaps if new hardware becomes available.

The action map therefore needs to be loaded at startup and can't be changed afterwards. This resource is a container for the entire action map.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`action_sets<class_OpenXRActionMap_property_action_sets>`                   | ``[]`` |
   +---------------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`interaction_profiles<class_OpenXRActionMap_property_interaction_profiles>` | ``[]`` |
   +---------------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`add_action_set<class_OpenXRActionMap_method_add_action_set>`\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )                                                    |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`add_interaction_profile<class_OpenXRActionMap_method_add_interaction_profile>`\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ )       |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`create_default_action_sets<class_OpenXRActionMap_method_create_default_action_sets>`\ (\ )                                                                                        |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`                   | :ref:`find_action_set<class_OpenXRActionMap_method_find_action_set>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                  |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` | :ref:`find_interaction_profile<class_OpenXRActionMap_method_find_interaction_profile>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`                   | :ref:`get_action_set<class_OpenXRActionMap_method_get_action_set>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                           | :ref:`get_action_set_count<class_OpenXRActionMap_method_get_action_set_count>`\ (\ ) |const|                                                                                            |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` | :ref:`get_interaction_profile<class_OpenXRActionMap_method_get_interaction_profile>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                           | :ref:`get_interaction_profile_count<class_OpenXRActionMap_method_get_interaction_profile_count>`\ (\ ) |const|                                                                          |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`remove_action_set<class_OpenXRActionMap_method_remove_action_set>`\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )                                              |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                          | :ref:`remove_interaction_profile<class_OpenXRActionMap_method_remove_interaction_profile>`\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) |
   +-----------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OpenXRActionMap_property_action_sets:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **action_sets** = ``[]`` :ref:`🔗<class_OpenXRActionMap_property_action_sets>`

.. rst-class:: classref-property-setget

- |void| **set_action_sets**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_action_sets**\ (\ )

Collection of :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ s that are part of this action map.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_property_interaction_profiles:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **interaction_profiles** = ``[]`` :ref:`🔗<class_OpenXRActionMap_property_interaction_profiles>`

.. rst-class:: classref-property-setget

- |void| **set_interaction_profiles**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_interaction_profiles**\ (\ )

Collection of :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ s that are part of this action map.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRActionMap_method_add_action_set:

.. rst-class:: classref-method

|void| **add_action_set**\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ ) :ref:`🔗<class_OpenXRActionMap_method_add_action_set>`

Añadir un conjunto de acciones.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_add_interaction_profile:

.. rst-class:: classref-method

|void| **add_interaction_profile**\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) :ref:`🔗<class_OpenXRActionMap_method_add_interaction_profile>`

Añadir un perfil de interacción.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_create_default_action_sets:

.. rst-class:: classref-method

|void| **create_default_action_sets**\ (\ ) :ref:`🔗<class_OpenXRActionMap_method_create_default_action_sets>`

Configura este conjunto de acciones con nuestras acciones predeterminadas.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_find_action_set:

.. rst-class:: classref-method

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **find_action_set**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_find_action_set>`

Obtiene un conjunto de acciones por nombre.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_find_interaction_profile:

.. rst-class:: classref-method

:ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` **find_interaction_profile**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_find_interaction_profile>`

Encuentre un perfil de interacción por su nombre (ruta).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_action_set:

.. rst-class:: classref-method

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **get_action_set**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_action_set>`

Obtiene el conjunto de acciones en este índice.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_action_set_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_action_set_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_action_set_count>`

Obtiene el número de conjuntos de acciones en nuestro mapa de acciones.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_interaction_profile:

.. rst-class:: classref-method

:ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>` **get_interaction_profile**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_interaction_profile>`

Get the interaction profile at this index.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_get_interaction_profile_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interaction_profile_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionMap_method_get_interaction_profile_count>`

Obtiene el número de perfiles de interacción en nuestro mapa de acciones.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_remove_action_set:

.. rst-class:: classref-method

|void| **remove_action_set**\ (\ action_set\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ ) :ref:`🔗<class_OpenXRActionMap_method_remove_action_set>`

Elimina un conjunto de acciones.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionMap_method_remove_interaction_profile:

.. rst-class:: classref-method

|void| **remove_interaction_profile**\ (\ interaction_profile\: :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`\ ) :ref:`🔗<class_OpenXRActionMap_method_remove_interaction_profile>`

Elimina un perfil de interacción.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
