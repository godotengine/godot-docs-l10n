:github_url: hide

.. _class_OpenXRActionSet:

OpenXRActionSet
===============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Collection of :ref:`OpenXRAction<class_OpenXRAction>` resources that make up an action set.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Action sets in OpenXR define a collection of actions that can be activated in unison. This allows games to easily change between different states that require different inputs or need to reinterpret inputs. For instance we could have an action set that is active when a menu is open, an action set that is active when the player is freely walking around and an action set that is active when the player is controlling a vehicle.

Action sets can contain the same action with the same name, if such action sets are active at the same time the action set with the highest priority defines which binding is active.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`actions<class_OpenXRActionSet_property_actions>`               | ``[]`` |
   +-----------------------------+----------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`localized_name<class_OpenXRActionSet_property_localized_name>` | ``""`` |
   +-----------------------------+----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`       | :ref:`priority<class_OpenXRActionSet_property_priority>`             | ``0``  |
   +-----------------------------+----------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`add_action<class_OpenXRActionSet_method_add_action>`\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ )       |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_action_count<class_OpenXRActionSet_method_get_action_count>`\ (\ ) |const|                                     |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`remove_action<class_OpenXRActionSet_method_remove_action>`\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ ) |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OpenXRActionSet_property_actions:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **actions** = ``[]`` :ref:`🔗<class_OpenXRActionSet_property_actions>`

.. rst-class:: classref-property-setget

- |void| **set_actions**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_actions**\ (\ )

Collection of actions for this action set.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_property_localized_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **localized_name** = ``""`` :ref:`🔗<class_OpenXRActionSet_property_localized_name>`

.. rst-class:: classref-property-setget

- |void| **set_localized_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_localized_name**\ (\ )

The localized name of this action set.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_OpenXRActionSet_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

The priority for this action set.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRActionSet_method_add_action:

.. rst-class:: classref-method

|void| **add_action**\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ ) :ref:`🔗<class_OpenXRActionSet_method_add_action>`

Add an action to this action set.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_method_get_action_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_action_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionSet_method_get_action_count>`

Obtiene el número de acciones de nuestro conjunto de acciones.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_method_remove_action:

.. rst-class:: classref-method

|void| **remove_action**\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ ) :ref:`🔗<class_OpenXRActionSet_method_remove_action>`

Remove an action from this action set.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
