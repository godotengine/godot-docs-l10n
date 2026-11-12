:github_url: hide

.. _class_XRFaceTracker:

XRFaceTracker
=============

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

追踪的面部。

.. rst-class:: classref-introduction-group

描述
----

该对象的实例表示跟踪的面部及其相应的混合形状。混合形状来自\ `统一表情 <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/unified-blendshapes>`__\ 标准，并包含每个混合形状的扩展细节和视觉效果。此外，\ `跟踪标准比较 <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/compatibility/overview>`__\ 页面记录了统一表情和其他标准之间的关系。

当面部跟踪器打开时，它们会在 :ref:`XRServer<class_XRServer>` 中注册。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`blend_shapes<class_XRFaceTracker_property_blend_shapes>` | ``PackedFloat32Array()``                                           |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`       | type                                                           | ``64`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_blend_shape<class_XRFaceTracker_method_get_blend_shape>`\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`\ ) |const|                             |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_blend_shape<class_XRFaceTracker_method_set_blend_shape>`\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`, weight\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_XRFaceTracker_BlendShapeEntry:

.. rst-class:: classref-enumeration

enum **BlendShapeEntry**: :ref:`🔗<enum_XRFaceTracker_BlendShapeEntry>`

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_OUT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_OUT_RIGHT** = ``0``

右眼向外看。

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_IN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_IN_RIGHT** = ``1``

右眼向内看。

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_UP_RIGHT** = ``2``

右眼向上看。

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_DOWN_RIGHT** = ``3``

右眼向下看。

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_OUT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_OUT_LEFT** = ``4``

左眼向外看。

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_IN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_IN_LEFT** = ``5``

左眼向内看。

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_UP_LEFT** = ``6``

左眼向上看。

.. _class_XRFaceTracker_constant_FT_EYE_LOOK_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_LOOK_DOWN_LEFT** = ``7``

左眼向下看。

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED_RIGHT** = ``8``

闭上右眼睑。

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED_LEFT** = ``9``

闭上左眼睑。

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT_RIGHT** = ``10``

收缩右眼眶肌肉。

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT_LEFT** = ``11``

收缩左眼眶肌肉。

.. _class_XRFaceTracker_constant_FT_EYE_WIDE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE_RIGHT** = ``12``

右眼睑睁大得超出了放松范围。

.. _class_XRFaceTracker_constant_FT_EYE_WIDE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE_LEFT** = ``13``

左眼睑睁大得超出了放松范围。

.. _class_XRFaceTracker_constant_FT_EYE_DILATION_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION_RIGHT** = ``14``

扩张右瞳孔。

.. _class_XRFaceTracker_constant_FT_EYE_DILATION_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION_LEFT** = ``15``

扩张左瞳孔。

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT_RIGHT** = ``16``

收缩右瞳孔。

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT_LEFT** = ``17``

收缩左瞳孔。

.. _class_XRFaceTracker_constant_FT_BROW_PINCH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_PINCH_RIGHT** = ``18``

右眉毛向内收缩。

.. _class_XRFaceTracker_constant_FT_BROW_PINCH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_PINCH_LEFT** = ``19``

左眉毛向内收缩。

.. _class_XRFaceTracker_constant_FT_BROW_LOWERER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_LOWERER_RIGHT** = ``20``

右眉毛外侧下拉。

.. _class_XRFaceTracker_constant_FT_BROW_LOWERER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_LOWERER_LEFT** = ``21``

左眉毛外侧下拉。

.. _class_XRFaceTracker_constant_FT_BROW_INNER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_INNER_UP_RIGHT** = ``22``

右眉毛内侧上拉。

.. _class_XRFaceTracker_constant_FT_BROW_INNER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_INNER_UP_LEFT** = ``23``

左眉毛内侧上拉。

.. _class_XRFaceTracker_constant_FT_BROW_OUTER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_OUTER_UP_RIGHT** = ``24``

右眉毛外侧上拉。

.. _class_XRFaceTracker_constant_FT_BROW_OUTER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_OUTER_UP_LEFT** = ``25``

左眉毛外侧上拉。

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER_RIGHT** = ``26``

右脸讥笑。

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER_LEFT** = ``27``

左脸讥笑。

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION_RIGHT** = ``28``

右侧鼻腔扩张。

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION_LEFT** = ``29``

左侧鼻腔扩张。

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT_RIGHT** = ``30``

右侧鼻腔收缩。

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT_LEFT** = ``31``

左侧鼻腔收缩。

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT_RIGHT** = ``32``

抬升右侧面颊。

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT_LEFT** = ``33``

抬升左侧面颊。

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF_RIGHT** = ``34``

鼓起右侧面颊。

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF_LEFT** = ``35``

鼓起左侧面颊。

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK_RIGHT** = ``36``

吸进右侧脸颊。

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK_LEFT** = ``37``

吸进左侧面颊。

.. _class_XRFaceTracker_constant_FT_JAW_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_OPEN** = ``38``

张开颌骨。

.. _class_XRFaceTracker_constant_FT_MOUTH_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CLOSED** = ``39``

闭上嘴巴。

.. _class_XRFaceTracker_constant_FT_JAW_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_RIGHT** = ``40``

下颌骨右移。

.. _class_XRFaceTracker_constant_FT_JAW_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_LEFT** = ``41``

下颌骨左移。

.. _class_XRFaceTracker_constant_FT_JAW_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_FORWARD** = ``42``

下颌骨前移。

.. _class_XRFaceTracker_constant_FT_JAW_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_BACKWARD** = ``43``

下颌骨后移。

.. _class_XRFaceTracker_constant_FT_JAW_CLENCH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_CLENCH** = ``44``

弯曲下颌肌肉。

.. _class_XRFaceTracker_constant_FT_JAW_MANDIBLE_RAISE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_MANDIBLE_RAISE** = ``45``

抬高下颌骨。

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER_RIGHT** = ``46``

右上唇部分塞入嘴中。

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER_LEFT** = ``47``

左上唇部分塞入嘴中。

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER_RIGHT** = ``48``

右下唇部分塞入嘴中。

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER_LEFT** = ``49``

左下唇部分塞入嘴中。

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_CORNER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_CORNER_RIGHT** = ``50``

右唇角折入嘴中。

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_CORNER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_CORNER_LEFT** = ``51``

左唇角折入嘴中。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER_RIGHT** = ``52``

右上唇部分推成漏斗状。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER_LEFT** = ``53``

左上唇部分推成漏斗状。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER_RIGHT** = ``54``

右下唇部分推成漏斗状。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER_LEFT** = ``55``

左下唇部分推成漏斗状。

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_UPPER_RIGHT** = ``56``

右上唇部分向外推。

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_UPPER_LEFT** = ``57``

左上唇部分向外推。

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_LOWER_RIGHT** = ``58``

右下唇部分向外推。

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_LOWER_LEFT** = ``59``

左下唇部分向外推。

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_UP_RIGHT** = ``60``

右上唇部分向上拉。

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_UP_LEFT** = ``61``

左上唇部分向上拉。

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_DOWN_RIGHT** = ``62``

右下唇部分向上拉。

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_DOWN_LEFT** = ``63``

左下唇部分向上拉。

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_DEEPEN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_DEEPEN_RIGHT** = ``64``

右上唇部分推入脸颊。

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_DEEPEN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_DEEPEN_LEFT** = ``65``

左上唇部分推入脸颊。

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_RIGHT** = ``66``

上嘴唇向右移。

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_LEFT** = ``67``

上嘴唇向左移。

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_RIGHT** = ``68``

下嘴唇向右移。

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_LEFT** = ``69``

下嘴唇向左移。

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_PULL_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_PULL_RIGHT** = ``70``

右唇角斜向上拉出。

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_PULL_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_PULL_LEFT** = ``71``

左唇角斜向上拉出。

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_SLANT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_SLANT_RIGHT** = ``72``

右唇角上翘。

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_SLANT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_SLANT_LEFT** = ``73``

左唇角上翘。

.. _class_XRFaceTracker_constant_FT_MOUTH_FROWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_FROWN_RIGHT** = ``74``

右唇角向下拉。

.. _class_XRFaceTracker_constant_FT_MOUTH_FROWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_FROWN_LEFT** = ``75``

左唇角向下拉。

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH_RIGHT** = ``76``

嘴角唇部向外拉并向下。

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH_LEFT** = ``77``

嘴角唇部向外拉并向下。

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE_RIGHT** = ``78``

右唇角向后推。

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE_LEFT** = ``79``

左唇角向后推。

.. _class_XRFaceTracker_constant_FT_MOUTH_RAISER_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RAISER_UPPER** = ``80``

上额抬起并稍微向外推出。

.. _class_XRFaceTracker_constant_FT_MOUTH_RAISER_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RAISER_LOWER** = ``81``

下额抬起并稍微向外推出。

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS_RIGHT** = ``82``

右侧嘴唇垂直压扁。

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS_LEFT** = ``83``

左侧嘴唇垂直压扁。

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER_RIGHT** = ``84``

右侧嘴唇水平挤压在一起。

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER_LEFT** = ``85``

左侧嘴唇水平挤压在一起。

.. _class_XRFaceTracker_constant_FT_TONGUE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_OUT** = ``86``

舌头明显伸出嘴外。

.. _class_XRFaceTracker_constant_FT_TONGUE_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_UP** = ``87``

舌尖朝上。

.. _class_XRFaceTracker_constant_FT_TONGUE_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_DOWN** = ``88``

舌尖朝下。

.. _class_XRFaceTracker_constant_FT_TONGUE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_RIGHT** = ``89``

舌尖朝右。

.. _class_XRFaceTracker_constant_FT_TONGUE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_LEFT** = ``90``

舌尖朝左。

.. _class_XRFaceTracker_constant_FT_TONGUE_ROLL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_ROLL** = ``91``

舌头两侧呈漏斗形，形成卷曲。

.. _class_XRFaceTracker_constant_FT_TONGUE_BLEND_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_BLEND_DOWN** = ``92``

舌头在口腔内向上弯曲，然后向下弯曲。

.. _class_XRFaceTracker_constant_FT_TONGUE_CURL_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_CURL_UP** = ``93``

舌头在口腔内向下弯曲，然后向上弯曲。

.. _class_XRFaceTracker_constant_FT_TONGUE_SQUISH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_SQUISH** = ``94``

舌头挤压在一起并变厚。

.. _class_XRFaceTracker_constant_FT_TONGUE_FLAT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_FLAT** = ``95``

舌头变平并且变薄。

.. _class_XRFaceTracker_constant_FT_TONGUE_TWIST_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_TWIST_RIGHT** = ``96``

舌尖顺时针旋转，其余部分逐渐跟随。

.. _class_XRFaceTracker_constant_FT_TONGUE_TWIST_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_TWIST_LEFT** = ``97``

舌尖逆时针旋转，其余部分逐渐跟随。

.. _class_XRFaceTracker_constant_FT_SOFT_PALATE_CLOSE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_SOFT_PALATE_CLOSE** = ``98``

口腔内喉咙闭合。

.. _class_XRFaceTracker_constant_FT_THROAT_SWALLOW:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_THROAT_SWALLOW** = ``99``

喉结明显吞咽。

.. _class_XRFaceTracker_constant_FT_NECK_FLEX_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NECK_FLEX_RIGHT** = ``100``

右侧颈部明显弯曲。

.. _class_XRFaceTracker_constant_FT_NECK_FLEX_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NECK_FLEX_LEFT** = ``101``

左侧颈部明显弯曲。

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED** = ``102``

闭上双眼。

.. _class_XRFaceTracker_constant_FT_EYE_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE** = ``103``

睁大双眼。

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT** = ``104``

眯上双眼。

.. _class_XRFaceTracker_constant_FT_EYE_DILATION:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION** = ``105``

扩张双瞳。

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT** = ``106``

收缩双瞳。

.. _class_XRFaceTracker_constant_FT_BROW_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN_RIGHT** = ``107``

将右眉向下拉并向内拉。

.. _class_XRFaceTracker_constant_FT_BROW_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN_LEFT** = ``108``

将左眉向下拉并向内拉。

.. _class_XRFaceTracker_constant_FT_BROW_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN** = ``109``

将双眉向下拉并向内拉。

.. _class_XRFaceTracker_constant_FT_BROW_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP_RIGHT** = ``110``

右眉作发愁状。

.. _class_XRFaceTracker_constant_FT_BROW_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP_LEFT** = ``111``

左眉作发愁状。

.. _class_XRFaceTracker_constant_FT_BROW_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP** = ``112``

双眉作发愁状。

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER** = ``113``

满脸冷笑。

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION** = ``114``

两侧鼻腔扩张。

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT** = ``115``

两侧鼻腔收缩。

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF** = ``116``

鼓起双颊。

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK** = ``117``

吸进双颊。

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT** = ``118``

抬起双颊。

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER** = ``119``

收拢上唇。

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER** = ``120``

收拢下唇。

.. _class_XRFaceTracker_constant_FT_LIP_SUCK:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK** = ``121``

收拢双唇。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER** = ``122``

上唇呈漏斗状。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER** = ``123``

下唇呈漏斗状。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL** = ``124``

双唇呈漏斗状。

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_UPPER** = ``125``

上唇部分向外推。

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER_LOWER** = ``126``

下唇部分向外推。

.. _class_XRFaceTracker_constant_FT_LIP_PUCKER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_PUCKER** = ``127``

双唇向外推。

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_UP** = ``128``

抬起上唇。

.. _class_XRFaceTracker_constant_FT_MOUTH_LOWER_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LOWER_DOWN** = ``129``

降低下唇。

.. _class_XRFaceTracker_constant_FT_MOUTH_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_OPEN** = ``130``

张嘴，露出牙齿。

.. _class_XRFaceTracker_constant_FT_MOUTH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RIGHT** = ``131``

嘴巴向右移。

.. _class_XRFaceTracker_constant_FT_MOUTH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_LEFT** = ``132``

嘴巴向左移。

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE_RIGHT** = ``133``

嘴巴右侧作微笑状。

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE_LEFT** = ``134``

嘴巴左侧作微笑状。

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE** = ``135``

嘴巴作微笑状。

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD_RIGHT** = ``136``

嘴巴右侧作悲伤状。

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD_LEFT** = ``137``

嘴巴左侧作悲伤状。

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD** = ``138``

嘴巴作悲伤状。

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH** = ``139``

嘴巴伸长。

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE** = ``140``

唇角有酒窝。

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER** = ``141``

嘴巴收紧。

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS** = ``142``

嘴巴紧贴在一起。

.. _class_XRFaceTracker_constant_FT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MAX** = ``143``

代表 :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_XRFaceTracker_property_blend_shapes:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **blend_shapes** = ``PackedFloat32Array()`` :ref:`🔗<class_XRFaceTracker_property_blend_shapes>`

.. rst-class:: classref-property-setget

- |void| **set_blend_shapes**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_blend_shapes**\ (\ )

面部混合形状权重数组，其索引对应于 :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` 枚举。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_XRFaceTracker_method_get_blend_shape:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_shape**\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`\ ) |const| :ref:`🔗<class_XRFaceTracker_method_get_blend_shape>`

返回请求的面部混合形状权重。

.. rst-class:: classref-item-separator

----

.. _class_XRFaceTracker_method_set_blend_shape:

.. rst-class:: classref-method

|void| **set_blend_shape**\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`, weight\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRFaceTracker_method_set_blend_shape>`

设置面部混合形状权重。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
