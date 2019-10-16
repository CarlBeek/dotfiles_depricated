plugins=(
    brew
    cask
    git
    jsontools
    osx
    pep8
    pip
    pyenv
    python
    virtualenv
    vscode
    z
)

for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;