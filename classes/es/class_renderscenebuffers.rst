:github_url: hide

.. _class_RenderSceneBuffers:

RenderSceneBuffers
==================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`RenderSceneBuffersExtension<class_RenderSceneBuffersExtension>`, :ref:`RenderSceneBuffersRD<class_RenderSceneBuffersRD>`

Objeto de búferes de escena abstracto, creado para cada viewport para el que se realiza el renderizado 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Abstract scene buffers object, created for each viewport for which 3D rendering is done. It manages any additional buffers used during rendering and will discard buffers when the viewport is resized. See also :ref:`RenderSceneBuffersRD<class_RenderSceneBuffersRD>`.

\ **Note:** This is an internal rendering server object. Do not instantiate this class from a script.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`configure<class_RenderSceneBuffers_method_configure>`\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RenderSceneBuffers_method_configure:

.. rst-class:: classref-method

|void| **configure**\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) :ref:`🔗<class_RenderSceneBuffers_method_configure>`

Este método es llamado por el servidor de renderizado cuando la configuración del viewport asociado cambia. Descartará los búferes antiguos y recreará los búferes internos utilizados.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
