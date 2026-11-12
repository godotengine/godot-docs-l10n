:github_url: hide

.. _class_InputEventKey:

InputEventKey
=============

**Hérite de :** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Représente une touche sur un clavier appuyée ou relâchée.

.. rst-class:: classref-introduction-group

Description
-----------

Un événement d'entrée pour des touches sur un clavier. Supporte les appuis de touche, les relâchement de touche et les événements d':ref:`echo<class_InputEventKey_property_echo>`. Il peut également être reçu dans :ref:`Node._unhandled_key_input()<class_Node_private_method__unhandled_key_input>`.

\ **Note :** Les événements reçus du clavier ont généralement toutes leurs propriétés définies. Les associations d'événements ne devraient avoir qu'une seule propriété définie entre :ref:`keycode<class_InputEventKey_property_keycode>`, :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` ou :ref:`unicode<class_InputEventKey_property_unicode>`.

Lorsque des événements sont comparés, les propriétés sont contrôlées selon la priorité suivante - :ref:`keycode<class_InputEventKey_property_keycode>`, :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` et :ref:`unicode<class_InputEventKey_property_unicode>`. Des événements avec la première valeur correspondante seront considérés comme égaux.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation d'InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`echo<class_InputEventKey_property_echo>`                         | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`key_label<class_InputEventKey_property_key_label>`               | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`keycode<class_InputEventKey_property_keycode>`                   | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` | :ref:`location<class_InputEventKey_property_location>`                 | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`pressed<class_InputEventKey_property_pressed>`                   | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`unicode<class_InputEventKey_property_unicode>`                   | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_key_label<class_InputEventKey_method_as_text_key_label>`\ (\ ) |const|                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_keycode<class_InputEventKey_method_as_text_keycode>`\ (\ ) |const|                                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_location<class_InputEventKey_method_as_text_location>`\ (\ ) |const|                                       |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_physical_keycode<class_InputEventKey_method_as_text_physical_keycode>`\ (\ ) |const|                       |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_key_label_with_modifiers<class_InputEventKey_method_get_key_label_with_modifiers>`\ (\ ) |const|               |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_keycode_with_modifiers<class_InputEventKey_method_get_keycode_with_modifiers>`\ (\ ) |const|                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_physical_keycode_with_modifiers<class_InputEventKey_method_get_physical_keycode_with_modifiers>`\ (\ ) |const| |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_InputEventKey_property_echo:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **echo** = ``false`` :ref:`🔗<class_InputEventKey_property_echo>`

.. rst-class:: classref-property-setget

- |void| **set_echo**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_echo**\ (\ )

Si ``true``, la touche était déjà appuyée avant cet événement. Un événement d'écho est un événement de touche répété envoyé lorsque l'utilisateur maintient la touche.

\ **Note :** Le taux auquel les évènement d'écho sont envoyés est généralement d'environ 20 événements par seconde (après avoir maintenu la touche pendant environ une demi-seconde). Cependant, le délai/vitesse de répétition de la touche peut être changé par l'utilisateur ou désactivé entièrement dans les paramètres du système d'exploitation. Pour vous assurer que votre projet fonctionne correctement sur toutes les configurations, ne supposez pas dans le comportement de votre projet que l'utilisateur a une configuration de répétition de touche spécifique.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_key_label:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **key_label** = ``0`` :ref:`🔗<class_InputEventKey_property_key_label>`

.. rst-class:: classref-property-setget

- |void| **set_key_label**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_key_label**\ (\ )

Represents the localized label printed on the key in the current keyboard layout, which corresponds to one of the :ref:`Key<enum_@GlobalScope_Key>` constants or any valid Unicode character. Key labels are meant for key prompts.

For keyboard layouts with a single label on the key, it is equivalent to :ref:`keycode<class_InputEventKey_property_keycode>`.

To get a human-readable representation of the **InputEventKey**, use ``OS.get_keycode_string(event.key_label)`` where ``event`` is the **InputEventKey**.

.. code:: text

    ┌─────┐ ┌─────┐
    │ Q   │ │ Q   │ - "Q" - keycode
    │   Й │ │  ض │ - "Й" and "ض" - key_label
    └─────┘ └─────┘

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_keycode:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **keycode** = ``0`` :ref:`🔗<class_InputEventKey_property_keycode>`

.. rst-class:: classref-property-setget

- |void| **set_keycode**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_keycode**\ (\ )

Latin label printed on the key in the current keyboard layout, which corresponds to one of the :ref:`Key<enum_@GlobalScope_Key>` constants. Key codes are meant for shortcuts expressed with a standard Latin keyboard, such as :kbd:`Ctrl + S` for a "Save" shortcut.

To get a human-readable representation of the **InputEventKey**, use ``OS.get_keycode_string(event.keycode)`` where ``event`` is the **InputEventKey**.

.. code:: text

    ┌─────┐ ┌─────┐
    │ Q   │ │ Q   │ - "Q" - keycode
    │   Й │ │  ض │ - "Й" and "ض" - key_label
    └─────┘ └─────┘

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_location:

.. rst-class:: classref-property

:ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` **location** = ``0`` :ref:`🔗<class_InputEventKey_property_location>`

.. rst-class:: classref-property-setget

- |void| **set_location**\ (\ value\: :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>`\ )
- :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` **get_location**\ (\ )

Représente l'emplacement d'une touche qui a à la fois une version gauche et droite, comme :kbd:`Maj` ou :kbd:`Alt`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_physical_keycode:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **physical_keycode** = ``0`` :ref:`🔗<class_InputEventKey_property_physical_keycode>`

.. rst-class:: classref-property-setget

- |void| **set_physical_keycode**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_physical_keycode**\ (\ )

Represents the physical location of a key on the 101/102-key US QWERTY keyboard, which corresponds to one of the :ref:`Key<enum_@GlobalScope_Key>` constants. Physical key codes meant for game input, such as WASD movement, where only the location of the keys is important.

To get a human-readable representation of the **InputEventKey**, use :ref:`OS.get_keycode_string()<class_OS_method_get_keycode_string>` in combination with :ref:`DisplayServer.keyboard_get_keycode_from_physical()<class_DisplayServer_method_keyboard_get_keycode_from_physical>` or :ref:`DisplayServer.keyboard_get_label_from_physical()<class_DisplayServer_method_keyboard_get_label_from_physical>`:


.. tabs::

 .. code-tab:: gdscript

    func _input(event):
        if event is InputEventKey:
            var keycode = DisplayServer.keyboard_get_keycode_from_physical(event.physical_keycode)
            var label = DisplayServer.keyboard_get_label_from_physical(event.physical_keycode)
            print(OS.get_keycode_string(keycode))
            print(OS.get_keycode_string(label))

 .. code-tab:: csharp

    public override void _Input(InputEvent @event)
    {
        if (@event is InputEventKey inputEventKey)
        {
            var keycode = DisplayServer.KeyboardGetKeycodeFromPhysical(inputEventKey.PhysicalKeycode);
            var label = DisplayServer.KeyboardGetLabelFromPhysical(inputEventKey.PhysicalKeycode);
            GD.Print(OS.GetKeycodeString(keycode));
            GD.Print(OS.GetKeycodeString(label));
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventKey_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Si ``true``, l’état de la clé est pressé. Si ``false``, l’état de la clé est libéré.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_unicode:

.. rst-class:: classref-property

:ref:`int<class_int>` **unicode** = ``0`` :ref:`🔗<class_InputEventKey_property_unicode>`

.. rst-class:: classref-property-setget

- |void| **set_unicode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_unicode**\ (\ )

The key Unicode character code (when relevant), shifted by modifier keys. Unicode character codes for composite characters and complex scripts may not be available unless IME input mode is active. See :ref:`Window.set_ime_active()<class_Window_method_set_ime_active>` for more information. Unicode character codes are meant for text input.

\ **Note:** This property is set by the engine only for a pressed event. If the event is sent by an IME or a virtual keyboard, no corresponding key released event is sent.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_InputEventKey_method_as_text_key_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_key_label**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_key_label>`

Renvoie une représentation en :ref:`String<class_String>` du :ref:`key_label<class_InputEventKey_property_key_label>` de l'évènement et de ses modificateurs.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_keycode:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_keycode**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_keycode>`

Renvoie une représentation en :ref:`String<class_String>` du :ref:`keycode<class_InputEventKey_property_keycode>` de l'évènement et de ses modificateurs.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_location:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_location**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_location>`

Renvoie une représentation en :ref:`String<class_String>` de la :ref:`location<class_InputEventKey_property_location>` de l'évènement. Cela sera une chaîne vide si l'évènement n'est pas spécifique à un emplacement.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_physical_keycode:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_physical_keycode**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_physical_keycode>`

Renvoie une représentation en :ref:`String<class_String>` du :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` de l'évènement et de ses modificateurs.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_key_label_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_key_label_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_key_label_with_modifiers>`

Renvoie le libellé traduit de la touche combinée avec des touches modificatrices telles que :kbd:`Maj` ou :kbd:`Alt`. Voir aussi :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`.

Pour obtenir une représentation lisible de l'**InputEventKey** avec des modificateurs, utilisez ``OS.get_keycode_string(event.get_key_label_with_modifiers())`` où ``event`` est l'**InputEventKey**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_keycode_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_keycode_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_keycode_with_modifiers>`

Renvoie le code de touche Latin combiné avec des touches modificatrices telles que :kbd:`Maj` ou :kbd:`Alt`. Voir aussi :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`.

Pour obtenir une représentation lisible de l'**InputEventKey** avec des modificateurs, utilisez ``OS.get_keycode_string(event.get_keycode_with_modifiers())`` où ``event`` est l'**InputEventKey**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_physical_keycode_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_physical_keycode_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_physical_keycode_with_modifiers>`

Renvoie le code de touche physique combiné avec des touches modificatrices telles que :kbd:`Maj` ou :kbd:`Alt`. Voir aussi :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`.

Pour obtenir une représentation lisible de l'**InputEventKey** avec des modificateurs, utilisez ``OS.get_keycode_string(event.get_physical_keycode_with_modifiers())`` où ``event`` est l'**InputEventKey**.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
