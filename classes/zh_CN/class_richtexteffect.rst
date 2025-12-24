:github_url: hide

.. _class_RichTextEffect:

RichTextEffect
==============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`RichTextLabel<class_RichTextLabel>` 的自定义效果。

.. rst-class:: classref-introduction-group

描述
----

:ref:`RichTextLabel<class_RichTextLabel>` 的自定义效果，可以在 :ref:`RichTextLabel<class_RichTextLabel>` 检查器中加载或使用 :ref:`RichTextLabel.install_effect()<class_RichTextLabel_method_install_effect>` 加载。

\ **注意：**\ 要使用 **RichTextEffect**\ ，必须在脚本中定义名为 ``bbcode`` 的成员变量作为 BBCode 标签。


.. tabs::

 .. code-tab:: gdscript

    # 使用 RichTextEffect 的方式是这样的：`[example]Some text[/example]`
    var bbcode = "example"

 .. code-tab:: csharp

    // 使用 RichTextEffect 的方式是这样的：`[example]Some text[/example]`
    string bbcode = "example";



\ **注意：**\ 只要 :ref:`RichTextLabel<class_RichTextLabel>` 包含至少一个 **RichTextEffect**\ ，它就会持续处理效果，除非项目暂停。这可能会对电池寿命产生负面影响。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`RichTextLabel 中的 BBCode <../tutorials/ui/bbcode_in_richtextlabel>`

- `RichTextEffect 测试项目（第三方） <https://github.com/Eoin-ONeill-Yokai/Godot-Rich-Text-Effect-Test-Project>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process_custom_fx<class_RichTextEffect_private_method__process_custom_fx>`\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RichTextEffect_private_method__process_custom_fx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process_custom_fx**\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| :ref:`🔗<class_RichTextEffect_private_method__process_custom_fx>`

覆盖该方法以修改 ``char_fx`` 中的属性。如果字符可以被成功转换，则该方法必须返回 ``true``\ 。如果该方法返回 ``false``\ ，则它将跳过转换以避免显示损坏的文本。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
