## Cleaning the memory segments :

```bash
ssh tdu-near-master-ppc-01 -l root
ipcrm -m 0
```
- All TDUs(ppc-01, ppc-02 andppc-03) that get power cycled will need this. 
