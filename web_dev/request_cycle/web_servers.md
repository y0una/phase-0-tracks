------------------------------------
What are some of the key design philosophies of the Linux operating system?

- Small is Beautiful
- Each Program Does One Thing Well
- Prototype as Soon as Possible
- Choose Portability Over Efficiency
- Store Data in Flat Text Files
- Use Software Leverage
- Use Shell Scripts to Increase Leverage and Portability
- Avoid Captive User Interfaces
- Make Every Program a Filter

------------------------------------
What is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

- VSP is a virtual machine sold as a service by an internet hosting service. Runs its own copy of an operating system and customers have admin access to that system with ability to install any software that runs on that OS.

Advantages:
- more stable and reliable for basic web hosting
- more control compared to shared hosting
- easy scalable
- cost effective for small websites
- green, environmentally friendly, more resource efficient
- singler subscriber can maintain multiple virtual servers. One for production-level website and another for a test site for planned updates or modifications.

------------------------------------
Why is it considered a bad idea to run programs as the root user on a Linux system?

- We should make sure it runs as a limited user so if we make a mistake (rm -rf *) or are exposed to a software bug least amount of damage is made instead of corrupting or accidentally deleting all files. Root user most times is not needed unless it's for admin work.