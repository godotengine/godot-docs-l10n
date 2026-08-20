:github_url: hide

.. _class_ResourceImporterOBJ:

ResourceImporterOBJ
===================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортирует 3D-модель OBJ как независимую :ref:`Mesh<class_Mesh>` или сцену.

.. rst-class:: classref-introduction-group

Описание
----------------

В отличие от :ref:`ResourceImporterScene<class_ResourceImporterScene>`, **ResourceImporterOBJ** импортирует один ресурс :ref:`Mesh<class_Mesh>` по умолчанию вместо импорта :ref:`PackedScene<class_PackedScene>`. Это упрощает использование ресурса :ref:`Mesh<class_Mesh>` в узлах, которые ожидают прямые ресурсы :ref:`Mesh<class_Mesh>`, такие как :ref:`GridMap<class_GridMap>`, :ref:`GPUParticles3D<class_GPUParticles3D>` или :ref:`CPUParticles3D<class_CPUParticles3D>`. Обратите внимание, что по-прежнему возможно сохранять ресурсы сетки из 3D-сцен с помощью диалогового окна **Расширенные параметры импорта**, независимо от исходного формата.

См. также :ref:`ResourceImporterScene<class_ResourceImporterScene>`, который используется для более продвинутых 3D-форматов, таких как glTF.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Импорт 3D-сцен <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`force_disable_mesh_compression<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`     | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`                       | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`generate_lightmap_uv2_texel_size<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>` | ``0.2``              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lods<class_ResourceImporterOBJ_property_generate_lods>`                                       | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_shadow_mesh<class_ResourceImporterOBJ_property_generate_shadow_mesh>`                         | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_tangents<class_ResourceImporterOBJ_property_generate_tangents>`                               | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`offset_mesh<class_ResourceImporterOBJ_property_offset_mesh>`                                           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`scale_mesh<class_ResourceImporterOBJ_property_scale_mesh>`                                             | ``Vector3(1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ResourceImporterOBJ_property_force_disable_mesh_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_disable_mesh_compression** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`

Если ``true``, сжатие сетки не будет использоваться. Рассмотрите возможность включения, если вы заметили блочные артефакты в нормалях сетки или UV, или если у вас есть сетки, которые больше нескольких тысяч метров в каждом направлении.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lightmap_uv2** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`

Если ``true``, генерирует UV2 при импорте для запекания :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **generate_lightmap_uv2_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>`

Управляет размером каждого текселя на запеченной карте освещения. Меньшее значение приводит к более точным картам освещения за счет большего размера карты освещения и более длительного времени запекания.

\ **Примечание:** Эффективно только если :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lods>`

Если ``true``, генерирует варианты сетки с более низкой степенью детализации, которые будут отображаться на расстоянии для повышения производительности рендеринга. Не все сетки выигрывают от LOD, особенно если они никогда не визуализируются издалека. Отключение этого может уменьшить размер выходного файла и ускорить импорт. См. `Уровень детализации сетки (LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ для получения дополнительной информации.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_shadow_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_shadow_mesh** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_shadow_mesh>`

Если ``true``, включает генерацию теневых сеток при импорте. Это оптимизирует рендеринг теней без снижения качества путем объединения вершин, когда это возможно. Это, в свою очередь, снижает пропускную способность памяти, необходимую для рендеринга теней. Генерация теневых сеток в настоящее время не поддерживает использование более низкого уровня детализации, чем исходная сетка (но рендеринг теней будет использовать LOD, когда это уместно).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_tangents** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_tangents>`

Если ``true``, сгенерируйте касательные вершины с помощью `Mikktspace <http://www.mikktspace.com/>`__, если исходная сетка не содержит данных о касательных. По возможности рекомендуется позволить программному обеспечению для 3D-моделирования генерировать касательные при экспорте, а не полагаться на эту опцию. Касательные необходимы для корректного отображения карт нормалей и высот, а также любых функций материала/шейдера, требующих касательных.

Если вам не нужны функции материала, требующие касательных, отключение этой опции может уменьшить размер выходного файла и ускорить импорт, если исходный 3D-файл не содержит касательных.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_offset_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **offset_mesh** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ResourceImporterOBJ_property_offset_mesh>`

Смещает данные сетки на указанное значение. Это можно использовать для обхода невыровненных сеток без необходимости изменять исходный файл.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_scale_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale_mesh** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_ResourceImporterOBJ_property_scale_mesh>`

Масштабирует данные сетки на указанное значение. Это можно использовать для обхода немасштабированных сеток без необходимости изменять исходный файл.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
