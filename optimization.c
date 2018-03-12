#define C(v) (((v) - 0x01010101UL) & ~(v) & 0x80808080UL)

    // char s[] = "allan";
    char s[] = "lokpokpokpokpokpok'pojsdfp'oajsf'opesjf'a";
    unsigned long int *l;
    unsigned long int longword, magic_bits, himagic, lomagic;
    int i ;

    i = 1;
    l = (unsigned long int*)s;
    printf("%d", strlen(s));
    while(1)
    {
        longword = *l++;
        // printf("%lu\n", C(longword));
        if (C(longword)) {
            const char *cp = (const char *) (l - 1);
          if (cp[0] == 0)
            {
                printf("%d", cp - s);
                return 0;
            }
          if (cp[1] == 0)
            {
                printf("%d", cp - s + 1);
                return 0;
            }
          if (cp[2] == 0)
            {
                printf("%d", cp - s + 2);
                return 0;
            }
          if (cp[3] == 0)
            {
                printf("%d", cp - s + 3);
                return 0;
            }
          if (sizeof (longword) > 4)
            {
              if (cp[4] == 0)
                {
                    printf("%d", cp - s + 4);
                    return 0;
                }
              if (cp[5] == 0)
                {
                    printf("%d", cp - s + 5);
                    return 0;
                }
              if (cp[6] == 0)
                {
                    printf("%d", cp - s + 6);
                    return 0;
                }
              if (cp[7] == 0)
                {
                    printf("%d", cp - s + 7);
                    return 0;
                }
            }
        }
        i++;
    }