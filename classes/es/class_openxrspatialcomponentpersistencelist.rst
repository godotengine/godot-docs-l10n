:github_url: hide

.. _class_OpenXRSpatialComponentPersistenceList:

OpenXRSpatialComponentPersistenceList
=====================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Objeto para almacenar los datos de resultado de la consulta de persistencia.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Objeto para almacenar los datos de resultado de la consulta de persistencia al llamar a :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_persistent_state<class_OpenXRSpatialComponentPersistenceList_method_get_persistent_state>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_persistent_uuid<class_OpenXRSpatialComponentPersistenceList_method_get_persistent_uuid>`\ (\ index\: :ref:`int<class_int>`\ ) |const|   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRSpatialComponentPersistenceList_method_get_persistent_state:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_persistent_state**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPersistenceList_method_get_persistent_state>`

Devuelve el estado persistente (``XrSpatialPersistenceStateEXT``) de la entidad en este ``index``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentPersistenceList_method_get_persistent_uuid:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_persistent_uuid**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPersistenceList_method_get_persistent_uuid>`

Devuelve el uuid persistente de la entidad en este ``index``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
