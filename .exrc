set nu
set ts=4
set sw=4
set hls
set ruler

# fire up another terminal and have R session running
# then all you need to do is hit <F6> on the line of your R code
# currently not supporting multiple line yet
function RCmd(cmd)
	let cmd = a:cmd
    let cmd = substitute(cmd, "\\", '\\\', 'g')
    let cmd = substitute(cmd, '"', '\\"', "g")
    let cmd = substitute(cmd, "'", "'\\\\''", "g")
	call system("osascript -e 'tell app \"terminal\" to do script \"" . cmd . "\" in window 2'")
	return 1
endfunction

map <F6> :call RCmd(getline('.'))<CR>
