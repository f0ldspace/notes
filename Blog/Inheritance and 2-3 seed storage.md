#Crypto 
I wanted to write my system for bitcoin inheritance and seed storage that will likely outlive me.

---

the reason why is recently bitkey (squares hardware wallet) announced [their inheritance system](https://bitkey.build/inheritance-is-live-heres-how-it-works/) which is a vast improvement but still has a single point of failure square and the app they maintain though this is still a good thing and will improve the ecosystem and raise awareness there is a cheaper method that is just a secure but doesn’t have a single point of failure.

  

**2/3 seed storage**

2/3 seed storage is actually a pretty simple way of splitting up a key into three parts, if you have one part it’s useless, if you have any two parts it’s complete - if one piece is destroyed it doesn’t matter (demo below)

  

|   |   |   |
|---|---|---|
|A|B|C|
|1. apple|2. zipper|3. dog|
|4. tree|5. car|6. bus|
|7. banana|8. motorbike|9. dune|
|10. frank|11. foundation|12. meditation|
|13. whiteboard|14. laptop|15. books|
|16. perfume|17. computer|18. stone|
|19. brick|20. spreadsheet|21. bird|
|22. blog|23. leaves|24. grass|

  

This is a seed phrase split up into three parts (a,b,c) - now you can create your 3 parts

  

 (1)

|   |   |   |
|---|---|---|
|A|B||
|1. apple|2. zipper||
|4. tree|5. car||
|7. banana|8. motorbike||
|10. frank|11. foundation||
|13. whiteboard|14. laptop||
|16. perfume|17. computer||
|19. brick|20. spreadsheet||
|22. blog|23. leaves||

(2)

|   |   |   |
|---|---|---|
||B|C|
||2. zipper|3. dog|
||5. car|6. bus|
||8. motorbike|9. dune|
||11. foundation|12. meditation|
||14. laptop|15. books|
||17. computer|18. stone|
||20. spreadsheet|21. bird|
||23. leaves|24. grass|

(3)

|   |   |   |
|---|---|---|
|A||C|
|1. apple||3. dog|
|4. tree||6. bus|
|7. banana||9. dune|
|10. frank||12. meditation|
|13. whiteboard||15. books|
|16. perfume||18. stone|
|19. brick||21. bird|
|22. blog||24. grass|

  

Now you have your parts, you need at least 2/3 for it to be useful.

  

**distribution**

Distribution is pretty simple, keep one part, give a part to whomever you want to be able to claim your bitcoin upon death, give a part to someone you trust (along with instructions to post it to the claimant upon your death).

  

  

**failure**

For this to fail either

1. Two out of three parts would have to be destroyed
2. The trusted party would have to not post it AND either your part or the claimants would have to be destroyed
3. The trusted party cannot figure out how to use a seed phrase (by default you should include instructions i.e NEVER SHARE THE SEED, transfer to a recommended wallet from [bitcoin.org](http://bitcoin.org) then transfer to an exchange and sell)