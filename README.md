# gd-vim
An implementation of Vim motions for the Godot Engine editor.

I love Godot Engine and I love the editor that they've built with it. It's user-friendly,
intuitive, and overall pleasant to use. However, after being introduced to Vim motions, I find
it difficult to go back to traditional text editing.

**I love Vim motions and I want to bring it to the Godot Engine editor with this plugin.** I know that 
I could technically just use an external editor, but I felt that:

- It affected my workflow in a negative way
- It took additional configuration and setup that I would've preferred not to do 
- It's not accessible to new users who may be just getting introduced to Godot Engine **and** Vim motions

## Goals
I **do not** intend to implement all of the features provided by native Vim motions, partly because I think 
there are smarter people for the job and also partly because it's a mammoth task.

Instead, I wish to implement the basic features. Such as:

- Editor modes:
    - Normal
        - h, j, k, l navigation
        - w, e, b navigation
        - {, } to move between blocks of code
        - c to change highlighted text or particular words
        - / to search for words 
    - Insert
    - Visual
        - Line and character highlighting
    - Command
        - :w to save your work 
        - :q to quit your currently opened script
        - :w! to force save your work 
        - :q! to force quit 
        - :wq to save and quit 
        - :wq! to force save and quit 
        - :wa to save all scripts
        - :qa to close all scripts 
        - :wqa to save all scripts and then close all scripts 
    - Replace
        - r to replace singular characters

# Final Remarks
Please feel free to give it a go and let me know what you think. This is just a personal project, but I would love 
to know if it made your development in Godot Engine just a *little* bit easier (or harder, in which case I'll see what I can do!).

Raymundo.
