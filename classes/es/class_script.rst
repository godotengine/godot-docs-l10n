:github_url: hide

.. _class_Script:

Script
======

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`CSharpScript<class_CSharpScript>`, :ref:`GDScript<class_GDScript>`, :ref:`ScriptExtension<class_ScriptExtension>`

Una clase almacenada como recurso.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una clase almacenada como recurso. Un script extiende la funcionalidad de todos los objetos que lo instancian.

Esta es la clase base para todos los scripts y no debe usarse directamente. Intentar crear un nuevo script con esta clase resultará en un error.

El método ``new`` de una subclase de un script crea una nueva instancia. :ref:`Object.set_script()<class_Object_method_set_script>` extiende un objeto existente, si la clase de ese objeto coincide con una de las clases base del script.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de la documentación de scripting <../tutorials/scripting/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`source_code<class_Script_property_source_code>` |
   +-----------------------------+-------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_instantiate<class_Script_method_can_instantiate>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Script<class_Script>`                                      | :ref:`get_base_script<class_Script_method_get_base_script>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_global_name<class_Script_method_get_global_name>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_instance_base_type<class_Script_method_get_instance_base_type>`\ (\ ) |const|                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_property_default_value<class_Script_method_get_property_default_value>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_rpc_config<class_Script_method_get_rpc_config>`\ (\ ) |const|                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_script_constant_map<class_Script_method_get_script_constant_map>`\ (\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_method_list<class_Script_method_get_script_method_list>`\ (\ )                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_property_list<class_Script_method_get_script_property_list>`\ (\ )                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_signal_list<class_Script_method_get_script_signal_list>`\ (\ )                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_script_signal<class_Script_method_has_script_signal>`\ (\ signal_name\: :ref:`StringName<class_StringName>`\ ) |const|        |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_source_code<class_Script_method_has_source_code>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`instance_has<class_Script_method_instance_has>`\ (\ base_object\: :ref:`Object<class_Object>`\ ) |const|                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_abstract<class_Script_method_is_abstract>`\ (\ ) |const|                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_tool<class_Script_method_is_tool>`\ (\ ) |const|                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`reload<class_Script_method_reload>`\ (\ keep_state\: :ref:`bool<class_bool>` = false\ )                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Script_property_source_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_code** :ref:`🔗<class_Script_property_source_code>`

.. rst-class:: classref-property-setget

- |void| **set_source_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_source_code**\ (\ )

El código fuente del script o una string vacía si el código fuente no está disponible. Cuando está configurado, no recarga la implementación de la clase automáticamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Script_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ ) |const| :ref:`🔗<class_Script_method_can_instantiate>`

Devuelve ``true`` si el script puede ser instanciado.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_base_script:

.. rst-class:: classref-method

:ref:`Script<class_Script>` **get_base_script**\ (\ ) |const| :ref:`🔗<class_Script_method_get_base_script>`

Devuelve el script directamente heredado por este script.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_global_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_global_name**\ (\ ) |const| :ref:`🔗<class_Script_method_get_global_name>`

Devuelve el nombre de la clase asociado con el script, si existe. Devuelve una string vacía en caso contrario.

Para dar al script un nombre global, puedes usar la palabra clave ``class_name`` en GDScript y el atributo ``[GlobalClass]`` en C#.


.. tabs::

 .. code-tab:: gdscript

    class_name MiNodo
    extends Node

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class MiNodo : Node
    {
    }



.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_instance_base_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_instance_base_type**\ (\ ) |const| :ref:`🔗<class_Script_method_get_instance_base_type>`

Devuelve el tipo de base del script.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_property_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_property_default_value**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Script_method_get_property_default_value>`

Devuelve el valor por defecto de la propiedad especificada.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_rpc_config:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_rpc_config**\ (\ ) |const| :ref:`🔗<class_Script_method_get_rpc_config>`

Devuelve un :ref:`Dictionary<class_Dictionary>` que mapea los nombres de los métodos a su configuración RPC definida por este script.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_constant_map:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_script_constant_map**\ (\ ) :ref:`🔗<class_Script_method_get_script_constant_map>`

Devuelve un diccionario que contiene nombres de constantes y sus valores.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_method_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_method_list>`

Devuelve la lista de métodos en este **Script**.

\ **Nota:** Los diccionarios devueltos por este método tienen un formato idéntico a los devueltos por :ref:`Object.get_method_list()<class_Object_method_get_method_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_property_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_property_list>`

Devuelve la lista de propiedades en este **Script**.

\ **Nota:** Los diccionarios devueltos por este método tienen un formato idéntico a los devueltos por :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_signal_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_signal_list>`

Devuelve la lista de señales definidas en este **Script**.

\ **Nota:** Los diccionarios devueltos por este método están formateados idénticamente a los devueltos por :ref:`Object.get_signal_list()<class_Object_method_get_signal_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_script_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_script_signal**\ (\ signal_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Script_method_has_script_signal>`

Devuelve ``true`` si el script, o una clase base, define una señal con el nombre dado.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_source_code:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_source_code**\ (\ ) |const| :ref:`🔗<class_Script_method_has_source_code>`

Devuelve ``true`` si el script contiene código fuente no vacío.

\ **Nota:** Que un script no tenga código fuente no significa que no sea válido o inutilizable. Por ejemplo, un :ref:`GDScript<class_GDScript>` que fue exportado con tokenización binaria no tiene código fuente, pero aun así se comporta como se espera y puede ser instanciado. Esto puede ser verificado con :ref:`can_instantiate()<class_Script_method_can_instantiate>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_instance_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **instance_has**\ (\ base_object\: :ref:`Object<class_Object>`\ ) |const| :ref:`🔗<class_Script_method_instance_has>`

Devuelve ``true`` si ``base_object`` es una instancia de este script.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_is_abstract:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_abstract**\ (\ ) |const| :ref:`🔗<class_Script_method_is_abstract>`

Devuelve ``true`` si el script es un script abstracto. Un script abstracto no tiene un constructor y no puede ser instanciado.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_is_tool:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tool**\ (\ ) |const| :ref:`🔗<class_Script_method_is_tool>`

Devuelve ``true`` si el script es un script de herramientas. Un script de herramienta puede ejecutarse en el editor.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_reload:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **reload**\ (\ keep_state\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Script_method_reload>`

Recarga la implementación de la clase del script. Devuelve un código de error.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
