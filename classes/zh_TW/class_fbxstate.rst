:github_url: hide

.. _class_FBXState:

FBXState
========

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`GLTFState<class_GLTFState>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. rst-class:: classref-introduction-group

說明
----

FBXState 處理從 FBX 檔案匯入的狀態資料。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`allow_geometry_helper_nodes<class_FBXState_property_allow_geometry_helper_nodes>` | ``false`` |
   +-------------------------+-----------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_FBXState_property_allow_geometry_helper_nodes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_geometry_helper_nodes** = ``false`` :ref:`🔗<class_FBXState_property_allow_geometry_helper_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_allow_geometry_helper_nodes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_allow_geometry_helper_nodes**\ (\ )

如果為 ``true``\ ，則匯入過程使用被稱為幾何輔助節點的輔助節點。這些節點有助於在匯入過程中保留原始 3D 模型的樞軸和變換。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
