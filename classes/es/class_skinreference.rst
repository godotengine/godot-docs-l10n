:github_url: hide

.. _class_SkinReference:

SkinReference
=============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un objeto contenedor con conteo de referencias para un RID de esqueleto usado en el :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

An internal object containing a mapping from a :ref:`Skin<class_Skin>` used within the context of a particular :ref:`MeshInstance3D<class_MeshInstance3D>` to refer to the skeleton's :ref:`RID<class_RID>` in the RenderingServer.

See also :ref:`MeshInstance3D.get_skin_reference()<class_MeshInstance3D_method_get_skin_reference>` and :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`.

Note that despite the similar naming, the skeleton RID used in the :ref:`RenderingServer<class_RenderingServer>` does not have a direct one-to-one correspondence to a :ref:`Skeleton3D<class_Skeleton3D>` node.

In particular, a :ref:`Skeleton3D<class_Skeleton3D>` node with no :ref:`MeshInstance3D<class_MeshInstance3D>` children may be unknown to the :ref:`RenderingServer<class_RenderingServer>`.

On the other hand, a :ref:`Skeleton3D<class_Skeleton3D>` with multiple :ref:`MeshInstance3D<class_MeshInstance3D>` nodes which each have different :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>` objects may have multiple SkinReference instances (and hence, multiple skeleton :ref:`RID<class_RID>`\ s).

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_skeleton<class_SkinReference_method_get_skeleton>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`Skin<class_Skin>` | :ref:`get_skin<class_SkinReference_method_get_skin>`\ (\ ) |const|         |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SkinReference_method_get_skeleton:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skeleton>`

Devuelve el :ref:`RID<class_RID>` propiedad de esta SkinReference, tal como lo devuelve :ref:`RenderingServer.skeleton_create()<class_RenderingServer_method_skeleton_create>`.

.. rst-class:: classref-item-separator

----

.. _class_SkinReference_method_get_skin:

.. rst-class:: classref-method

:ref:`Skin<class_Skin>` **get_skin**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skin>`

Dvuelve la :ref:`Skin<class_Skin>` conectado a este SkinReference. En el caso de :ref:`MeshInstance3D<class_MeshInstance3D>` sin :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>` asignado, esta hará referencia a una :ref:`Skin<class_Skin>` predeterminada interna propiedad de ese :ref:`MeshInstance3D<class_MeshInstance3D>`.

Ten en cuenta que un único :ref:`Skin<class_Skin>` puede tener más de un **SkinReference** en el caso de que sea compartida por mallas en múltiples nodos :ref:`Skeleton3D<class_Skeleton3D>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
