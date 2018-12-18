# trash
> A safe alternative to `rm` & `rmdir` for **macOS** (and maybe more)

As many folks know, `rm` and `rmdir` can be dangerous because of the fact that they hard-delete files and directories, rather than sending them to the trash bin - **trash** is my take on a remedy for this "problem", moving files and folders into the trash bin instead.

If you move two files named `index.html` into the trash, the default macOS behavior is to rename the second file by inserting the 12-hour clock time of the move prior to the extension - so `index.html` will become `index 3:42 PM.html`, etc.; a duplicate directory or a file without a type extension will have the time appended to its name - `scripts` will become `scripts 3:42 PM`.

I've also included my own twist, for the rare (but possible!) situation where you might want to move multiple items with the same name to the trash from different locations. In those instances, an additional trailing number will be appended to allow for unique identification. For example, running

```bash
trash index.html test_1/index.html test_2/index.html test_3/index.html
```

will result in the following trash content:

```
index.html
index 3:45 PM.html
index 3:45 PM.html (1)
index 3:45 PM.html (2)
```

## Installation

Install this script from the cloned Github repo:

- Clone the repo

```bash
git clone https://github.com/darrenklein/trash
```

- `cd` into the clone

```bash
cd trash
```

- Run the installation script

```bash
sh ./install.sh
```

**trash** will be installed to `usr/local/bin/trash`.

Make sure `usr/local/bin` is in your bash `$PATH`!

## Uninstallation

From within a local copy of the **trash** git repo, you can uninstall the script by running

```bash
sh ./uninstall.sh
```

or you can just delete the file at `usr/local/bin/trash` directly.

## Use

The `trash` command can be followed by any number of files/directories that you wish to move to the trash bin. For example:

```bash
trash index.html src scripts README.md
```

## Big ups

Thanks to Alexander Epstein - https://github.com/alexanderepstein - whose **BashSnippets** helped to guide the structure of this project.
