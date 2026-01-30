:github_url: hide

.. _class_ShaderGlobalsOverride:

ShaderGlobalsOverride
=====================

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

針對指定場景覆蓋全域著色器參數的取值。

.. rst-class:: classref-introduction-group

說明
----

就像 :ref:`WorldEnvironment<class_WorldEnvironment>` 能夠在載入指定場景時覆蓋環境一樣，\ **ShaderGlobalsOverride** 能夠臨時覆蓋全域著色器參數。移除該節點後，就會恢復項目範圍的全域著色器參數。詳情見 :ref:`RenderingServer<class_RenderingServer>` 的 ``global_shader_parameter_*`` 方法。

\ **注意：**\ 一個場景只能用一個 **ShaderGlobalsOverride**\ 。如果場景樹中存在多個 **ShaderGlobalsOverride**\ ，則只會考慮第一個節點（按照樹順序）。

\ **注意：**\ 所有 **ShaderGlobalsOverride** 節點在新增至場景樹時都會加入 ``"shader_overrides_group"`` 群組。目前活動的 **ShaderGlobalsOverride** 還會加入 ``"shader_overrides_group_active"`` 群組。你可以據此來檢查目前活動的 **ShaderGlobalsOverride** 節點是哪一個。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`著色語言 <../tutorials/shaders/shader_reference/shading_language>`

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
