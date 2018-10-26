# A safe alternative to rm/rmdir.
trash () {
    trash_content=$(ls ~/.Trash); # Put the contents of the trash into an array.
    time=$(date "+%-I.%M.%S %p"); # Format the time like 9.32.16 PM - the "-" trims the leading 0.

    for item in "$@"; do
        # If we've found a matching file/directory name in the trash, we'll append/insert the time.
        # If the target is a directory, simply append the time to the end of the name, i.e. "files 9.32.16 PM"
        # If it is a file, inject the time into the name, before the file extension, i.e. "index 9.32.16 PM.html"
        if [[ "${trash_content[@]}" =~ "${item}" ]]; then
            if [[ -d "$item" ]]; then
                mv -fv "$item" ~/.Trash/"${item} ${time}";
            else
                name="${item%.*}";
                extension="${item##*.}";
                mv -fv "$item" ~/.Trash/"${name} ${time}.${extension}";
            fi
        else
            mv -fv "$item" ~/.Trash/;
        fi
    done
}
