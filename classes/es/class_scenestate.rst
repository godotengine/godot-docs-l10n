:github_url: hide

.. _class_SceneState:

SceneState
==========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona acceso a la información de un archivo de escena.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Maintains a list of resources, nodes, exported and overridden properties, and built-in scripts associated with a scene. They cannot be modified from a **SceneState**, only accessed. Useful for peeking into what a :ref:`PackedScene<class_PackedScene>` contains without instantiating it.

This class cannot be instantiated directly, it is retrieved for a given scene as the result of :ref:`PackedScene.get_state()<class_PackedScene_method_get_state>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SceneState<class_SceneState>`               | :ref:`get_base_scene_state<class_SceneState_method_get_base_scene_state>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                         | :ref:`get_connection_binds<class_SceneState_method_get_connection_binds>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_connection_count<class_SceneState_method_get_connection_count>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_connection_flags<class_SceneState_method_get_connection_flags>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_connection_method<class_SceneState_method_get_connection_method>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_connection_signal<class_SceneState_method_get_connection_signal>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_connection_source<class_SceneState_method_get_connection_source>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_connection_target<class_SceneState_method_get_connection_target>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_connection_unbinds<class_SceneState_method_get_connection_unbinds>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_node_count<class_SceneState_method_get_node_count>`\ (\ ) |const|                                                                                  |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_node_groups<class_SceneState_method_get_node_groups>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_node_index<class_SceneState_method_get_node_index>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedScene<class_PackedScene>`             | :ref:`get_node_instance<class_SceneState_method_get_node_instance>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_node_instance_placeholder<class_SceneState_method_get_node_instance_placeholder>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_node_name<class_SceneState_method_get_node_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_node_owner_path<class_SceneState_method_get_node_owner_path>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                   | :ref:`get_node_path<class_SceneState_method_get_node_path>`\ (\ idx\: :ref:`int<class_int>`, for_parent\: :ref:`bool<class_bool>` = false\ ) |const|         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_node_property_count<class_SceneState_method_get_node_property_count>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_node_property_name<class_SceneState_method_get_node_property_name>`\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const|   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`get_node_property_value<class_SceneState_method_get_node_property_value>`\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_node_type<class_SceneState_method_get_node_type>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_path<class_SceneState_method_get_path>`\ (\ ) |const|                                                                                              |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_node_instance_placeholder<class_SceneState_method_is_node_instance_placeholder>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_SceneState_GenEditState:

.. rst-class:: classref-enumeration

enum **GenEditState**: :ref:`🔗<enum_SceneState_GenEditState>`

.. _class_SceneState_constant_GEN_EDIT_STATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_DISABLED** = ``0``

Si se pasa a :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, impide la edición del estado de la escena.

.. _class_SceneState_constant_GEN_EDIT_STATE_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_INSTANCE** = ``1``

Si se pasa a :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, proporciona recursos de escena heredados a la escena local.

\ **Nota:** Solo disponible en compilaciones del editor.

.. _class_SceneState_constant_GEN_EDIT_STATE_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_MAIN** = ``2``

Si se pasa a :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, proporciona recursos de escena locales a la escena local. Solo la escena principal debe recibir el estado de edición principal.

\ **Nota:** Solo disponible en compilaciones del editor.

.. _class_SceneState_constant_GEN_EDIT_STATE_MAIN_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_SceneState_GenEditState>` **GEN_EDIT_STATE_MAIN_INHERITED** = ``3``

Si se pasa a :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, es similar a :ref:`GEN_EDIT_STATE_MAIN<class_SceneState_constant_GEN_EDIT_STATE_MAIN>`, pero para el caso en que la escena se instancia para servir de base a otra.

\ **Nota:** Solo disponible en compilaciones del editor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SceneState_method_get_base_scene_state:

.. rst-class:: classref-method

:ref:`SceneState<class_SceneState>` **get_base_scene_state**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_base_scene_state>`

Returns the **SceneState** of the scene that this scene inherits from, or ``null`` if it doesn't inherit from any scene.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_binds:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connection_binds**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_binds>`

Returns the list of bound parameters for the signal at ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connection_count**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_count>`

Devuelve el número de conexiones de señales en la escena.

El argumento ``idx`` utilizado para consultar los metadatos de conexión en otros métodos ``get_connection_*`` en el intervalo ``[0, get_connection_count() - 1]``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_flags:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connection_flags**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_flags>`

Returns the connection flags for the signal at ``idx``. See :ref:`ConnectFlags<enum_Object_ConnectFlags>` constants.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_method:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_connection_method**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_method>`

Devuelve el método conectado a la señal en ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_signal:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_connection_signal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_signal>`

Devuelve el nombre de la señal en ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_source:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_connection_source**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_source>`

Devuelve la ruta al nodo que posee la señal en ``idx``, relativa al nodo raíz.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_target:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_connection_target**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_target>`

Devuelve la ruta al nodo que posee el método conectado a la señal en ``idx``, relativa al nodo raíz.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_connection_unbinds:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connection_unbinds**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_connection_unbinds>`

Devuelve el número de parámetros no vinculados para la señal en ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_node_count>`

Devuelve el número de nodos en la escena.

El argumento ``idx`` utilizado para consultar los datos de los nodos en otros métodos ``get_node_*`` en el intervalo ``[0, get_node_count() - 1]``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_groups:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_node_groups**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_groups>`

Devuelve la lista de nombres de grupo asociados al nodo en ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_index**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_index>`

Devuelve el índice del nodo, que es su posición en relación con sus nodos hermanos. Esto solo es relevante y se guarda en las escenas cuando se añaden nuevos nodos a una escena instanciada o heredada, situándolos entre los nodos hermanos de la escena base. A pesar de su nombre, este índice no está relacionado con el argumento ``idx`` utilizado aquí y en otros métodos.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_instance:

.. rst-class:: classref-method

:ref:`PackedScene<class_PackedScene>` **get_node_instance**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_instance>`

Devuelve una :ref:`PackedScene<class_PackedScene>` para el nodo en ``idx`` (es decir, toda la rama que comienza en este nodo, con sus nodos hijos y recursos), o ``null`` si el nodo no es una instancia.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_instance_placeholder:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_instance_placeholder**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_instance_placeholder>`

Devuelve la ruta al archivo de escena representado si el nodo en ``idx`` es un :ref:`InstancePlaceholder<class_InstancePlaceholder>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_name>`

Devuelve el nombre del nodo en ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_owner_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_node_owner_path**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_owner_path>`

Devuelve la ruta al propietario del nodo en ``idx``, relativa al nodo raíz.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_node_path**\ (\ idx\: :ref:`int<class_int>`, for_parent\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_SceneState_method_get_node_path>`

Devuelve la ruta al nodo en ``idx``.

Si ``for_parent`` es ``true``, devuelve en su lugar la ruta del padre del nodo ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_property_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_property_count**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_property_count>`

Devuelve el número de propiedades exportadas o sobrescritas para el nodo en ``idx``.

El argumento ``prop_idx`` utilizado para consultar datos de propiedades del nodo en otros métodos ``get_node_property_*`` se encuentra en el intervalo ``[0, get_node_property_count() - 1]``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_property_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_property_name**\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_property_name>`

Devuelve el nombre de la propiedad en ``prop_idx`` para el nodo en ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_property_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_node_property_value**\ (\ idx\: :ref:`int<class_int>`, prop_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_property_value>`

Devuelve el valor de la propiedad en ``prop_idx`` para el nodo en ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_node_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_type**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_get_node_type>`

Devuelve el tipo de nodo en ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_get_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_path**\ (\ ) |const| :ref:`🔗<class_SceneState_method_get_path>`

Devuelve la ruta del recurso a la :ref:`PackedScene<class_PackedScene>` representada.

.. rst-class:: classref-item-separator

----

.. _class_SceneState_method_is_node_instance_placeholder:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_node_instance_placeholder**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SceneState_method_is_node_instance_placeholder>`

Devuelve ``true`` si el nodo en ``idx`` es un :ref:`InstancePlaceholder<class_InstancePlaceholder>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
