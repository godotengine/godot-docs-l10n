:github_url: hide

.. _class_ConcavePolygonShape2D:

ConcavePolygonShape2D
=====================

**Наследует:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Двумерная полилиния, используемая для физического столкновения.

.. rst-class:: classref-introduction-group

Описание
----------------

Форма 2D-полилинии, предназначенная для использования в физике. Используется внутри :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`, когда он находится в режиме :ref:`CollisionPolygon2D.BUILD_SEGMENTS<class_CollisionPolygon2D_constant_BUILD_SEGMENTS>`.

Будучи просто набором взаимосвязанных сегментов линий, **ConcavePolygonShape2D** является наиболее свободно настраиваемой отдельной 2D-формой. Ее можно использовать для формирования полигонов любой природы или даже форм, которые не охватывают область. Однако **ConcavePolygonShape2D** является *полой*, даже если взаимосвязанные сегменты линий охватывают область, что часто делает ее непригодной для физики или обнаружения.

\ **Примечание:** При использовании для столкновений **ConcavePolygonShape2D** предназначен для работы со статическими узлами :ref:`CollisionShape2D<class_CollisionShape2D>`, такими как :ref:`StaticBody2D<class_StaticBody2D>`, и, скорее всего, не будет хорошо себя вести для :ref:`CharacterBody2D<class_CharacterBody2D>` или :ref:`RigidBody2D<class_RigidBody2D>` в режиме, отличном от Static.

\ **Предупреждение:** Физические тела, которые имеют небольшой размер, имеют шанс прорезать эту форму при быстром движении. Это происходит, потому что в одном кадре физическое тело может находиться «снаружи» формы, а в следующем кадре оно может оказаться «внутри» нее. **ConcavePolygonShape2D** является полым, поэтому он не обнаружит столкновение.

\ **Производительность:** Из-за своей сложности **ConcavePolygonShape2D** является самой медленной двумерной формой столкновения для проверки столкновений. Его использование, как правило, должно быть ограничено геометрией уровня. Если полилиния замкнута, можно использовать режим :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>` :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`, который разбивает многоугольник на выпуклые; инструкции см. в документации :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`segments<class_ConcavePolygonShape2D_property_segments>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ConcavePolygonShape2D_property_segments:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **segments** = ``PackedVector2Array()`` :ref:`🔗<class_ConcavePolygonShape2D_property_segments>`

.. rst-class:: classref-property-setget

- |void| **set_segments**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_segments**\ (\ )

Массив точек, которые составляют сегменты линии **ConcavePolygonShape2D**. Массив (длины, делящейся на два) естественным образом делится на пары (по одной паре на каждый сегмент); каждая пара состоит из начальной точки сегмента и конечной точки сегмента.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
