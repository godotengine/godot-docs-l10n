:github_url: hide

.. _class_WorkerThreadPool:

WorkerThreadPool
================

**Hereda:** :ref:`Object<class_Object>`

Un singleton que asigna algunos :ref:`Thread<class_Thread>`\ s al inicio, usado para descargar tareas a estos hilos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El singleton **WorkerThreadPool** asigna un conjunto de :ref:`Thread<class_Thread>`\ s (llamados hilos de trabajo) al inicio del proyecto y proporciona métodos para descargar tareas a ellos. Esto puede ser usado para multihilo simple sin tener que crear :ref:`Thread<class_Thread>`\ s.

Las tareas contienen el :ref:`Callable<class_Callable>` para ser ejecutado por los hilos. **WorkerThreadPool** puede ser usado para crear tareas regulares, que serán tomadas por un hilo de trabajo, o tareas de grupo, que pueden ser distribuidas entre múltiples hilos de trabajo. Las tareas de grupo ejecutan el :ref:`Callable<class_Callable>` múltiples veces, lo que las hace útiles para iterar sobre muchos elementos, como los enemigos en una arena.

Aquí hay un ejemplo de cómo descargar una función costosa a los hilos de trabajo:


.. tabs::

 .. code-tab:: gdscript

    var enemies = [] # Un array para ser llenado con enemigos.

    func process_enemy_ai(enemy_index):
        var processed_enemy = enemies[enemy_index]
        # Lógica costosa...

    func _process(delta):
        var task_id = WorkerThreadPool.add_group_task(process_enemy_ai, enemies.size())
        # Otro código...
        WorkerThreadPool.wait_for_group_task_completion(task_id)
        # Otro código que depende de que la IA del enemigo ya esté procesada.

 .. code-tab:: csharp

    private List<Node> _enemies = new List<Node>(); // Una lista para ser llenada con enemigos.

    private void ProcessEnemyAI(int enemyIndex)
    {
        Node processedEnemy = _enemies[enemyIndex];
        // Lógica costosa aquí.
    }

    public override void _Process(double delta)
    {
        long taskId = WorkerThreadPool.AddGroupTask(Callable.From<int>(ProcessEnemyAI), _enemies.Count);
        // Otro código...
        WorkerThreadPool.WaitForGroupTaskCompletion(taskId);
        // Otro código que depende de que la IA del enemigo ya esté procesada.
    }



El código anterior se basa en que el número de elementos en el array ``enemies`` permanezca constante durante la parte multihilo.

\ **Nota:** El uso de este singleton podría afectar negativamente al rendimiento si la tarea que se distribuye entre los hilos no es computacionalmente costosa.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando múltiples hilos <../tutorials/performance/using_multiple_threads>`

- :doc:`APIs thread safe <../tutorials/performance/thread_safe_apis>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`add_group_task<class_WorkerThreadPool_method_add_group_task>`\ (\ action\: :ref:`Callable<class_Callable>`, elements\: :ref:`int<class_int>`, tasks_needed\: :ref:`int<class_int>` = -1, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`add_task<class_WorkerThreadPool_method_add_task>`\ (\ action\: :ref:`Callable<class_Callable>`, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ )                                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_caller_group_id<class_WorkerThreadPool_method_get_caller_group_id>`\ (\ ) |const|                                                                                                                                                                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_caller_task_id<class_WorkerThreadPool_method_get_caller_task_id>`\ (\ ) |const|                                                                                                                                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_group_processed_element_count<class_WorkerThreadPool_method_get_group_processed_element_count>`\ (\ group_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_group_task_completed<class_WorkerThreadPool_method_is_group_task_completed>`\ (\ group_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                             |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_task_completed<class_WorkerThreadPool_method_is_task_completed>`\ (\ task_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`wait_for_group_task_completion<class_WorkerThreadPool_method_wait_for_group_task_completion>`\ (\ group_id\: :ref:`int<class_int>`\ )                                                                                                                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`wait_for_task_completion<class_WorkerThreadPool_method_wait_for_task_completion>`\ (\ task_id\: :ref:`int<class_int>`\ )                                                                                                                                                                    |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_WorkerThreadPool_method_add_group_task:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_group_task**\ (\ action\: :ref:`Callable<class_Callable>`, elements\: :ref:`int<class_int>`, tasks_needed\: :ref:`int<class_int>` = -1, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WorkerThreadPool_method_add_group_task>`

Añade ``action`` como una tarea de grupo para que la ejecuten los hilos de trabajo. El :ref:`Callable<class_Callable>` se llamará varias veces basándose en ``elements``, con el primer hilo llamándolo con el valor ``0`` como parámetro, y cada ejecución consecutiva incrementando este valor en 1 hasta que alcance ``element - 1``.

El número de hilos a los que se distribuye la tarea se define mediante ``tasks_needed``, donde el valor predeterminado ``-1`` significa que se distribuye a todos los hilos de trabajo. ``high_priority`` determina si la tarea tiene una prioridad alta o una prioridad baja (por defecto). Opcionalmente puedes proporcionar una ``description`` para ayudar con la depuración.

Devuelve un ID de tarea de grupo que puede ser usado por otros métodos.

\ **Advertencia:** Se debe esperar a que cada tarea se complete usando :ref:`wait_for_task_completion()<class_WorkerThreadPool_method_wait_for_task_completion>` o :ref:`wait_for_group_task_completion()<class_WorkerThreadPool_method_wait_for_group_task_completion>` en algún momento para que cualquier recurso asignado dentro de la tarea pueda ser limpiado.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_add_task:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_task**\ (\ action\: :ref:`Callable<class_Callable>`, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WorkerThreadPool_method_add_task>`

Añade ``action`` como una tarea para que la ejecute un hilo de trabajo. ``high_priority`` determina si la tarea tiene una prioridad alta o una prioridad baja (por defecto). Opcionalmente, puedes proporcionar una ``description`` para ayudar con la depuración.

Devuelve un ID de tarea que puede ser usado por otros métodos.

\ **Advertencia:** Se debe esperar a que cada tarea se complete usando :ref:`wait_for_task_completion()<class_WorkerThreadPool_method_wait_for_task_completion>` o :ref:`wait_for_group_task_completion()<class_WorkerThreadPool_method_wait_for_group_task_completion>` en algún momento para que cualquier recurso asignado dentro de la tarea pueda ser limpiado.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_caller_group_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_caller_group_id**\ (\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_caller_group_id>`

Devuelve el ID del grupo de tareas del hilo actual que llama a este método, o ``-1`` si no es válido o el hilo actual no forma parte de un grupo de tareas.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_caller_task_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_caller_task_id**\ (\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_caller_task_id>`

Devuelve el ID de tarea del hilo actual que llama a este método, o ``-1`` si la tarea es una tarea de grupo, no es válida o el hilo actual no forma parte del pool de hilos (por ejemplo, el hilo principal).

Puede ser utilizado por una tarea para obtener su propio ID de tarea, o para determinar si el código actual se está ejecutando dentro del pool de hilos de trabajo.

\ **Nota:** Las tareas de grupo tienen sus propios ID, por lo que este método devolverá ``-1`` para las tareas de grupo.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_group_processed_element_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_processed_element_count**\ (\ group_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_group_processed_element_count>`

Devuelve cuántas veces el :ref:`Callable<class_Callable>` de la tarea de grupo con el ID dado ya ha sido ejecutado por los hilos de trabajo.

\ **Nota:** Si un hilo ha comenzado a ejecutar el :ref:`Callable<class_Callable>` pero aún no ha terminado, no se contará.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_is_group_task_completed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_group_task_completed**\ (\ group_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_is_group_task_completed>`

Devuelve ``true`` si la tarea de grupo con el ID dado está completada.

\ **Nota:** Solo deberías llamar a este método entre la adición de la tarea de grupo y la espera de su finalización.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_is_task_completed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_task_completed**\ (\ task_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_is_task_completed>`

Devuelve ``true`` si la tarea con el ID dado está completada.

\ **Nota:** Solo deberías llamar a este método entre la adición de la tarea y la espera de su finalización.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_wait_for_group_task_completion:

.. rst-class:: classref-method

|void| **wait_for_group_task_completion**\ (\ group_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WorkerThreadPool_method_wait_for_group_task_completion>`

Pausa el hilo que llama a este método hasta que la tarea de grupo con el ID dado se complete.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_wait_for_task_completion:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **wait_for_task_completion**\ (\ task_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WorkerThreadPool_method_wait_for_task_completion>`

Pausa el hilo que llama a este método hasta que se complete la tarea con el ID dado.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si la tarea se pudo esperar con éxito.

Devuelve :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si no existe una tarea con el ID pasado (tal vez porque ya se esperó y se eliminó).

Devuelve :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>` si la llamada se realiza desde otra tarea en ejecución y, debido a la programación de tareas, existe la posibilidad de que se produzca un interbloqueo (por ejemplo, la tarea que se va a esperar puede estar en un nivel inferior en la pila de llamadas y, por lo tanto, no puede progresar). Esta es una situación avanzada que solo debería importar cuando algunas tareas dependen de otras (en la implementación actual, el caso difícil es una tarea que intenta esperar a una más antigua).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
