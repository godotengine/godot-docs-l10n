:github_url: hide

.. _class_AnimationNode:

AnimationNode
=============

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AnimationNodeExtension<class_AnimationNodeExtension>`, :ref:`AnimationNodeOutput<class_AnimationNodeOutput>`, :ref:`AnimationNodeSync<class_AnimationNodeSync>`, :ref:`AnimationNodeTimeScale<class_AnimationNodeTimeScale>`, :ref:`AnimationNodeTimeSeek<class_AnimationNodeTimeSeek>`, :ref:`AnimationRootNode<class_AnimationRootNode>`

Базовый класс для узлов :ref:`AnimationTree<class_AnimationTree>`. Не относится к узлам сцены.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый ресурс для узлов :ref:`AnimationTree<class_AnimationTree>`. Обычно он не используется напрямую, но вы можете создавать собственные узлы с помощью собственных формул смешивания.

Наследуйте его при создании узлов анимации, в основном для использования в :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`, в противном случае вместо него следует использовать :ref:`AnimationRootNode<class_AnimationRootNode>`.

Вы можете получить доступ к информации о времени как к параметру только для чтения, который обрабатывается и сохраняется в предыдущем кадре для всех узлов, кроме :ref:`AnimationNodeOutput<class_AnimationNodeOutput>`.

\ **Примечание:** Если в **AnimationNode** существует несколько входов, то приоритет информации о времени зависит от типа **AnimationNode**.

::

    var current_length = $AnimationTree["parameters/AnimationNodeName/current_length"]
    var current_position = $AnimationTree["parameters/AnimationNodeName/current_position"]
    var current_delta = $AnimationTree["parameters/AnimationNodeName/current_delta"]

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование дерева анимации <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`filter_enabled<class_AnimationNode_property_filter_enabled>` |
   +-------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`               | :ref:`_get_caption<class_AnimationNode_private_method__get_caption>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                                                            |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNode<class_AnimationNode>` | :ref:`_get_child_by_name<class_AnimationNode_private_method__get_child_by_name>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`       | :ref:`_get_child_nodes<class_AnimationNode_private_method__get_child_nodes>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`             | :ref:`_get_parameter_default_value<class_AnimationNode_private_method__get_parameter_default_value>`\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                 | :ref:`_get_parameter_list<class_AnimationNode_private_method__get_parameter_list>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`_has_filter<class_AnimationNode_private_method__has_filter>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`_is_parameter_read_only<class_AnimationNode_private_method__is_parameter_read_only>`\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`_process<class_AnimationNode_private_method__process>`\ (\ time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                                                                                                                                      |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`add_input<class_AnimationNode_method_add_input>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`blend_animation<class_AnimationNode_method_blend_animation>`\ (\ animation\: :ref:`StringName<class_StringName>`, time\: :ref:`float<class_float>`, delta\: :ref:`float<class_float>`, seeked\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, looped_flag\: :ref:`LoopedFlag<enum_Animation_LoopedFlag>` = 0\ )                                                                                      |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`blend_input<class_AnimationNode_method_blend_input>`\ (\ input_index\: :ref:`int<class_int>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ )                                                        |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`blend_node<class_AnimationNode_method_blend_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`find_input<class_AnimationNode_method_find_input>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_input_count<class_AnimationNode_method_get_input_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`               | :ref:`get_input_name<class_AnimationNode_method_get_input_name>`\ (\ input\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`             | :ref:`get_parameter<class_AnimationNode_method_get_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_processing_animation_tree_instance_id<class_AnimationNode_method_get_processing_animation_tree_instance_id>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_path_filtered<class_AnimationNode_method_is_path_filtered>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_process_testing<class_AnimationNode_method_is_process_testing>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`remove_input<class_AnimationNode_method_remove_input>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_filter_path<class_AnimationNode_method_set_filter_path>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enable\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`set_input_name<class_AnimationNode_method_set_input_name>`\ (\ input\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                                                                               |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_parameter<class_AnimationNode_method_set_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_AnimationNode_signal_animation_node_removed:

.. rst-class:: classref-signal

**animation_node_removed**\ (\ object_id\: :ref:`int<class_int>`, node_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_signal_animation_node_removed>`

Выдается узлами, которые наследуют этот класс и имеют внутреннее дерево, когда один из их узлов анимации удаляется. Узлы анимации, которые выдают этот сигнал – :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`, :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`, :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` и :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_signal_animation_node_renamed:

.. rst-class:: classref-signal

**animation_node_renamed**\ (\ object_id\: :ref:`int<class_int>`, old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_signal_animation_node_renamed>`

Выпускается узлами, которые наследуют этот класс и имеют внутреннее дерево, когда изменяется одно из имен их узлов анимации. Узлы анимации, которые выдают этот сигнал – :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`, :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`, :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` и :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_signal_node_updated:

.. rst-class:: classref-signal

**node_updated**\ (\ object_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNode_signal_node_updated>`

**Экспериментальное:** Этот сигнал может быть изменён или удалён в будущих версиях.

Испускается :ref:`AnimationNodeAnimation<class_AnimationNodeAnimation>` при изменении ресурса :ref:`AnimationNodeAnimation.animation<class_AnimationNodeAnimation_property_animation>` или :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` при изменении его соединений.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_signal_tree_changed:

.. rst-class:: classref-signal

**tree_changed**\ (\ ) :ref:`🔗<class_AnimationNode_signal_tree_changed>`

Выпускается узлами, которые наследуют этот класс и имеют внутреннее дерево, когда один из их узлов анимации изменяется. Узлы анимации, которые выдают этот сигнал – :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`, :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`, :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`, :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` и :ref:`AnimationNodeTransition<class_AnimationNodeTransition>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_AnimationNode_FilterAction:

.. rst-class:: classref-enumeration

enum **FilterAction**: :ref:`🔗<enum_AnimationNode_FilterAction>`

.. _class_AnimationNode_constant_FILTER_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_IGNORE** = ``0``

Не использовать фильтрацию.

.. _class_AnimationNode_constant_FILTER_PASS:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_PASS** = ``1``

Пути, соответствующие фильтру, будут пропущены.

.. _class_AnimationNode_constant_FILTER_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_STOP** = ``2``

Пути, соответствующие фильтру, будут отброшены.

.. _class_AnimationNode_constant_FILTER_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_BLEND** = ``3``

Пути, соответствующие фильтру, будут смешаны (по значению смешивания).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AnimationNode_property_filter_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_enabled** :ref:`🔗<class_AnimationNode_property_filter_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_filter_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_filter_enabled**\ (\ )

Если ``true``, фильтрация включена.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AnimationNode_private_method__get_caption:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_caption**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_caption>`

При наследовании от :ref:`AnimationRootNode<class_AnimationRootNode>` реализуйте этот виртуальный метод, чтобы переопределить текстовую подпись для этого узла анимации.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_child_by_name:

.. rst-class:: classref-method

:ref:`AnimationNode<class_AnimationNode>` **_get_child_by_name**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_child_by_name>`

При наследовании от :ref:`AnimationRootNode<class_AnimationRootNode>` реализуйте этот виртуальный метод для возврата дочернего узла анимации по его ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_child_nodes:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_child_nodes**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_child_nodes>`

При наследовании от :ref:`AnimationRootNode<class_AnimationRootNode>` реализуйте этот виртуальный метод для возврата всех дочерних узлов анимации в порядке словаря ``name: node``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_parameter_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_parameter_default_value**\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_parameter_default_value>`

При наследовании от :ref:`AnimationRootNode<class_AnimationRootNode>` реализуйте этот виртуальный метод для возврата значения по умолчанию параметра ``parameter``. Параметры — это настраиваемая локальная память, используемая для ваших узлов анимации, учитывая, что ресурс может быть повторно использован в нескольких деревьях.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_parameter_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_get_parameter_list**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_parameter_list>`

При наследовании от :ref:`AnimationRootNode<class_AnimationRootNode>` реализуйте этот виртуальный метод для возврата списка свойств этого узла анимации. Параметры — это настраиваемая локальная память, используемая для ваших узлов анимации, учитывая, что ресурс может быть повторно использован в нескольких деревьях. Формат аналогичен :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__has_filter:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_filter**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__has_filter>`

При наследовании от :ref:`AnimationRootNode<class_AnimationRootNode>` реализуйте этот виртуальный метод, чтобы узнать, должен ли редактор смешанного дерева отображать редактирование фильтра на этом узле анимации.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__is_parameter_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_parameter_read_only**\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__is_parameter_read_only>`

При наследовании от :ref:`AnimationRootNode<class_AnimationRootNode>` реализуйте этот виртуальный метод, чтобы вернуть, является ли параметр ``parameter`` доступным только для чтения. Параметры — это настраиваемая локальная память, используемая для ваших узлов анимации, учитывая, что ресурс может быть повторно использован в нескольких деревьях.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__process:

.. rst-class:: classref-method

:ref:`float<class_float>` **_process**\ (\ time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_AnimationNode_private_method__process>`

**Устарело:** Currently this is mostly useless as there is a lack of many APIs to extend AnimationNode by GDScript. It is planned that a more flexible API using structures will be provided in the future.

При наследовании от :ref:`AnimationRootNode<class_AnimationRootNode>` реализуйте этот виртуальный метод для запуска некоторого кода при обработке этого узла анимации. Параметр ``time`` является относительной дельтой, если только ``seek`` не является ``true``, в этом случае он является абсолютным.

Здесь вызовите функции :ref:`blend_input()<class_AnimationNode_method_blend_input>`, :ref:`blend_node()<class_AnimationNode_method_blend_node>` или :ref:`blend_animation()<class_AnimationNode_method_blend_animation>`. Вы также можете использовать :ref:`get_parameter()<class_AnimationNode_method_get_parameter>` и :ref:`set_parameter()<class_AnimationNode_method_set_parameter>` для изменения локальной памяти.

Эта функция должна возвращать дельту.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_add_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_input**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_method_add_input>`

Добавляет вход в узел анимации. Это полезно только для узлов анимации, созданных для использования в :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Если добавление не удается, возвращает ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_blend_animation:

.. rst-class:: classref-method

|void| **blend_animation**\ (\ animation\: :ref:`StringName<class_StringName>`, time\: :ref:`float<class_float>`, delta\: :ref:`float<class_float>`, seeked\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, looped_flag\: :ref:`LoopedFlag<enum_Animation_LoopedFlag>` = 0\ ) :ref:`🔗<class_AnimationNode_method_blend_animation>`

Смешивает анимацию по величине ``blend`` (имя должно быть допустимым в связанном :ref:`AnimationPlayer<class_AnimationPlayer>`). Могут быть переданы ``time`` и ``delta``, а также произошло ли ``seeked``.

\ ``looped_flag`` используется внутренней обработкой сразу после цикла.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_blend_input:

.. rst-class:: classref-method

:ref:`float<class_float>` **blend_input**\ (\ input_index\: :ref:`int<class_int>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimationNode_method_blend_input>`

Смешивает входные данные. Это полезно только для узлов анимации, созданных для :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Параметр ``time`` является относительной дельтой, если только ``seek`` не является ``true``, в этом случае он является абсолютным. Режим фильтра может быть передан опционально.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_blend_node:

.. rst-class:: classref-method

:ref:`float<class_float>` **blend_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimationNode_method_blend_node>`

Смешайте другой узел анимации (в случае, если этот узел анимации содержит дочерние узлы анимации). Эта функция полезна только если вы наследуете от :ref:`AnimationRootNode<class_AnimationRootNode>`, в противном случае редакторы не будут отображать ваш узел анимации для добавления.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_find_input:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_input**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_AnimationNode_method_find_input>`

Возвращает входной индекс, который соответствует ``name``. Если не найден, возвращает ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_input_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_count**\ (\ ) |const| :ref:`🔗<class_AnimationNode_method_get_input_count>`

Количество входов в этом узле анимации, полезно только для узлов анимации, которые входят в :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_input_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_input_name**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNode_method_get_input_name>`

Получает имя ввода по индексу.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNode_method_get_parameter>`

Получает значение параметра. Параметры — это настраиваемая локальная память, используемая для ваших узлов анимации, учитывая, что ресурс может быть повторно использован в нескольких деревьях.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_processing_animation_tree_instance_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_processing_animation_tree_instance_id**\ (\ ) |const| :ref:`🔗<class_AnimationNode_method_get_processing_animation_tree_instance_id>`

Возвращает идентификатор объекта :ref:`AnimationTree<class_AnimationTree>`, которому принадлежит этот узел.

\ **Примечание:** Этот метод следует вызывать только из метода :ref:`AnimationNodeExtension._process_animation_node()<class_AnimationNodeExtension_private_method__process_animation_node>`, в противном случае он вернет недействительный идентификатор.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_is_path_filtered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_path_filtered**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_AnimationNode_method_is_path_filtered>`

Возвращает ``true``, если указанный путь отфильтрован.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_is_process_testing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_process_testing**\ (\ ) |const| :ref:`🔗<class_AnimationNode_method_is_process_testing>`

Возвращает ``true``, если этот узел анимации обрабатывается в тестовом режиме.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_remove_input:

.. rst-class:: classref-method

|void| **remove_input**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNode_method_remove_input>`

Удаляет вход, вызывать только когда неактивен.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_set_filter_path:

.. rst-class:: classref-method

|void| **set_filter_path**\ (\ path\: :ref:`NodePath<class_NodePath>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNode_method_set_filter_path>`

Добавляет или удаляет путь для фильтра.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_set_input_name:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_input_name**\ (\ input\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_method_set_input_name>`

Устанавливает имя входа по указанному индексу ``input``. Если настройка не удалась, возвращает ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_set_parameter:

.. rst-class:: classref-method

|void| **set_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_AnimationNode_method_set_parameter>`

Устанавливает пользовательский параметр. Они используются как локальная память, поскольку ресурсы могут повторно использоваться по всему дереву или сценам.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
