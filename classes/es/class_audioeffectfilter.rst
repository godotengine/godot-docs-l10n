:github_url: hide

.. _class_AudioEffectFilter:

AudioEffectFilter
=================

**Hereda:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>`, :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`, :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`, :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`, :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>`, :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>`, :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`

Clase base para filtros. Usa efectos que hereden de esta clase en lugar de usarla directamente.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un "filtro" controla la ganancia de las frecuencias utilizando :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` como umbral de frecuencia. Los filtros pueden ayudar a dar espacio a cada sonido y crear efectos interesantes.



Existen diferentes tipos de filtros que heredan de esta clase:



Filtros de estantería: :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` y :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`\ 



Filtros pasa banda y de rechazo de banda: :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`, :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>` y :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`\ 



Filtros pasa bajos y pasa altos: :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>` y :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Buses de audio <../tutorials/audio/audio_buses>`

- :doc:`Efectos de audio <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                        | :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` | ``2000.0`` |
   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` | :ref:`db<class_AudioEffectFilter_property_db>`               | ``0``      |
   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                        | :ref:`gain<class_AudioEffectFilter_property_gain>`           | ``1.0``    |
   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                        | :ref:`resonance<class_AudioEffectFilter_property_resonance>` | ``0.5``    |
   +--------------------------------------------------+--------------------------------------------------------------+------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AudioEffectFilter_FilterDB:

.. rst-class:: classref-enumeration

enum **FilterDB**: :ref:`🔗<enum_AudioEffectFilter_FilterDB>`

.. _class_AudioEffectFilter_constant_FILTER_6DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_6DB** = ``0``

Corte a 6 dB por octava. Una octava es el doble de la frecuencia por encima de :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, o la mitad de la frecuencia por debajo de :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_12DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_12DB** = ``1``

Corte a 12 dB por octava. Una octava es el doble de la frecuencia por encima de :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, o la mitad de la frecuencia por debajo de :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_18DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_18DB** = ``2``

Corte a 18 dB por octava. Una octava es el doble de la frecuencia por encima de :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, o la mitad de la frecuencia por debajo de :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_24DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_24DB** = ``3``

Corte a 24 dB por octava. Una octava es el doble de la frecuencia por encima de :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, o la mitad de la frecuencia por debajo de :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioEffectFilter_property_cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **cutoff_hz** = ``2000.0`` :ref:`🔗<class_AudioEffectFilter_property_cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_cutoff**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cutoff**\ (\ )

Umbral de frecuencia para el filtro, en Hz. El valor puede oscilar entre 1 y 20500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_db:

.. rst-class:: classref-property

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **db** = ``0`` :ref:`🔗<class_AudioEffectFilter_property_db>`

.. rst-class:: classref-property-setget

- |void| **set_db**\ (\ value\: :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>`\ )
- :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **get_db**\ (\ )

Steepness of the cutoff curve in dB per octave (twice the frequency above :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`, or half the frequency below :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`), also known as the "order" of the filter. Higher orders have a more aggressive cutoff.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **gain** = ``1.0`` :ref:`🔗<class_AudioEffectFilter_property_gain>`

.. rst-class:: classref-property-setget

- |void| **set_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gain**\ (\ )

Ganancia de las frecuencias afectadas por el filtro. Esta propiedad solo está disponible para :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` y :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`. El valor puede estar entre 0 y 4.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_resonance:

.. rst-class:: classref-property

:ref:`float<class_float>` **resonance** = ``0.5`` :ref:`🔗<class_AudioEffectFilter_property_resonance>`

.. rst-class:: classref-property-setget

- |void| **set_resonance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_resonance**\ (\ )

Ganancia en o directamente junto al umbral de frecuencia :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`. El valor puede estar entre 0 y 1.

Su comportamiento exacto depende del tipo de filtro seleccionado:

- Para los filtros de estantería, acentúa o atenúa el orden aumentando las frecuencias justo al lado de la frecuencia :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` y reduciendo las frecuencias del lado opuesto.

- Para los filtros pasa banda y de rechazo de banda, amplía o estrecha el filtro en el umbral de frecuencia :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

- Para los filtros pasa bajos y pasa altos, aumenta o reduce las frecuencias en el umbral de frecuencia :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
