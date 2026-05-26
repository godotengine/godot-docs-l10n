:github_url: hide

.. _class_RenderSceneData:

RenderSceneData
===============

**Hereda:** :ref:`Object<class_Object>`

**Heredado por:** :ref:`RenderSceneDataExtension<class_RenderSceneDataExtension>`, :ref:`RenderSceneDataRD<class_RenderSceneDataRD>`

Objeto de datos de renderizado abstracto, contiene datos de escena relacionados con el renderizado de un único fotograma de un viewport.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Abstract scene data object, exists for the duration of rendering a single viewport. See also :ref:`RenderSceneDataRD<class_RenderSceneDataRD>`, :ref:`RenderData<class_RenderData>`, and :ref:`RenderDataRD<class_RenderDataRD>`.

\ **Note:** This is an internal rendering server object. Do not instantiate this class from a script.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`get_cam_projection<class_RenderSceneData_method_get_cam_projection>`\ (\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_cam_transform<class_RenderSceneData_method_get_cam_transform>`\ (\ ) |const|                                   |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`get_uniform_buffer<class_RenderSceneData_method_get_uniform_buffer>`\ (\ ) |const|                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_view_count<class_RenderSceneData_method_get_view_count>`\ (\ ) |const|                                         |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`get_view_eye_offset<class_RenderSceneData_method_get_view_eye_offset>`\ (\ view\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`get_view_projection<class_RenderSceneData_method_get_view_projection>`\ (\ view\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RenderSceneData_method_get_cam_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_cam_projection**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_cam_projection>`

Devuelve la proyección de cámara utilizada para renderizar este fotograma.

\ **Nota:** Si se renderiza más de una vista, esto devolverá una proyección combinada.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_cam_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_cam_transform**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_cam_transform>`

Devuelve la transformación de cámara utilizada para renderizar este fotograma.

\ **Nota:** Si se renderiza más de una vista, esto devolverá una transformación centrada.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_uniform_buffer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_uniform_buffer**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_uniform_buffer>`

Devuelve el :ref:`RID<class_RID>` del búfer de variable uniforme que contiene los datos de la escena como un UBO.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_count>`

Devuelve el número de vistas que se están renderizando.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_eye_offset:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_view_eye_offset**\ (\ view\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_eye_offset>`

Devuelve el desplazamiento del ojo por vista utilizado para renderizar este fotograma. Este es el desplazamiento entre nuestra transformación de cámara y la transformación del ojo.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneData_method_get_view_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_view_projection**\ (\ view\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RenderSceneData_method_get_view_projection>`

Devuelve la proyección de la vista por vista utilizada para renderizar este fotograma.

\ **Nota:** Si se renderiza una sola vista, esto devuelve la proyección de la cámara. Si se renderiza más de una vista, esto devolverá una proyección para la vista dada incluyendo el desplazamiento del ojo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
