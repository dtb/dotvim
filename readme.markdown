# My VIM files. 
## Yeah, I'm one of *those* guys now

To use, first we clone!

    > git clone git://github.com/dtb/dotvim
    > cd dotvim && git submodule update --init

You should be done, bc the [config repo](https://github.com/dtb/dotconfig) has the vimrc we need, but if stuff's not happening, you could add this to your vimrc:

	set runtimepath+=~/dotvim
	source ~/dotvim/vimrc

That's it! You're done! Unless something didn't work. 
Then you've got a problem.
