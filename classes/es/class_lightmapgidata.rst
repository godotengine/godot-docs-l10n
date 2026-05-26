:github_url: hide

.. _class_LightmapGIData:

LightmapGIData
==============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene datos de lightmaps procesados y sondas de objetos dinámicos para :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**LightmapGIData** contiene datos de lightmaps procesados y sondas de objetos dinámicos para :ref:`LightmapGI<class_LightmapGI>`. Se reemplaza cada vez que se procesan los lightmaps en :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------+--------+
   | :ref:`TextureLayered<class_TextureLayered>`                              | :ref:`light_texture<class_LightmapGIData_property_light_texture>`             |        |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] | :ref:`lightmap_textures<class_LightmapGIData_property_lightmap_textures>`     | ``[]`` |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] | :ref:`shadowmask_textures<class_LightmapGIData_property_shadowmask_textures>` | ``[]`` |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_user<class_LightmapGIData_method_add_user>`\ (\ path\: :ref:`NodePath<class_NodePath>`, uv_scale\: :ref:`Rect2<class_Rect2>`, slice_index\: :ref:`int<class_int>`, sub_instance\: :ref:`int<class_int>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`clear_users<class_LightmapGIData_method_clear_users>`\ (\ )                                                                                                                                                    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_user_count<class_LightmapGIData_method_get_user_count>`\ (\ ) |const|                                                                                                                                      |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_user_path<class_LightmapGIData_method_get_user_path>`\ (\ user_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                      |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`is_using_spherical_harmonics<class_LightmapGIData_method_is_using_spherical_harmonics>`\ (\ ) |const|                                                                                                          |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_uses_spherical_harmonics<class_LightmapGIData_method_set_uses_spherical_harmonics>`\ (\ uses_spherical_harmonics\: :ref:`bool<class_bool>`\ )                                                              |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_LightmapGIData_ShadowmaskMode:

.. rst-class:: classref-enumeration

enum **ShadowmaskMode**: :ref:`🔗<enum_LightmapGIData_ShadowmaskMode>`

.. _class_LightmapGIData_constant_SHADOWMASK_MODE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **SHADOWMASK_MODE_NONE** = ``0``

El enmascaramiento de sombras está desactivado. No se creará ninguna textura de máscara de sombra al procesar lightmaps. Las texturas de máscara de sombra existentes se eliminarán durante el baking.

.. _class_LightmapGIData_constant_SHADOWMASK_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **SHADOWMASK_MODE_REPLACE** = ``1``

El shadowmasking está habilitado. Las sombras direccionales que estén fuera de :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` se renderizarán usando la textura de shadowmask. Las sombras que estén dentro del rango se renderizarán usando exclusivamente sombras en tiempo real. Este modo permite sombras en tiempo real más precisas de cerca, sin el potencial efecto de "manchado" que puede ocurrir al usar lightmaps con un tamaño de téxel alto. La desventaja es que cuando la cámara se mueve rápido, la transición entre la luz en tiempo real y el shadowmask puede ser obvia. Además, los objetos que solo tienen sombras procesadas en el shadowmask (y no sombras en tiempo real) no mostrarán ninguna sombra de cerca.

.. _class_LightmapGIData_constant_SHADOWMASK_MODE_OVERLAY:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **SHADOWMASK_MODE_OVERLAY** = ``2``

El shadowmasking está habilitado. Las sombras direccionales se renderizarán con sombras en tiempo real superpuestas sobre la textura de shadowmask. Este modo permite transiciones de sombra más suaves cuando la cámara se mueve rápido, a costa de un potencial efecto de manchado para las sombras direccionales que están de cerca (debido a que la sombra en tiempo real se mezcla con un shadowmask de baja resolución). Los objetos que solo tienen sombras procesadas en el shadowmask (y no sombras en tiempo real) mantendrán sus sombras de cerca.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_LightmapGIData_property_light_texture:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **light_texture** :ref:`🔗<class_LightmapGIData_property_light_texture>`

.. rst-class:: classref-property-setget

- |void| **set_light_texture**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_light_texture**\ (\ )

**Obsoleto:** The lightmap atlas can now contain multiple textures. See :ref:`lightmap_textures<class_LightmapGIData_property_lightmap_textures>`.

La textura del atlas del lightmap generada por el lightmapper.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_property_lightmap_textures:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **lightmap_textures** = ``[]`` :ref:`🔗<class_LightmapGIData_property_lightmap_textures>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_textures**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **get_lightmap_textures**\ (\ )

Las texturas del atlas de lightmaps generadas por el lightmapper.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_property_shadowmask_textures:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **shadowmask_textures** = ``[]`` :ref:`🔗<class_LightmapGIData_property_shadowmask_textures>`

.. rst-class:: classref-property-setget

- |void| **set_shadowmask_textures**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **get_shadowmask_textures**\ (\ )

Las texturas del atlas de máscaras de sombra generadas por el lightmapper.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_LightmapGIData_method_add_user:

.. rst-class:: classref-method

|void| **add_user**\ (\ path\: :ref:`NodePath<class_NodePath>`, uv_scale\: :ref:`Rect2<class_Rect2>`, slice_index\: :ref:`int<class_int>`, sub_instance\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LightmapGIData_method_add_user>`

Añade un objeto que se considera procesado dentro de este **LightmapGIData**.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_clear_users:

.. rst-class:: classref-method

|void| **clear_users**\ (\ ) :ref:`🔗<class_LightmapGIData_method_clear_users>`

Borra todos los objetos que se consideran procesados dentro de este **LightmapGIData**.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_get_user_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_user_count**\ (\ ) |const| :ref:`🔗<class_LightmapGIData_method_get_user_count>`

Devuelve el número de objetos que se consideran procesados dentro de este **LightmapGIData**.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_get_user_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_user_path**\ (\ user_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LightmapGIData_method_get_user_path>`

Devuelve el :ref:`NodePath<class_NodePath>` del objeto procesado en el índice ``user_idx``.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_is_using_spherical_harmonics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_spherical_harmonics**\ (\ ) |const| :ref:`🔗<class_LightmapGIData_method_is_using_spherical_harmonics>`

Si es ``true``, los lightmaps se procesaron con información direccional. Véase también :ref:`LightmapGI.directional<class_LightmapGI_property_directional>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_set_uses_spherical_harmonics:

.. rst-class:: classref-method

|void| **set_uses_spherical_harmonics**\ (\ uses_spherical_harmonics\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_LightmapGIData_method_set_uses_spherical_harmonics>`

Si ``uses_spherical_harmonics`` es ``true``, le dice al motor que trate los datos del lightmap como si se hubieran procesado con información direccional.

\ **Nota:** Cambiar este valor en lightmaps ya procesados no hará que se procesen de nuevo. Esto significa que la apariencia del material se verá incorrecta hasta que los lightmaps se procesen de nuevo, en cuyo caso el valor establecido aquí se descarta ya que todo el recurso **LightmapGIData** es reemplazado por el lightmapper.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
