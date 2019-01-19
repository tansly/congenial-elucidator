# congenial-elucidator
congenial-elucidator is a compiler for the xpln programming language, targeting MIPS architecture.
Actually, for a slightly modified version of xpln, targeting SPIM simulator.

## yalalr
congenial-elucidator is written using [yalalr](https://github.com/bozsahin/yalalr).
See the instructions there for usage.

## Example programs
Under the `xpln/` directory, there are sample xpln programs.
Some of them are taken from [Berk Özbalcı's xpln stress test](https://gist.github.com/bozbalci/13bae202aab2fbe50be2bc474fc82292).
Under `mips/`, there are target codes for each of the example programs, as compiled by congenial-elucidator.

## What's missing
* Sadly, no floating point support. Integers only.

## What's different from original specs
* Function definitions at the top: Grammar was slightly modified to simplify code generation,
in the new grammar function definitions come before the main body and there can be no
function definitions between statements.

## What can be improved
* Determine stack frame size dynamically. Currently, all functions have a fixed
stack frame size, which is 512 bytes. Ideally, we should determine at compile time
how much stack space to allocate for each function. (issue #13)
* Use unsigned arithmetic for address computations. (issue #16)

## Known problems
* Grammar is not LALR(1). It haven't caused any harm (yet) though; I think
LALR parser generator's default decisions save me there. (issue #25)
* Return value of main is ignored. I couldn't find out how to return a value from
a program in SPIM. I don't know if it's possible. (issue #24)

## Acknowledgements
I would like to thank Prof. Dr. Cem Bozşahin (@bozsahin) for the awesome course!
Actually, a "course" would be an understatement for this; it was more like
a journey from heaven to hell and back to heaven again, all in one semester.
Also see [bozsahin/ceng444](https://github.com/bozsahin/ceng444).

I would also like to thank Berk Özbalcı (@bozbalci) for his friendship and support,
and also his [xpln stress test](https://gist.github.com/bozbalci/13bae202aab2fbe50be2bc474fc82292).
