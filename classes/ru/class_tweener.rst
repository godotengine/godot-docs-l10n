:github_url: hide

.. _class_Tweener:

Tweener
=======

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AwaitTweener<class_AwaitTweener>`, :ref:`CallbackTweener<class_CallbackTweener>`, :ref:`IntervalTweener<class_IntervalTweener>`, :ref:`MethodTweener<class_MethodTweener>`, :ref:`PropertyTweener<class_PropertyTweener>`, :ref:`SubtweenTweener<class_SubtweenTweener>`

Абстрактный класс для всех Tweener, используемых в :ref:`Tween<class_Tween>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Tweeners — это объекты, которые выполняют определенную анимационную задачу, например интерполируют свойство или вызывают метод в заданное время. **Tweener** нельзя создать вручную, нужно использовать специальный метод из :ref:`Tween<class_Tween>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_Tweener_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_Tweener_signal_finished>`

Генерируется, когда **Tweener** только что завершил свою работу или стал недействительным (например, из-за освобожденного объекта).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
