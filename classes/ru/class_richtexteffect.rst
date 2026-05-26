:github_url: hide

.. _class_RichTextEffect:

RichTextEffect
==============

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Пользовательский эффект для :ref:`RichTextLabel<class_RichTextLabel>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Пользовательский эффект для :ref:`RichTextLabel<class_RichTextLabel>`, который можно загрузить в инспекторе :ref:`RichTextLabel<class_RichTextLabel>` или с помощью :ref:`RichTextLabel.install_effect()<class_RichTextLabel_method_install_effect>`.

\ **Примечание:** Чтобы **RichTextEffect** можно было использовать, тег BBCode должен быть определен как переменная-член с именем ``bbcode`` в скрипте.


.. tabs::

 .. code-tab:: gdscript

    # RichTextEffect можно будет использовать следующим образом: `[example]Some text[/example]`
    var bbcode = "example"

 .. code-tab:: csharp

    // RichTextEffect можно будет использовать следующим образом: `[example]Some text[/example]`
    string bbcode = "example";



\ **Примечание:** Как только :ref:`RichTextLabel<class_RichTextLabel>` содержит хотя бы один **RichTextEffect**, он будет непрерывно обрабатывать эффект, если проект не будет приостановлен. Это может негативно повлиять на срок службы батареи (П.П.-?чего?).

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`BBCode в RichTextLabel <../tutorials/ui/bbcode_in_richtextlabel>`

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_process_custom_fx<class_RichTextEffect_private_method__process_custom_fx>`\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_RichTextEffect_private_method__process_custom_fx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_process_custom_fx**\ (\ char_fx\: :ref:`CharFXTransform<class_CharFXTransform>`\ ) |virtual| |const| :ref:`🔗<class_RichTextEffect_private_method__process_custom_fx>`

Переопределите этот метод для изменения свойств в ``char_fx``. Метод должен возвращать ``true``, если символ может быть успешно преобразован. Если метод возвращает ``false``, он пропустит преобразование, чтобы избежать отображения сломанного текста.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
