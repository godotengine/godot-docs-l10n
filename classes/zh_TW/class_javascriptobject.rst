:github_url: hide

.. _class_JavaScriptObject:

JavaScriptObject
================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Web 原生 JavaScript 對象的封裝類。

.. rst-class:: classref-introduction-group

說明
----

JavaScriptObject 用於與通過 :ref:`JavaScriptBridge.get_interface()<class_JavaScriptBridge_method_get_interface>`\ 、\ :ref:`JavaScriptBridge.create_object()<class_JavaScriptBridge_method_create_object>` 或 :ref:`JavaScriptBridge.create_callback()<class_JavaScriptBridge_method_create_callback>` 檢索或建立的 JavaScript 物件進行互動。

::

    extends Node

    var _my_js_callback = JavaScriptBridge.create_callback(myCallback) # 必須保留該參照
    var console = JavaScriptBridge.get_interface("console")

    func _init():
        var buf = JavaScriptBridge.create_object("ArrayBuffer", 10) # 新建 ArrayBuffer(10)
        print(buf) # 輸出 [JavaScriptObject:OBJECT_ID]
        var uint8arr = JavaScriptBridge.create_object("Uint8Array", buf) # 新建 Uint8Array(buf)
        uint8arr[1] = 255
        prints(uint8arr[1], uint8arr.byteLength) # 輸出“255 10”

        # 在瀏覽器控制台中輸出“Uint8Array(10) [ 0, 255, 0, 0, 0, 0, 0, 0, 0, 0 ]”
        console.log(uint8arr)

        # 等效於 JavaScriptBridge: Array.from(uint8arr).forEach(myCallback)
        JavaScriptBridge.get_interface("Array").from(uint8arr).forEach(_my_js_callback)

    func myCallback(args):
        # 將使用傳遞給“forEach”回呼的參數呼叫
        # [0, 0, [JavaScriptObject:1173]]
        # [255, 1, [JavaScriptObject:1173]]
        # ...
        # [0, 9, [JavaScriptObject:1180]]
        print(args)

\ **注意：**\ 僅在 Web 平台上可用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
