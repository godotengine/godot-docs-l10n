:github_url: hide

.. _class_GDScript:

GDScript
========

**繼承：** :ref:`Script<class_Script>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用 GDScript 程式設計語言實作的腳本。

.. rst-class:: classref-introduction-group

說明
----

用 GDScript 程式設計語言實作的腳本，使用 ``.gd`` 副檔名保存。該腳本擴充了將其產生實體的所有物件的功能。

呼叫 :ref:`new()<class_GDScript_method_new>` 會建立該腳本的全新實例。如果現有物件的類與該腳本的基底類別相匹配，那麼 :ref:`Object.set_script()<class_Object_method_set_script>` 就能夠擴充該物件。

如果你想要查看 GDScript 的內建函式，請移步 :ref:`@GDScript<class_@GDScript>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`GDScript 文件索引 <../tutorials/scripting/gdscript/index>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`new<class_GDScript_method_new>`\ (\ ...\ ) |vararg| |
   +-------------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GDScript_method_new:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **new**\ (\ ...\ ) |vararg| :ref:`🔗<class_GDScript_method_new>`

回傳此腳本的一個新實例。

::

    var MyClass = load("myclass.gd")
    var instance = MyClass.new()
    print(instance.get_script() == MyClass) # 輸出 true

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
