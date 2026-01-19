:github_url: hide

.. _class_LimitAngularVelocityModifier3D:

LimitAngularVelocityModifier3D
==============================

**Наследует:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Ограничить угловую скорость вращения кости.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот модификатор ограничивает угловую скорость вращения костей, сравнивая положения между предыдущим и текущим кадрами.

Вы можете добавлять цепочки костей, указывая их корневые и конечные кости, а затем добавлять кости между ними в список. Модификатор обрабатывает либо этот список, либо кости, исключая кости из списка, в зависимости от параметра :ref:`exclude<class_LimitAngularVelocityModifier3D_property_exclude>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`chain_count<class_LimitAngularVelocityModifier3D_property_chain_count>`                   | ``0``         |
   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`   | :ref:`exclude<class_LimitAngularVelocityModifier3D_property_exclude>`                           | ``false``     |
   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`joint_count<class_LimitAngularVelocityModifier3D_property_joint_count>`                   | ``0``         |
   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`max_angular_velocity<class_LimitAngularVelocityModifier3D_property_max_angular_velocity>` | ``6.2831855`` |
   +---------------------------+-------------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_chains<class_LimitAngularVelocityModifier3D_method_clear_chains>`\ (\ )                                                                                     |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_end_bone<class_LimitAngularVelocityModifier3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                              |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_end_bone_name<class_LimitAngularVelocityModifier3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_root_bone<class_LimitAngularVelocityModifier3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                            |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_root_bone_name<class_LimitAngularVelocityModifier3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                  |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`reset<class_LimitAngularVelocityModifier3D_method_reset>`\ (\ )                                                                                                   |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_end_bone<class_LimitAngularVelocityModifier3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                        |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_end_bone_name<class_LimitAngularVelocityModifier3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )   |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_root_bone<class_LimitAngularVelocityModifier3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                      |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_root_bone_name<class_LimitAngularVelocityModifier3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_LimitAngularVelocityModifier3D_property_chain_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **chain_count** = ``0`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_chain_count>`

.. rst-class:: classref-property-setget

- |void| **set_chain_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_chain_count**\ (\ )

Количество цепочек.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_property_exclude:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude** = ``false`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_exclude**\ (\ )

Если ``true``, модификатор обрабатывает кости, не включенные в список костей.

Если ``false``, кости, обрабатываемые модификатором, равны костям из списка.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_property_joint_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **joint_count** = ``0`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_joint_count>`

Количество соединений в списке, созданных динамически цепочками.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_property_max_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_angular_velocity** = ``6.2831855`` :ref:`🔗<class_LimitAngularVelocityModifier3D_property_max_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_max_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_angular_velocity**\ (\ )

Максимальная угловая скорость в секунду.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_LimitAngularVelocityModifier3D_method_clear_chains:

.. rst-class:: classref-method

|void| **clear_chains**\ (\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_clear_chains>`

Очистить все цепочки.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_end_bone>`

Возвращает индекс конечной кости цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_end_bone_name>`

Возвращает имя конечной кости цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_root_bone>`

Возвращает индекс корневой кости цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LimitAngularVelocityModifier3D_method_get_root_bone_name>`

Возвращает имя корневой кости цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_reset>`

Устанавливает эталонное положение для сравнения углов относительно текущего положения без учета влияния ограничений. Эта функция автоматически запускается при изменении положения суставов или при активации.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_end_bone>`

Устанавливает индекс конечной кости в костной цепи.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_end_bone_name>`

Задает имя конечной кости цепочки костей.

\ **Примечание:** Конечная кость должна быть корневой костью или дочерней костью корневой кости.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_root_bone>`

Устанавливает индекс корневой кости цепочки костей.

.. rst-class:: classref-item-separator

----

.. _class_LimitAngularVelocityModifier3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_LimitAngularVelocityModifier3D_method_set_root_bone_name>`

Задает имя корневой кости цепочки костей.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
