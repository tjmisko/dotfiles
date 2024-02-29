function DoBuffer()
    print("Running Do File...")
    current_buffer_path = vim.fn.expand("%:p")
    command = "start /B C:/ado/personal/rundo51/rundo.exe " .. '\"' .. current_buffer_path .. '\"'
    local handle = io.popen(command)
    print("Do File Executed!")
    local result = handle:read("*a")
    handle:close()
end

function DoVisualLines()
	selectedLines = vim.fn.getbufline("%", vim.fn.line("v"), vim.fn.line("."))

	temp = vim.fn.tempname() .. ".do"
	vim.fn.writefile(selectedLines, temp)

    command = "start /B C:/ado/personal/rundo51/rundo.exe " .. '\"' .. temp .. '\"'
    local handle = io.popen(command)
    print("Do File Executed!")
    local result = handle:read("*a")
    handle:close()
end

vim.keymap.set("n", "<C-S-d>", DoBuffer)
vim.keymap.set("v", "<C-S-d>", DoVisualLines)
