:github_url: hide

.. _class_OptimizedTranslation:

OptimizedTranslation
====================

**继承：** :ref:`Translation<class_Translation>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An optimized translation.

.. rst-class:: classref-introduction-group

描述
----

An optimized translation. Uses real-time compressed translations, which results in very small dictionaries.

This class does not store the untranslated strings for optimization purposes. Therefore, :ref:`Translation.get_message_list()<class_Translation_method_get_message_list>` always returns an empty array, and :ref:`Translation.get_message_count()<class_Translation_method_get_message_count>` always returns ``0``.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`generate<class_OptimizedTranslation_method_generate>`\ (\ from\: :ref:`Translation<class_Translation>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OptimizedTranslation_method_generate:

.. rst-class:: classref-method

|void| **generate**\ (\ from\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_OptimizedTranslation_method_generate>`

Generates and sets an optimized translation from the given :ref:`Translation<class_Translation>` resource.

\ **Note:** Messages in ``from`` should not use context or plural forms.

\ **Note:** This method is intended to be used in the editor. It does nothing when called from an exported project.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
