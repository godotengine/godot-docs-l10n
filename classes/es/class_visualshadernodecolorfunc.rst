:github_url: hide

.. _class_VisualShaderNodeColorFunc:

VisualShaderNodeColorFunc
=========================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una función :ref:`Color<class_Color>` para ser usada dentro del gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Acepta un :ref:`Color<class_Color>` en el puerto de entrada y transfórmalo de acuerdo con la :ref:`function<class_VisualShaderNodeColorFunc_property_function>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeColorFunc_Function>` | :ref:`function<class_VisualShaderNodeColorFunc_property_function>` | ``0`` |
   +----------------------------------------------------------+--------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeColorFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeColorFunc_Function>`

.. _class_VisualShaderNodeColorFunc_constant_FUNC_GRAYSCALE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_GRAYSCALE** = ``0``

Convierte el color a escala de grises usando la siguiente fórmula:

::

    vec3 c = entrada;
    float max1 = max(c.r, c.g);
    float max2 = max(max1, c.b);
    float max3 = max(max1, max2);
    return vec3(max3, max3, max3);

.. _class_VisualShaderNodeColorFunc_constant_FUNC_HSV2RGB:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_HSV2RGB** = ``1``

Convierte el vector HSV a su equivalente RGB.

.. _class_VisualShaderNodeColorFunc_constant_FUNC_RGB2HSV:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_RGB2HSV** = ``2``

Convierte el vector RGB en el equivalente del HSV.

.. _class_VisualShaderNodeColorFunc_constant_FUNC_SEPIA:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_SEPIA** = ``3``

Aplica el efecto de tono sepia usando la siguiente fórmula:

::

    vec3 c = input;
    float r = (c.r * 0.393) + (c.g * 0.769) + (c.b * 0.189);
    float g = (c.r * 0.349) + (c.g * 0.686) + (c.b * 0.168);
    float b = (c.r * 0,272) + (c.g * 0,534) + (c.b * 0,131);
    return vec3(r, g, b);

.. _class_VisualShaderNodeColorFunc_constant_FUNC_LINEAR_TO_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **FUNC_LINEAR_TO_SRGB** = ``4``

Converts color from linear encoding to nonlinear sRGB encoding using the following formula:

::

    const vec3 a = vec3(0.055f);
    return mix((vec3(1.0f) + a) * pow(c.rgb, vec3(1.0f / 2.4f)) - a, 12.92f * c.rgb, lessThan(c.rgb, vec3(0.0031308f)));

The Compatibility renderer uses a simpler formula that may produce undefined behavior with negative input values:

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

Representa el tamaño del enum :ref:`Function<enum_VisualShaderNodeColorFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeColorFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeColorFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeColorFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeColorFunc_Function>` **get_function**\ (\ )

Una función que se aplica al color de entrada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
