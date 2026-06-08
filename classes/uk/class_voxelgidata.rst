:github_url: hide

.. _class_VoxelGIData:

VoxelGIData
===========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Містить запечені воксельні глобальні світлові дані для використання в вершині :ref:`VoxelGI<class_VoxelGI>`.

.. rst-class:: classref-introduction-group

Опис
--------

**VoxelGIData** містить випечений воксель глобальне освітлення для використання в :ref:`VoxelGI<class_VoxelGI>`. **VoxelGIData** також пропонує кілька властивостей для регулювання кінцевого зовнішнього вигляду глобального освітлення. Ці властивості можна регулювати в режимі run-time без необхідності запікати вузол :ref:`VoxelGI<class_VoxelGI>`.

\ **Примітка:** Для запобігання текстових сцен файлів (``.tscn``) з вирощування занадто багато і стає повільним для завантаження і збереження, завжди заощаджуйте **VoxelGIData** на зовнішній бінарний ресурсний файл (``.res``) замість того, щоб зібрати його в межах сцени. Це може бути зроблено шляхом натискання стрілки вниз поруч з ресурсом **VoxelGIData**, вибираючи **Edit**, натиснувши значок флеш-диска у верхній частині інспектора після вибору **Зберегти як ...**.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bias<class_VoxelGIData_property_bias>`                       | ``1.5``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dynamic_range<class_VoxelGIData_property_dynamic_range>`     | ``2.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`energy<class_VoxelGIData_property_energy>`                   | ``1.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`interior<class_VoxelGIData_property_interior>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`normal_bias<class_VoxelGIData_property_normal_bias>`         | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`propagation<class_VoxelGIData_property_propagation>`         | ``0.5``   |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>` | ``true``  |
   +---------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`allocate<class_VoxelGIData_method_allocate>`\ (\ to_cell_xform\: :ref:`Transform3D<class_Transform3D>`, aabb\: :ref:`AABB<class_AABB>`, octree_size\: :ref:`Vector3<class_Vector3>`, octree_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, data_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, distance_field\: :ref:`PackedByteArray<class_PackedByteArray>`, level_counts\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                         | :ref:`get_bounds<class_VoxelGIData_method_get_bounds>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                   |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`get_data_cells<class_VoxelGIData_method_get_data_cells>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_level_counts<class_VoxelGIData_method_get_level_counts>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`get_octree_cells<class_VoxelGIData_method_get_octree_cells>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`get_octree_size<class_VoxelGIData_method_get_octree_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`get_to_cell_xform<class_VoxelGIData_method_get_to_cell_xform>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VoxelGIData_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``1.5`` :ref:`🔗<class_VoxelGIData_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

Нормальні засоби для використання непрямого освітлення та відбиття. Більшість значень знижують самовіддачі, видимі в неробочих матеріалах, за вартістю більш помітних світлових витоків і плащів непрямого освітлення. Для того, щоб пріоритетізувати ховання самовідтворень над якістю освітлення, встановити :ref:`bias<class_VoxelGIData_property_bias>` до ``0.0`` та :ref:`normal_bias<class_VoxelGIData_property_normal_bias>` до значення ``1.0`` та ``2.0``.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_dynamic_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **dynamic_range** = ``2.0`` :ref:`🔗<class_VoxelGIData_property_dynamic_range>`

.. rst-class:: classref-property-setget

- |void| **set_dynamic_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dynamic_range**\ (\ )

Динамічний діапазон використання (``1.0`` являє собою невисоку динамічну яскравість сценічного діапазону. Більшість значень можна використовувати для забезпечення більш яскравого непрямого освітлення, за вартістю більш помітних кольорових смуг у темних зонах (як непряме освітлення і відбиття). Щоб уникнути кольорових смуг, рекомендується використовувати найнижче значення, яке не призводить до видимого освітлення.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy** = ``1.0`` :ref:`🔗<class_VoxelGIData_property_energy>`

.. rst-class:: classref-property-setget

- |void| **set_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy**\ (\ )

Енергія непрямого освітлення та відблисків, що створюються вузлом :ref:`VoxelGI<class_VoxelGI>`. Вищі значення призводять до яскравішого непрямого освітлення. Якщо непряме освітлення виглядає занадто плоским, спробуйте зменшити :ref:`propagation<class_VoxelGIData_property_propagation>` та одночасно збільшити :ref:`energy<class_VoxelGIData_property_energy>`. Див. також :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`, який впливає на ефективну яскравість непрямого освітлення.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_VoxelGIData_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

Якщо ``true``, освітлення :ref:`Environment<class_Environment>` ігнорується вузлом :ref:`VoxelGI<class_VoxelGI>`. Якщо ``false``, освітлення :ref:`Environment<class_Environment>` враховується вузлом :ref:`VoxelGI<class_VoxelGI>`. Освітлення :ref:`Environment<class_Environment>` оновлюється в режимі реального часу, а це означає, що його можна змінити без повторного завантаження вузла :ref:`VoxelGI<class_VoxelGI>`.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_normal_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_bias** = ``0.0`` :ref:`🔗<class_VoxelGIData_property_normal_bias>`

.. rst-class:: classref-property-setget

- |void| **set_normal_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_bias**\ (\ )

Нормальні засоби для використання непрямого освітлення та відбиття. Більшість значень знижують самовіддачі, видимі в неробочих матеріалах, за вартістю більш помітних світлових витоків і плащів непрямого освітлення. Дивись також :ref:`bias<class_VoxelGIData_property_bias>`. Для того, щоб пріоритетізувати ховання самовідтворень над якістю освітлення, встановити :ref:`bias<class_VoxelGIData_property_bias>` до ``0.0`` і :ref:`normal_bias<class_VoxelGIData_property_normal_bias>` до значення ``1.0`` і ``2.0``.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_propagation:

.. rst-class:: classref-property

:ref:`float<class_float>` **propagation** = ``0.5`` :ref:`🔗<class_VoxelGIData_property_propagation>`

.. rst-class:: classref-property-setget

- |void| **set_propagation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_propagation**\ (\ )

Множник, який використовується, коли світло відбивається від поверхні. Вищі значення призводять до яскравішого непрямого освітлення. Якщо непряме освітлення виглядає занадто плоским, спробуйте зменшити :ref:`propagation<class_VoxelGIData_property_propagation>` та одночасно збільшити :ref:`energy<class_VoxelGIData_property_energy>`. Див. також :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`, який впливає на ефективну яскравість непрямого освітлення.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_property_use_two_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_two_bounces** = ``true`` :ref:`🔗<class_VoxelGIData_property_use_two_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_two_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_two_bounces**\ (\ )

Якщо ``true``, виконує два бунти непрямого освітлення замість одного. Це робить непряме освітлення більш натуральним і яскравішим за невеликою вартістю виконання. Друга відмова також видно у відбиттях. Якщо сцена з'являється занадто яскравою після включення :ref:`use_two_bounces<class_VoxelGIData_property_use_two_bounces>`, регулюйте :ref:`propagation<class_VoxelGIData_property_propagation>` і :ref:`energy<class_VoxelGIData_property_energy>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_VoxelGIData_method_allocate:

.. rst-class:: classref-method

|void| **allocate**\ (\ to_cell_xform\: :ref:`Transform3D<class_Transform3D>`, aabb\: :ref:`AABB<class_AABB>`, octree_size\: :ref:`Vector3<class_Vector3>`, octree_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, data_cells\: :ref:`PackedByteArray<class_PackedByteArray>`, distance_field\: :ref:`PackedByteArray<class_PackedByteArray>`, level_counts\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_VoxelGIData_method_allocate>`

Ініціалізує цей об’єкт **VoxelGIData** із вказаними даними. Параметр ``octree_cells`` повинен бути кратним 32. Параметр ``octree_cells`` повинен удвічі перевищувати розмір параметра ``data_cells``. Виділені дані можна згодом отримати за допомогою різних методів-геттерів.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_bounds:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_bounds>`

Повертає межі запечених воксельних даних як :ref:`AABB<class_AABB>`, який має відповідати :ref:`VoxelGI.size<class_VoxelGI_property_size>` після запекання (який містить лише розмір як :ref:`Vector3<class_Vector3>`).

\ **Примітка:** Якщо розмір було змінено без запекання даних VoxelGI, то значення :ref:`get_bounds()<class_VoxelGIData_method_get_bounds>` та :ref:`VoxelGI.size<class_VoxelGI_property_size>` не збігатимуться.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_data_cells:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_data_cells**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_data_cells>`

Повертає дані про оброблену комірку для цього об’єкта **VoxelGIData**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_level_counts:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_level_counts**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_level_counts>`

Повертає кількість обчислених рівнів для цього об’єкта **VoxelGIData**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_octree_cells:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_octree_cells**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_octree_cells>`

Повертає дані про обчислені комірки октодерева для цього об’єкта **VoxelGIData**.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_octree_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_octree_size**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_octree_size>`

Повертає розмір «запеченого» октодерева для цього об’єкта **VoxelGIData**, що відповідає кількості підрозділів по кожній осі. Цю інформацію можна переглянути в редакторі, навівши курсор на кнопку **Bake VoxelGI** у верхній частині вікна 3D-редактора, коли вибрано вузол :ref:`VoxelGI<class_VoxelGI>`, і переглянувши поле **Subdivisions** у підказці.

.. rst-class:: classref-item-separator

----

.. _class_VoxelGIData_method_get_to_cell_xform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_to_cell_xform**\ (\ ) |const| :ref:`🔗<class_VoxelGIData_method_get_to_cell_xform>`

Повертає обчислене перетворення комірки для цього об’єкта **VoxelGIData**.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
