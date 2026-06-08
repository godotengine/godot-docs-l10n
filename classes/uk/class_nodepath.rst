:github_url: hide

.. _class_NodePath:

NodePath
========

Приблизний сюжетний шлях.

.. rst-class:: classref-introduction-group

Опис
--------

Вбудований тип **NodePath** :ref:`Variant<class_Variant>` представляє шлях до вузла або властивості в ієрархії вузлів. Його розроблено для ефективної передачі в багато вбудованих методів (таких як :ref:`Node.get_node()<class_Node_method_get_node>`, :ref:`Object.set_indexed()<class_Object_method_set_indexed>`, :ref:`Tween.tween_property()<class_Tween_method_tween_property>` тощо) без жорсткої залежності від вузла чи властивості, на які вони вказують. 

Шлях до вузла представлено як :ref:`String<class_String>`, що складається з імен вузлів, розділених скісною рискою (``/``) і розділених двокрапками (``:``) імен властивостей (також званих «підіменами»). Подібно до шляху файлової системи, ``".."`` і ``"."`` є спеціальними іменами вузлів. Вони посилаються на батьківський вузол і поточний вузол відповідно. 

Наведені нижче приклади є шляхами відносно поточного вузла: 

::
 
    ^"A" # Вказує на пряму дочірню A. 
    ^"A/B" # Вказує на дочірній елемент B. 
    ^"."     # Вказує на поточний вузол. 
    ^".." # Вказує на батьківський вузол. 
    ^"../C" # Вказує на рідний вузол C. 
    ^"../.." # Вказує на дідусовий вузол.  

Слеш на початку означає, що шлях є абсолютним і починається з :ref:`SceneTree<class_SceneTree>`: 

::
 
    ^"/root" # Вказує на кореневе вікно SceneTree. 
    ^"/root/Title" # Може вказувати на кореневий вузол головної сцени під назвою "Title". 
    ^"/root/Global" # Може вказувати на автоматично завантажений вузол або сцену під назвою "Global".  

Незважаючи на свою назву, шляхи вузлів також можуть вказувати на властивість: 

::
 
    ^":position" # Вказує на позицію цього об'єкта. 
    ^":position:x" # Вказує на положення цього об'єкта на осі x. 
    ^"Camera3D:rotation:y" # Вказує на дочірню камеру Camera3D і її обертання y. 
    ^"/root:size:x" # Вказує на кореневе вікно та його ширину.  

У деяких ситуаціях можна опустити початковий ``:`` під час вказівки на властивість об’єкта. Як приклад, це випадок :ref:`Object.set_indexed()<class_Object_method_set_indexed>` і :ref:`Tween.tween_property()<class_Tween_method_tween_property>`, оскільки ці методи викликають :ref:`get_as_property_path()<class_NodePath_method_get_as_property_path>` під капотом. Однак зазвичай рекомендується зберігати префікс ``:``. 

Шляхи вузлів не можуть перевірити, чи вони дійсні, і можуть вказувати на вузли або властивості, які не існують. Їхнє значення повністю залежить від контексту, у якому вони використовуються. 

Зазвичай вам не потрібно турбуватися про тип **NodePath**, оскільки рядки автоматично перетворюються на тип, коли це необхідно. Бувають випадки, коли визначення шляхів вузлів є корисним. Наприклад, експортовані властивості **NodePath** дозволяють легко вибрати будь-який вузол у поточній редагованій сцені. Вони також автоматично оновлюються під час переміщення, перейменування або видалення вузлів у редакторі дерева сцен. Дивіться також :ref:`@GDScript.@export_node_path<class_@GDScript_annotation_@export_node_path>`. 

Дивіться також :ref:`StringName<class_StringName>`, який є подібним типом, розробленим для оптимізованих рядків. 

\ **Примітка.** У логічному контексті **NodePath** матиме значення ``false``, якщо він порожній (``NodePath("")``). В іншому випадку **NodePath** завжди матиме значення ``true``.

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `2Д Рольова гра (RPG) Демо <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ )                                         |
   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ from\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`NodePath<class_NodePath_constructor_NodePath>`\ (\ from\: :ref:`String<class_String>`\ )     |
   +---------------------------------+----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`get_as_property_path<class_NodePath_method_get_as_property_path>`\ (\ ) |const|                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_concatenated_names<class_NodePath_method_get_concatenated_names>`\ (\ ) |const|                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_concatenated_subnames<class_NodePath_method_get_concatenated_subnames>`\ (\ ) |const|                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_name<class_NodePath_method_get_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_name_count<class_NodePath_method_get_name_count>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_subname<class_NodePath_method_get_subname>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_subname_count<class_NodePath_method_get_subname_count>`\ (\ ) |const|                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_NodePath_method_hash>`\ (\ ) |const|                                                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_absolute<class_NodePath_method_is_absolute>`\ (\ ) |const|                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_empty<class_NodePath_method_is_empty>`\ (\ ) |const|                                                                    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`     | :ref:`slice<class_NodePath_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_NodePath_operator_neq_NodePath>`\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_NodePath_operator_eq_NodePath>`\ (\ right\: :ref:`NodePath<class_NodePath>`\ )  |
   +-------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_NodePath_constructor_NodePath:

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ ) :ref:`🔗<class_NodePath_constructor_NodePath>`

Будуємо порожній **NodePath**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`NodePath<class_NodePath>`\ )

Constructs a **NodePath** як копія даної **NodePath**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`NodePath<class_NodePath>` **NodePath**\ (\ from\: :ref:`String<class_String>`\ )

Створює **NodePath** із :ref:`String<class_String>`. Створений шлях є абсолютним, якщо перед ним ставиться коса риска (див. :ref:`is_absolute()<class_NodePath_method_is_absolute>`). 

«Підімена», необов’язково включені після шляху до цільового вузла, можуть вказувати на властивості, а також можуть бути вкладеними. 

Наступні рядки можуть бути дійсними шляхами вузлів: 

::
 
    # Вказує на вузол Sprite2D. 
    "Level/RigidBody2D/Sprite2D" 

    # Вказує на вузол Sprite2D і його "текстурний" ресурс. 
    # get_node() отримає Sprite2D, а get_node_and_resource() 
    # отримає як вузол Sprite2D, так і ресурс "текстура". 
    "Level/RigidBody2D/Sprite2D: текстура" 

    # Вказує на вузол Sprite2D і його властивість "position". 
    "Level/RigidBody2D/Sprite2D:позиція" 

    # Вказує на вузол Sprite2D і компонент "x" його властивості "position". 
    "Level/RigidBody2D/Sprite2D:position:x" 

    # Вказує на вузол RigidBody2D як абсолютний шлях, що починається від SceneTree. 
    "/root/Level/RigidBody2D"  

\ **Примітка:** У GDScript також можна перетворити постійний рядок на шлях до вузла, додавши до нього префікс ``^``. ``^"шлях/до/вузла"`` еквівалентний ``NodePath("шлях/до/вузла")``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_NodePath_method_get_as_property_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_as_property_path**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_as_property_path>`

Повертає копію шляху цього вузла з префіксом двокрапки (``:``), перетворюючи його на чистий шлях властивостей без імен вузла (відносно поточного вузла). 


.. tabs:: 

 .. code-tab:: gdscript
 
    # node_path вказує на властивість "x" дочірнього вузла з назвою "position". 
    var node_path = ^"position:x" 

    # property_path вказує на «позицію» на осі «x» цього вузла. 
    var property_path = node_path.get_as_property_path() 
    print(property_path) # Виводить ":position:x"  

 .. code-tab:: csharp
 
    // nodePath вказує на властивість "x" дочірнього вузла з назвою "position". 
    var nodePath = new NodePath("position:x"); 

    // propertyPath вказує на "положення" на осі "x" цього вузла. 
    NodePath propertyPath = nodePath.GetAsPropertyPath(); 
    GD.Print(propertyPath); // Виводить ":position:x"  



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_names:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_names**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_names>`

Повертає всі імена вузлів, що містяться у символіці сусле (``/``) як єдиний :ref:`StringName<class_StringName>`.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_concatenated_subnames:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_concatenated_subnames**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_concatenated_subnames>`

Повертає всі підназви властивостей, об’єднані символом двокрапки (``:``) як один :ref:`StringName<class_StringName>`. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var node_path = ^"Sprite2D:texture:resource_name" 
    print(node_path.get_concatenated_subnames()) # Виводить "texture:resource_name"  

 .. code-tab:: csharp
 
    var nodePath = new NodePath("Sprite2D:texture:resource_name"); 
    GD.Print(nodePath.GetConcatenatedSubnames()); // Друкує "texture:resource_name"  



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_name>`

Повертає ім’я вузла, указане ``idx``, починаючи з 0. Якщо ``idx`` виходить за межі, генерується помилка. Дивіться також :ref:`get_subname_count()<class_NodePath_method_get_subname_count>` і :ref:`get_name_count()<class_NodePath_method_get_name_count>`. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var sprite_path = NodePath("../RigidBody2D/Sprite2D") 
    print(sprite_path.get_name(0)) # Виводить ".." 
    print(sprite_path.get_name(1)) # Друкує "RigidBody2D" 
    print(sprite_path.get_name(2)) # Виводить "Sprite"  

 .. code-tab:: csharp
 
    var spritePath = new NodePath("../RigidBody2D/Sprite2D"); 
    GD.Print(spritePath.GetName(0)); // Виводить ".." 
    GD.Print(spritePath.GetName(1)); // Друкує "PathFollow2D" 
    GD.Print(spritePath.GetName(2)); // Друкує "Sprite"  



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_name_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_name_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_name_count>`

Повертаємо кількість імен вузлів в шляху. Прізвище не входить.

Наприклад, ``./RigidBody2D/Sprite2D:texture"`` містить назви вузлів 3.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_subname**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NodePath_method_get_subname>`

Повертає назву властивості, указану ``idx``, починаючи з 0. Якщо ``idx`` виходить за межі, генерується помилка. Дивіться також :ref:`get_subname_count()<class_NodePath_method_get_subname_count>`. 


.. tabs:: 

 .. code-tab:: gdscript
 
    var path_to_name = NodePath("Sprite2D:texture:resource_name") 
    print(path_to_name.get_subname(0)) # Друкує "текстуру" 
    print(path_to_name.get_subname(1)) # Виводить "назва_ресурсу"  

 .. code-tab:: csharp
 
    var pathToName = new NodePath("Sprite2D:texture:resource_name"); 
    GD.Print(pathToName.GetSubname(0)); // Друкує "текстуру" 
    GD.Print(pathToName.GetSubname(1)); // Виводить "resource_name"  



.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_get_subname_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_subname_count**\ (\ ) |const| :ref:`🔗<class_NodePath_method_get_subname_count>`

Повертаємо кількість майнових імен ("підім'я") в доріці. Кожна підпам'я в контурі вершини перераховується після колонного символу (``:``).

Наприклад, ``"Level/RigidBody2D/Sprite2D:texture:resource_name"`` містить 2 підмені.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_NodePath_method_hash>`

Повертає значення 32-бітного хешу, що представляє вміст вершини.

\ **Примітка:** Маршрути Node з однаковими значеннями хеш * не* гарантовано бути таким же, як наслідок зіткнень. Відсутні шляхи з різними значеннями хешу гарантовано відрізняються.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_absolute**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_absolute>`

Повертає ``true``, якщо шлях вершини абсолютний. На відміну від відносного шляху, абсолютний шлях представлений провідним символом зіткнення (``/``) і завжди починається з :ref:`SceneTree<class_SceneTree>`. Він може бути використаний для надійного доступу вузлів з кореневого вузла (наприклад, ``"/root/Global"``, якщо автозавантаження названо "Global".

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_NodePath_method_is_empty>`

Повертає ``true``, якщо шлях вершини був побудований з порожнього :ref:`String<class_String>` (``"""``).

.. rst-class:: classref-item-separator

----

.. _class_NodePath_method_slice:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_NodePath_method_slice>`

Повертаємо розріз **NodePath**, з ``begin`` (включно) до ``end`` (виключно), як новий **NodePath**.

Абсолютне значення ``begin`` і ``end`` буде зафіксовано до суми :ref:`get_name_count()<class_NodePath_method_get_name_count>` і :ref:`get_subname_count()<class_NodePath_method_get_subname_count>`, тому значення за замовчуванням для ``end`` встановлює кінець **NodePath** кінцем розрізу за замовчуванням (i.e. ``path.slice(1)`` є скороченим записом ``path.slice(1, path.get_name_count() + path.get_subname_count()``).

Якщо ж ``start`` або ``end`` є негативними, вони будуть відносно кінця **NodePath** (i.e. ``path.slice(0, -2)`` є скороченим записом для ``path.slice(0, path.get_name_count() + path.get_subname_count() - 2)``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_NodePath_operator_neq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_neq_NodePath>`

Повертає ``true``, якщо два шляхи вершини не рівні.

.. rst-class:: classref-item-separator

----

.. _class_NodePath_operator_eq_NodePath:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_NodePath_operator_eq_NodePath>`

Повертаємо ``true``, якщо два шляхи вершини рівні, тобто вони складаються з однакових імен вузлів і підnames в одному порядку.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
