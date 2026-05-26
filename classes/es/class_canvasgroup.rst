:github_url: hide

.. _class_CanvasGroup:

CanvasGroup
===========

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Combina varios nodos 2D en una única operación de dibujo.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los nodos hijos :ref:`CanvasItem<class_CanvasItem>` de un **CanvasGroup** se dibujan como un objeto único. Permite, por ejemplo, dibujar nodos 2D traslúcidos superpuestos sin que las secciones solapadas sean más opacas de lo previsto (establece la propiedad :ref:`CanvasItem.self_modulate<class_CanvasItem_property_self_modulate>` en el **CanvasGroup** para lograr este efecto).

\ **Nota:** El **CanvasGroup** utiliza un shader personalizado para leer desde el backbuffer y dibujar a sus hijos. Asignar un :ref:`Material<class_Material>` al **CanvasGroup** anula el shader integrado. Para duplicar el comportamiento del shader integrado en un :ref:`Shader<class_Shader>` personalizado, utiliza lo siguiente:

::

    shader_type canvas_item;
    render_mode unshaded;

    uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

    void fragment() {
        vec4 c = textureLod(screen_texture, SCREEN_UV, 0.0);

        if (c.a > 0.0001) {
            c.rgb /= c.a;
        }

        COLOR *= c;
    }

\ **Nota:** Dado que tanto **CanvasGroup** como :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` utilizan el backbuffer, los hijos de un **CanvasGroup** que tengan su :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` establecido en cualquier valor distinto de :ref:`CanvasItem.CLIP_CHILDREN_DISABLED<class_CanvasItem_constant_CLIP_CHILDREN_DISABLED>` no funcionarán correctamente.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`clear_margin<class_CanvasGroup_property_clear_margin>` | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`     | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>`   | ``false`` |
   +---------------------------+--------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CanvasGroup_property_clear_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **clear_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_clear_margin>`

.. rst-class:: classref-property-setget

- |void| **set_clear_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_clear_margin**\ (\ )

Establece el tamaño del margen utilizado para expandir el área de borrado de este **CanvasGroup**. Esto expande el área del búfer de fondo que utilizará el **CanvasGroup**. Un margen menor reducirá el área del búfer de fondo utilizada, lo que puede mejorar el rendimiento; sin embargo, si :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>` está habilitado, un margen pequeño puede provocar errores de mipmap en el borde del **CanvasGroup**. Por lo tanto, debe dejarse lo más pequeño posible, pero debe aumentarse si aparecen artefactos en los bordes del grupo de lienzos.

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_fit_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **fit_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_fit_margin>`

.. rst-class:: classref-property-setget

- |void| **set_fit_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fit_margin**\ (\ )

Establece el tamaño de un margen utilizado para expandir el rectángulo dibujable de este **CanvasGroup**. El tamaño del **CanvasGroup** se determina ajustando un rectángulo alrededor de sus elementos secundarios y luego expandiendo ese rectángulo mediante :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`. Esto aumenta tanto el área del backbuffer utilizada como el área cubierta por el **CanvasGroup**, lo que puede reducir el rendimiento. Este margen debe mantenerse lo más pequeño posible y solo debe expandirse cuando se necesite un tamaño mayor (por ejemplo, para efectos de sombreado personalizados).

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_use_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_mipmaps** = ``false`` :ref:`🔗<class_CanvasGroup_property_use_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_use_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_mipmaps**\ (\ )

Si es ``true``, calcula los mipmaps para el backbuffer antes de dibujar el **CanvasGroup** para que los mipmaps se puedan usar en un :ref:`ShaderMaterial<class_ShaderMaterial>` personalizado adjunto al **CanvasGroup**. La generación de mipmaps tiene un coste de rendimiento, por lo que no debe habilitarse a menos que sea necesario.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
