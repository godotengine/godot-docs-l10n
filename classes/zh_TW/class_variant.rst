:github_url: hide

.. _class_Variant:

Variant
=======

Godot 中最重要的資料型別。

.. rst-class:: classref-introduction-group

說明
----

在電腦編程中，Variant（變體）類是用來儲存各種其他型別的類。像 PHP、 Lua、 JavaScript 和 GDScript 這樣的動態編程語言喜歡用它們在後端儲存變數資料。使用 Variant，屬性可以自由地更改值型別。


.. tabs::

 .. code-tab:: gdscript

    var foo = 2 # foo 是動態型別的整數
    foo = "現在 foo 是字串！"
    foo = RefCounted.new() # foo 是 Object
    var bar: int = 2 # bar 是靜態型別的整數。
    # bar = "誒呀！我沒法讓靜態型別的變數變成其他型別！"

 .. code-tab:: csharp

    // C# 是靜態型別的。變數設定型別後無法改變。你可以用 `var` 關鍵字讓編譯器自動推斷型別。
    var foo = 2; // foo 是 32 位元整數（int）。請注意，GDScript 中的整數是 64 位元的，在 C# 中與之等價的是 `long`。
    // foo = "foo 過去、現在、將來都是整數，沒法變成字串！";
    var boo = "boo 是字串！";
    var ref = new RefCounted(); // var 非常適合與建構函式配合使用。

    // Godot 也提供了 Variant 類，類似於一個與所有 Variant 相容型別的聯合體。
    Variant fooVar = 2; // fooVar 是動態型別的整數（在 Variant 型別中儲存為 `long`）。
    fooVar = "現在 fooVar 是字串！";
    fooVar = new RefCounted(); // fooVar 是 GodotObject。



Godot 在 Variant 中追蹤所有腳本 API 變數。你一直在無意中使用 Variant。某種語言為保持資料型別而執行自己的規則時，那麼就是該語言在基礎 Variant 腳本 API 上應用了自訂的邏輯。

- GDScript 會自動將數值進行包裝。預設情況下會將所有資料儲存在普通的 Variant 中，也可以選擇對變數型別執行自訂的靜態型別規則。

- C# 是靜態型別的，但是當它需要表示動態值時，就會在需要 Godot 的 Variant 類的地方使用它自己實作的 **Variant** 型別。C# Variant 可以用任意相容型別隱式賦值，但反之則需要顯式型別轉換。

全域函式 :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>` 回傳的是列舉型別的值，表示目前變數中所儲存的 Variant 型別（見 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`\ ）。


.. tabs::

 .. code-tab:: gdscript

    var foo = 2
    match typeof(foo):
        TYPE_NIL:
            print("foo 為 null")
        TYPE_INT:
            print("foo 為整數")
        TYPE_OBJECT:
            # 請注意，Object 有自己的特殊分類。
            # 要取得實際的 Object 型別名稱，你需要使用 `get_class()` 方法。
            print("foo is a(n) %s" % foo.get_class()) # 將類別名稱注入格式字串中。
            # 請注意，取得到的並不是腳本的 `class_name` 全域名稱。
            # 如果要取得 `class_name`，請改用 `foo.get_script().get_global_name()`。

 .. code-tab:: csharp

    Variant foo = 2;
    switch (foo.VariantType)
    {
        case Variant.Type.Nil:
            GD.Print("foo 為 null");
            break;
        case Variant.Type.Int:
            GD.Print("foo 為整數");
            break;
        case Variant.Type.Object:
            // 請注意，Object 有自己的特殊分類。
            // 可以將 Variant 轉換為 GodotObject，通過反射取得名稱。
            GD.Print($"foo is a(n) {foo.AsGodotObject().GetType().Name}");
            break;
    }



Variant 只佔 20 個位元組，可以在其中儲存幾乎所有的引擎資料型別。Variant 很少用於長期儲存資訊，主要還是用於通信、編輯、序列化和移動資料。

Godot 特別緻力於使其 Variant 類盡可能靈活；以使它可被用於各種操作，促進 Godot 所有系統之間的聯繫。

Variant：

- 可以儲存幾乎任何資料型別。

- 可以在許多 Variant 之間執行操作。GDScript 使用 Variant 作為其原子/原生資料型別。

- 可以被雜湊，所以可以快速與其他 Variant 進行比較。

- 可以用於資料型別之間的安全轉換。

- 可以用來抽象呼叫方法和它們的參數。Godot 通過 Variant 匯出所有函式。

- 可以用來推遲呼叫或線上程之間移動資料。

- 可以序列化為二進位並儲存到磁碟，或通過網路傳輸。

- 可以序列化為文字，用於輸出數值和可編輯設定項。

- 可以作為一個匯出的屬性工作，所以編輯器可以通用地進行編輯。

- 可以用於字典、陣列、解析器等。

\ **容器（陣列和字典）：**\ 它們都是用 Variant 來實作的。\ :ref:`Dictionary<class_Dictionary>` 可以將任何作為鍵的資料型別匹配到到任何其他資料型別。\ :ref:`Array<class_Array>` 就是持有 Variant 的陣列。當然，Variant 也可以在裡面再容納 :ref:`Dictionary<class_Dictionary>` 和 :ref:`Array<class_Array>`\ ，使其更加靈活。

對容器的修改會修改所有對它的參照。如果需要多執行緒存取，應該建立 :ref:`Mutex<class_Mutex>` 來對它進行鎖定。

.. note::

	使用 C# 操作此 API 時有顯著差異，詳見 :ref:`doc_c_sharp_differences`。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`Variant 類簡介 <../engine_details/architecture/variant_class>`

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
