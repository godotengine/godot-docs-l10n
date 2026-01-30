:github_url: hide

.. _class_NavigationServer3DManager:

NavigationServer3DManager
=========================

**繼承：** :ref:`Object<class_Object>`

A singleton for managing :ref:`NavigationServer3D<class_NavigationServer3D>` implementations.

.. rst-class:: classref-introduction-group

說明
----

**NavigationServer3DManager** is the API for registering :ref:`NavigationServer3D<class_NavigationServer3D>` implementations and setting the default implementation.

\ **Note:** It is not possible to switch servers at runtime. This class is only used on startup at the server initialization level.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_server<class_NavigationServer3DManager_method_register_server>`\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_default_server<class_NavigationServer3DManager_method_set_default_server>`\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ )            |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_NavigationServer3DManager_method_register_server:

.. rst-class:: classref-method

|void| **register_server**\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_NavigationServer3DManager_method_register_server>`

Registers a :ref:`NavigationServer3D<class_NavigationServer3D>` implementation by passing a ``name`` and a :ref:`Callable<class_Callable>` that returns a :ref:`NavigationServer3D<class_NavigationServer3D>` object.

.. rst-class:: classref-item-separator

----

.. _class_NavigationServer3DManager_method_set_default_server:

.. rst-class:: classref-method

|void| **set_default_server**\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationServer3DManager_method_set_default_server>`

Sets the default :ref:`NavigationServer3D<class_NavigationServer3D>` implementation to the one identified by ``name``, if ``priority`` is greater than the priority of the current default implementation.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
