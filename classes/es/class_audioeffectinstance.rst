:github_url: hide

.. _class_AudioEffectInstance:

AudioEffectInstance
===================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AudioEffectSpectrumAnalyzerInstance<class_AudioEffectSpectrumAnalyzerInstance>`

Manipula el audio que recibe para un efecto determinado.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una instancia de efecto de audio manipula el audio que recibe para un efecto determinado. Esta instancia es creada automáticamente por un :ref:`AudioEffect<class_AudioEffect>` cuando se agrega a un bus, y normalmente no debería crearse directamente. Si es necesario, se puede obtener en tiempo de ejecución mediante :ref:`AudioServer.get_bus_effect_instance()<class_AudioServer_method_get_bus_effect_instance>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Buses de audio <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_process<class_AudioEffectInstance_private_method__process>`\ (\ src_buffer\: ``const void*``, dst_buffer\: ``AudioFrame*``, frame_count\: :ref:`int<class_int>`\ ) |virtual| |required| |
   +-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process_silence<class_AudioEffectInstance_private_method__process_silence>`\ (\ ) |virtual| |const|                                                                                     |
   +-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioEffectInstance_private_method__process:

.. rst-class:: classref-method

|void| **_process**\ (\ src_buffer\: ``const void*``, dst_buffer\: ``AudioFrame*``, frame_count\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_AudioEffectInstance_private_method__process>`

Llamado por el :ref:`AudioServer<class_AudioServer>` para procesar este efecto. Cuando :ref:`_process_silence()<class_AudioEffectInstance_private_method__process_silence>` no se sobrescribe o devuelve ``false``, este método se llama únicamente cuando el bus está activo.

\ **Nota:** No es útil sobrescribir este método en GDScript o C#. Solo GDExtension puede aprovecharlo.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectInstance_private_method__process_silence:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process_silence**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioEffectInstance_private_method__process_silence>`

Sobrescribe este método para personalizar el comportamiento del procesamiento de esta instancia de efecto.

Debe devolver ``true`` para forzar que el :ref:`AudioServer<class_AudioServer>` llame siempre a :ref:`_process()<class_AudioEffectInstance_private_method__process>`, incluso si el bus ha sido silenciado o no se puede escuchar de otra manera.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
