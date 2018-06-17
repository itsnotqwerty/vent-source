package com.b.a.a.c;

import javax.security.auth.x500.X500Principal;

final class a
{
  final String a;
  final int b;
  char[] bLI;
  int bpD;
  int c;
  int d;
  int f;
  
  public a(X500Principal paramX500Principal)
  {
    this.a = paramX500Principal.getName("RFC2253");
    this.b = this.a.length();
  }
  
  private int dU(int paramInt)
  {
    if (paramInt + 1 >= this.b) {
      throw new IllegalStateException("Malformed DN: " + this.a);
    }
    int i = this.bLI[paramInt];
    if ((i >= 48) && (i <= 57))
    {
      i -= 48;
      paramInt = this.bLI[(paramInt + 1)];
      if ((paramInt < 48) || (paramInt > 57)) {
        break label160;
      }
      paramInt -= 48;
    }
    for (;;)
    {
      return (i << 4) + paramInt;
      if ((i >= 97) && (i <= 102))
      {
        i -= 87;
        break;
      }
      if ((i >= 65) && (i <= 70))
      {
        i -= 55;
        break;
      }
      throw new IllegalStateException("Malformed DN: " + this.a);
      label160:
      if ((paramInt >= 97) && (paramInt <= 102))
      {
        paramInt -= 87;
      }
      else
      {
        if ((paramInt < 65) || (paramInt > 70)) {
          break label200;
        }
        paramInt -= 55;
      }
    }
    label200:
    throw new IllegalStateException("Malformed DN: " + this.a);
  }
  
  private char zX()
  {
    int i = dU(this.c);
    this.c += 1;
    if (i < 128) {
      return (char)i;
    }
    if ((i >= 192) && (i <= 247))
    {
      int j;
      int m;
      int k;
      if (i <= 223)
      {
        j = 1;
        i &= 0x1F;
        m = 0;
        k = i;
        i = m;
      }
      for (;;)
      {
        if (i >= j) {
          break label198;
        }
        this.c += 1;
        if ((this.c == this.b) || (this.bLI[this.c] != '\\'))
        {
          return '?';
          if (i <= 239)
          {
            j = 2;
            i &= 0xF;
            break;
          }
          j = 3;
          i &= 0x7;
          break;
        }
        this.c += 1;
        m = dU(this.c);
        this.c += 1;
        if ((m & 0xC0) != 128) {
          return '?';
        }
        k = (k << 6) + (m & 0x3F);
        i += 1;
      }
      label198:
      return (char)k;
    }
    return '?';
  }
  
  final String a()
  {
    while ((this.c < this.b) && (this.bLI[this.c] == ' ')) {
      this.c += 1;
    }
    if (this.c == this.b) {
      return null;
    }
    this.d = this.c;
    for (this.c += 1; (this.c < this.b) && (this.bLI[this.c] != '=') && (this.bLI[this.c] != ' '); this.c += 1) {}
    if (this.c >= this.b) {
      throw new IllegalStateException("Unexpected end of DN: " + this.a);
    }
    this.bpD = this.c;
    if (this.bLI[this.c] == ' ')
    {
      while ((this.c < this.b) && (this.bLI[this.c] != '=') && (this.bLI[this.c] == ' ')) {
        this.c += 1;
      }
      if ((this.bLI[this.c] != '=') || (this.c == this.b)) {
        throw new IllegalStateException("Unexpected end of DN: " + this.a);
      }
    }
    do
    {
      this.c += 1;
    } while ((this.c < this.b) && (this.bLI[this.c] == ' '));
    if ((this.bpD - this.d > 4) && (this.bLI[(this.d + 3)] == '.') && ((this.bLI[this.d] == 'O') || (this.bLI[this.d] == 'o')) && ((this.bLI[(this.d + 1)] == 'I') || (this.bLI[(this.d + 1)] == 'i')) && ((this.bLI[(this.d + 2)] == 'D') || (this.bLI[(this.d + 2)] == 'd'))) {
      this.d += 4;
    }
    return new String(this.bLI, this.d, this.bpD - this.d);
  }
  
  final String c()
  {
    if (this.c + 4 >= this.b) {
      throw new IllegalStateException("Unexpected end of DN: " + this.a);
    }
    this.d = this.c;
    int k;
    for (this.c += 1;; this.c += 1)
    {
      if ((this.c == this.b) || (this.bLI[this.c] == '+') || (this.bLI[this.c] == ',') || (this.bLI[this.c] == ';')) {
        this.bpD = this.c;
      }
      for (;;)
      {
        k = this.bpD - this.d;
        if ((k >= 5) && ((k & 0x1) != 0)) {
          break label301;
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.a);
        if (this.bLI[this.c] != ' ') {
          break;
        }
        this.bpD = this.c;
        for (this.c += 1; (this.c < this.b) && (this.bLI[this.c] == ' '); this.c += 1) {}
      }
      if ((this.bLI[this.c] >= 'A') && (this.bLI[this.c] <= 'F'))
      {
        localObject = this.bLI;
        i = this.c;
        localObject[i] = ((char)(localObject[i] + ' '));
      }
    }
    label301:
    Object localObject = new byte[k / 2];
    int i = 0;
    int j = this.d + 1;
    while (i < localObject.length)
    {
      localObject[i] = ((byte)dU(j));
      j += 2;
      i += 1;
    }
    return new String(this.bLI, this.d, k);
  }
  
  final String d()
  {
    this.d = this.c;
    this.bpD = this.c;
    do
    {
      for (;;)
      {
        if (this.c >= this.b) {
          return new String(this.bLI, this.d, this.bpD - this.d);
        }
        switch (this.bLI[this.c])
        {
        default: 
          arrayOfChar = this.bLI;
          i = this.bpD;
          this.bpD = (i + 1);
          arrayOfChar[i] = this.bLI[this.c];
          this.c += 1;
          break;
        case '+': 
        case ',': 
        case ';': 
          return new String(this.bLI, this.d, this.bpD - this.d);
        case '\\': 
          arrayOfChar = this.bLI;
          i = this.bpD;
          this.bpD = (i + 1);
          arrayOfChar[i] = zW();
          this.c += 1;
        }
      }
      this.f = this.bpD;
      this.c += 1;
      char[] arrayOfChar = this.bLI;
      int i = this.bpD;
      this.bpD = (i + 1);
      arrayOfChar[i] = ' ';
      while ((this.c < this.b) && (this.bLI[this.c] == ' '))
      {
        arrayOfChar = this.bLI;
        i = this.bpD;
        this.bpD = (i + 1);
        arrayOfChar[i] = ' ';
        this.c += 1;
      }
    } while ((this.c != this.b) && (this.bLI[this.c] != ',') && (this.bLI[this.c] != '+') && (this.bLI[this.c] != ';'));
    return new String(this.bLI, this.d, this.f - this.d);
  }
  
  final char zW()
  {
    this.c += 1;
    if (this.c == this.b) {
      throw new IllegalStateException("Unexpected end of DN: " + this.a);
    }
    switch (this.bLI[this.c])
    {
    default: 
      return zX();
    }
    return this.bLI[this.c];
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */