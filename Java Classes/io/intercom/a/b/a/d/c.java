package io.intercom.a.b.a.d;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

public class c
  implements Closeable, Flushable
{
  private static final String[] bkx = new String[''];
  private static final String[] bky;
  public boolean bgC;
  public boolean bgE;
  public boolean bgz;
  private int bia = 0;
  private String bkA;
  private int[] bkl = new int[32];
  public String bkz;
  private final Writer out;
  public String separator;
  
  static
  {
    int i = 0;
    while (i <= 31)
    {
      bkx[i] = String.format("\\u%04x", new Object[] { Integer.valueOf(i) });
      i += 1;
    }
    bkx[34] = "\\\"";
    bkx[92] = "\\\\";
    bkx[9] = "\\t";
    bkx[8] = "\\b";
    bkx[10] = "\\n";
    bkx[13] = "\\r";
    bkx[12] = "\\f";
    String[] arrayOfString = (String[])bkx.clone();
    bky = arrayOfString;
    arrayOfString[60] = "\\u003c";
    bky[62] = "\\u003e";
    bky[38] = "\\u0026";
    bky[61] = "\\u003d";
    bky[39] = "\\u0027";
  }
  
  public c(Writer paramWriter)
  {
    df(6);
    this.separator = ":";
    this.bgz = true;
    if (paramWriter == null) {
      throw new NullPointerException("out == null");
    }
    this.out = paramWriter;
  }
  
  private void df(int paramInt)
  {
    if (this.bia == this.bkl.length)
    {
      arrayOfInt = new int[this.bia * 2];
      System.arraycopy(this.bkl, 0, arrayOfInt, 0, this.bia);
      this.bkl = arrayOfInt;
    }
    int[] arrayOfInt = this.bkl;
    int i = this.bia;
    this.bia = (i + 1);
    arrayOfInt[i] = paramInt;
  }
  
  private void dh(int paramInt)
  {
    this.bkl[(this.bia - 1)] = paramInt;
  }
  
  private void dr(String paramString)
    throws IOException
  {
    if (this.bgC) {}
    int m;
    int i;
    int j;
    int n;
    int k;
    for (String[] arrayOfString = bky;; arrayOfString = bkx)
    {
      this.out.write("\"");
      m = paramString.length();
      i = 0;
      for (j = 0;; j = k)
      {
        if (i >= m) {
          break label153;
        }
        n = paramString.charAt(i);
        if (n >= 128) {
          break;
        }
        String str2 = arrayOfString[n];
        str1 = str2;
        if (str2 != null) {
          break label101;
        }
        k = j;
        i += 1;
      }
    }
    if (n == 8232) {}
    for (String str1 = "\\u2028";; str1 = "\\u2029")
    {
      label101:
      if (j < i) {
        this.out.write(paramString, j, i - j);
      }
      this.out.write(str1);
      k = i + 1;
      break;
      k = j;
      if (n != 8233) {
        break;
      }
    }
    label153:
    if (j < m) {
      this.out.write(paramString, j, m - j);
    }
    this.out.write("\"");
  }
  
  private c e(int paramInt1, int paramInt2, String paramString)
    throws IOException
  {
    int i = vQ();
    if ((i != paramInt2) && (i != paramInt1)) {
      throw new IllegalStateException("Nesting problem.");
    }
    if (this.bkA != null) {
      throw new IllegalStateException("Dangling name: " + this.bkA);
    }
    this.bia -= 1;
    if (i == paramInt2) {
      vS();
    }
    this.out.write(paramString);
    return this;
  }
  
  private c j(int paramInt, String paramString)
    throws IOException
  {
    vT();
    df(paramInt);
    this.out.write(paramString);
    return this;
  }
  
  private int vQ()
  {
    if (this.bia == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    return this.bkl[(this.bia - 1)];
  }
  
  private void vR()
    throws IOException
  {
    int i;
    if (this.bkA != null)
    {
      i = vQ();
      if (i != 5) {
        break label49;
      }
      this.out.write(44);
    }
    label49:
    while (i == 3)
    {
      vS();
      dh(4);
      dr(this.bkA);
      this.bkA = null;
      return;
    }
    throw new IllegalStateException("Nesting problem.");
  }
  
  private void vS()
    throws IOException
  {
    if (this.bkz == null) {}
    for (;;)
    {
      return;
      this.out.write("\n");
      int i = 1;
      int j = this.bia;
      while (i < j)
      {
        this.out.write(this.bkz);
        i += 1;
      }
    }
  }
  
  private void vT()
    throws IOException
  {
    switch (vQ())
    {
    case 3: 
    case 5: 
    default: 
      throw new IllegalStateException("Nesting problem.");
    case 7: 
      if (!this.bgE) {
        throw new IllegalStateException("JSON must have only one top-level value.");
      }
    case 6: 
      dh(7);
      return;
    case 1: 
      dh(2);
      vS();
      return;
    case 2: 
      this.out.append(',');
      vS();
      return;
    }
    this.out.append(this.separator);
    dh(5);
  }
  
  public c Kj()
    throws IOException
  {
    vR();
    return j(1, "[");
  }
  
  public c Kk()
    throws IOException
  {
    return e(1, 2, "]");
  }
  
  public c Kl()
    throws IOException
  {
    vR();
    return j(3, "{");
  }
  
  public c Km()
    throws IOException
  {
    return e(3, 5, "}");
  }
  
  public c Kn()
    throws IOException
  {
    if (this.bkA != null)
    {
      if (this.bgz) {
        vR();
      }
    }
    else
    {
      vT();
      this.out.write("null");
      return this;
    }
    this.bkA = null;
    return this;
  }
  
  public c Y(long paramLong)
    throws IOException
  {
    vR();
    vT();
    this.out.write(Long.toString(paramLong));
    return this;
  }
  
  public c b(Number paramNumber)
    throws IOException
  {
    if (paramNumber == null) {
      return Kn();
    }
    vR();
    String str = paramNumber.toString();
    if ((!this.bgE) && ((str.equals("-Infinity")) || (str.equals("Infinity")) || (str.equals("NaN")))) {
      throw new IllegalArgumentException("Numeric values must be finite, but was " + paramNumber);
    }
    vT();
    this.out.append(str);
    return this;
  }
  
  public c bx(boolean paramBoolean)
    throws IOException
  {
    vR();
    vT();
    Writer localWriter = this.out;
    if (paramBoolean) {}
    for (String str = "true";; str = "false")
    {
      localWriter.write(str);
      return this;
    }
  }
  
  public c c(Boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean == null) {
      return Kn();
    }
    vR();
    vT();
    Writer localWriter = this.out;
    if (paramBoolean.booleanValue()) {}
    for (paramBoolean = "true";; paramBoolean = "false")
    {
      localWriter.write(paramBoolean);
      return this;
    }
  }
  
  public void close()
    throws IOException
  {
    this.out.close();
    int i = this.bia;
    if ((i > 1) || ((i == 1) && (this.bkl[(i - 1)] != 7))) {
      throw new IOException("Incomplete document");
    }
    this.bia = 0;
  }
  
  public c fd(String paramString)
    throws IOException
  {
    if (paramString == null) {
      throw new NullPointerException("name == null");
    }
    if (this.bkA != null) {
      throw new IllegalStateException();
    }
    if (this.bia == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    this.bkA = paramString;
    return this;
  }
  
  public c fe(String paramString)
    throws IOException
  {
    if (paramString == null) {
      return Kn();
    }
    vR();
    vT();
    dr(paramString);
    return this;
  }
  
  public void flush()
    throws IOException
  {
    if (this.bia == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    this.out.flush();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/d/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */