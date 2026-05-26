:github_url: hide

.. _class_RenderSceneDataExtension:

RenderSceneDataExtension
========================

**Hereda:** :ref:`RenderSceneData<class_RenderSceneData>` **<** :ref:`Object<class_Object>`

Esta clase permite que se realice una implementación de RenderSceneData en GDExtension.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase permite que se realice una implementación de RenderSceneData en GDExtension.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`_get_cam_projection<class_RenderSceneDataExtension_private_method__get_cam_projection>`\ (\ ) |virtual| |const|                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`_get_cam_transform<class_RenderSceneDataExtension_private_method__get_cam_transform>`\ (\ ) |virtual| |const|                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`_get_uniform_buffer<class_RenderSceneDataExtension_private_method__get_uniform_buffer>`\ (\ ) |virtual| |const|                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`_get_view_count<class_RenderSceneDataExtension_private_method__get_view_count>`\ (\ ) |virtual| |const|                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`_get_view_eye_offset<class_RenderSceneDataExtension_private_method__get_view_eye_offset>`\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`   | :ref:`_get_view_projection<class_RenderSceneDataExtension_private_method__get_view_projection>`\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RenderSceneDataExtension_private_method__get_cam_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **_get_cam_projection**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_cam_projection>`

Implementa esto en GDExtension para devolver la :ref:`Projection<class_Projection>` de la cámara.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_cam_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_cam_transform**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_cam_transform>`

Implementa esto en GDExtension para devolver el :ref:`Transform3D<class_Transform3D>` de la cámara.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_uniform_buffer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_uniform_buffer**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_uniform_buffer>`

Implementa esto en GDExtension para devolver el :ref:`RID<class_RID>` del búfer de variable uniforme que contiene los datos de la escena como un UBO.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_view_count**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_count>`

Implementa esto en GDExtension para devolver el conteo de vistas.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_eye_offset:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_view_eye_offset**\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_eye_offset>`

Implementa esto en GDExtension para devolver el desplazamiento del ojo para la ``view`` dada.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneDataExtension_private_method__get_view_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **_get_view_projection**\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_RenderSceneDataExtension_private_method__get_view_projection>`

Implementa esto en GDExtension para devolver la :ref:`Projection<class_Projection>` de la vista para la ``view`` dada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
