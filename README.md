**Some bashrc magic!**
===================

Hey! 
here I'll be showing my recent **bashrc customizations**[^bashrc_customization], take a peek and see if it suits your needs.

----------
My bashrc has been divided into three separate files, each file will holds different functionality: 

> -  **.bash_Aliases**    file consists some nice aliases which I have collected along my daily work..
> - **.bash_functions** file consists some valuable functions which will save you a valuable time.
> - **.bash_colors**   -   file consists some predefined colors for future use.

> **Tip:** You should take a look and explore those **bash** files it **comes quite handy from time to time**. 

---
  Take a sip from your coffee <i class="icon-coffee"></i> and **enjoy** the process of exploring and coding.

```flow
st=>start: invoke .bashrc

op=>operation: My Operation
cond1=>condition: .bash_aliases exists?
cond2=>condition: .bash_functions exists?
cond3=>condition: .bash_colors exists?

op1a=>operation: invoke .bash_aliases
op1b=>operation: notify user

op2a=>operation: invoke .bash_functions
op3a=>operation: invoke .bash_colors
e=>end: Finished, Enjoy working in bash :)

st->cond1
cond1(yes)->op1a
cond1(no)->op1b
op1a->cond2
cond2(yes)->op2a
cond2(no)->op1b
op2a->cond3
cond3(yes)->op3a
cond3(no)->op1b
op1b->e
op3a->e

```

> **Note:** In the future to come there would be more updates so stay tuned.

> - Any comments or suggestions would be welcome
> - You can drop me a message via **e-mail** -  cohengil333(at)gmail.com

  [^bashrc_customization]: [bashrc customization](https://stackedit.io/) is a full-featured, open-source bash extensions written by me for sharing the knowledge with the open-source community.
  
