:github_url: hide

.. _class_AESContext:

AESContext
==========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fournit l'accès au chiffrement/déchiffrement AES de données brutes.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe contient l'information de contexte nécessaire aux opérations de chiffrement/déchiffrement AES (Advanced Encryption Standard, litt. Norme de Chiffrement Avancé). Elle est compatible avec les modes AES-ECB et AES-CBC.


.. tabs::

 .. code-tab:: gdscript

    extends Node

    var aes = AESContext.new()

    func _ready():
        var cle = "Ma clé secrète !!!" # La clé doit être soit de 16 ou de 32 octets.
        var donnee = "Mon texte secret!!" # La taille des données doit être un multiple de 16 octets, ajoutez du remplissage si nécessaire.
        # Crypter l'ECB
        aes.start(AESContext.MODE_ECB_ENCRYPT, cle.to_utf8())
        var encrypte = aes.update(donnee.to_utf8())
        aes.finish()
        # Décrypter l'ECB
        aes.start(AESContext.MODE_ECB_DECRYPT, cle.to_utf8())
        var decrypte = aes.update(encrypte)
        aes.finish()
        # Vérifier l'ECB
        assert(decrypte == donnee.to_utf8())

        var iv = "Mon iv secret !!!!" # La taille du vecteur d'initialisation doit être d'exactement 16 octets.
        # Chiffrer le CBC
        aes.start(AESContext.MODE_CBC_ENCRYPT, cle.to_utf8(), iv.to_utf8())
        encrypte = aes.update(donnee.to_utf8())
        aes.finish()
        # Déchiffrer le CBC
        aes.start(AESContext.MODE_CBC_DECRYPT, cle.to_utf8(), iv.to_utf8())
        decrypte = aes.update(encrypte)
        aes.finish()
        # Vérifier le CBC
        assert(encrypte == donnee.to_utf8())

 .. code-tab:: csharp

    using Godot;
    using System.Diagnostics;

    public partial class MonNoeud : Node
    {
        private AesContext _aes = new AesContext();

        public override void _Ready()
        {
            string cle = "Ma clé secrète !!!"; // La clé doit être soit de 16 ou de 32 octets.
            string donnee = "Mon texte secret !!"; // La taille des données doit être un multiple de 16 octets, ajoutez du remplissage si nécessaire.
            // Crypter l'ECB
            _aes.Start(AesContext.Mode.EcbEncrypt, cle.ToUtf8Buffer());
            byte[] encrypte = _aes.Update(donnee.ToUtf8Buffer());
            _aes.Finish();
            // Décrypter l'ECB
            _aes.Start(AesContext.Mode.EcbDecrypt, cle.ToUtf8Buffer());
            byte[] decrypte = _aes.Update(encrypte);
            _aes.Finish();
            // Vérifier l'ECB
            Debug.Assert(decrypte == donnees.ToUtf8Buffer());

            string iv = "Mon iv secret !!!!"; // La taille du vecteur d'initialisation doit être d'exactement 16 octets.
            // Chiffrer le CBC
            _aes.Start(AesContext.Mode.EcbEncrypt, cle.ToUtf8Buffer(), iv.ToUtf8Buffer());
            encrypte = _aes.Update(donnee.ToUtf8Buffer());
            _aes.Finish();
            // Déchiffrer le CBC
            _aes.Start(AesContext.Mode.EcbDecrypt, cle.ToUtf8Buffer(), iv.ToUtf8Buffer());
            decrypted = _aes.Update(encrypte);
            _aes.Finish();
            // Vérifier le CBC
            Debug.Assert(decrypte == donnee.ToUtf8Buffer());
        }
    }



.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`finish<class_AESContext_method_finish>`\ (\ )                                                                                                                                                                      |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`get_iv_state<class_AESContext_method_get_iv_state>`\ (\ )                                                                                                                                                          |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`start<class_AESContext_method_start>`\ (\ mode\: :ref:`Mode<enum_AESContext_Mode>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, iv\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`update<class_AESContext_method_update>`\ (\ src\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                 |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_AESContext_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_AESContext_Mode>`

.. _class_AESContext_constant_MODE_ECB_ENCRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_ECB_ENCRYPT** = ``0``

Mode de chiffrement du livre de codes électroniques AES.

.. _class_AESContext_constant_MODE_ECB_DECRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_ECB_DECRYPT** = ``1``

Mode de décryptage du codebook électronique AES.

.. _class_AESContext_constant_MODE_CBC_ENCRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_CBC_ENCRYPT** = ``2``

Mode de chiffrement par chaînage de blocs AES.

.. _class_AESContext_constant_MODE_CBC_DECRYPT:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_CBC_DECRYPT** = ``3``

Mode de déchiffrement par chaînage de blocs AES.

.. _class_AESContext_constant_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AESContext_Mode>` **MODE_MAX** = ``4``

Valeur maximale pour le mode énumeration.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AESContext_method_finish:

.. rst-class:: classref-method

|void| **finish**\ (\ ) :ref:`🔗<class_AESContext_method_finish>`

Ferme ce contexte AES afin qu’il puisse être recommencé. Voir :ref:`start()<class_AESContext_method_start>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_get_iv_state:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_iv_state**\ (\ ) :ref:`🔗<class_AESContext_method_get_iv_state>`

Obtient l'état IV actuel pour ce contexte (L'IV est mis à jour en appelant :ref:`update()<class_AESContext_method_update>`). Vous n'avez généralement pas besoin de cette fonction.

\ **Note :** Cette fonction a seulement du sens quand le contexte est initialisé avec :ref:`MODE_CBC_ENCRYPT<class_AESContext_constant_MODE_CBC_ENCRYPT>` ou :ref:`MODE_CBC_DECRYPT<class_AESContext_constant_MODE_CBC_DECRYPT>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ mode\: :ref:`Mode<enum_AESContext_Mode>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, iv\: :ref:`PackedByteArray<class_PackedByteArray>` = PackedByteArray()\ ) :ref:`🔗<class_AESContext_method_start>`

Commence le contexte AES dans le ``mode`` donné. Une clé ``key`` de soit 16 ou 32 octets doit toujours être fournie, alors qu'un ``iv`` (vecteur d'initialisation) de précisément 16 octets est seulement nécessaire quand ``mode`` est soit :ref:`MODE_CBC_ENCRYPT<class_AESContext_constant_MODE_CBC_ENCRYPT>` ou :ref:`MODE_CBC_DECRYPT<class_AESContext_constant_MODE_CBC_DECRYPT>`.

.. rst-class:: classref-item-separator

----

.. _class_AESContext_method_update:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **update**\ (\ src\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_AESContext_method_update>`

Exécute l'opération désirée pour ce contexte AES. Renverra un :ref:`PackedByteArray<class_PackedByteArray>` contenant le résultat du chiffrement (ou déchiffrement) de ``src``. Voir :ref:`start()<class_AESContext_method_start>` pour le mode d'opération.

\ **Note :** La taille de ``src`` doit être un multiple de 16. Applique du padding si nécessaire.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
