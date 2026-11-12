:github_url: hide

.. _class_XRFaceTracker:

XRFaceTracker
=============

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

追蹤的面部。

.. rst-class:: classref-introduction-group

說明
----

該物件的實例表示追蹤的面部及其相應的混合形狀。混合形狀來自\ `統一表情 <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/unified-blendshapes>`__\ 標準，並包含每個混合形狀的擴充細節和視覺效果。此外，\ `追蹤標準比較 <https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/compatibility/overview>`__\ 頁面記錄了統一表情和其他標準之間的關係。

當面部追蹤器打開時，它們會在 :ref:`XRServer<class_XRServer>` 中注冊。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
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

列舉
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

右眼向內看。

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

左眼向內看。

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

閉上右眼瞼。

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED_LEFT** = ``9``

閉上左眼瞼。

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT_RIGHT** = ``10``

收縮右眼眶肌肉。

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT_LEFT** = ``11``

收縮左眼眶肌肉。

.. _class_XRFaceTracker_constant_FT_EYE_WIDE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE_RIGHT** = ``12``

右眼瞼睜大得超出了放鬆範圍。

.. _class_XRFaceTracker_constant_FT_EYE_WIDE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE_LEFT** = ``13``

左眼瞼睜大得超出了放鬆範圍。

.. _class_XRFaceTracker_constant_FT_EYE_DILATION_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION_RIGHT** = ``14``

擴張右瞳孔。

.. _class_XRFaceTracker_constant_FT_EYE_DILATION_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION_LEFT** = ``15``

擴張左瞳孔。

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT_RIGHT** = ``16``

收縮右瞳孔。

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT_LEFT** = ``17``

收縮左瞳孔。

.. _class_XRFaceTracker_constant_FT_BROW_PINCH_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_PINCH_RIGHT** = ``18``

右眉毛向內收縮。

.. _class_XRFaceTracker_constant_FT_BROW_PINCH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_PINCH_LEFT** = ``19``

左眉毛向內收縮。

.. _class_XRFaceTracker_constant_FT_BROW_LOWERER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_LOWERER_RIGHT** = ``20``

右眉毛外側下拉。

.. _class_XRFaceTracker_constant_FT_BROW_LOWERER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_LOWERER_LEFT** = ``21``

左眉毛外側下拉。

.. _class_XRFaceTracker_constant_FT_BROW_INNER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_INNER_UP_RIGHT** = ``22``

右眉毛內側上拉。

.. _class_XRFaceTracker_constant_FT_BROW_INNER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_INNER_UP_LEFT** = ``23``

左眉毛內側上拉。

.. _class_XRFaceTracker_constant_FT_BROW_OUTER_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_OUTER_UP_RIGHT** = ``24``

右眉毛外側上拉。

.. _class_XRFaceTracker_constant_FT_BROW_OUTER_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_OUTER_UP_LEFT** = ``25``

左眉毛外側上拉。

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER_RIGHT** = ``26``

右臉譏笑。

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER_LEFT** = ``27``

左臉譏笑。

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION_RIGHT** = ``28``

右側鼻腔擴張。

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION_LEFT** = ``29``

左側鼻腔擴張。

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT_RIGHT** = ``30``

右側鼻腔收縮。

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT_LEFT** = ``31``

左側鼻腔收縮。

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT_RIGHT** = ``32``

抬升右側面頰。

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT_LEFT** = ``33``

抬升左側面頰。

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF_RIGHT** = ``34``

鼓起右側面頰。

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF_LEFT** = ``35``

鼓起左側面頰。

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK_RIGHT** = ``36``

吸進右側臉頰。

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK_LEFT** = ``37``

吸進左側面頰。

.. _class_XRFaceTracker_constant_FT_JAW_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_OPEN** = ``38``

張開頜骨。

.. _class_XRFaceTracker_constant_FT_MOUTH_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CLOSED** = ``39``

閉上嘴巴。

.. _class_XRFaceTracker_constant_FT_JAW_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_RIGHT** = ``40``

下頜骨右移。

.. _class_XRFaceTracker_constant_FT_JAW_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_LEFT** = ``41``

下頜骨左移。

.. _class_XRFaceTracker_constant_FT_JAW_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_FORWARD** = ``42``

下頜骨前移。

.. _class_XRFaceTracker_constant_FT_JAW_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_BACKWARD** = ``43``

下頜骨後移。

.. _class_XRFaceTracker_constant_FT_JAW_CLENCH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_CLENCH** = ``44``

彎曲下頜肌肉。

.. _class_XRFaceTracker_constant_FT_JAW_MANDIBLE_RAISE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_JAW_MANDIBLE_RAISE** = ``45``

抬高下頜骨。

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

右上唇部分推成漏斗狀。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER_LEFT** = ``53``

左上唇部分推成漏斗狀。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER_RIGHT** = ``54``

右下唇部分推成漏斗狀。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER_LEFT** = ``55``

左下唇部分推成漏斗狀。

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

右上唇部分推入臉頰。

.. _class_XRFaceTracker_constant_FT_MOUTH_UPPER_DEEPEN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_UPPER_DEEPEN_LEFT** = ``65``

左上唇部分推入臉頰。

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

右唇角上翹。

.. _class_XRFaceTracker_constant_FT_MOUTH_CORNER_SLANT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_CORNER_SLANT_LEFT** = ``73``

左唇角上翹。

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

嘴角唇部向外拉並向下。

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH_LEFT** = ``77``

嘴角唇部向外拉並向下。

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE_RIGHT** = ``78``

右唇角向後推。

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE_LEFT** = ``79``

左唇角向後推。

.. _class_XRFaceTracker_constant_FT_MOUTH_RAISER_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RAISER_UPPER** = ``80``

上額抬起並稍微向外推出。

.. _class_XRFaceTracker_constant_FT_MOUTH_RAISER_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_RAISER_LOWER** = ``81``

下額抬起並稍微向外推出。

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS_RIGHT** = ``82``

右側嘴唇垂直壓扁。

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS_LEFT** = ``83``

左側嘴唇垂直壓扁。

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER_RIGHT** = ``84``

右側嘴唇水平擠壓在一起。

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER_LEFT** = ``85``

左側嘴唇水平擠壓在一起。

.. _class_XRFaceTracker_constant_FT_TONGUE_OUT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_OUT** = ``86``

舌頭明顯伸出嘴外。

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

舌頭兩側呈漏斗形，形成捲曲。

.. _class_XRFaceTracker_constant_FT_TONGUE_BLEND_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_BLEND_DOWN** = ``92``

舌頭在口腔內向上彎曲，然後向下彎曲。

.. _class_XRFaceTracker_constant_FT_TONGUE_CURL_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_CURL_UP** = ``93``

舌頭在口腔內向下彎曲，然後向上彎曲。

.. _class_XRFaceTracker_constant_FT_TONGUE_SQUISH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_SQUISH** = ``94``

舌頭擠壓在一起並變厚。

.. _class_XRFaceTracker_constant_FT_TONGUE_FLAT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_FLAT** = ``95``

舌頭變平並且變薄。

.. _class_XRFaceTracker_constant_FT_TONGUE_TWIST_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_TWIST_RIGHT** = ``96``

舌尖順時針旋轉，其餘部分逐漸跟隨。

.. _class_XRFaceTracker_constant_FT_TONGUE_TWIST_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_TONGUE_TWIST_LEFT** = ``97``

舌尖逆時針旋轉，其餘部分逐漸跟隨。

.. _class_XRFaceTracker_constant_FT_SOFT_PALATE_CLOSE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_SOFT_PALATE_CLOSE** = ``98``

口腔內喉嚨閉合。

.. _class_XRFaceTracker_constant_FT_THROAT_SWALLOW:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_THROAT_SWALLOW** = ``99``

喉結明顯吞咽。

.. _class_XRFaceTracker_constant_FT_NECK_FLEX_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NECK_FLEX_RIGHT** = ``100``

右側頸部明顯彎曲。

.. _class_XRFaceTracker_constant_FT_NECK_FLEX_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NECK_FLEX_LEFT** = ``101``

左側頸部明顯彎曲。

.. _class_XRFaceTracker_constant_FT_EYE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CLOSED** = ``102``

閉上雙眼。

.. _class_XRFaceTracker_constant_FT_EYE_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_WIDE** = ``103``

睜大雙眼。

.. _class_XRFaceTracker_constant_FT_EYE_SQUINT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_SQUINT** = ``104``

眯上雙眼。

.. _class_XRFaceTracker_constant_FT_EYE_DILATION:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_DILATION** = ``105``

擴張雙瞳。

.. _class_XRFaceTracker_constant_FT_EYE_CONSTRICT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_EYE_CONSTRICT** = ``106``

收縮雙瞳。

.. _class_XRFaceTracker_constant_FT_BROW_DOWN_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN_RIGHT** = ``107``

將右眉向下拉並向內拉。

.. _class_XRFaceTracker_constant_FT_BROW_DOWN_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN_LEFT** = ``108``

將左眉向下拉並向內拉。

.. _class_XRFaceTracker_constant_FT_BROW_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_DOWN** = ``109``

將雙眉向下拉並向內拉。

.. _class_XRFaceTracker_constant_FT_BROW_UP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP_RIGHT** = ``110``

右眉作發愁狀。

.. _class_XRFaceTracker_constant_FT_BROW_UP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP_LEFT** = ``111``

左眉作發愁狀。

.. _class_XRFaceTracker_constant_FT_BROW_UP:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_BROW_UP** = ``112``

雙眉作發愁狀。

.. _class_XRFaceTracker_constant_FT_NOSE_SNEER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NOSE_SNEER** = ``113``

滿臉冷笑。

.. _class_XRFaceTracker_constant_FT_NASAL_DILATION:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_DILATION** = ``114``

兩側鼻腔擴張。

.. _class_XRFaceTracker_constant_FT_NASAL_CONSTRICT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_NASAL_CONSTRICT** = ``115``

兩側鼻腔收縮。

.. _class_XRFaceTracker_constant_FT_CHEEK_PUFF:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_PUFF** = ``116``

鼓起雙頰。

.. _class_XRFaceTracker_constant_FT_CHEEK_SUCK:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SUCK** = ``117``

吸進雙頰。

.. _class_XRFaceTracker_constant_FT_CHEEK_SQUINT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_CHEEK_SQUINT** = ``118``

抬起雙頰。

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_UPPER** = ``119``

收攏上唇。

.. _class_XRFaceTracker_constant_FT_LIP_SUCK_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK_LOWER** = ``120``

收攏下唇。

.. _class_XRFaceTracker_constant_FT_LIP_SUCK:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_SUCK** = ``121``

收攏雙唇。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_UPPER** = ``122``

上唇呈漏斗狀。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL_LOWER** = ``123``

下唇呈漏斗狀。

.. _class_XRFaceTracker_constant_FT_LIP_FUNNEL:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_LIP_FUNNEL** = ``124``

雙唇呈漏斗狀。

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

雙唇向外推。

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

張嘴，露出牙齒。

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

嘴巴右側作微笑狀。

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE_LEFT** = ``134``

嘴巴左側作微笑狀。

.. _class_XRFaceTracker_constant_FT_MOUTH_SMILE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SMILE** = ``135``

嘴巴作微笑狀。

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD_RIGHT** = ``136``

嘴巴右側作悲傷狀。

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD_LEFT** = ``137``

嘴巴左側作悲傷狀。

.. _class_XRFaceTracker_constant_FT_MOUTH_SAD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_SAD** = ``138``

嘴巴作悲傷狀。

.. _class_XRFaceTracker_constant_FT_MOUTH_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_STRETCH** = ``139``

嘴巴伸長。

.. _class_XRFaceTracker_constant_FT_MOUTH_DIMPLE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_DIMPLE** = ``140``

唇角有酒窩。

.. _class_XRFaceTracker_constant_FT_MOUTH_TIGHTENER:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_TIGHTENER** = ``141``

嘴巴收緊。

.. _class_XRFaceTracker_constant_FT_MOUTH_PRESS:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MOUTH_PRESS** = ``142``

嘴巴緊貼在一起。

.. _class_XRFaceTracker_constant_FT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` **FT_MAX** = ``143``

代表 :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_XRFaceTracker_property_blend_shapes:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **blend_shapes** = ``PackedFloat32Array()`` :ref:`🔗<class_XRFaceTracker_property_blend_shapes>`

.. rst-class:: classref-property-setget

- |void| **set_blend_shapes**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_blend_shapes**\ (\ )

面部混合形狀權重陣列，其索引對應於 :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>` 列舉。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_XRFaceTracker_method_get_blend_shape:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_shape**\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`\ ) |const| :ref:`🔗<class_XRFaceTracker_method_get_blend_shape>`

回傳請求的面部混合形狀權重。

.. rst-class:: classref-item-separator

----

.. _class_XRFaceTracker_method_set_blend_shape:

.. rst-class:: classref-method

|void| **set_blend_shape**\ (\ blend_shape\: :ref:`BlendShapeEntry<enum_XRFaceTracker_BlendShapeEntry>`, weight\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRFaceTracker_method_set_blend_shape>`

設定面部混合形狀權重。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
