return function(aa)
local function ab(a)local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'a=string.gsub(a,'[^'..b..'=]','')return a:gsub('.',function(c)if c=='='then return''end;local d,g='',b:find(c)-1;for e=6,1,-1 do d=d..(g%2^e-g%2^(e-1)>0 and'1'or'0')end;return d end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(c)if#c~=8 then return''end;local f=0;for e=1,8 do f=f+(c:sub(e,e)=='1'and 2^(8-e)or 0)end;return string.char(f)end)end
local a,b,c=aa,aa,aa;a=ab(aa);print(a);b=string.split(a, [[\]]);c=string.char(b);return c;end
