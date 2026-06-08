:github_url: hide

.. _class_OptimizedTranslation:

OptimizedTranslation
====================

**继承：** :ref:`Translation<class_Translation>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

经过优化的翻译。

.. rst-class:: classref-introduction-group

描述
----

优化后的翻译。它使用实时压缩翻译，因此生成的字典非常小。

出于优化目的，该类不存储未翻译的字符串。因此，\ :ref:`Translation.get_message_list()<class_Translation_method_get_message_list>` 始终返回一个空数组，而 :ref:`Translation.get_message_count()<class_Translation_method_get_message_count>` 始终返回 ``0``\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`generate<class_OptimizedTranslation_method_generate>`\ (\ from\: :ref:`Translation<class_Translation>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OptimizedTranslation_method_generate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **generate**\ (\ from\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_OptimizedTranslation_method_generate>`

根据给定的 :ref:`Translation<class_Translation>`\ （翻译）资源，生成并设置一套优化后的翻译。如果操作成功，则返回 ``true``\ 。

\ **注意：** ``from`` 中的消息不应使用上下文（context）或复数形式。

\ **注意：** 此方法旨在编辑器内使用。在导出的项目（即打包发布后的游戏或应用）中调用它不会产生任何效果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
