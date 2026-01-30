:github_url: hide

.. _class_TextServerDummy:

TextServerDummy
===============

**继承：** :ref:`TextServerExtension<class_TextServerExtension>` **<** :ref:`TextServer<class_TextServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

虚设的文本服务器，无法渲染文本或管理字体。

.. rst-class:: classref-introduction-group

描述
----

虚设的 :ref:`TextServer<class_TextServer>` 接口，不做任何事情。可以在不需要渲染文本时释放内存，因为文本服务器极其消耗资源。也可以用来比较复杂 GUI 的性能，检查文本渲染带来的影响。

虚设的文本服务器在项目开始后始终可用。访问方法如下：

::

    var dummy_text_server = TextServerManager.find_interface("Dummy")
    if dummy_text_server != null:
        TextServerManager.set_primary_interface(dummy_text_server)
        # 如果不需要其他文本服务器，就可以移除：
        for i in TextServerManager.get_interface_count():
            var text_server = TextServerManager.get_interface(i)
            if text_server != dummy_text_server:
                TextServerManager.remove_interface(text_server)

可以使用命令行参数 ``--text-driver Dummy``\ （大小写敏感）来强制项目使用“Dummy（虚设）”\ :ref:`TextServer<class_TextServer>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
