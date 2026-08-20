:github_url: hide

.. _class_AudioEffectNotchFilter:

AudioEffectNotchFilter
======================

**Hereda:** :ref:`AudioEffectFilter<class_AudioEffectFilter>` **<** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a notch filter to an audio bus.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un filtro de "rechazo de banda" atenúa las frecuencias en :ref:`AudioEffectFilter.cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` y permite que las frecuencias fuera del umbral de frecuencia pasen sin cambios. Es una versión más estrecha y potente de :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>`, y es lo contrario de :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`.

Este filtro puede utilizarse para dar más espacio a otros sonidos que se reproduzcan en esa frecuencia. Debido a la cantidad de atenuación que aplica a las frecuencias, también puede utilizarse para eliminar por completo frecuencias no deseadas.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Buses de audio <../tutorials/audio/audio_buses>`

- :doc:`Efectos de audio <../tutorials/audio/audio_effects>`

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
