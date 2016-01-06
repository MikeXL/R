set nu
set ts=4
set sw=4
set hls
set ruler

function RCmd(cmd)
	let cmd = a:cmd
    let cmd = substitute(cmd, "\\", '\\\', 'g')
    let cmd = substitute(cmd, '"', '\\"', "g")
    let cmd = substitute(cmd, "'", "'\\\\''", "g")
	call system("osascript -e 'tell app \"terminal\" to do script \"" . cmd . "\" in window 2'")
	return 1
endfunction

map <silent> <F6> :call RCmd(getline('.'))<CR>
