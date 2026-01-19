:github_url: hide

.. _class_UniformSetCacheRD:

UniformSetCacheRD
=================

**Hereda:** :ref:`Object<class_Object>`

Gestor de caché de conjuntos uniformes para renderizadores basados en dispositivos de renderizado.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Uniform set cache manager for :ref:`RenderingDevice<class_RenderingDevice>`-based renderers. Provides a way to create a uniform set and reuse it in subsequent calls for as long as the uniform set exists. Uniform set will automatically be cleaned up when dependent objects are freed.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_cache<class_UniformSetCacheRD_method_get_cache>`\ (\ shader\: :ref:`RID<class_RID>`, set\: :ref:`int<class_int>`, uniforms\: :ref:`Array<class_Array>`\[:ref:`RDUniform<class_RDUniform>`\]\ ) |static| |
   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_UniformSetCacheRD_method_get_cache:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_cache**\ (\ shader\: :ref:`RID<class_RID>`, set\: :ref:`int<class_int>`, uniforms\: :ref:`Array<class_Array>`\[:ref:`RDUniform<class_RDUniform>`\]\ ) |static| :ref:`🔗<class_UniformSetCacheRD_method_get_cache>`

Creates/returns a cached uniform set based on the provided uniforms for a given shader.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
