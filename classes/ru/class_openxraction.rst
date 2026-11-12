:github_url: hide

.. _class_OpenXRAction:

OpenXRAction
============

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Действие OpenXR.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот ресурс определяет действие OpenXR. Действия могут использоваться как для входов (кнопки, джойстики, триггеры и т. д.), так и для выходов (тактильные сигналы).

OpenXR выполняет автоматическое преобразование между типом действия и типом ввода, когда это возможно. Аналоговый триггер, привязанный к логическому действию, таким образом вернет ``false``, если триггер нажат, и ``true``, если он нажат полностью.

Действия не привязаны напрямую к определенным устройствам, вместо этого OpenXR распознает ограниченное количество путей верхнего уровня, которые идентифицируют устройства по использованию. Мы можем ограничить, к каким устройствам может быть привязано действие, этими путями верхнего уровня. Например, действие, которое должно использоваться только для ручных контроллеров, может иметь связанные с ними пути верхнего уровня "/user/hand/left" и "/user/hand/right". Дополнительную информацию о путях верхнего уровня см. в разделе `зарезервированный путь в спецификации OpenXR <https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-reserved>`__.

Обратите внимание, что для регистрации действия используется имя ресурса.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------+-------------------------+
   | :ref:`ActionType<enum_OpenXRAction_ActionType>`   | :ref:`action_type<class_OpenXRAction_property_action_type>`       | ``1``                   |
   +---------------------------------------------------+-------------------------------------------------------------------+-------------------------+
   | :ref:`String<class_String>`                       | :ref:`localized_name<class_OpenXRAction_property_localized_name>` | ``""``                  |
   +---------------------------------------------------+-------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`toplevel_paths<class_OpenXRAction_property_toplevel_paths>` | ``PackedStringArray()`` |
   +---------------------------------------------------+-------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_OpenXRAction_ActionType:

.. rst-class:: classref-enumeration

enum **ActionType**: :ref:`🔗<enum_OpenXRAction_ActionType>`

.. _class_OpenXRAction_constant_OPENXR_ACTION_BOOL:

.. rst-class:: classref-enumeration-constant

:ref:`ActionType<enum_OpenXRAction_ActionType>` **OPENXR_ACTION_BOOL** = ``0``

Это действие возвращает логическое значение.

.. _class_OpenXRAction_constant_OPENXR_ACTION_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ActionType<enum_OpenXRAction_ActionType>` **OPENXR_ACTION_FLOAT** = ``1``

Это действие предоставляет плавающее значение между ``0.0`` и ``1.0`` для любого аналогового входа, такого как триггеры.

.. _class_OpenXRAction_constant_OPENXR_ACTION_VECTOR2:

.. rst-class:: classref-enumeration-constant

:ref:`ActionType<enum_OpenXRAction_ActionType>` **OPENXR_ACTION_VECTOR2** = ``2``

Это действие предоставляет значение :ref:`Vector2<class_Vector2>` и может быть привязано к встроенным трекпадам и джойстикам.

.. _class_OpenXRAction_constant_OPENXR_ACTION_POSE:

.. rst-class:: classref-enumeration-constant

:ref:`ActionType<enum_OpenXRAction_ActionType>` **OPENXR_ACTION_POSE** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OpenXRAction_property_action_type:

.. rst-class:: classref-property

:ref:`ActionType<enum_OpenXRAction_ActionType>` **action_type** = ``1`` :ref:`🔗<class_OpenXRAction_property_action_type>`

.. rst-class:: classref-property-setget

- |void| **set_action_type**\ (\ value\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ )
- :ref:`ActionType<enum_OpenXRAction_ActionType>` **get_action_type**\ (\ )

Тип действия.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAction_property_localized_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **localized_name** = ``""`` :ref:`🔗<class_OpenXRAction_property_localized_name>`

.. rst-class:: classref-property-setget

- |void| **set_localized_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_localized_name**\ (\ )

Локализованное описание этого действия.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRAction_property_toplevel_paths:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **toplevel_paths** = ``PackedStringArray()`` :ref:`🔗<class_OpenXRAction_property_toplevel_paths>`

.. rst-class:: classref-property-setget

- |void| **set_toplevel_paths**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_toplevel_paths**\ (\ )

Набор путей верхнего уровня, к которым может быть привязано это действие.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
