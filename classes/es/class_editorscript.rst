:github_url: hide

.. _class_EditorScript:

EditorScript
============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Script base que puede ser usado para añadir funciones de extensión al editor.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los scripts que extienden esta clase e implementan su método :ref:`_run()<class_EditorScript_private_method__run>` pueden ser ejecutados desde la opción del menú **Archivo > Ejecutar** del editor de scripts (o presionando :kbd:`Ctrl + Shift + X`) mientras el editor está funcionando. Esto es útil para añadir funcionalidad personalizada en el editor a Godot. Para adiciones más complejas, considera la posibilidad de usar :ref:`EditorPlugin<class_EditorPlugin>` en su lugar.

Si un script que extiende esta clase también tiene un nombre de clase global, se incluirá en la paleta de comandos del editor.

\ **Nota:** Los scripts de extensión necesitan tener el modo ``tool`` habilitado.

\ **Ejemplo:** Al ejecutar el siguiente script se imprime "¡Hola desde el editor de Godot!":


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorScript

    func _run():
        print("¡Hola desde el editor de Godot!")

 .. code-tab:: csharp

    using Godot;

    [Tool]
    public partial class HelloEditor : EditorScript
    {
        public override void _Run()
        {
            GD.Print("¡Hola desde el editor de Godot!");
        }
    }



\ **Nota:** EditorScript es :ref:`RefCounted<class_RefCounted>`, lo que significa que se destruye cuando nada lo referencia. Esto puede causar errores durante operaciones asíncronas si no quedan referencias al script.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`_run<class_EditorScript_private_method__run>`\ (\ ) |virtual| |required|                      |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`add_root_node<class_EditorScript_method_add_root_node>`\ (\ node\: :ref:`Node<class_Node>`\ ) |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`EditorInterface<class_EditorInterface>` | :ref:`get_editor_interface<class_EditorScript_method_get_editor_interface>`\ (\ ) |const|           |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                       | :ref:`get_scene<class_EditorScript_method_get_scene>`\ (\ ) |const|                                 |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorScript_private_method__run:

.. rst-class:: classref-method

|void| **_run**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorScript_private_method__run>`

Este método es ejecutado por el Editor cuando se utiliza **Archivo > Ejecutar**.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_add_root_node:

.. rst-class:: classref-method

|void| **add_root_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorScript_method_add_root_node>`

**Obsoleto:** Use :ref:`EditorInterface.add_root_node()<class_EditorInterface_method_add_root_node>` instead.

Convierte a ``node`` en la raíz de la escena actualmente abierta. Solo funciona si la escena está vacía. Si ``node`` es una instancia de escena, se creará una escena heredada.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_get_editor_interface:

.. rst-class:: classref-method

:ref:`EditorInterface<class_EditorInterface>` **get_editor_interface**\ (\ ) |const| :ref:`🔗<class_EditorScript_method_get_editor_interface>`

**Obsoleto:** :ref:`EditorInterface<class_EditorInterface>` is a global singleton and can be accessed directly by its name.

Devuelve la instancia singleton :ref:`EditorInterface<class_EditorInterface>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_get_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_scene**\ (\ ) |const| :ref:`🔗<class_EditorScript_method_get_scene>`

**Obsoleto:** Use :ref:`EditorInterface.get_edited_scene_root()<class_EditorInterface_method_get_edited_scene_root>` instead.

Devuelve la raíz :ref:`Node<class_Node>` de la escena editada (actual). Equivalente de :ref:`EditorInterface.get_edited_scene_root()<class_EditorInterface_method_get_edited_scene_root>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
