:github_url: hide

.. _class_VisualShaderNodeGlobalExpression:

VisualShaderNodeGlobalExpression
================================

**Hereda:** :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>` **<** :ref:`VisualShaderNodeGroupBase<class_VisualShaderNodeGroupBase>` **<** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una expresión gráfica de shader visual global personalizada, escrita en el Lenguaje de Shaders de Godot.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Expresión personalizada del Lenguaje de Shaders de Godot, que se coloca sobre el shader generado. Puedes colocar varias definiciones de funciones dentro para llamarlas más tarde en :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>`\ s (que se inyectan en las principales funciones shader). También puedes declarar variaciones, variables uniformes y constantes globales.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
