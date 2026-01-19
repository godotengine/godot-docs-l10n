:github_url: hide

.. _class_VoxelGI:

VoxelGI
=======

**Наследует:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Зонд глобального освещения (GI) в реальном времени.

.. rst-class:: classref-introduction-group

Описание
----------------

**VoxelGI** используются для обеспечения высококачественного непрямого света и отражений в реальном времени для сцен. Они предварительно вычисляют эффект объектов, которые излучают свет, и эффект статической геометрии для имитации поведения сложного света в реальном времени. **VoxelGI** необходимо запечь, прежде чем они будут иметь видимый эффект. Однако после запекания динамические объекты будут получать от них свет. Кроме того, источники света могут быть полностью динамическими или запеченными.

\ **Примечание:** **VoxelGI** поддерживается только в методе рендеринга Forward+, а не в Mobile или Compatibility.

\ **Процедурная генерация:** **VoxelGI** можно запечь в экспортированном проекте, что делает его подходящим для процедурно сгенерированных или созданных пользователем уровней, если вся геометрия сгенерирована заранее. Для игр, где геометрия генерируется в любой момент во время игрового процесса, больше подходит SDFGI (см. :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

\ **Производительность:** **VoxelGI** относительно требователен к графическому процессору и не подходит для аппаратного обеспечения низкого уровня, такого как интегрированная графика (вместо этого рассмотрите :ref:`LightmapGI<class_LightmapGI>`). Чтобы улучшить производительность, настройте :ref:`ProjectSettings.rendering/global_illumination/voxel_gi/quality<class_ProjectSettings_property_rendering/global_illumination/voxel_gi/quality>` и включите :ref:`ProjectSettings.rendering/global_illumination/gi/use_half_resolution<class_ProjectSettings_property_rendering/global_illumination/gi/use_half_resolution>` в настройках проекта. Чтобы обеспечить резерв для аппаратного обеспечения низкого уровня, рассмотрите возможность добавления опции отключения **VoxelGI** в меню параметров вашего проекта. Узел **VoxelGI** можно отключить, скрыв его.

\ **Примечание:** Меши должны иметь достаточно толстые стенки, чтобы избежать утечек света (избегайте односторонних стен). Для внутренних уровней заключите геометрию уровня в достаточно большой ящик и соедините петли, чтобы закрыть сетку. Чтобы еще больше предотвратить утечки света, вы также можете стратегически разместить временные узлы :ref:`MeshInstance3D<class_MeshInstance3D>` с их :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>`, установленным на :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`. Эти временные узлы затем можно скрыть после запекания узла **VoxelGI**.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование Voxel global illumination <../tutorials/3d/global_illumination/using_voxel_gi>`

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>` | :ref:`camera_attributes<class_VoxelGI_property_camera_attributes>` |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`VoxelGIData<class_VoxelGIData>`           | :ref:`data<class_VoxelGI_property_data>`                           |                         |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`size<class_VoxelGI_property_size>`                           | ``Vector3(20, 20, 20)`` |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+
   | :ref:`Subdiv<enum_VoxelGI_Subdiv>`              | :ref:`subdiv<class_VoxelGI_property_subdiv>`                       | ``1``                   |
   +-------------------------------------------------+--------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`bake<class_VoxelGI_method_bake>`\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`debug_bake<class_VoxelGI_method_debug_bake>`\ (\ )                                                                                        |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VoxelGI_Subdiv:

.. rst-class:: classref-enumeration

enum **Subdiv**: :ref:`🔗<enum_VoxelGI_Subdiv>`

.. _class_VoxelGI_constant_SUBDIV_64:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_64** = ``0``

Используйте 64 подразделений. Это самая низкая настройка качества, но самая быстрая. Используйте ее, если можете, но особенно используйте ее на слабом оборудовании.

.. _class_VoxelGI_constant_SUBDIV_128:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_128** = ``1``

Использовать 128 подразделений. Это настройка качества по умолчанию.

.. _class_VoxelGI_constant_SUBDIV_256:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_256** = ``2``

Использовать 256 делений.

.. _class_VoxelGI_constant_SUBDIV_512:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_512** = ``3``

Использовать 512 подразбиений. Это настройка наивысшего качества, но медленная. На слабом оборудовании это может привести к остановке GPU.

.. _class_VoxelGI_constant_SUBDIV_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **SUBDIV_MAX** = ``4``

Представляет размер перечисления :ref:`Subdiv<enum_VoxelGI_Subdiv>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VoxelGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_VoxelGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

Ресурс :ref:`CameraAttributes<class_CameraAttributes>`, который определяет уровни экспозиции для запекания. Свойства автоматической экспозиции и отсутствия экспозиции будут игнорироваться. Настройки экспозиции следует использовать для уменьшения динамического диапазона, присутствующего при запекании. Если экспозиция слишком высокая, **VoxelGI** будет иметь артефакты полос или может иметь артефакты переэкспонирования.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_data:

.. rst-class:: classref-property

:ref:`VoxelGIData<class_VoxelGIData>` **data** :ref:`🔗<class_VoxelGI_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_probe_data**\ (\ value\: :ref:`VoxelGIData<class_VoxelGIData>`\ )
- :ref:`VoxelGIData<class_VoxelGIData>` **get_probe_data**\ (\ )

Ресурс :ref:`VoxelGIData<class_VoxelGIData>`, содержащий данные для этого **VoxelGI**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_VoxelGI_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Размер области, покрываемой **VoxelGI**. Он должен быть ``1.0`` или больше по каждой оси.

\ **Примечание:** Если вы увеличите размер, не увеличивая количество подразделений с помощью :ref:`subdiv<class_VoxelGI_property_subdiv>`, размер каждой ячейки увеличится, что приведет к менее детальному освещению.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_property_subdiv:

.. rst-class:: classref-property

:ref:`Subdiv<enum_VoxelGI_Subdiv>` **subdiv** = ``1`` :ref:`🔗<class_VoxelGI_property_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_subdiv**\ (\ value\: :ref:`Subdiv<enum_VoxelGI_Subdiv>`\ )
- :ref:`Subdiv<enum_VoxelGI_Subdiv>` **get_subdiv**\ (\ )

Количество раз, когда нужно разделить сетку, над которой работает **VoxelGI**. Большее число приводит к более мелкой детализации и, следовательно, к более высокому визуальному качеству, тогда как меньшее число приводит к лучшей производительности.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_VoxelGI_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ from_node\: :ref:`Node<class_Node>` = null, create_visual_debug\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_VoxelGI_method_bake>`

Запекает эффект из всех :ref:`GeometryInstance3D<class_GeometryInstance3D>`, отмеченных :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`, и :ref:`Light3D<class_Light3D>`, отмеченных либо :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>`, либо :ref:`Light3D.BAKE_DYNAMIC<class_Light3D_constant_BAKE_DYNAMIC>`. Если ``create_visual_debug`` имеет значение ``true``, после запекания света будет сгенерирована :ref:`MultiMesh<class_MultiMesh>`, в которой есть куб, представляющий каждую сплошную ячейку, причем каждый куб окрашен в цвет альбедо ячейки. Это можно использовать для визуализации данных **VoxelGI** и отладки любых проблем, которые могут возникнуть.

\ **Примечание:** :ref:`bake()<class_VoxelGI_method_bake>` работает из редактора и в экспортированных проектах. Это делает его подходящим для процедурно сгенерированных или созданных пользователем уровней. Запекание узла **VoxelGI** обычно занимает от 5 до 20 секунд в большинстве сцен. Уменьшение :ref:`subdiv<class_VoxelGI_property_subdiv>` может ускорить запекание.

\ **Примечание:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` и :ref:`Light3D<class_Light3D>` должны быть полностью готовы до вызова :ref:`bake()<class_VoxelGI_method_bake>`. Если вы создаете их процедурно и в вашем запеченном **VoxelGI** отсутствуют некоторые сетки или источники света, используйте ``call_deferred("bake")`` вместо прямого вызова :ref:`bake()<class_VoxelGI_method_bake>`.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGI_method_debug_bake:

.. rst-class:: classref-method

|void| **debug_bake**\ (\ ) :ref:`🔗<class_VoxelGI_method_debug_bake>`

Вызывает метод :ref:`bake()<class_VoxelGI_method_bake>` с включенным ``create_visual_debug``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
