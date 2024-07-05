return function(dir)
local i, t, popen = 0, {}, io.popen
   local p = popen('find ~/.config/nvim/lua/'..dir..' -type d -maxdepth 1 -not -path "**/lua/'.. dir ..'"')
   for file in p:lines() do
        i = i + 1
        if string.match(file, 'keybindings') then
            table.insert(t, 1, file)
        else
            table.insert(t, file)
        end
   end

   return pairs(t)
end