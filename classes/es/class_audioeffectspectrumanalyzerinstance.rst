:github_url: hide

.. _class_AudioEffectSpectrumAnalyzerInstance:

AudioEffectSpectrumAnalyzerInstance
===================================

**Hereda:** :ref:`AudioEffectInstance<class_AudioEffectInstance>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Instancia consultable de un :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

La parte en tiempo de ejecución de un :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>`, que puede utilizarse para consultar la magnitud de un rango de frecuencias en su bus anfitrión.

Se puede obtener una instancia de esta clase mediante :ref:`AudioServer.get_bus_effect_instance()<class_AudioServer_method_get_bus_effect_instance>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Visualizador de Espectro de Audio <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_magnitude_for_frequency_range<class_AudioEffectSpectrumAnalyzerInstance_method_get_magnitude_for_frequency_range>`\ (\ from_hz\: :ref:`float<class_float>`, to_hz\: :ref:`float<class_float>`, mode\: :ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` = 1\ ) |const| |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode:

.. rst-class:: classref-enumeration

enum **MagnitudeMode**: :ref:`🔗<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>`

.. _class_AudioEffectSpectrumAnalyzerInstance_constant_MAGNITUDE_AVERAGE:

.. rst-class:: classref-enumeration-constant

:ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` **MAGNITUDE_AVERAGE** = ``0``

Usa el valor promedio en todo el rango de frecuencia como magnitud.

.. _class_AudioEffectSpectrumAnalyzerInstance_constant_MAGNITUDE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` **MAGNITUDE_MAX** = ``1``

Usa el valor máximo del rango de frecuencia como magnitud.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioEffectSpectrumAnalyzerInstance_method_get_magnitude_for_frequency_range:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_magnitude_for_frequency_range**\ (\ from_hz\: :ref:`float<class_float>`, to_hz\: :ref:`float<class_float>`, mode\: :ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` = 1\ ) |const| :ref:`🔗<class_AudioEffectSpectrumAnalyzerInstance_method_get_magnitude_for_frequency_range>`

Devuelve la magnitud de las frecuencias comprendidas entre ``from_hz`` y ``to_hz`` en energía lineal, como un Vector2. El componente ``x`` del valor devuelto representa el canal estéreo izquierdo, e ``y`` representa el canal derecho.

\ ``mode`` determina cómo se procesará el rango de frecuencias.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
