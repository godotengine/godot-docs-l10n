:github_url: hide

.. _class_JavaScriptObject:

JavaScriptObject
================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Web 原生 JavaScript 对象的封装类。

.. rst-class:: classref-introduction-group

描述
----

JavaScriptObject 用于与通过 :ref:`JavaScriptBridge.get_interface()<class_JavaScriptBridge_method_get_interface>`\ 、\ :ref:`JavaScriptBridge.create_object()<class_JavaScriptBridge_method_create_object>` 或 :ref:`JavaScriptBridge.create_callback()<class_JavaScriptBridge_method_create_callback>` 检索或创建的 JavaScript 对象进行交互。

::

    extends Node

    var _my_js_callback = JavaScriptBridge.create_callback(myCallback) # 必须保留该引用
    var console = JavaScriptBridge.get_interface("console")

    func _init():
        var buf = JavaScriptBridge.create_object("ArrayBuffer", 10) # 新建 ArrayBuffer(10)
        print(buf) # 输出 [JavaScriptObject:OBJECT_ID]
        var uint8arr = JavaScriptBridge.create_object("Uint8Array", buf) # 新建 Uint8Array(buf)
        uint8arr[1] = 255
        prints(uint8arr[1], uint8arr.byteLength) # 输出“255 10”

        # 在浏览器控制台中输出“Uint8Array(10) [ 0, 255, 0, 0, 0, 0, 0, 0, 0, 0 ]”
        console.log(uint8arr)

        # 等效于 JavaScriptBridge: Array.from(uint8arr).forEach(myCallback)
        JavaScriptBridge.get_interface("Array").from(uint8arr).forEach(_my_js_callback)

    func myCallback(args):
        # 将使用传递给“forEach”回调的参数调用
        # [0, 0, [JavaScriptObject:1173]]
        # [255, 1, [JavaScriptObject:1173]]
        # ...
        # [0, 9, [JavaScriptObject:1180]]
        print(args)

\ **注意：**\ 仅在 Web 平台上可用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
