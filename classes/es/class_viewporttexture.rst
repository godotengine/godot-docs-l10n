:github_url: hide

.. _class_ViewportTexture:

ViewportTexture
===============

**Hereda:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona el contenido de un :ref:`Viewport<class_Viewport>` como una textura dinámica.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A **ViewportTexture** provides the content of a :ref:`Viewport<class_Viewport>` as a dynamic :ref:`Texture2D<class_Texture2D>`. This can be used to combine the rendering of :ref:`Control<class_Control>`, :ref:`Node2D<class_Node2D>` and :ref:`Node3D<class_Node3D>` nodes. For example, you can use this texture to display a 3D scene inside a :ref:`TextureRect<class_TextureRect>`, or a 2D overlay in a :ref:`Sprite3D<class_Sprite3D>`.

To get a **ViewportTexture** in code, use the :ref:`Viewport.get_texture()<class_Viewport_method_get_texture>` method on the target viewport.

\ **Note:** A **ViewportTexture** is always local to its scene (see :ref:`Resource.resource_local_to_scene<class_Resource_property_resource_local_to_scene>`). If the scene root is not ready, it may return incorrect data (see :ref:`Node.ready<class_Node_signal_ready>`).

\ **Note:** Instantiating scenes containing a high-resolution **ViewportTexture** may cause noticeable stutter.

\ **Note:** When using a :ref:`Viewport<class_Viewport>` with :ref:`Viewport.use_hdr_2d<class_Viewport_property_use_hdr_2d>` set to ``true``, the returned texture will be an HDR image that uses linear encoding. This may look darker than normal when displayed directly on screen. To convert to nonlinear sRGB encoding, you can do the following:

::

    img.convert(Image.FORMAT_RGBA8)
    img.linear_to_srgb()

\ **Note:** Some nodes such as :ref:`Decal<class_Decal>`, :ref:`Light3D<class_Light3D>`, and :ref:`PointLight2D<class_PointLight2D>` do not support using **ViewportTexture** directly. To use texture data from a **ViewportTexture** in these nodes, you need to create an :ref:`ImageTexture<class_ImageTexture>` by calling :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` on the **ViewportTexture** and passing the result to :ref:`ImageTexture.create_from_image()<class_ImageTexture_method_create_from_image>`. This conversion is a slow operation, so it should not be performed every frame.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demostración GUI en el Viewport 3D <https://godotengine.org/asset-library/asset/2807>`__

- `Demo de Viewport 3D en 2D <https://godotengine.org/asset-library/asset/2804>`__

- `2D in 3D Viewport Demo <https://godotengine.org/asset-library/asset/2803>`__

- `Demo de Escalado de Resolución en 3D <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`viewport_path<class_ViewportTexture_property_viewport_path>` | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ViewportTexture_property_viewport_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **viewport_path** = ``NodePath("")`` :ref:`🔗<class_ViewportTexture_property_viewport_path>`

.. rst-class:: classref-property-setget

- |void| **set_viewport_path_in_scene**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_viewport_path_in_scene**\ (\ )

La ruta al nodo :ref:`Viewport<class_Viewport>` a mostrar. Es relativa a la raíz de la escena local (véase :ref:`Resource.get_local_scene()<class_Resource_method_get_local_scene>`), **no** a los nodos que usan esta textura.

\ **Nota:** En el editor, esta ruta se actualiza automáticamente cuando el viewport objetivo o uno de sus ancestros es renombrado o movido. En tiempo de ejecución, esta ruta podría no actualizarse automáticamente si la raíz de la escena no puede ser encontrada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
