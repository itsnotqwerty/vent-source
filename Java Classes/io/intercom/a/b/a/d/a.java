package io.intercom.a.b.a.d;

import io.intercom.a.b.a.n;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map.Entry;

public class a
  implements Closeable
{
  private static final char[] bkd = ")]}'\n".toCharArray();
  public boolean bgE = false;
  private int bia = 0;
  private String[] bib;
  private int[] bic;
  private final char[] bke = new char['Ѐ'];
  private int bkf = 0;
  private int bkg = 0;
  int bkh = 0;
  private long bki;
  private int bkj;
  private String bkk;
  private int[] bkl = new int[32];
  private final Reader in;
  private int limit = 0;
  private int pos = 0;
  
  static
  {
    io.intercom.a.b.a.b.e.cRH = new io.intercom.a.b.a.b.e()
    {
      public final void b(a paramAnonymousa)
        throws IOException
      {
        if ((paramAnonymousa instanceof io.intercom.a.b.a.b.a.e))
        {
          paramAnonymousa = (io.intercom.a.b.a.b.a.e)paramAnonymousa;
          paramAnonymousa.a(b.cTA);
          Map.Entry localEntry = (Map.Entry)((Iterator)paramAnonymousa.vw()).next();
          paramAnonymousa.push(localEntry.getValue());
          paramAnonymousa.push(new n((String)localEntry.getKey()));
          return;
        }
        int j = paramAnonymousa.bkh;
        int i = j;
        if (j == 0) {
          i = paramAnonymousa.vJ();
        }
        if (i == 13)
        {
          paramAnonymousa.bkh = 9;
          return;
        }
        if (i == 12)
        {
          paramAnonymousa.bkh = 8;
          return;
        }
        if (i == 14)
        {
          paramAnonymousa.bkh = 10;
          return;
        }
        throw new IllegalStateException("Expected a name but was " + paramAnonymousa.Kh() + paramAnonymousa.vy());
      }
    };
  }
  
  public a(Reader paramReader)
  {
    int[] arrayOfInt = this.bkl;
    int i = this.bia;
    this.bia = (i + 1);
    arrayOfInt[i] = 6;
    this.bib = new String[32];
    this.bic = new int[32];
    if (paramReader == null) {
      throw new NullPointerException("in == null");
    }
    this.in = paramReader;
  }
  
  private boolean a(char paramChar)
    throws IOException
  {
    switch (paramChar)
    {
    default: 
      return true;
    case '#': 
    case '/': 
    case ';': 
    case '=': 
    case '\\': 
      vN();
    }
    return false;
  }
  
  private int aH(boolean paramBoolean)
    throws IOException
  {
    char[] arrayOfChar = this.bke;
    int i = this.pos;
    int j = this.limit;
    for (;;)
    {
      int k = j;
      int m = i;
      if (i == j)
      {
        this.pos = i;
        if (dg(1))
        {
          m = this.pos;
          k = this.limit;
        }
      }
      else
      {
        i = m + 1;
        j = arrayOfChar[m];
        if (j == 10)
        {
          this.bkf += 1;
          this.bkg = i;
          j = k;
          continue;
        }
        if ((j == 32) || (j == 13) || (j == 9)) {
          break label448;
        }
        if (j == 47)
        {
          this.pos = i;
          if (i == k)
          {
            this.pos -= 1;
            boolean bool = dg(2);
            this.pos += 1;
            if (!bool) {
              return j;
            }
          }
          vN();
          switch (arrayOfChar[this.pos])
          {
          default: 
            return j;
          case '*': 
            this.pos += 1;
            j = "*/".length();
            while ((this.pos + j <= this.limit) || (dg(j))) {
              if (this.bke[this.pos] == '\n')
              {
                this.bkf += 1;
                this.bkg = (this.pos + 1);
                this.pos += 1;
              }
              else
              {
                i = 0;
                for (;;)
                {
                  if (i >= j) {
                    break label316;
                  }
                  if (this.bke[(this.pos + i)] != "*/".charAt(i)) {
                    break;
                  }
                  i += 1;
                }
              }
            }
            for (i = 1; i == 0; i = 0) {
              throw dq("Unterminated comment");
            }
            i = this.pos + 2;
            j = this.limit;
            break;
          case '/': 
            label316:
            this.pos += 1;
            vO();
            i = this.pos;
            j = this.limit;
            break;
          }
        }
        if (j == 35)
        {
          this.pos = i;
          vN();
          vO();
          i = this.pos;
          j = this.limit;
          continue;
        }
        this.pos = i;
        return j;
      }
      if (paramBoolean) {
        throw new EOFException("End of input" + vy());
      }
      return -1;
      label448:
      j = k;
    }
  }
  
  private String b(char paramChar)
    throws IOException
  {
    char[] arrayOfChar = this.bke;
    Object localObject1 = null;
    label191:
    do
    {
      char c2 = this.pos;
      int i = this.limit;
      char c3;
      for (char c1 = c2;; c1 = c3)
      {
        if (c1 >= i) {
          break label191;
        }
        c3 = c1 + '\001';
        c1 = arrayOfChar[c1];
        if (c1 == paramChar)
        {
          this.pos = c3;
          paramChar = c3 - c2 - 1;
          if (localObject1 == null) {
            return new String(arrayOfChar, c2, paramChar);
          }
          ((StringBuilder)localObject1).append(arrayOfChar, c2, paramChar);
          return ((StringBuilder)localObject1).toString();
        }
        if (c1 == '\\')
        {
          this.pos = c3;
          c1 = c3 - c2 - 1;
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new StringBuilder(Math.max((c1 + '\001') * 2, 16));
          }
          ((StringBuilder)localObject2).append(arrayOfChar, c2, c1);
          ((StringBuilder)localObject2).append(vP());
          localObject1 = localObject2;
          break;
        }
        if (c1 == '\n')
        {
          this.bkf += 1;
          this.bkg = c3;
        }
      }
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new StringBuilder(Math.max((c1 - c2) * 2, 16));
      }
      ((StringBuilder)localObject2).append(arrayOfChar, c2, c1 - c2);
      this.pos = c1;
      localObject1 = localObject2;
    } while (dg(1));
    throw dq("Unterminated string");
  }
  
  private void c(char paramChar)
    throws IOException
  {
    char[] arrayOfChar = this.bke;
    label88:
    do
    {
      char c1 = this.pos;
      char c3 = this.limit;
      for (;;)
      {
        if (c1 >= c3) {
          break label88;
        }
        char c2 = c1 + '\001';
        c1 = arrayOfChar[c1];
        if (c1 == paramChar)
        {
          this.pos = c2;
          return;
        }
        if (c1 == '\\')
        {
          this.pos = c2;
          vP();
          break;
        }
        if (c1 == '\n')
        {
          this.bkf += 1;
          this.bkg = c2;
        }
        c1 = c2;
      }
      this.pos = c1;
    } while (dg(1));
    throw dq("Unterminated string");
  }
  
  private void df(int paramInt)
  {
    if (this.bia == this.bkl.length)
    {
      arrayOfInt1 = new int[this.bia * 2];
      int[] arrayOfInt2 = new int[this.bia * 2];
      String[] arrayOfString = new String[this.bia * 2];
      System.arraycopy(this.bkl, 0, arrayOfInt1, 0, this.bia);
      System.arraycopy(this.bic, 0, arrayOfInt2, 0, this.bia);
      System.arraycopy(this.bib, 0, arrayOfString, 0, this.bia);
      this.bkl = arrayOfInt1;
      this.bic = arrayOfInt2;
      this.bib = arrayOfString;
    }
    int[] arrayOfInt1 = this.bkl;
    int i = this.bia;
    this.bia = (i + 1);
    arrayOfInt1[i] = paramInt;
  }
  
  private boolean dg(int paramInt)
    throws IOException
  {
    boolean bool2 = false;
    char[] arrayOfChar = this.bke;
    this.bkg -= this.pos;
    if (this.limit != this.pos)
    {
      this.limit -= this.pos;
      System.arraycopy(arrayOfChar, this.pos, arrayOfChar, 0, this.limit);
    }
    for (;;)
    {
      this.pos = 0;
      int i;
      do
      {
        i = this.in.read(arrayOfChar, this.limit, arrayOfChar.length - this.limit);
        bool1 = bool2;
        if (i == -1) {
          break;
        }
        this.limit = (i + this.limit);
        i = paramInt;
        if (this.bkf == 0)
        {
          i = paramInt;
          if (this.bkg == 0)
          {
            i = paramInt;
            if (this.limit > 0)
            {
              i = paramInt;
              if (arrayOfChar[0] == 65279)
              {
                this.pos += 1;
                this.bkg += 1;
                i = paramInt + 1;
              }
            }
          }
        }
        paramInt = i;
      } while (this.limit < i);
      boolean bool1 = true;
      return bool1;
      this.limit = 0;
    }
  }
  
  private IOException dq(String paramString)
    throws IOException
  {
    throw new d(paramString + vy());
  }
  
  private int vK()
    throws IOException
  {
    int i = this.bke[this.pos];
    String str2;
    String str1;
    int k;
    int j;
    if ((i == 116) || (i == 84))
    {
      str2 = "true";
      str1 = "TRUE";
      i = 5;
      k = str2.length();
      j = 1;
    }
    for (;;)
    {
      if (j >= k) {
        break label168;
      }
      if ((this.pos + j >= this.limit) && (!dg(j + 1)))
      {
        return 0;
        if ((i == 102) || (i == 70))
        {
          str2 = "false";
          str1 = "FALSE";
          i = 6;
          break;
        }
        if ((i == 110) || (i == 78))
        {
          str2 = "null";
          str1 = "NULL";
          i = 7;
          break;
        }
        return 0;
      }
      int m = this.bke[(this.pos + j)];
      if ((m != str2.charAt(j)) && (m != str1.charAt(j))) {
        return 0;
      }
      j += 1;
    }
    label168:
    if (((this.pos + k < this.limit) || (dg(k + 1))) && (a(this.bke[(this.pos + k)]))) {
      return 0;
    }
    this.pos += k;
    this.bkh = i;
    return i;
  }
  
  private int vL()
    throws IOException
  {
    char[] arrayOfChar = this.bke;
    int i2 = this.pos;
    int i3 = this.limit;
    long l1 = 0L;
    int k = 0;
    int m = 1;
    int i = 0;
    int j = 0;
    int i1 = i3;
    int n = i2;
    char c;
    if (i2 + j == i3)
    {
      if (j == arrayOfChar.length) {
        return 0;
      }
      if (dg(j + 1))
      {
        n = this.pos;
        i1 = this.limit;
      }
    }
    else
    {
      c = arrayOfChar[(n + j)];
      switch (c)
      {
      default: 
        if ((c < '0') || (c > '9'))
        {
          if (!a(c)) {
            break label367;
          }
          return 0;
        }
        break;
      case '-': 
        if (i == 0)
        {
          i = 1;
          k = 1;
        }
        break;
      }
    }
    for (;;)
    {
      j += 1;
      i3 = i1;
      i2 = n;
      break;
      if (i == 5)
      {
        i = 6;
      }
      else
      {
        return 0;
        if (i == 5)
        {
          i = 6;
        }
        else
        {
          return 0;
          if ((i == 2) || (i == 4))
          {
            i = 5;
          }
          else
          {
            return 0;
            if (i == 2)
            {
              i = 3;
            }
            else
            {
              return 0;
              if ((i == 1) || (i == 0))
              {
                l1 = -(c - '0');
                i = 2;
              }
              else
              {
                if (i == 2)
                {
                  if (l1 == 0L) {
                    return 0;
                  }
                  long l2 = 10L * l1 - (c - '0');
                  if ((l1 > -922337203685477580L) || ((l1 == -922337203685477580L) && (l2 < l1))) {}
                  for (i2 = 1;; i2 = 0)
                  {
                    m &= i2;
                    l1 = l2;
                    break;
                  }
                }
                if (i == 3)
                {
                  i = 4;
                }
                else if ((i == 5) || (i == 6))
                {
                  i = 7;
                  continue;
                  label367:
                  if ((i == 2) && (m != 0) && ((l1 != Long.MIN_VALUE) || (k != 0)) && ((l1 != 0L) || (k == 0)))
                  {
                    if (k != 0) {}
                    for (;;)
                    {
                      this.bki = l1;
                      this.pos += j;
                      this.bkh = 15;
                      return 15;
                      l1 = -l1;
                    }
                  }
                  if ((i == 2) || (i == 4) || (i == 7))
                  {
                    this.bkj = j;
                    this.bkh = 16;
                    return 16;
                  }
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }
  
  private String vM()
    throws IOException
  {
    Object localObject1 = null;
    int i = 0;
    for (;;)
    {
      Object localObject2;
      int j;
      if (this.pos + i < this.limit)
      {
        localObject2 = localObject1;
        j = i;
        switch (this.bke[(this.pos + i)])
        {
        default: 
          i += 1;
          break;
        case '#': 
        case '/': 
        case ';': 
        case '=': 
        case '\\': 
          vN();
          j = i;
          localObject2 = localObject1;
        case '\t': 
        case '\n': 
        case '\f': 
        case '\r': 
        case ' ': 
        case ',': 
        case ':': 
        case '[': 
        case ']': 
        case '{': 
        case '}': 
          label188:
          if (localObject2 != null) {}
          break;
        }
      }
      else
      {
        for (localObject1 = new String(this.bke, this.pos, j);; localObject1 = ((StringBuilder)localObject2).append(this.bke, this.pos, j).toString())
        {
          this.pos = (j + this.pos);
          return (String)localObject1;
          if (i < this.bke.length)
          {
            localObject2 = localObject1;
            j = i;
            if (!dg(i + 1)) {
              break label188;
            }
            break;
          }
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new StringBuilder(Math.max(i, 16));
          }
          ((StringBuilder)localObject2).append(this.bke, this.pos, i);
          this.pos = (i + this.pos);
          if (dg(1)) {
            break label330;
          }
          j = 0;
          break label188;
        }
        label330:
        i = 0;
        localObject1 = localObject2;
      }
    }
  }
  
  private void vN()
    throws IOException
  {
    if (!this.bgE) {
      throw dq("Use JsonReader.setLenient(true) to accept malformed JSON");
    }
  }
  
  private void vO()
    throws IOException
  {
    int i;
    do
    {
      if ((this.pos < this.limit) || (dg(1)))
      {
        char[] arrayOfChar = this.bke;
        i = this.pos;
        this.pos = (i + 1);
        i = arrayOfChar[i];
        if (i == 10)
        {
          this.bkf += 1;
          this.bkg = this.pos;
        }
      }
      else
      {
        return;
      }
    } while (i != 13);
  }
  
  private char vP()
    throws IOException
  {
    if ((this.pos == this.limit) && (!dg(1))) {
      throw dq("Unterminated escape sequence");
    }
    char[] arrayOfChar = this.bke;
    int i = this.pos;
    this.pos = (i + 1);
    char c2 = arrayOfChar[i];
    char c1 = c2;
    switch (c2)
    {
    default: 
      throw dq("Invalid escape sequence");
    case 'u': 
      if ((this.pos + 4 > this.limit) && (!dg(4))) {
        throw dq("Unterminated escape sequence");
      }
      c1 = '\000';
      int j = this.pos;
      i = j;
      if (i < j + 4)
      {
        int k = this.bke[i];
        int m = (char)(c1 << '\004');
        if ((k >= 48) && (k <= 57)) {
          c1 = (char)(m + (k - 48));
        }
        for (;;)
        {
          i += 1;
          break;
          if ((k >= 97) && (k <= 102))
          {
            c1 = (char)(m + (k - 97 + 10));
          }
          else
          {
            if ((k < 65) || (k > 70)) {
              break label311;
            }
            c1 = (char)(m + (k - 65 + 10));
          }
        }
        throw new NumberFormatException("\\u" + new String(this.bke, this.pos, 4));
      }
      this.pos += 4;
    case '"': 
    case '\'': 
    case '/': 
    case '\\': 
      return c1;
    case 't': 
      return '\t';
    case 'b': 
      return '\b';
    case 'n': 
      return '\n';
    case 'r': 
      return '\r';
    case 'f': 
      label311:
      return '\f';
    }
    this.bkf += 1;
    this.bkg = this.pos;
    return c2;
  }
  
  public b Kh()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    switch (i)
    {
    default: 
      throw new AssertionError();
    case 1: 
      return b.cTy;
    case 2: 
      return b.cTz;
    case 3: 
      return b.cTw;
    case 4: 
      return b.cTx;
    case 12: 
    case 13: 
    case 14: 
      return b.cTA;
    case 5: 
    case 6: 
      return b.cTD;
    case 7: 
      return b.cTE;
    case 8: 
    case 9: 
    case 10: 
    case 11: 
      return b.cTB;
    case 15: 
    case 16: 
      return b.cTC;
    }
    return b.cTF;
  }
  
  public void beginArray()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    if (i == 3)
    {
      df(1);
      this.bic[(this.bia - 1)] = 0;
      this.bkh = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_ARRAY but was " + Kh() + vy());
  }
  
  public void beginObject()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    if (i == 1)
    {
      df(3);
      this.bkh = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_OBJECT but was " + Kh() + vy());
  }
  
  public void close()
    throws IOException
  {
    this.bkh = 0;
    this.bkl[0] = 8;
    this.bia = 1;
    this.in.close();
  }
  
  public void endArray()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    if (i == 4)
    {
      this.bia -= 1;
      int[] arrayOfInt = this.bic;
      i = this.bia - 1;
      arrayOfInt[i] += 1;
      this.bkh = 0;
      return;
    }
    throw new IllegalStateException("Expected END_ARRAY but was " + Kh() + vy());
  }
  
  public void endObject()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    if (i == 2)
    {
      this.bia -= 1;
      this.bib[this.bia] = null;
      int[] arrayOfInt = this.bic;
      i = this.bia - 1;
      arrayOfInt[i] += 1;
      this.bkh = 0;
      return;
    }
    throw new IllegalStateException("Expected END_OBJECT but was " + Kh() + vy());
  }
  
  public String getPath()
  {
    StringBuilder localStringBuilder = new StringBuilder("$");
    int i = 0;
    int j = this.bia;
    if (i < j)
    {
      switch (this.bkl[i])
      {
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append('[').append(this.bic[i]).append(']');
        continue;
        localStringBuilder.append('.');
        if (this.bib[i] != null) {
          localStringBuilder.append(this.bib[i]);
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public boolean hasNext()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    return (i != 2) && (i != 4);
  }
  
  public boolean nextBoolean()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    int[] arrayOfInt;
    if (i == 5)
    {
      this.bkh = 0;
      arrayOfInt = this.bic;
      i = this.bia - 1;
      arrayOfInt[i] += 1;
      return true;
    }
    if (i == 6)
    {
      this.bkh = 0;
      arrayOfInt = this.bic;
      i = this.bia - 1;
      arrayOfInt[i] += 1;
      return false;
    }
    throw new IllegalStateException("Expected a boolean but was " + Kh() + vy());
  }
  
  public double nextDouble()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    if (i == 15)
    {
      this.bkh = 0;
      arrayOfInt = this.bic;
      i = this.bia - 1;
      arrayOfInt[i] += 1;
      return this.bki;
    }
    if (i == 16)
    {
      this.bkk = new String(this.bke, this.pos, this.bkj);
      this.pos += this.bkj;
    }
    double d;
    do
    {
      for (;;)
      {
        this.bkh = 11;
        d = Double.parseDouble(this.bkk);
        if ((this.bgE) || ((!Double.isNaN(d)) && (!Double.isInfinite(d)))) {
          break label277;
        }
        throw new d("JSON forbids NaN and infinities: " + d + vy());
        if ((i == 8) || (i == 9))
        {
          if (i == 8) {}
          for (char c = '\'';; c = '"')
          {
            this.bkk = b(c);
            break;
          }
        }
        if (i != 10) {
          break;
        }
        this.bkk = vM();
      }
    } while (i == 11);
    throw new IllegalStateException("Expected a double but was " + Kh() + vy());
    label277:
    this.bkk = null;
    this.bkh = 0;
    int[] arrayOfInt = this.bic;
    i = this.bia - 1;
    arrayOfInt[i] += 1;
    return d;
  }
  
  public int nextInt()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    int[] arrayOfInt1;
    if (i == 15)
    {
      i = (int)this.bki;
      if (this.bki != i) {
        throw new NumberFormatException("Expected an int but was " + this.bki + vy());
      }
      this.bkh = 0;
      arrayOfInt1 = this.bic;
      j = this.bia - 1;
      arrayOfInt1[j] += 1;
      return i;
    }
    if (i == 16)
    {
      this.bkk = new String(this.bke, this.pos, this.bkj);
      this.pos += this.bkj;
    }
    for (;;)
    {
      this.bkh = 11;
      double d = Double.parseDouble(this.bkk);
      i = (int)d;
      if (i == d) {
        break label366;
      }
      throw new NumberFormatException("Expected an int but was " + this.bkk + vy());
      if ((i != 8) && (i != 9) && (i != 10)) {
        break label331;
      }
      if (i != 10) {
        break;
      }
      this.bkk = vM();
      try
      {
        i = Integer.parseInt(this.bkk);
        this.bkh = 0;
        arrayOfInt1 = this.bic;
        j = this.bia - 1;
        arrayOfInt1[j] += 1;
        return i;
      }
      catch (NumberFormatException localNumberFormatException) {}
    }
    if (i == 8) {}
    for (char c = '\'';; c = '"')
    {
      this.bkk = b(c);
      break;
    }
    label331:
    throw new IllegalStateException("Expected an int but was " + Kh() + vy());
    label366:
    this.bkk = null;
    this.bkh = 0;
    int[] arrayOfInt2 = this.bic;
    j = this.bia - 1;
    arrayOfInt2[j] += 1;
    return i;
  }
  
  public long nextLong()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    int[] arrayOfInt1;
    if (i == 15)
    {
      this.bkh = 0;
      arrayOfInt1 = this.bic;
      i = this.bia - 1;
      arrayOfInt1[i] += 1;
      return this.bki;
    }
    if (i == 16)
    {
      this.bkk = new String(this.bke, this.pos, this.bkj);
      this.pos += this.bkj;
    }
    long l;
    for (;;)
    {
      this.bkh = 11;
      double d = Double.parseDouble(this.bkk);
      l = d;
      if (l == d) {
        break label315;
      }
      throw new NumberFormatException("Expected a long but was " + this.bkk + vy());
      if ((i != 8) && (i != 9) && (i != 10)) {
        break label280;
      }
      if (i != 10) {
        break;
      }
      this.bkk = vM();
      try
      {
        l = Long.parseLong(this.bkk);
        this.bkh = 0;
        arrayOfInt1 = this.bic;
        i = this.bia - 1;
        arrayOfInt1[i] += 1;
        return l;
      }
      catch (NumberFormatException localNumberFormatException) {}
    }
    if (i == 8) {}
    for (char c = '\'';; c = '"')
    {
      this.bkk = b(c);
      break;
    }
    label280:
    throw new IllegalStateException("Expected a long but was " + Kh() + vy());
    label315:
    this.bkk = null;
    this.bkh = 0;
    int[] arrayOfInt2 = this.bic;
    i = this.bia - 1;
    arrayOfInt2[i] += 1;
    return l;
  }
  
  public String nextName()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    String str;
    if (i == 14) {
      str = vM();
    }
    for (;;)
    {
      this.bkh = 0;
      this.bib[(this.bia - 1)] = str;
      return str;
      if (i == 12)
      {
        str = b('\'');
      }
      else
      {
        if (i != 13) {
          break;
        }
        str = b('"');
      }
    }
    throw new IllegalStateException("Expected a name but was " + Kh() + vy());
  }
  
  public void nextNull()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    if (i == 7)
    {
      this.bkh = 0;
      int[] arrayOfInt = this.bic;
      i = this.bia - 1;
      arrayOfInt[i] += 1;
      return;
    }
    throw new IllegalStateException("Expected null but was " + Kh() + vy());
  }
  
  public String nextString()
    throws IOException
  {
    int j = this.bkh;
    int i = j;
    if (j == 0) {
      i = vJ();
    }
    String str;
    if (i == 10) {
      str = vM();
    }
    for (;;)
    {
      this.bkh = 0;
      int[] arrayOfInt = this.bic;
      i = this.bia - 1;
      arrayOfInt[i] += 1;
      return str;
      if (i == 8)
      {
        str = b('\'');
      }
      else if (i == 9)
      {
        str = b('"');
      }
      else if (i == 11)
      {
        str = this.bkk;
        this.bkk = null;
      }
      else if (i == 15)
      {
        str = Long.toString(this.bki);
      }
      else
      {
        if (i != 16) {
          break;
        }
        str = new String(this.bke, this.pos, this.bkj);
        this.pos += this.bkj;
      }
    }
    throw new IllegalStateException("Expected a string but was " + Kh() + vy());
  }
  
  public void skipValue()
    throws IOException
  {
    int j = 0;
    int i = this.bkh;
    int k = i;
    if (i == 0) {
      k = vJ();
    }
    if (k == 3)
    {
      df(1);
      i = j + 1;
    }
    for (;;)
    {
      label32:
      this.bkh = 0;
      j = i;
      if (i != 0) {
        break;
      }
      int[] arrayOfInt = this.bic;
      i = this.bia - 1;
      arrayOfInt[i] += 1;
      this.bib[(this.bia - 1)] = "null";
      return;
      if (k == 1)
      {
        df(3);
        i = j + 1;
      }
      else if (k == 4)
      {
        this.bia -= 1;
        i = j - 1;
      }
      else if (k == 2)
      {
        this.bia -= 1;
        i = j - 1;
      }
      else if ((k == 14) || (k == 10))
      {
        do
        {
          i = 0;
          for (;;)
          {
            if (this.pos + i < this.limit) {
              switch (this.bke[(this.pos + i)])
              {
              default: 
                i += 1;
                break;
              case '#': 
              case '/': 
              case ';': 
              case '=': 
              case '\\': 
                vN();
              case '\t': 
              case '\n': 
              case '\f': 
              case '\r': 
              case ' ': 
              case ',': 
              case ':': 
              case '[': 
              case ']': 
              case '{': 
              case '}': 
                this.pos = (i + this.pos);
                i = j;
                break label32;
              }
            }
          }
          this.pos = (i + this.pos);
        } while (dg(1));
        i = j;
      }
      else if ((k == 8) || (k == 12))
      {
        c('\'');
        i = j;
      }
      else if ((k == 9) || (k == 13))
      {
        c('"');
        i = j;
      }
      else
      {
        i = j;
        if (k == 16)
        {
          this.pos += this.bkj;
          i = j;
        }
      }
    }
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + vy();
  }
  
  final int vJ()
    throws IOException
  {
    int j = this.bkl[(this.bia - 1)];
    int i;
    if (j == 1)
    {
      this.bkl[(this.bia - 1)] = 2;
      switch (aH(true))
      {
      default: 
        this.pos -= 1;
        i = vK();
        if (i == 0) {
          break;
        }
      }
    }
    label611:
    do
    {
      return i;
      if (j == 2)
      {
        switch (aH(true))
        {
        case 44: 
        default: 
          throw dq("Unterminated array");
        case 93: 
          this.bkh = 4;
          return 4;
        }
        vN();
        break;
      }
      if ((j == 3) || (j == 5))
      {
        this.bkl[(this.bia - 1)] = 4;
        if (j == 5) {
          switch (aH(true))
          {
          default: 
            throw dq("Unterminated object");
          case 125: 
            this.bkh = 2;
            return 2;
          case 59: 
            vN();
          }
        }
        i = aH(true);
        switch (i)
        {
        default: 
          vN();
          this.pos -= 1;
          if (a((char)i))
          {
            this.bkh = 14;
            return 14;
          }
          break;
        case 34: 
          this.bkh = 13;
          return 13;
        case 39: 
          vN();
          this.bkh = 12;
          return 12;
        case 125: 
          if (j != 5)
          {
            this.bkh = 2;
            return 2;
          }
          throw dq("Expected name");
        }
        throw dq("Expected name");
      }
      if (j == 4)
      {
        this.bkl[(this.bia - 1)] = 5;
        switch (aH(true))
        {
        case 58: 
        case 59: 
        case 60: 
        default: 
          throw dq("Expected ':'");
        }
        vN();
        if (((this.pos >= this.limit) && (!dg(1))) || (this.bke[this.pos] != '>')) {
          break;
        }
        this.pos += 1;
        break;
      }
      if (j == 6)
      {
        if (this.bgE)
        {
          aH(true);
          this.pos -= 1;
          if ((this.pos + bkd.length <= this.limit) || (dg(bkd.length)))
          {
            i = 0;
            while (i < bkd.length)
            {
              if (this.bke[(this.pos + i)] != bkd[i]) {
                break label611;
              }
              i += 1;
            }
            this.pos += bkd.length;
          }
        }
        this.bkl[(this.bia - 1)] = 7;
        break;
      }
      if (j == 7)
      {
        if (aH(false) == -1)
        {
          this.bkh = 17;
          return 17;
        }
        vN();
        this.pos -= 1;
        break;
      }
      if (j != 8) {
        break;
      }
      throw new IllegalStateException("JsonReader is closed");
      if (j == 1)
      {
        this.bkh = 4;
        return 4;
      }
      if ((j == 1) || (j == 2))
      {
        vN();
        this.pos -= 1;
        this.bkh = 7;
        return 7;
      }
      throw dq("Unexpected value");
      vN();
      this.bkh = 8;
      return 8;
      this.bkh = 9;
      return 9;
      this.bkh = 3;
      return 3;
      this.bkh = 1;
      return 1;
      j = vL();
      i = j;
    } while (j != 0);
    if (!a(this.bke[this.pos])) {
      throw dq("Expected value");
    }
    vN();
    this.bkh = 10;
    return 10;
  }
  
  final String vy()
  {
    int i = this.bkf;
    int j = this.pos;
    int k = this.bkg;
    return " at line " + (i + 1) + " column " + (j - k + 1) + " path " + getPath();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/d/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */