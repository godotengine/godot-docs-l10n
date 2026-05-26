:github_url: hide

.. _class_GDExtension:

GDExtension
===========

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A native library for GDExtension.

.. rst-class:: classref-introduction-group

Description
-----------

The **GDExtension** resource type represents a `shared library <https://en.wikipedia.org/wiki/Shared_library>`__ which can expand the functionality of the engine. The :ref:`GDExtensionManager<class_GDExtensionManager>` singleton is responsible for loading, reloading, and unloading **GDExtension** resources.

\ **Note:** GDExtension itself is not a scripting language and has no relation to :ref:`GDScript<class_GDScript>` resources.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Vue d'ensemble GDExtension <../engine_details/engine_api/gdextension/what_is_gdextension>`

- :doc:`Exemple de GDExtension en C++ <../tutorials/scripting/cpp/gdextension_cpp_example>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` | :ref:`get_minimum_library_initialization_level<class_GDExtension_method_get_minimum_library_initialization_level>`\ (\ ) |const| |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_library_open<class_GDExtension_method_is_library_open>`\ (\ ) |const|                                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_GDExtension_InitializationLevel:

.. rst-class:: classref-enumeration

enum **InitializationLevel**: :ref:`🔗<enum_GDExtension_InitializationLevel>`

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_CORE:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_CORE** = ``0``

The library is initialized at the same time as the core features of the engine.

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_SERVERS:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_SERVERS** = ``1``

The library is initialized at the same time as the engine's servers (such as :ref:`RenderingServer<class_RenderingServer>` or :ref:`PhysicsServer3D<class_PhysicsServer3D>`).

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_SCENE** = ``2``

The library is initialized at the same time as the engine's scene-related classes.

.. _class_GDExtension_constant_INITIALIZATION_LEVEL_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **INITIALIZATION_LEVEL_EDITOR** = ``3``

The library is initialized at the same time as the engine's editor classes. Only happens when loading the GDExtension in the editor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GDExtension_method_get_minimum_library_initialization_level:

.. rst-class:: classref-method

:ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` **get_minimum_library_initialization_level**\ (\ ) |const| :ref:`🔗<class_GDExtension_method_get_minimum_library_initialization_level>`

Returns the lowest level required for this extension to be properly initialized (see the :ref:`InitializationLevel<enum_GDExtension_InitializationLevel>` enum).

.. rst-class:: classref-item-separator

----

.. _class_GDExtension_method_is_library_open:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_library_open**\ (\ ) |const| :ref:`🔗<class_GDExtension_method_is_library_open>`

Returns ``true`` if this extension's library has been opened.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
