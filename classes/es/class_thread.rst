:github_url: hide

.. _class_Thread:

Thread
======

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una unidad de ejecución en un proceso.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una unidad de ejecución en un proceso. Puede ejecutar métodos en :ref:`Object<class_Object>`\ s simultáneamente. Se aconseja el uso de la sincronización a través de :ref:`Mutex<class_Mutex>` o :ref:`Semaphore<class_Semaphore>` si se trabaja con objetos compartidos.

\ **Advertencia:** Para asegurar una limpieza adecuada sin fallos o interbloqueos, cuando el contador de referencias de un **Thread** llega a cero y, por lo tanto, es destruido, deben cumplirse las siguientes condiciones:

- No debe tener ningún :ref:`Mutex<class_Mutex>` bloqueado.

- No debe estar esperando ningún :ref:`Semaphore<class_Semaphore>`.

- Se debe haber llamado a :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando múltiples hilos <../tutorials/performance/using_multiple_threads>`

- :doc:`APIs thread safe <../tutorials/performance/thread_safe_apis>`

- `Demo de Vóxeles en 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_id<class_Thread_method_get_id>`\ (\ ) |const|                                                                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_alive<class_Thread_method_is_alive>`\ (\ ) |const|                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_main_thread<class_Thread_method_is_main_thread>`\ (\ ) |static|                                                                        |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_started<class_Thread_method_is_started>`\ (\ ) |const|                                                                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_thread_safety_checks_enabled<class_Thread_method_set_thread_safety_checks_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ ) |static| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start<class_Thread_method_start>`\ (\ callable\: :ref:`Callable<class_Callable>`, priority\: :ref:`Priority<enum_Thread_Priority>` = 1\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`wait_to_finish<class_Thread_method_wait_to_finish>`\ (\ )                                                                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Thread_Priority:

.. rst-class:: classref-enumeration

enum **Priority**: :ref:`🔗<enum_Thread_Priority>`

.. _class_Thread_constant_PRIORITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_LOW** = ``0``

Un hilo que corre con menor prioridad de lo normal.

.. _class_Thread_constant_PRIORITY_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_NORMAL** = ``1``

Un hilo con una prioridad estándar.

.. _class_Thread_constant_PRIORITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_HIGH** = ``2``

Un hilo que corre con mayor prioridad de lo normal.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Thread_method_get_id:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id**\ (\ ) |const| :ref:`🔗<class_Thread_method_get_id>`

Devuelve el ID del **Thread** actual, identificándolo de forma única entre todos los hilos. Si el **Thread** no ha comenzado a ejecutarse o si se ha llamado a :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`, esto devuelve una string vacía.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_alive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_alive**\ (\ ) |const| :ref:`🔗<class_Thread_method_is_alive>`

Devuelve ``true`` si este **Thread** está ejecutando actualmente la función proporcionada. Esto es útil para determinar si se puede llamar a :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>` sin bloquear el hilo que llama.

Para comprobar si un **Thread** se puede unir, utiliza :ref:`is_started()<class_Thread_method_is_started>`.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_main_thread:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_main_thread**\ (\ ) |static| :ref:`🔗<class_Thread_method_is_main_thread>`

Devuelve ``true`` si el hilo desde el que se llamó a este método es el hilo principal.

\ **Nota:** Este es un método estático y no está asociado con un objeto **Thread** específico.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_started:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_started**\ (\ ) |const| :ref:`🔗<class_Thread_method_is_started>`

Devuelve ``true`` si este **Thread** ha sido iniciado. Una vez iniciado, esto devolverá ``true`` hasta que se una usando :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`. Para comprobar si un **Thread** todavía está ejecutando su tarea, utiliza :ref:`is_alive()<class_Thread_method_is_alive>`.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_set_thread_safety_checks_enabled:

.. rst-class:: classref-method

|void| **set_thread_safety_checks_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_Thread_method_set_thread_safety_checks_enabled>`

Indica si las comprobaciones de seguridad de hilos que el motor realiza normalmente en los métodos de ciertas clases (por ejemplo, :ref:`Node<class_Node>`) deben realizarse **en el hilo actual**.

El valor por defecto, para cada hilo, es que estén habilitadas (como si se llamara con ``enabled`` siendo ``true``).

Estas comprobaciones son conservadoras. Esto significa que sólo tendrán éxito en considerar una llamada segura para hilos (y por lo tanto permitir que se produzca) si el motor puede garantizar dicha seguridad.

Debido a esto, puede haber casos en los que el usuario quiera desactivarlas (siendo ``enabled`` ``false``) para que ciertas operaciones vuelvan a estar permitidas. Al hacerlo, el usuario se hace responsable de garantizar la seguridad de los hilos (por ejemplo, mediante :ref:`Mutex<class_Mutex>`) para aquellos objetos que, de otro modo, están protegidos por el motor.

\ **Nota:** Este es un uso avanzado del motor. Se aconseja utilizarlo sólo si sabes lo que estás haciendo y no hay una forma más segura.

\ **Nota:** Esto es útil para los scripts que se ejecutan en objetos **Thread** arbitrarios o en tareas enviadas al :ref:`WorkerThreadPool<class_WorkerThreadPool>`. No se aplica al código que se ejecuta durante el procesamiento de grupos :ref:`Node<class_Node>`, donde las comprobaciones siempre se realizan.

\ **Nota:** Incluso en el caso de haber desactivado las comprobaciones en una tarea :ref:`WorkerThreadPool<class_WorkerThreadPool>`, no es necesario volver a activarlas al final. El motor lo hará.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ callable\: :ref:`Callable<class_Callable>`, priority\: :ref:`Priority<enum_Thread_Priority>` = 1\ ) :ref:`🔗<class_Thread_method_start>`

Inicia un nuevo **Thread** que llama a ``callable``.

Si el método acepta argumentos, se pueden pasar mediante :ref:`Callable.bind()<class_Callable_method_bind>`.

La ``priority`` del **Thread** se puede modificar pasando un valor de la enumeración :ref:`Priority<enum_Thread_Priority>`.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en caso de éxito o :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` en caso de error.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_wait_to_finish:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **wait_to_finish**\ (\ ) :ref:`🔗<class_Thread_method_wait_to_finish>`

Une el **Thread** y espera a que termine. Devuelve la salida del :ref:`Callable<class_Callable>` pasado a :ref:`start()<class_Thread_method_start>`.

Debe utilizarse cuando se desea recuperar el valor devuelto por el método llamado por el **Thread** o antes de liberar la instancia que contiene el **Thread**.

Para determinar si esto se puede llamar sin bloquear el hilo de llamada, comprueba si :ref:`is_alive()<class_Thread_method_is_alive>` es ``false``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
