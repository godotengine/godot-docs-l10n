:github_url: hide

.. _class_VisualShaderNodeColorFunc:

VisualShaderNodeColorFunc
=========================

**Eredita:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una funzione :ref:`Color<class_Color>` da utilizzare all'interno del grafico di shader visivo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Accetta un :ref:`Color<class_Color>` sulla porta di ingresso e lo trasforma in base alla :ref:`function<class_VisualShaderNodeColorFunc_property_function>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeColorFunc_Function>` | :ref:`function<class_VisualShaderNodeColorFunc_property_function>` | ``0`` |
   +----------------------------------------------------------+--------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VisualShaderNodeColorFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeColorFunc_Function>`

.. _class_VisualShaderNodeColorFunc_constant_FUNC_GRAYSCALE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_GRAYSCALE** = ``0``

Converte il colore in scala di grigi usando la seguente formula:

::

    vec3 c = input;
    float max1 = max(c.r, c.g);
    float max2 = max(max1, c.b);
    float max3 = max(max1, max2);
    return vec3(max3, max3, max3);

.. _class_VisualShaderNodeColorFunc_constant_FUNC_HSV2RGB:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_HSV2RGB** = ``1``

Converte un vettore HSV nel suo equivalente RGB.

.. _class_VisualShaderNodeColorFunc_constant_FUNC_RGB2HSV:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_RGB2HSV** = ``2``

Converte un vettore RGB nel suo equivalente HSV.

.. _class_VisualShaderNodeColorFunc_constant_FUNC_SEPIA:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_SEPIA** = ``3``

Applica un effetto seppia secondo la seguente formula:

::

    vec3 c = input;
    float r = (c.r * 0.393) + (c.g * 0.769) + (c.b * 0.189);
    float g = (c.r * 0.349) + (c.g * 0.686) + (c.b * 0.168);
    float b = (c.r * 0.272) + (c.g * 0.534) + (c.b * 0.131);
    return vec3(r, g, b);

.. _class_VisualShaderNodeColorFunc_constant_FUNC_LINEAR_TO_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_LINEAR_TO_SRGB** = ``4``

Converte il colore dalla codifica lineare alla codifica non lineare sRGB attraverso la seguente formula:

::

    const vec3 a = vec3(0.055f);
    return mix((vec3(1.0f) + a) * pow(c.rgb, vec3(1.0f / 2.4f)) - a, 12.92f * c.rgb, lessThan(c.rgb, vec3(0.0031308f)));

Il renderer Compatibilità usa una formula più semplice che potrebbe produrre un comportamento indefinito con valori di input negativi:

::

    vec3 c = input;
    return max(vec3(1.055) * pow(c, vec3(0.416666667)) - vec3(0.055), vec3(0.0));

.. _class_VisualShaderNodeColorFunc_constant_FUNC_SRGB_TO_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_SRGB_TO_LINEAR** = ``5``

Converts color from nonlinear sRGB encoding to linear encoding using the following formula:

::

    vec3 c = input;
    return mix(pow((c.rgb + vec3(0.055)) * (1.0 / (1.0 + 0.055)), vec3(2.4)), c.rgb * (1.0 / 12.92), lessThan(c.rgb, vec3(0.04045)));

The Compatibility renderer uses a simpler formula that behaves poorly with negative input values:

::

    vec3 c = input;
    return c * (c * (c * 0.305306011 + 0.682171111) + 0.012522878);

.. _class_VisualShaderNodeColorFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_MAX** = ``6``

Rappresenta la dimensione dell'enumerazione :ref:`Function<enum_VisualShaderNodeColorFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VisualShaderNodeColorFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeColorFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeColorFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **get_function**\ (\ )

Una funzione da applicare al colore di ingresso.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
