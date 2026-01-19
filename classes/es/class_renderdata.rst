:github_url: hide

.. _class_RenderData:

RenderData
==========

**Hereda:** :ref:`Object<class_Object>`

**Heredado por:** :ref:`RenderDataExtension<class_RenderDataExtension>`, :ref:`RenderDataRD<class_RenderDataRD>`

Objeto de datos de renderizado abstracto, contiene datos de fotogramas relacionados con el renderizado de un solo fotograma de un viewport.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Abstract render data object, exists for the duration of rendering a single viewport. See also :ref:`RenderDataRD<class_RenderDataRD>`, :ref:`RenderSceneData<class_RenderSceneData>`, and :ref:`RenderSceneDataRD<class_RenderSceneDataRD>`.

\ **Note:** This is an internal rendering server object. Do not instantiate this class from a script.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_camera_attributes<class_RenderData_method_get_camera_attributes>`\ (\ ) |const|       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_environment<class_RenderData_method_get_environment>`\ (\ ) |const|                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` | :ref:`get_render_scene_buffers<class_RenderData_method_get_render_scene_buffers>`\ (\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneData<class_RenderSceneData>`       | :ref:`get_render_scene_data<class_RenderData_method_get_render_scene_data>`\ (\ ) |const|       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RenderData_method_get_camera_attributes:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_camera_attributes**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_camera_attributes>`

Devuelve el :ref:`RID<class_RID>` del objeto de atributos de la cámara en el :ref:`RenderingServer<class_RenderingServer>` que se utiliza para renderizar este viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_environment:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_environment**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_environment>`

Devuelve el :ref:`RID<class_RID>` del objeto de entorno en el :ref:`RenderingServer<class_RenderingServer>` que se utiliza para renderizar este viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_render_scene_buffers:

.. rst-class:: classref-method

:ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **get_render_scene_buffers**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_render_scene_buffers>`

Devuelve el objeto :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` que gestiona los búferes de escena para renderizar este viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderData_method_get_render_scene_data:

.. rst-class:: classref-method

:ref:`RenderSceneData<class_RenderSceneData>` **get_render_scene_data**\ (\ ) |const| :ref:`🔗<class_RenderData_method_get_render_scene_data>`

Devuelve el objeto :ref:`RenderSceneData<class_RenderSceneData>` que gestiona los datos de la escena de este fotograma.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
