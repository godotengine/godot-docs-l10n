:github_url: hide

.. _class_LightmapperRD:

LightmapperRD
=============

**Hereda:** :ref:`Lightmapper<class_Lightmapper>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

El lightmapper incorporado basado en GPU para usar con :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

LightmapperRD ("RD" stands for :ref:`RenderingDevice<class_RenderingDevice>`) is the built-in GPU-based lightmapper for use with :ref:`LightmapGI<class_LightmapGI>`. On most dedicated GPUs, it can bake lightmaps much faster than most CPU-based lightmappers. LightmapperRD uses compute shaders to bake lightmaps, so it does not require CUDA or OpenCL libraries to be installed to be usable.

\ **Note:** This lightmapper requires the GPU to support the :ref:`RenderingDevice<class_RenderingDevice>` backend (Forward+ and Mobile renderers). When using the Compatibility renderer, baking will use a temporary :ref:`RenderingDevice<class_RenderingDevice>`. Support for :ref:`RenderingDevice<class_RenderingDevice>` is not required to *render* lightmaps that were already baked beforehand.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
