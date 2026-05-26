:github_url: hide

.. _class_InputEventMouseMotion:

InputEventMouseMotion
=====================

**Hérite de :** :ref:`InputEventMouse<class_InputEventMouse>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Représente une mouvement de souris ou de stylo.

.. rst-class:: classref-introduction-group

Description
-----------

Stocke des informations sur un mouvement de souris ou de stylo. Cela comprend la position relative, la position absolue et la vitesse. Voir :ref:`Node._input()<class_Node_private_method__input>`.

\ **Note :** Par défaut, cet événement n'est émis qu'une fois par trame rendue au maximum. Si vous avez besoin d'un suivi des entrées plus précis, définissez :ref:`Input.use_accumulated_input<class_Input_property_use_accumulated_input>` à ``false`` pour faire que les événements soient émis le plus souvent possible. Si vous utilisez InputEventMouseMotion pour dessiner des lignes, envisagez d'aussi utiliser :ref:`Geometry2D.bresenham_line()<class_Geometry2D_method_bresenham_line>` pour éviter les lacunes visibles dans les lignes si l'utilisateur déplace la souris rapidement.

\ **Note :** Cet événement peut être émis même lorsque la souris n'a pas bougé, que ce soit par le système d'exploitation ou par Godot lui-même. Si vous avez vraiment besoin de savoir si la souris a bougé (par exemple pour supprimer l'affichage d'une info-bulle), vous devez vérifier que ``relative.is_zero_approx()`` vaut ``false``.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation d'InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Les coordonnées de la souris <../tutorials/inputs/mouse_and_input_coordinates>`

- `Démo voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`pen_inverted<class_InputEventMouseMotion_property_pen_inverted>`       | ``false``         |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`pressure<class_InputEventMouseMotion_property_pressure>`               | ``0.0``           |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`relative<class_InputEventMouseMotion_property_relative>`               | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_velocity<class_InputEventMouseMotion_property_screen_velocity>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`tilt<class_InputEventMouseMotion_property_tilt>`                       | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`velocity<class_InputEventMouseMotion_property_velocity>`               | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_InputEventMouseMotion_property_pen_inverted:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pen_inverted** = ``false`` :ref:`🔗<class_InputEventMouseMotion_property_pen_inverted>`

.. rst-class:: classref-property-setget

- |void| **set_pen_inverted**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pen_inverted**\ (\ )

Renvoie ``true`` lors de l'utilisation de la gomme (l'autre extrémité) d'un stylet.

\ **Note :** Cette méthode est implémentée sous Linux, macOS et Windows.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_pressure:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure** = ``0.0`` :ref:`🔗<class_InputEventMouseMotion_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure**\ (\ )

Représente la pression que l'utilisateur applique sur le stylo. Va de ``0.0`` à ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_relative**\ (\ )

The mouse position relative to the previous position (position at the last frame).

\ **Note:** Since **InputEventMouseMotion** may only be emitted when the mouse moves, it is not possible to reliably detect when the mouse has stopped moving by checking this property. A separate, short timer may be necessary.

\ **Note:** :ref:`relative<class_InputEventMouseMotion_property_relative>` is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. This means mouse sensitivity will appear different depending on resolution when using :ref:`relative<class_InputEventMouseMotion_property_relative>` in a script that handles mouse aiming with the :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mouse mode. To avoid this, use :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` instead.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_relative>`

.. rst-class:: classref-property-setget

- |void| **set_screen_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_relative**\ (\ )

The unscaled mouse position relative to the previous position in the coordinate system of the screen (position at the last frame).

\ **Note:** Since **InputEventMouseMotion** may only be emitted when the mouse moves, it is not possible to reliably detect when the mouse has stopped moving by checking this property. A separate, short timer may be necessary.

\ **Note:** This coordinate is *not* scaled according to the content scale factor or calls to :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`. This should be preferred over :ref:`relative<class_InputEventMouseMotion_property_relative>` for mouse aiming when using the :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mouse mode, regardless of the project's stretch mode.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_screen_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_screen_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_screen_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_velocity**\ (\ )

The unscaled mouse velocity in pixels per second in screen coordinates. This velocity is *not* scaled according to the content scale factor or calls to :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`.

\ **Note:** In :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mode, :ref:`screen_velocity<class_InputEventMouseMotion_property_screen_velocity>` returns ``(0, 0)`` because the mouse cursor is hidden and locked. Use :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` for mouse aiming using the :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mouse mode.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_tilt:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **tilt** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_tilt>`

.. rst-class:: classref-property-setget

- |void| **set_tilt**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_tilt**\ (\ )

Représente les angles d'inclinaison du stylet. Une valeur en X positive indique une inclinaison à droite. Une valeur en Y positive indique une inclinaison vers l'utilisateur. Va de ``-1.0`` à ``1.0`` pour les deux axes.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseMotion_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouseMotion_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

The mouse velocity in pixels per second.

\ **Note:** :ref:`velocity<class_InputEventMouseMotion_property_velocity>` is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. That means mouse sensitivity may appear different depending on resolution.

\ **Note:** In :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mode, :ref:`velocity<class_InputEventMouseMotion_property_velocity>` returns ``(0, 0)`` because the mouse cursor is hidden and locked. Use :ref:`screen_relative<class_InputEventMouseMotion_property_screen_relative>` for mouse aiming using the :ref:`Input.MOUSE_MODE_CAPTURED<class_Input_constant_MOUSE_MODE_CAPTURED>` mouse mode.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
