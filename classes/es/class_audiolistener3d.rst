:github_url: hide

.. meta::
	:keywords: sound

.. _class_AudioListener3D:

AudioListener3D
===============

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Sobrescribe los sonidos de localización que se escuchan.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una vez añadido al árbol de escenas y habilitado usando :ref:`make_current()<class_AudioListener3D_method_make_current>`, este nodo sobrescribirá la ubicación desde la que se escuchan los sonidos. Esto puede usarse para escuchar desde una ubicación diferente a la de la :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` | :ref:`doppler_tracking<class_AudioListener3D_property_doppler_tracking>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear_current<class_AudioListener3D_method_clear_current>`\ (\ )                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_listener_transform<class_AudioListener3D_method_get_listener_transform>`\ (\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_current<class_AudioListener3D_method_is_current>`\ (\ ) |const|                         |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`make_current<class_AudioListener3D_method_make_current>`\ (\ )                             |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AudioListener3D_DopplerTracking:

.. rst-class:: classref-enumeration

enum **DopplerTracking**: :ref:`🔗<enum_AudioListener3D_DopplerTracking>`

.. _class_AudioListener3D_constant_DOPPLER_TRACKING_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **DOPPLER_TRACKING_DISABLED** = ``0``

Desactiva la simulación del `efecto Doppler <https://en.wikipedia.org/wiki/Doppler_effect>`__ (por defecto).

.. _class_AudioListener3D_constant_DOPPLER_TRACKING_IDLE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **DOPPLER_TRACKING_IDLE_STEP** = ``1``

Simula el `efecto Doppler <https://en.wikipedia.org/wiki/Doppler_effect>`__ rastreando las posiciones de los objetos que cambian en ``_process``. Los cambios en la velocidad relativa de este escuchador en comparación con esos objetos afectan cómo se percibe el audio (cambiando el :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>` del audio).

.. _class_AudioListener3D_constant_DOPPLER_TRACKING_PHYSICS_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **DOPPLER_TRACKING_PHYSICS_STEP** = ``2``

Simula el `efecto Doppler <https://es.wikipedia.org/wiki/Efecto_Doppler>`__ rastreando las posiciones de los objetos que cambian en ``_physics_process``. Los cambios en la velocidad relativa de este receptor en comparación con esos objetos afectan a cómo se percibe el audio (cambiando el :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>` del audio).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioListener3D_property_doppler_tracking:

.. rst-class:: classref-property

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **doppler_tracking** = ``0`` :ref:`🔗<class_AudioListener3D_property_doppler_tracking>`

.. rst-class:: classref-property-setget

- |void| **set_doppler_tracking**\ (\ value\: :ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>`\ )
- :ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **get_doppler_tracking**\ (\ )

Si no es :ref:`DOPPLER_TRACKING_DISABLED<class_AudioListener3D_constant_DOPPLER_TRACKING_DISABLED>`, este oyente simulará el `efecto Doppler <https://es.wikipedia.org/wiki/Efecto_Doppler>`__ para los objetos modificados en métodos específicos de ``_process``.

\ **Nota:** El efecto Doppler solo se escuchará en los :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` si :ref:`AudioStreamPlayer3D.doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>` no está configurado en :ref:`AudioStreamPlayer3D.DOPPLER_TRACKING_DISABLED<class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioListener3D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ ) :ref:`🔗<class_AudioListener3D_method_clear_current>`

Desactiva la escucha para usar la escucha de la cámara actual en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener3D_method_get_listener_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_listener_transform**\ (\ ) |const| :ref:`🔗<class_AudioListener3D_method_get_listener_transform>`

Returns the listener's global orthonormalized :ref:`Transform3D<class_Transform3D>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener3D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_AudioListener3D_method_is_current>`

Returns ``true`` if the listener was made current using :ref:`make_current()<class_AudioListener3D_method_make_current>`, ``false`` otherwise.

\ **Note:** There may be more than one AudioListener3D marked as "current" in the scene tree, but only the one that was made current last will be used.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener3D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_AudioListener3D_method_make_current>`

Habilita el listener. Esto sobrescribirá el listener de la cámara actual.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
