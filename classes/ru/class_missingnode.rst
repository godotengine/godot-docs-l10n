:github_url: hide

.. _class_MissingNode:

MissingNode
===========

**Наследует:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Внутренний класс редактора, предназначенный для хранения данных нераспознанных узлов.

.. rst-class:: classref-introduction-group

Описание
----------------

Это внутренний класс редактора, предназначенный для хранения данных узлов неизвестного типа (скорее всего, этот тип был предоставлен расширением, которое больше не загружено). Его нельзя вручную создать или поместить в сцену.

\ **Предупреждение:** Игнорируйте отсутствующие узлы, если вы не знаете, что делаете. Существующие свойства отсутствующего узла можно свободно изменять в коде, независимо от того, какой тип им предназначен.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`original_class<class_MissingNode_property_original_class>`             |
   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`original_scene<class_MissingNode_property_original_scene>`             |
   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`recording_properties<class_MissingNode_property_recording_properties>` |
   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`recording_signals<class_MissingNode_property_recording_signals>`       |
   +-----------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_MissingNode_property_original_class:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_class** :ref:`🔗<class_MissingNode_property_original_class>`

.. rst-class:: classref-property-setget

- |void| **set_original_class**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_class**\ (\ )

Имя класса, которым должен был быть этот узел (см. :ref:`Object.get_class()<class_Object_method_get_class>`).

.. rst-class:: classref-item-separator

----

.. _class_MissingNode_property_original_scene:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_scene** :ref:`🔗<class_MissingNode_property_original_scene>`

.. rst-class:: classref-property-setget

- |void| **set_original_scene**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_scene**\ (\ )

Возвращает путь к сцене, экземпляром которой изначально был этот узел.

.. rst-class:: classref-item-separator

----

.. _class_MissingNode_property_recording_properties:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recording_properties** :ref:`🔗<class_MissingNode_property_recording_properties>`

.. rst-class:: classref-property-setget

- |void| **set_recording_properties**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recording_properties**\ (\ )

Если ``true``, позволяет устанавливать новые свойства вместе с существующими. Если ``false``, можно устанавливать только значения существующих свойств, и новые свойства не могут быть добавлены.

.. rst-class:: classref-item-separator

----

.. _class_MissingNode_property_recording_signals:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recording_signals** :ref:`🔗<class_MissingNode_property_recording_signals>`

.. rst-class:: classref-property-setget

- |void| **set_recording_signals**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recording_signals**\ (\ )

Если ``true``, разрешается подключение новых сигналов наряду с существующими. Если ``false``, можно подключать только существующие сигналы, новые сигналы добавлять нельзя.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
