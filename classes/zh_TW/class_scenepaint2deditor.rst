:github_url: hide

.. _class_ScenePaint2DEditor:

ScenePaint2DEditor
==================

**繼承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Class for interacting with the 2D editor's Scene Paint Mode.

.. rst-class:: classref-introduction-group

說明
----

This class is available only in the editor and cannot be instantiated. Access it using :ref:`EditorInterface.get_scene_paint_2d()<class_EditorInterface_method_get_scene_paint_2d>`.

It provides methods for editor plugins to interact with the scene painting tool.

Plugins can register custom scene providers, and set the scene to be painted.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node2D<class_Node2D>` | :ref:`get_painted_scene<class_ScenePaint2DEditor_method_get_painted_scene>`\ (\ ) |const|                                                                                          |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`register_scene_provider<class_ScenePaint2DEditor_method_register_scene_provider>`\ (\ control\: :ref:`Control<class_Control>`, callback\: :ref:`Callable<class_Callable>`\ ) |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_painted_scene<class_ScenePaint2DEditor_method_set_painted_scene>`\ (\ scene\: :ref:`Node2D<class_Node2D>`\ )                                                             |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`unregister_scene_provider<class_ScenePaint2DEditor_method_unregister_scene_provider>`\ (\ control\: :ref:`Control<class_Control>`\ )                                         |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_ScenePaint2DEditor_signal_scene_painted:

.. rst-class:: classref-signal

**scene_painted**\ (\ node\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_ScenePaint2DEditor_signal_scene_painted>`

Emitted for each new node created during drawing.

\ **Example:**\ 


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorPlugin

    func _enter_tree():
        EditorInterface.get_scene_paint_2d().scene_painted.connect(_on_scene_painted)

    func _on_scene_painted(node: Node2D):
        # Set random rotation when drawing nodes.
        node.rotation = randf_range(0, 360)



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ScenePaint2DEditor_method_get_painted_scene:

.. rst-class:: classref-method

:ref:`Node2D<class_Node2D>` **get_painted_scene**\ (\ ) |const| :ref:`🔗<class_ScenePaint2DEditor_method_get_painted_scene>`

Returns the painted scene, or ``null`` if none is selected. The returned scene's properties can be edited.

\ **Warning:** Removing and freeing this node will render the editor useless and may cause a crash.

.. rst-class:: classref-item-separator

----

.. _class_ScenePaint2DEditor_method_register_scene_provider:

.. rst-class:: classref-method

|void| **register_scene_provider**\ (\ control\: :ref:`Control<class_Control>`, callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_ScenePaint2DEditor_method_register_scene_provider>`

Registers a custom scene provider.

When the scene picker tool is active and the user clicks on ``control``, the ``callback`` is invoked and must return a :ref:`Node2D<class_Node2D>`.

The returned scene becomes the new painting sample.

.. rst-class:: classref-item-separator

----

.. _class_ScenePaint2DEditor_method_set_painted_scene:

.. rst-class:: classref-method

|void| **set_painted_scene**\ (\ scene\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_ScenePaint2DEditor_method_set_painted_scene>`

Sets the scene sample to be painted.

.. rst-class:: classref-item-separator

----

.. _class_ScenePaint2DEditor_method_unregister_scene_provider:

.. rst-class:: classref-method

|void| **unregister_scene_provider**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_ScenePaint2DEditor_method_unregister_scene_provider>`

Removes a previously registered scene provider.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
