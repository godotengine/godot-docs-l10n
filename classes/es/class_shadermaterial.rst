:github_url: hide

.. _class_ShaderMaterial:

ShaderMaterial
==============

**Hereda:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un material definido por un programa de :ref:`Shader<class_Shader>`\ s personalizado y los valores de sus parámetros de shader.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A material that uses a custom :ref:`Shader<class_Shader>` program to render visual items (canvas items, meshes, skies, fog), or to process particles. Compared to other materials, **ShaderMaterial** gives deeper control over the generated shader code. For more information, see the shaders documentation index below.

Multiple **ShaderMaterial**\ s can use the same shader and configure different values for the shader uniforms.

\ **Note:** For performance reasons, the :ref:`Resource.changed<class_Resource_signal_changed>` signal is only emitted when the :ref:`Resource.resource_name<class_Resource_property_resource_name>` changes. Only in editor, it is also emitted for :ref:`shader<class_ShaderMaterial_property_shader>` changes.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación de shaders <../tutorials/shaders/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------+
   | :ref:`Shader<class_Shader>` | :ref:`shader<class_ShaderMaterial_property_shader>` |
   +-----------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_shader_parameter<class_ShaderMaterial_method_get_shader_parameter>`\ (\ param\: :ref:`StringName<class_StringName>`\ ) |const|                                |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_shader_parameter<class_ShaderMaterial_method_set_shader_parameter>`\ (\ param\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ShaderMaterial_property_shader:

.. rst-class:: classref-property

:ref:`Shader<class_Shader>` **shader** :ref:`🔗<class_ShaderMaterial_property_shader>`

.. rst-class:: classref-property-setget

- |void| **set_shader**\ (\ value\: :ref:`Shader<class_Shader>`\ )
- :ref:`Shader<class_Shader>` **get_shader**\ (\ )

El programa :ref:`Shader<class_Shader>` utilizado para renderizar este material.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ShaderMaterial_method_get_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ShaderMaterial_method_get_shader_parameter>`

Devuelve el valor actual establecido para este material de un uniforme en el shader.

.. rst-class:: classref-item-separator

----

.. _class_ShaderMaterial_method_set_shader_parameter:

.. rst-class:: classref-method

|void| **set_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ShaderMaterial_method_set_shader_parameter>`

Changes the value set for this material of a uniform in the shader.

\ **Note:** ``param`` is case-sensitive and must match the name of the uniform in the code exactly (not the capitalized name in the inspector).

\ **Note:** Changes to the shader uniform will be effective on all instances using this **ShaderMaterial**. To prevent this, use per-instance uniforms with :ref:`CanvasItem.set_instance_shader_parameter()<class_CanvasItem_method_set_instance_shader_parameter>`, :ref:`GeometryInstance3D.set_instance_shader_parameter()<class_GeometryInstance3D_method_set_instance_shader_parameter>` or duplicate the **ShaderMaterial** resource using :ref:`Resource.duplicate()<class_Resource_method_duplicate>`. Per-instance uniforms allow for better shader reuse and are therefore faster, so they should be preferred over duplicating the **ShaderMaterial** when possible.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
