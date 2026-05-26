:github_url: hide

.. _class_VisualShaderNodeCustom:

VisualShaderNodeCustom
======================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase virtual para definir los :ref:`VisualShaderNode<class_VisualShaderNode>` personalizados para su uso en el Visual Shader Editor.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Heredando esta clase, puedes crear un addon de script :ref:`VisualShader<class_VisualShader>` personalizado que se agregará automáticamente al Editor de Shaders Visuales. El comportamiento de :ref:`VisualShaderNode<class_VisualShaderNode>` se define anulando los métodos virtuales proporcionados.

Para que el nodo se registre como un addon de editor, debes usar la anotación ``@tool`` y proporcionar un ``class_name`` para tu script personalizado. Por ejemplo:

::

    @tool
    extends VisualShaderNodeCustom
    class_name VisualShaderNodeNoise

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Plugins de Visual Shader <../tutorials/plugins/editor/visual_shader_plugins>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_category<class_VisualShaderNodeCustom_private_method__get_category>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_code<class_VisualShaderNodeCustom_private_method__get_code>`\ (\ input_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], output_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_default_input_port<class_VisualShaderNodeCustom_private_method__get_default_input_port>`\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |virtual| |const|                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_description<class_VisualShaderNodeCustom_private_method__get_description>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_func_code<class_VisualShaderNodeCustom_private_method__get_func_code>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const|                                                                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_global_code<class_VisualShaderNodeCustom_private_method__get_global_code>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_input_port_count<class_VisualShaderNodeCustom_private_method__get_input_port_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_get_input_port_default_value<class_VisualShaderNodeCustom_private_method__get_input_port_default_value>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_input_port_name<class_VisualShaderNodeCustom_private_method__get_input_port_name>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_input_port_type<class_VisualShaderNodeCustom_private_method__get_input_port_type>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_name<class_VisualShaderNodeCustom_private_method__get_name>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_output_port_count<class_VisualShaderNodeCustom_private_method__get_output_port_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_output_port_name<class_VisualShaderNodeCustom_private_method__get_output_port_name>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_output_port_type<class_VisualShaderNodeCustom_private_method__get_output_port_type>`\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_property_count<class_VisualShaderNodeCustom_private_method__get_property_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_property_default_index<class_VisualShaderNodeCustom_private_method__get_property_default_index>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_property_name<class_VisualShaderNodeCustom_private_method__get_property_name>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_property_options<class_VisualShaderNodeCustom_private_method__get_property_options>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PortType<enum_VisualShaderNode_PortType>`   | :ref:`_get_return_icon_type<class_VisualShaderNodeCustom_private_method__get_return_icon_type>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_available<class_VisualShaderNodeCustom_private_method__is_available>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const|                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_highend<class_VisualShaderNodeCustom_private_method__is_highend>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_option_index<class_VisualShaderNodeCustom_method_get_option_index>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_VisualShaderNodeCustom_private_method__get_category:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_category**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_category>`

Sobrescribe este método para definir la ruta al nodo personalizado asociado en el diálogo de miembros del Editor de Shaders Visuales. La ruta puede verse como ``"MiJuego/MisFunciones/Ruido"``.

Definir este método es **opcional**. Si no se sobrescribe, el nodo se archivará en la categoría "Addons".

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_code**\ (\ input_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], output_vars\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\], mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_code>`

Sobrescribe este método para definir el código shader real del nodo personalizado asociado. El código shader debe devolverse como una string, que puede tener varias líneas (la construcción de string multilínea ``"""`` se puede usar para mayor comodidad).

Los arrays ``input_vars`` y ``output_vars`` contienen los nombres de string de las diversas variables de entrada y salida, tal como se definen en los métodos virtuales ``_get_input_*`` y ``_get_output_*`` de esta clase.

A los puertos de salida se les pueden asignar valores en el código shader. Por ejemplo, ``return output_vars[0] + " = " + input_vars[0] + ";"``.

Puedes personalizar el código generado basándote en el ``mode`` y/o ``type`` del shader.

Definir este método es **obligatorio**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_default_input_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_default_input_port**\ (\ type\: :ref:`PortType<enum_VisualShaderNode_PortType>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_default_input_port>`

Sobrescribe este método para definir el puerto de entrada que debe conectarse de forma predeterminada cuando este nodo se crea como resultado de arrastrar una conexión desde un nodo existente al espacio vacío en el gráfico.

Definir este método es **opcional**. Si no se sobrescribe, la conexión se creará al primer puerto válido.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_description**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_description>`

Sobrescribe este método para definir la descripción del nodo personalizado asociado en el diálogo de miembros del Editor de shader Visual.

La definición de este método es **opcional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_func_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_func_code**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_func_code>`

Sobrescribe este método para agregar código de shader al principio de cada función de shader (una vez). El código shader debe devolverse como una string, que puede tener varias líneas (la construcción de string multilínea ``"""`` se puede usar para mayor comodidad).

Si hay varios nodos personalizados de diferentes tipos que utilizan esta característica, el orden de cada inserción no está definido.

Puedes personalizar el código generado basándote en el ``mode`` y/o ``type`` del shader.

Definir este método es **opcional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_global_code:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_global_code**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_global_code>`

Sobrescribe este método para agregar código de shader en la parte superior del shader global, para definir tu propia biblioteca estándar de métodos reutilizables, variables, constantes, variables uniformes, etc. El código shader debe devolverse como una string, que puede tener varias líneas (la construcción de string multilínea ``"""`` se puede usar para mayor comodidad).

Ten cuidado con esta funcionalidad, ya que puede causar conflictos de nombres con otros nodos personalizados, así que asegúrate de dar a las entidades definidas nombres únicos.

Puedes personalizar el código generado basándote en el ``mode`` del shader.

Definir este método es **opcional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_input_port_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_count>`

Sobrescribe este método para definir la cantidad de puertos de entrada del nodo personalizado asociado.

Definir este método es **obligatorio**. Si no se sobrescribe, el nodo no tiene puertos de entrada.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_input_port_default_value**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_default_value>`

Sobrescribe este método para definir el valor por defecto para el puerto de entrada especificado. Es preferible usar este método en lugar de :ref:`VisualShaderNode.set_input_port_default_value()<class_VisualShaderNode_method_set_input_port_default_value>`.

Definir este método es **requerido**. Si no se sobrescribe, el nodo no tendrá valores por defecto para sus puertos de entrada.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_input_port_name**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_name>`

Sobreescribir este método para definir los nombres de los puertos de entrada del nodo personalizado asociado. Los nombres se usan tanto para los puertos de entrada en el editor como identificadores en el código shader, y se pasan en el array ``input_vars`` en :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>`.

La definición de este método es **opcional**, pero se recomienda. Si no se sobrescribe, los puertos de entrada se nombran como ``"in" + str(port)``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_input_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_input_port_type**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_input_port_type>`

Sobrescribe este método para definir el tipo devuelto de cada puerto de entrada del nodo personalizado asociado (véase :ref:`PortType<enum_VisualShaderNode_PortType>` para los posibles tipos).

Definir este método es **opcional**, pero se recomienda. Si no se sobrescribe, los puertos de entrada devolverán el tipo :ref:`VisualShaderNode.PORT_TYPE_SCALAR<class_VisualShaderNode_constant_PORT_TYPE_SCALAR>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_name>`

Sobrescribe este método para definir el nombre del nodo personalizado asociado en el diálogo y el gráfico de miembros del Editor de shader Visual.

Definir este método es **opcional**, pero se recomienda. Si no se sobrescribe, el nodo se nombrará como "Unnamed".

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_output_port_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_count>`

Sobrescribe este método para definir la cantidad de puertos de salida del nodo personalizado asociado.

La definición de este método es **requerida**. Si no se sobrescribe, el nodo no tiene puertos de salida.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_output_port_name**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_name>`

Sobrescribe este método para definir los nombres de los puertos de salida del nodo personalizado asociado. Los nombres se utilizan tanto para los puertos de salida en el editor como identificadores en el código shader, y se pasan en el array ``output_vars`` en :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>`.

La definición de este método es **opcional**, pero se recomienda. Si no se sobrescribe, los puertos de salida se nombran como ``"out" + str(port)``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_output_port_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_output_port_type**\ (\ port\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_output_port_type>`

Sobrescribe este método para definir el tipo devuelto de cada puerto de salida del nodo personalizado asociado (véase :ref:`PortType<enum_VisualShaderNode_PortType>` para los posibles tipos).

Definir este método es **opcional**, pero se recomienda. Si no se sobrescribe, los puertos de salida devolverán el tipo :ref:`VisualShaderNode.PORT_TYPE_SCALAR<class_VisualShaderNode_constant_PORT_TYPE_SCALAR>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_property_count**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_count>`

Sobrescribe este método para definir el número de propiedades.

Definir este método es **opcional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_default_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_property_default_index**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_default_index>`

Sobrescribe este método para definir el índice por defecto de la propiedad del nodo personalizado asociado.

Definir este método es **opcional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_property_name**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_name>`

Sobrescribe este método para definir el nombre de la propiedad del nodo personalizado asociado.

Definir este método es **opcional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_property_options:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_property_options**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_property_options>`

Sobrescribe este método para definir las opciones dentro de la propiedad de la lista desplegable del nodo personalizado asociado.

Definir este método es **opcional**.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__get_return_icon_type:

.. rst-class:: classref-method

:ref:`PortType<enum_VisualShaderNode_PortType>` **_get_return_icon_type**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__get_return_icon_type>`

Sobrescribe este método para definir el icono de retorno del nodo personalizado asociado en el diálogo de miembros del Editor Shader Visual.

La definición de este método es **opcional**. Si no se sobrescribe, no se muestra ningún icono de retorno.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__is_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_available**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`, type\: :ref:`Type<enum_VisualShader_Type>`\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__is_available>`

Sobrescribe este método para evitar que el nodo sea visible en el diálogo de miembros para el determinado ``mode`` y/o ``type``.

Definir este método es **opcional**. Si no se sobrescribe, es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_private_method__is_highend:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_highend**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualShaderNodeCustom_private_method__is_highend>`

Override this method to enable the high-end mark in the Visual Shader Editor's members dialog. This should return ``true`` for nodes that only work when using the Forward+ and Mobile renderers.

Defining this method is **optional**. If not overridden, it's ``false``, which indicates this node works with all renderers (including Compatibility).

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCustom_method_get_option_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_option_index**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShaderNodeCustom_method_get_option_index>`

Devuelve el índice seleccionado de la opción de la lista desplegable dentro de un gráfico. Puedes usar esta función para definir el comportamiento específico en :ref:`_get_code()<class_VisualShaderNodeCustom_private_method__get_code>` o :ref:`_get_global_code()<class_VisualShaderNodeCustom_private_method__get_global_code>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
