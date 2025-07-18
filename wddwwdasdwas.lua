-- Encrypted by Kairo Bot - Created by Meresye
-- This code has been secured and obfuscated


local FKQQOTHM = string.char;
local LXOLLIER = string.byte;
local QOLYSCVS = string.sub;
local VVSNBCMX = table.concat;
local TTVKDYEV = bit32 or bit;
local IVESLFIC = tonumber;
local LJTIVHNH = string.len;
local JTTJCAPZ = table.insert;
local MZDLKWIX = loadstring;
local EVNRAGWM = getfenv;

-- Sistema de descriptografia Kairo V1
local OAPFQIWC = "0DhhT5ELn7cZMWFpCOeoInk/UaHReRjmckk5K7GZwwixjiMRkTGAeYfRgQEYyPm5mUHpt+px2rYZJ1np+YkhY3lC8WFh2eFxKTFjGeoZwWEZ6SEhbxmj4Au5eVE6s2mpCRjC+SGxsWG7Ife7uOnriRcZs6v5d3lYkSkxh5kxGMEhgHK30Tlf6UnLn5Go8bHxWRlZ0VEp2Q4R+RmxUsCZ68m2qCnPCem5EUl7WXDBqdkp4VGgsbHJ0NnaN3lo57mzyYfIU0khAaN30ZlxkFZxaVGy2bHv+vsguvFJISGBv39BOcBpkYmX6eEnuSJZ0mnZGSHaMSmfeeD5UTlRcRmhUS8r8LlpyQHJC1E3+YMYKfMxydGb4d+ZqKlIk7tpESu59wAA";
local RLRQGNEU = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
local ONANXXQB = 289;
local EGULNLIG = 0x4B41524F;
local KBJUSMTR = 0x4D455245;

-- Função de decodificação customizada
local function VFADQEXM(SIEVZLRJ)
    local YUASJJCZ = {};
    for i = 1, LJTIVHNH(SIEVZLRJ), 4 do
        local b1 = string.find(RLRQGNEU, QOLYSCVS(SIEVZLRJ, i, i)) - 1;
        local b2 = string.find(RLRQGNEU, QOLYSCVS(SIEVZLRJ, i+1, i+1)) - 1;
        local b3 = string.find(RLRQGNEU, QOLYSCVS(SIEVZLRJ, i+2, i+2)) - 1;
        local b4 = string.find(RLRQGNEU, QOLYSCVS(SIEVZLRJ, i+3, i+3)) - 1;
        
        local bitmap = (b1 * 262144) + (b2 * 4096) + (b3 * 64) + b4;
        JTTJCAPZ(YUASJJCZ, (bitmap / 65536) % 256);
        JTTJCAPZ(YUASJJCZ, (bitmap / 256) % 256);
        JTTJCAPZ(YUASJJCZ, bitmap % 256);
    end
    return YUASJJCZ;
end

-- Descriptografia principal
local BPGKLJKX = VFADQEXM(OAPFQIWC);
local AXHPAKQS = {};

-- Desembaralha os bytes
for i = 1, #BPGKLJKX do
    local pos = ((i-1) * EGULNLIG + KBJUSMTR) % #BPGKLJKX + 1;
    AXHPAKQS[i] = BPGKLJKX[pos];
end

-- Reverte a transformação de bytes
local result = {};
for i = 1, ONANXXQB do
    local byte = AXHPAKQS[i];
    if byte then
        byte = (byte - 127 - ((i-1) * 17)) % 256;
        if byte < 0 then byte = byte + 256 end
        byte = byte ~ ((i-1) % 255 + 73);
        byte = ((byte >> 3) | (byte << 5)) & 0xFF;
        JTTJCAPZ(result, FKQQOTHM(byte));
    end
end

-- Executa o código descriptografado
local code = VVSNBCMX(result);
local func = MZDLKWIX(code);
if func then
    func();
else
    error("Kairo: Invalid code");
end
