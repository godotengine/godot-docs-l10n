:github_url: hide

.. _class_OpenXRAnchorTracker:

OpenXRAnchorTracker
===================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRSpatialEntityTracker<class_OpenXRSpatialEntityTracker>` **<** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Positional tracker for our spatial entity anchor extension.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Positional tracker for our OpenXR spatial entity anchor extension, it tracks a user defined location in real space and maps it to our virtual space.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`uuid<class_OpenXRAnchorTracker_property_uuid>` | ``""`` |
   +-----------------------------+------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_uuid<class_OpenXRAnchorTracker_method_has_uuid>`\ (\ ) |const| |
   +-------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_OpenXRAnchorTracker_signal_uuid_changed:

.. rst-class:: classref-signal

**uuid_changed**\ (\ ) :ref:`🔗<class_OpenXRAnchorTracker_signal_uuid_changed>`

Emitted when the UUID for this anchor was changed.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OpenXRAnchorTracker_property_uuid:

.. rst-class:: classref-property

:ref:`String<class_String>` **uuid** = ``""`` :ref:`🔗<class_OpenXRAnchorTracker_property_uuid>`

.. rst-class:: classref-property-setget

- |void| **set_uuid**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_uuid**\ (\ )

The UUID provided for persistent anchors.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRAnchorTracker_method_has_uuid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_uuid**\ (\ ) |const| :ref:`🔗<class_OpenXRAnchorTracker_method_has_uuid>`

Devuelve ``true`` si se ha establecido un UUID distinto de cero.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
