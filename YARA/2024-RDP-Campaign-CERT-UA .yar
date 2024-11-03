import "string"

rule 2024-RDP-Campaign-CERT-UA 
{
    meta:
        author = "Conrad Fernandes"
        date = "2024-11-03"
        description = "Latest campaign surrounding RDP files sent as email attachments. Intel provided by CERT-UA"
        source = "https://cert.gov.ua/article/6281076"
    strings:
        $str0 = "34c88cd591f73bc47a1a0fe2a4f594f628be98ad2366eeb4e467595115d8505a"
        $str1 = "071276e907f185d9e341d549b198e60741e2c7f8d64dd2ca2c5d88d50b2c6ffc"
        $str2 = "6e6680786fa5b023cf301b6bc5faaa89c86dc34b696f4b078cf22b1b353d5d3c"
        $str3 = "31f2cc1157248aec5135147073e49406d057bebf78b3361dd7cbb6e37708fbcc"
        $str4 = "88fd6a36e8a61597dd71755b985e5fcd0b8308b69fc0f4b0fc7960fb80018622"
        $str5 = "b8327671ebc20db6f09efc4f19bd8c39d9e28c9a37bdd15b2fd62ade208d2e8a"
        $str6 = "a5bbb109faefcecba695a84a737f5e47fa418cea39d654bb512a6f4a0b148758"
        $str7 = "5534cc837ba4fa3726322883449b3e97ca3e0d28c0ccf468b868397fdfa44e0b"
        $str8 = "b9ab481e7a9a92cfa2d53de8e7a3c75287cff6a3374f4202ec16ea9e03d80a0b"
        $str9 = "18a078a976734c9ec562f5dfa3f5904ef5d37000fb8c1f5bd0dc2dee47203bf9"
        $str10 = "bb4d5a3f7a40c895882b73e1aca8c71ea40cef6c4f6732bec36e6342f6e2487a"
        $str11 = "ef4bd88ec5e8b401594b22632fd05e401658cf78de681f81409eadf93f412ebd"
        $str12 = "1cfe29f214d1177b66aec2b0d039fec47dd94c751fa95d34bc5da3bbab02213a"
        $str13 = "3a2496db64507311f5fbd3aba0228b653f673fc2152a267a1386cbab33798db5"
        $str14 = "984082823dc1f122a1bb505700c25b27332f54942496814dfd0c68de0eba59dc"
        $str15 = "383e63f40aecdd508e1790a8b7535e41b06b3f6984bb417218ca96e554b1164b"
        $str16 = "296d446cb2ad93255c45a2d4b674bbacb6d1581a94cf6bb5e54df5a742502680"
        $str17 = "129ba064dfd9981575c00419ee9df1c7711679abc974fa4086076ebc3dc964f5"
        $str18 = "f2acb92d0793d066e9414bc9e0369bd3ffa047b40720fe3bd3f2c0875d17a1cb"
        $str19 = "f357d26265a59e9c356be5a8ddb8d6533d1de222aae969c2ad4dc9c40863bfe8"
        $str20 = "280fbf353fdffefc5a0af40c706377142fff718c7b87bc8b0daab10849f388d0"
        $str21 = "8b45f5a173e8e18b0d5c544f9221d7a1759847c28e62a25210ad8265f07e96d5"
        $str22 = "ba4d58f2c5903776fe47c92a0ec3297cc7b9c8fa16b3bf5f40b46242e7092b46"
    condition:
        filesize < 2MB and
        any of them
}
