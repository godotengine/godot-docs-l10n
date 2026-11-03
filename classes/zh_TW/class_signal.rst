:github_url: hide

.. _class_Signal:

Signal
======

代表 :ref:`Object<class_Object>` 中某個訊號的內建型別。

.. rst-class:: classref-introduction-group

說明
----

**Signal** 是一種內建的 :ref:`Variant<class_Variant>` 型別，它代表了一個 :ref:`Object<class_Object>` 實例的訊號。和所有的 :ref:`Variant<class_Variant>` 型別一樣，它可以被儲存在變數中，也可以被傳遞給函式。訊號允許所有已連接的 :ref:`Callable<class_Callable>`\ （以及它們各自所屬的物件）去監聽並響應事件，而無需彼此之間直接參照。這種設計讓程式碼保持了極高的靈活性，也更易於管理。你可以使用 :ref:`Object.has_signal()<class_Object_method_has_signal>` 方法來檢查一個 :ref:`Object<class_Object>` 是否擁有指定名稱的訊號。

在 GDScript 中，可以使用 ``signal`` 關鍵字來聲明訊號；而在 C# 中，則可以在委託（delegate）上使用 ``[Signal]`` 特性（Attribute）來定義。


.. tabs::

 .. code-tab:: gdscript

    signal attacked

    # 也可以聲明額外的參數。
    # 這些參數在發射訊號時必須被傳入。
    signal item_dropped(item_name, amount)

 .. code-tab:: csharp

    [Signal]
    delegate void AttackedEventHandler();

    // 也可以聲明額外的參數。
    // 這些參數在發射訊號時必須被傳入。
    [Signal]
    delegate void ItemDroppedEventHandler(string itemName, int amount);



在 Godot 中，連接訊號是最常見的操作之一，API 提供了多種實現方式，下面會做詳細介紹。下面的程式碼塊展示了推薦的連接方法。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # 這裡的 button_down 是一個 Signal（訊號）Variant 型別。因此，我們呼叫的是 Signal.connect() 方法，而不是 Object.connect()。
        # 關於該 API 更深入的介紹，請參見下方的討論。
        button.button_down.connect(_on_button_down)

        # 這裡假設存在一個定義了 `hit` 訊號的 `Player` 類。
        var player = Player.new()
        # 我們再次使用了 Signal.connect()，同時還使用了 Callable.bind() 方法。
        # 它會回傳一個新的 Callable，並且這個 Callable 已經綁定了相應的參數。
        player.hit.connect(_on_player_hit.bind("sword", 100))

    func _on_button_down():
        print("Button down!")

    func _on_player_hit(weapon_type, damage):
        print("Hit with weapon %s for %d damage." % [weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // C# 支援將訊號作為事件來傳遞，因此我們可以使用這種符合語言習慣的寫法：
        button.ButtonDown += OnButtonDown;

        // 這裡假設存在一個定義了 `Hit` 訊號的 `Player` 類。
        var player = new Player();
        // 當我們需要綁定額外的參數時，可以使用 Lambda 運算式。
        player.Hit += () => OnPlayerHit("sword", 100);
    }

    private void OnButtonDown()
    {
        GD.Print("Button down!");
    }

    private void OnPlayerHit(string weaponType, int damage)
    {
        GD.Print($"Hit with weapon {weaponType} for {damage} damage.");
    }



\ ``Object.connect()`` **還是** ``Signal.connect()``\ **？**\ 

如上文所示，連接訊號的推薦方法並不是 :ref:`Object.connect()<class_Object_method_connect>`\ 。下面的程式碼塊展示了連接訊號的四種選項，分別是使用這種舊版方法或推薦的 :ref:`connect()<class_Signal_method_connect>`\ ，以及使用隱式的 :ref:`Callable<class_Callable>` 或手動定義的 :ref:`Callable<class_Callable>`\ 。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # 方法一：使用 Object.connect()，並為定義好的函式隱式建立一個 Callable。
        button.connect("button_down", _on_button_down)
        # 方法二：使用 Object.connect()，並通過指定目標物件和方法名來手動建置一個 Callable。
        button.connect("button_down", Callable(self, "_on_button_down"))
        # 方法三：使用 Signal.connect()，並為定義好的函式隱式建立一個 Callable。
        button.button_down.connect(_on_button_down)
        # 方法四：使用 Signal.connect()，並通過指定目標物件和方法名來手動建置一個 Callable。
        button.button_down.connect(Callable(self, "_on_button_down"))

    func _on_button_down():
        print("Button down!")

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // 方法一：在 C# 中，我們可以將訊號當作事件來使用，並通過這種符合語言習慣的語法進行連接：
        button.ButtonDown += OnButtonDown;
        // 方法二：使用 GodotObject.Connect()，並通過方法組來建置一個 Callable。
        button.Connect(Button.SignalName.ButtonDown, Callable.From(OnButtonDown));
        // 方法三：使用 GodotObject.Connect()，並通過指定目標物件和方法名來建置一個 Callable。
        button.Connect(Button.SignalName.ButtonDown, new Callable(this, MethodName.OnButtonDown));
    }

    private void OnButtonDown()
    {
        GD.Print("Button down!");
    }



雖然所有選項的最終結果都一樣（\ ``button`` 的 :ref:`BaseButton.button_down<class_BaseButton_signal_button_down>` 訊號都會被連接到 ``_on_button_down`` 上），但 **選項 3** 提供了最好的驗證機制：如果 ``button_down`` **Signal** 或者 ``_on_button_down`` :ref:`Callable<class_Callable>` 沒有被定義，它會在編譯階段直接輸出出錯誤。另一方面，\ **選項 2** 僅僅取決於字串名稱，只能在程式執行時進行驗證：如果 ``"button_down"`` 不是一個訊號，或者 ``"_on_button_down"`` 不是 ``self`` 物件中的一個方法，它會在執行時產生一個錯誤。使用選項 1、2 或 4 的主要原因，是你確實需要使用字串（例如，根據從設定檔案中讀取的字串來以編程方式連接訊號）。除此之外，選項 3 是最推薦（也是最快）的方法。

\ **綁定和傳遞參數：**\ 綁定參數的語法是通過 :ref:`Callable.bind()<class_Callable_method_bind>`\ ，它會回傳一個綁定了參數的 :ref:`Callable<class_Callable>` 副本。

當呼叫 :ref:`emit()<class_Signal_method_emit>` 或 :ref:`Object.emit_signal()<class_Object_method_emit_signal>` 時，也可以傳遞訊號參數。

下面的範例展示了這些訊號參數與綁定參數之間的關係。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # 這裡假設存在一個定義了 `hit` 訊號的 `Player` 類。
        var player = Player.new()
        # 使用 Callable.bind()。
        player.hit.connect(_on_player_hit.bind("sword", 100))

        # 發射訊號時新增的參數會最先傳遞。
        player.hit.emit("Dark lord", 5)

    # 我們在發射訊號時傳遞了兩個參數 (`hit_by`, `level`)，
    # 並在連接訊號時綁定了另外兩個參數 (`weapon_type`, `damage`)。
    func _on_player_hit(hit_by, level, weapon_type, damage):
        print("Hit by %s (level %d) with weapon %s for %d damage." % [hit_by, level, weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        // 這裡假設存在一個定義了 `Hit` 訊號的 `Player` 類。
        var player = new Player();
        // 使用 Lambda 運算式建立一個閉包，來捕獲額外的參數。
        // Lambda 運算式只會接收到訊號委託所定義的參數。
        player.Hit += (hitBy, level) => OnPlayerHit(hitBy, level, "sword", 100);

        // 發射訊號時新增的參數會最先傳遞。
        player.EmitSignal(SignalName.Hit, "Dark lord", 5);
    }

    // 我們在發射訊號時傳入了兩個參數（`hit_by` 和 `level`），
    // 並在連接訊號時綁定了另外兩個參數（`weapon_type` 和 `damage`）。
    private void OnPlayerHit(string hitBy, int level, string weaponType, int damage)
    {
        GD.Print($"Hit by {hitBy} (level {level}) with weapon {weaponType} for {damage} damage.");
    }



\ **注意：** 在布林環境下，如果訊號為 null（空），它的求值結果將為 ``false``\ （假）（詳見 :ref:`is_null()<class_Signal_method_is_null>`\ ）。除此之外，訊號的求值結果始終為 ``true``\ （真）。

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用訊號 <../getting_started/step_by_step/signals>`

- `GDScript 基礎 <../tutorials/scripting/gdscript/gdscript_basics.html#signals>`__

.. rst-class:: classref-reftable-group

建構子
------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ )                                                                                     |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ from\: :ref:`Signal<class_Signal>`\ )                                                 |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ ) |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`connect<class_Signal_method_connect>`\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`disconnect<class_Signal_method_disconnect>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`emit<class_Signal_method_emit>`\ (\ ...\ ) |vararg| |const|                                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`get_connections<class_Signal_method_get_connections>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_name<class_Signal_method_get_name>`\ (\ ) |const|                                                                      |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_object<class_Signal_method_get_object>`\ (\ ) |const|                                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_object_id<class_Signal_method_get_object_id>`\ (\ ) |const|                                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`has_connections<class_Signal_method_has_connections>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_connected<class_Signal_method_is_connected>`\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const|                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_null<class_Signal_method_is_null>`\ (\ ) |const|                                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

運算子
------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Signal_operator_neq_Signal>`\ (\ right\: :ref:`Signal<class_Signal>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Signal_operator_eq_Signal>`\ (\ right\: :ref:`Signal<class_Signal>`\ )  |
   +-------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

建構子說明
----------

.. _class_Signal_constructor_Signal:

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ ) :ref:`🔗<class_Signal_constructor_Signal>`

建構空的 **Signal**\ ，沒有綁定物件和訊號名稱。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ from\: :ref:`Signal<class_Signal>`\ )

建構給定 **Signal** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ )

新建 **Signal** 物件，參照 ``object`` 物件中名為 ``signal`` 的訊號。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Signal_method_connect:

.. rst-class:: classref-method

:ref:`int<class_int>` **connect**\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Signal_method_connect>`

將訊號連接到可呼叫體 ``callable``\ 。還可以新增 ``flags`` 對連接的行為進行設定（見 :ref:`ConnectFlags<enum_Object_ConnectFlags>` 常數）。可以使用 :ref:`Callable.bind()<class_Callable_method_bind>` 為連接的 ``callable`` 提供額外的參數。

一個訊號只能和同一個 :ref:`Callable<class_Callable>` 連接一次。如果訊號已連接，則會回傳 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` 並生成錯誤，除非訊號是用 :ref:`Object.CONNECT_REFERENCE_COUNTED<class_Object_constant_CONNECT_REFERENCE_COUNTED>` 連接的。要防止這個問題，請先使用 :ref:`is_connected()<class_Signal_method_is_connected>` 檢查已有連接。

::

    for button in $Buttons.get_children():
        button.pressed.connect(_on_pressed.bind(button))

    func _on_pressed(button):
        print(button.name, " 被按了一下")

\ **注意：**\ 如果 ``callable`` 的物件被釋放，連接會丟失。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_disconnect:

.. rst-class:: classref-method

|void| **disconnect**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Signal_method_disconnect>`

將該訊號與給定的 :ref:`Callable<class_Callable>` 斷開連接。如果該連接不存在，則會生成錯誤。請使用 :ref:`is_connected()<class_Signal_method_is_connected>` 來確保連接存在。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_emit:

.. rst-class:: classref-method

|void| **emit**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Signal_method_emit>`

發出該訊號。與該訊號相連的所有 :ref:`Callable<class_Callable>` 都將被觸發。此方法支援可變數量的參數，所以參數可以用逗號分隔列表的形式傳遞。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_connections>`

返回該訊號的連接 :ref:`Array<class_Array>`\ 。連接用 :ref:`Dictionary<class_Dictionary>` 表示，包含三個條目：

- ``signal`` 是對此訊號的引用。

- ``callable`` 是對連接的 :ref:`Callable<class_Callable>` 的引用。

- ``flags`` 是 :ref:`ConnectFlags<enum_Object_ConnectFlags>` 的組合。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_name>`

返回該訊號的名稱。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object>`

返回發出該訊號的物件。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object_id>`

返回發出該訊號的物件的 ID（見 :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_has_connections>`

如果存在連接到該訊號的 :ref:`Callable<class_Callable>`\ ，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Signal_method_is_connected>`

如果指定的 :ref:`Callable<class_Callable>` 已連接到此訊號，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Signal_method_is_null>`

如果該 **Signal** 不存在物件且訊號名為空，則回傳 ``true``\ 。等價於 ``signal == Signal()``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

運算子說明
----------

.. _class_Signal_operator_neq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_neq_Signal>`

如果訊號的物件或名稱不同，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Signal_operator_eq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_eq_Signal>`

如果訊號的物件和名稱相同，則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
