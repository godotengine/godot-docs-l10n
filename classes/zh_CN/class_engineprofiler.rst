:github_url: hide

.. _class_EngineProfiler:

EngineProfiler
==============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于创建自定义分析器的基类。

.. rst-class:: classref-introduction-group

描述
----

这个类可用于实现自定义分析器，能够与引擎和编辑器调试器进行交互。

有关详细信息，请参阅 :ref:`EngineDebugger<class_EngineDebugger>` 和 :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_add_frame<class_EngineProfiler_private_method__add_frame>`\ (\ data\: :ref:`Array<class_Array>`\ ) |virtual|                                                                                                                                 |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_tick<class_EngineProfiler_private_method__tick>`\ (\ frame_time\: :ref:`float<class_float>`, process_time\: :ref:`float<class_float>`, physics_time\: :ref:`float<class_float>`, physics_frame_time\: :ref:`float<class_float>`\ ) |virtual| |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_toggle<class_EngineProfiler_private_method__toggle>`\ (\ enable\: :ref:`bool<class_bool>`, options\: :ref:`Array<class_Array>`\ ) |virtual|                                                                                                  |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EngineProfiler_private_method__add_frame:

.. rst-class:: classref-method

|void| **_add_frame**\ (\ data\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_EngineProfiler_private_method__add_frame>`

使用 :ref:`EngineDebugger.profiler_add_frame_data()<class_EngineDebugger_method_profiler_add_frame_data>` 将数据加入分析器时调用。

.. rst-class:: classref-item-separator

----

.. _class_EngineProfiler_private_method__tick:

.. rst-class:: classref-method

|void| **_tick**\ (\ frame_time\: :ref:`float<class_float>`, process_time\: :ref:`float<class_float>`, physics_time\: :ref:`float<class_float>`, physics_frame_time\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_EngineProfiler_private_method__tick>`

当分析器使用有关当前帧的信息处于活动状态时，每次引擎迭代调用一次。所有时间值都以秒为单位。较低的值表示更快的处理时间，因此被认为更好。

.. rst-class:: classref-item-separator

----

.. _class_EngineProfiler_private_method__toggle:

.. rst-class:: classref-method

|void| **_toggle**\ (\ enable\: :ref:`bool<class_bool>`, options\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_EngineProfiler_private_method__toggle>`

启用/禁用分析器时调用，提供了一组选项 ``options``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
