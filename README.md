# trash
> A safe alternative to `rm` & `rmdir` for macOS (and maybe more)

As many folks know, `rm` and `rmdir` can be dangerous because of the fact that they hard-delete files and directories, rather than sending them to the trash bin - `trash` is my take on a remedy for this "problem", moving files and folders into the trash bin instead.

While there's already a popular Homebrew-installable command line package available that achieves this same end - http://hasseg.org/trash/ - I wanted to make my own for the trivial reason of the fact that mine preserves the macOS-style of formatting duplicate file and directory names.

For example, if you move two files named "index.html" into the trash, the default macOS behavior is to rename the second file by inserting the time of the move prior to the extension - so "index.html" will become "index 3:42 PM.html", etc.; a duplicate directory will have the time appended to its name - "scripts" will become "scripts 3:42 PM".

## Installation

Until I finish writing `install.sh`, you'd want to copy the contents of `trash` into a script named "trash" located in `usr/local/bin`.

Make the file executable by running

```bash
chmod a+x usr/local/bin/trash
```

and make sure `usr/local/bin` is in your bash `$PATH`.

## Use

The `trash` command can be followed by any number of files/directories that you wish to move to the trash bin. For example:

```bash
trash index.html scr scripts README.md
```

## Contributions

As I am inexperienced at writing bash scripts, I would be very happy for any contributions to this project that improve its reliability, versatility, and cross-platform support.

## TODO

- Write an installation script.
- handle scenarios where two files/dirs with the same name but from different locations are trashed.
- provide a warning if no file/dir arguments have been specified
