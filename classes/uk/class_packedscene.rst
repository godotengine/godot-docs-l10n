:github_url: hide

.. _class_PackedScene:

PackedScene
===========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Анотація послідовної сцени.

.. rst-class:: classref-introduction-group

Опис
--------

Спрощений інтерфейс для файлу сцени. Надає доступ до операцій і перевірок, які можна виконати на самому ресурсі сцени. 

Можна використовувати для збереження вузла у файл. Під час збереження зберігається вузол, а також усі вузли, якими він володіє (див. властивість :ref:`Node.owner<class_Node_property_owner>`). 

\ **Примітка:** Вузол не повинен володіти собою. 

\ **Приклад:** Завантажте збережену сцену: 


.. tabs:: 

 .. code-tab:: gdscript
 
    # Використовуйте load() замість preload(), якщо шлях невідомий під час компіляції. 
    var scene = preload("res://scene.tscn").instantiate() 
    # Додайте вузол як дочірній вузол, до якого приєднаний скрипта. 
    add_child (scene)  

 .. code-tab:: csharp
 
    // C# не має попереднього завантаження, тому вам потрібно завжди використовувати ResourceLoader.Load<PackedScene>(). 
    var scene = ResourceLoader.Load<PackedScene>("res://scene.tscn").Instantiate(); 
    // Додати вузол як дочірній вузол, до якого приєднаний скрипта. 
    AddChild(сцена);  

 

\ **Приклад:** Збережіть вузол з іншими власниками. У наступному прикладі створено 3 об’єкти: :ref:`Node2D<class_Node2D>` (``вузол``), :ref:`RigidBody2D<class_RigidBody2D>` (``body``) і :ref:`CollisionObject2D<class_CollisionObject2D>` (``collision``). ``колізія`` є дочірнім елементом ``body``, який є дочірнім для ``node``. Тільки ``body`` належить ``node``, тому :ref:`pack()<class_PackedScene_method_pack>` збереже лише ці два вузли, але не ``колізію``. 


.. tabs:: 

 .. code-tab:: gdscript
 
    # Створення об'єктів. 
    var node = Node2D.new() 
    var body = RigidBody2D.new() 
    var collision = CollisionShape2D.new() 

    # Створення ієрархії об'єктів. 
    body.add_child(collision) 
    node.add_child(body) 

    # Змінити власника `body`, але не `collision`. 
    body.owner = node 
    var scene = PackedScene.new() 

    # Тепер упаковано лише `node` і `body`. 
    var result = scene.pack(node) 
       if result == OK: 
        var error = ResourceSaver.save(scene, "res://path/name.tscn") # Або "user://..." 
        if error != OK: 
            push_error("Під час збереження сцени на диск сталася помилка.")  

 .. code-tab:: csharp
 
    // Створення об'єктів. 
    var node = new Node2D(); 
    var body = new RigidBody2D(); 
    var collision = new CollisionShape2D(); 

    // Створення ієрархії об'єктів. 
    body.AddChild(collision); 
    node.AddChild(body); 

    // Змінити власника `body`, але не `collision`. 
    body.Owner = node; 
    var scene = new PackedScene(); 

    // Тільки `node` і `body` тепер упаковані. 
    Результат помилки = scene.Pack(node); 
    if (результат == Error.Ok) 
    {
        Error error = ResourceSaver.Save(scene, "res://path/name.tscn"); // Або "користувач //..." 
        if (error != Error. Ok) 
        { 
            GD.PushError("Під час збереження сцени на диск сталася помилка."); 
        } 
    } 



.. rst-class:: classref-introduction-group

Посібники
------------------

- `2Д Рольова гра (RPG) Демо <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`can_instantiate<class_PackedScene_method_can_instantiate>`\ (\ ) |const|                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SceneState<class_SceneState>`   | :ref:`get_state<class_PackedScene_method_get_state>`\ (\ ) |const|                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`               | :ref:`instantiate<class_PackedScene_method_instantiate>`\ (\ edit_state\: :ref:`GenEditState<enum_PackedScene_GenEditState>` = 0\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pack<class_PackedScene_method_pack>`\ (\ path\: :ref:`Node<class_Node>`\ )                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_PackedScene_GenEditState:

.. rst-class:: classref-enumeration

enum **GenEditState**: :ref:`🔗<enum_PackedScene_GenEditState>`

.. _class_PackedScene_constant_GEN_EDIT_STATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_DISABLED** = ``0``

Якщо передано до :ref:`instantiate()<class_PackedScene_method_instantiate>`, блокує редагування стану сцени.

.. _class_PackedScene_constant_GEN_EDIT_STATE_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_INSTANCE** = ``1``

Якщо передано до :ref:`instantiate()<class_PackedScene_method_instantiate>`, надає локальні ресурси сцени локальній сцені.

\ **Примітка:** Доступно лише у збірках редактора.

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN** = ``2``

Якщо передано до :ref:`instantiate()<class_PackedScene_method_instantiate>`, надає локальні ресурси сцени локальній сцені. Тільки головна сцена повинна отримувати основний стан редагування.

\ **Примітка:** Доступно лише у збірках редактора.

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN_INHERITED** = ``3``

Це схоже на :ref:`GEN_EDIT_STATE_MAIN<class_PackedScene_constant_GEN_EDIT_STATE_MAIN>`, але для випадку, коли сцена створюється як основа для іншої.

\ **Примітка:** Доступно лише у збірках редактора.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PackedScene_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_can_instantiate>`

Повертає ``true``, якщо файл сцени має вершини.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_get_state:

.. rst-class:: classref-method

:ref:`SceneState<class_SceneState>` **get_state**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_get_state>`

Повернення :ref:`SceneState<class_SceneState>`, що представляє вміст файлу сцени.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_instantiate:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **instantiate**\ (\ edit_state\: :ref:`GenEditState<enum_PackedScene_GenEditState>` = 0\ ) |const| :ref:`🔗<class_PackedScene_method_instantiate>`

Миттєва ієрархія сцени. Тригери дитячого сцена миттєве копіювання (s). Тригери :ref:`Node. НЕФІКАЦІЯ_SCENE_INSTANTIATED<class_Node_constant_ НЕФІКАЦІЯ_SCENE_INSTANTIATED>` повідомлення про кореневу вершину.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ path\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PackedScene_method_pack>`

Пакує вузол ``path`` та всі належні йому підвузли в цей **PackedScene**. Будь-які існуючі дані будуть очищені. Див. :ref:`Node.owner<class_Node_property_owner>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
