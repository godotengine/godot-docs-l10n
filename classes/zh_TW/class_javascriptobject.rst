:github_url: hide

.. _class_JavaScriptObject:

JavaScriptObject
================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Web 原生 JavaScript 對象的封裝類。

.. rst-class:: classref-introduction-group

說明
----

JavaScriptObject is used to interact with JavaScript objects retrieved or created via :ref:`JavaScriptBridge.get_interface()<class_JavaScriptBridge_method_get_interface>`, :ref:`JavaScriptBridge.create_object()<class_JavaScriptBridge_method_create_object>`, or :ref:`JavaScriptBridge.create_callback()<class_JavaScriptBridge_method_create_callback>`.

::

    extends Node

    var _my_js_callback = JavaScriptBridge.create_callback(myCallback) # This reference must be kept
    var console = JavaScriptBridge.get_interface("console")

    func _init():
        var buf = JavaScriptBridge.create_object("ArrayBuffer", 10) # new ArrayBuffer(10)
        print(buf) # Prints [JavaScriptObject:OBJECT_ID]
        var uint8arr = JavaScriptBridge.create_object("Uint8Array", buf) # new Uint8Array(buf)
        uint8arr[1] = 255
        prints(uint8arr[1], uint8arr.byteLength) # Prints "255 10"

        # Prints "Uint8Array(10) [ 0, 255, 0, 0, 0, 0, 0, 0, 0, 0 ]" in the browser's console.
        console.log(uint8arr)

        # Equivalent of JavaScriptBridge: Array.from(uint8arr).forEach(myCallback)
        JavaScriptBridge.get_interface("Array").from(uint8arr).forEach(_my_js_callback)

    func myCallback(args):
        # Will be called with the parameters passed to the "forEach" callback
        # [0, 0, [JavaScriptObject:1173]]
        # [255, 1, [JavaScriptObject:1173]]
        # ...
        # [0, 9, [JavaScriptObject:1180]]
        print(args)

\ **Note:** Only available in the Web platform.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
