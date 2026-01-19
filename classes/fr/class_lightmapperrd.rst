:github_url: hide

.. _class_LightmapperRD:

LightmapperRD
=============

**Hérite de :** :ref:`Lightmapper<class_Lightmapper>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Le lightmapper intégré basé sur le GPU à utiliser avec :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Description
-----------

LightmapperRD ("RD" stands for :ref:`RenderingDevice<class_RenderingDevice>`) is the built-in GPU-based lightmapper for use with :ref:`LightmapGI<class_LightmapGI>`. On most dedicated GPUs, it can bake lightmaps much faster than most CPU-based lightmappers. LightmapperRD uses compute shaders to bake lightmaps, so it does not require CUDA or OpenCL libraries to be installed to be usable.

\ **Note:** This lightmapper requires the GPU to support the :ref:`RenderingDevice<class_RenderingDevice>` backend (Forward+ and Mobile renderers). When using the Compatibility renderer, baking will use a temporary :ref:`RenderingDevice<class_RenderingDevice>`. Support for :ref:`RenderingDevice<class_RenderingDevice>` is not required to *render* lightmaps that were already baked beforehand.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
