:github_url: hide

.. _class_VisualShaderNodeParticleEmit:

VisualShaderNodeParticleEmit
============================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一種視覺化著色器節點，強制從子發射器中發射一個粒子。

.. rst-class:: classref-introduction-group

說明
----

該節點在內部呼叫 ``emit_subparticle`` 著色器方法。它將從配置的子發射器發射一個粒子，還允許自訂其發射方式。需要使用該著色器將子發射器分配給粒子節點。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+-----------------------------------------------------------------+--------+
   | :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` | :ref:`flags<class_VisualShaderNodeParticleEmit_property_flags>` | ``31`` |
   +---------------------------------------------------------------+-----------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_VisualShaderNodeParticleEmit_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_VisualShaderNodeParticleEmit_EmitFlags>`

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

如果啟用，則粒子從該節點所定義的位置開始。

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_ROT_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_ROT_SCALE** = ``2``

如果啟用，則粒子從該節點所定義的旋轉和縮放開始。

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

如果啟用，則粒子從該節點所定義的速度開始。

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

如果啟用，則粒子從該節點所定義的顏色開始。

.. _class_VisualShaderNodeParticleEmit_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

如果啟用，則粒子從該節點所定義的 ``CUSTOM`` 自訂資料開始。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_VisualShaderNodeParticleEmit_property_flags:

.. rst-class:: classref-property

:ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **flags** = ``31`` :ref:`🔗<class_VisualShaderNodeParticleEmit_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>`\ )
- :ref:`EmitFlags<enum_VisualShaderNodeParticleEmit_EmitFlags>` **get_flags**\ (\ )

用於覆蓋子發射器處理材質中定義的屬性的旗標。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
