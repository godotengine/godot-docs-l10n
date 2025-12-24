:github_url: hide

.. _class_TextServerFallback:

TextServerFallback
==================

**继承：** :ref:`TextServerExtension<class_TextServerExtension>` **<** :ref:`TextServer<class_TextServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A fallback implementation of Godot's text server, without support for BiDi and complex text layout.

.. rst-class:: classref-introduction-group

描述
----

A fallback implementation of Godot's text server. This fallback is faster than :ref:`TextServerAdvanced<class_TextServerAdvanced>` for processing a lot of text, but it does not support BiDi and complex text layout.

\ **Note:** This text server is not part of official Godot binaries. If you want to use it, compile the engine with the option ``module_text_server_fb_enabled=yes``. When building with **TextServerFallback**, consider also disabling :ref:`TextServerAdvanced<class_TextServerAdvanced>` with ``module_text_server_adv_enabled=no`` to reduce binary size.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
