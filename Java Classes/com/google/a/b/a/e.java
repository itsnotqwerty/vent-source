package com.google.a.b.a;

import com.google.a.b.h;
import com.google.a.d.a;
import com.google.a.d.b;
import com.google.a.i;
import com.google.a.m;
import com.google.a.n;
import com.google.a.p;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class e
  extends a
{
  private static final Reader bhX = new Reader()
  {
    public final void close()
      throws IOException
    {
      throw new AssertionError();
    }
    
    public final int read(char[] paramAnonymousArrayOfChar, int paramAnonymousInt1, int paramAnonymousInt2)
      throws IOException
    {
      throw new AssertionError();
    }
  };
  private static final Object bhY = new Object();
  private Object[] bhZ;
  private int bia;
  private String[] bib;
  private int[] bic;
  
  private Object vx()
  {
    Object localObject = this.bhZ;
    int i = this.bia - 1;
    this.bia = i;
    localObject = localObject[i];
    this.bhZ[this.bia] = null;
    return localObject;
  }
  
  private String vy()
  {
    return " at path " + getPath();
  }
  
  public final void a(b paramb)
    throws IOException
  {
    if (vv() != paramb) {
      throw new IllegalStateException("Expected " + paramb + " but was " + vv() + vy());
    }
  }
  
  public final void beginArray()
    throws IOException
  {
    a(b.bkm);
    push(((i)vw()).iterator());
    this.bic[(this.bia - 1)] = 0;
  }
  
  public final void beginObject()
    throws IOException
  {
    a(b.bko);
    push(((n)vw()).bgU.entrySet().iterator());
  }
  
  public final void close()
    throws IOException
  {
    this.bhZ = new Object[] { bhY };
    this.bia = 1;
  }
  
  public final void endArray()
    throws IOException
  {
    a(b.bkn);
    vx();
    vx();
    if (this.bia > 0)
    {
      int[] arrayOfInt = this.bic;
      int i = this.bia - 1;
      arrayOfInt[i] += 1;
    }
  }
  
  public final void endObject()
    throws IOException
  {
    a(b.bkp);
    vx();
    vx();
    if (this.bia > 0)
    {
      int[] arrayOfInt = this.bic;
      int i = this.bia - 1;
      arrayOfInt[i] += 1;
    }
  }
  
  public final String getPath()
  {
    StringBuilder localStringBuilder = new StringBuilder("$");
    int j = 0;
    if (j < this.bia)
    {
      Object[] arrayOfObject;
      int i;
      if ((this.bhZ[j] instanceof i))
      {
        arrayOfObject = this.bhZ;
        j += 1;
        i = j;
        if ((arrayOfObject[j] instanceof Iterator))
        {
          localStringBuilder.append('[').append(this.bic[j]).append(']');
          i = j;
        }
      }
      for (;;)
      {
        j = i + 1;
        break;
        i = j;
        if ((this.bhZ[j] instanceof n))
        {
          arrayOfObject = this.bhZ;
          j += 1;
          i = j;
          if ((arrayOfObject[j] instanceof Iterator))
          {
            localStringBuilder.append('.');
            i = j;
            if (this.bib[j] != null)
            {
              localStringBuilder.append(this.bib[j]);
              i = j;
            }
          }
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public final boolean hasNext()
    throws IOException
  {
    b localb = vv();
    return (localb != b.bkp) && (localb != b.bkn);
  }
  
  public final boolean nextBoolean()
    throws IOException
  {
    a(b.bkt);
    boolean bool = ((p)vx()).getAsBoolean();
    if (this.bia > 0)
    {
      int[] arrayOfInt = this.bic;
      int i = this.bia - 1;
      arrayOfInt[i] += 1;
    }
    return bool;
  }
  
  public final double nextDouble()
    throws IOException
  {
    Object localObject = vv();
    if ((localObject != b.bks) && (localObject != b.bkr)) {
      throw new IllegalStateException("Expected " + b.bks + " but was " + localObject + vy());
    }
    double d = ((p)vw()).getAsDouble();
    if ((!this.bgE) && ((Double.isNaN(d)) || (Double.isInfinite(d)))) {
      throw new NumberFormatException("JSON forbids NaN and infinities: " + d);
    }
    vx();
    if (this.bia > 0)
    {
      localObject = this.bic;
      int i = this.bia - 1;
      localObject[i] += 1;
    }
    return d;
  }
  
  public final int nextInt()
    throws IOException
  {
    Object localObject = vv();
    if ((localObject != b.bks) && (localObject != b.bkr)) {
      throw new IllegalStateException("Expected " + b.bks + " but was " + localObject + vy());
    }
    int i = ((p)vw()).getAsInt();
    vx();
    if (this.bia > 0)
    {
      localObject = this.bic;
      int j = this.bia - 1;
      localObject[j] += 1;
    }
    return i;
  }
  
  public final long nextLong()
    throws IOException
  {
    Object localObject = vv();
    if ((localObject != b.bks) && (localObject != b.bkr)) {
      throw new IllegalStateException("Expected " + b.bks + " but was " + localObject + vy());
    }
    long l = ((p)vw()).getAsLong();
    vx();
    if (this.bia > 0)
    {
      localObject = this.bic;
      int i = this.bia - 1;
      localObject[i] += 1;
    }
    return l;
  }
  
  public final String nextName()
    throws IOException
  {
    a(b.bkq);
    Map.Entry localEntry = (Map.Entry)((Iterator)vw()).next();
    String str = (String)localEntry.getKey();
    this.bib[(this.bia - 1)] = str;
    push(localEntry.getValue());
    return str;
  }
  
  public final void nextNull()
    throws IOException
  {
    a(b.bku);
    vx();
    if (this.bia > 0)
    {
      int[] arrayOfInt = this.bic;
      int i = this.bia - 1;
      arrayOfInt[i] += 1;
    }
  }
  
  public final String nextString()
    throws IOException
  {
    Object localObject = vv();
    if ((localObject != b.bkr) && (localObject != b.bks)) {
      throw new IllegalStateException("Expected " + b.bkr + " but was " + localObject + vy());
    }
    localObject = ((p)vx()).vf();
    if (this.bia > 0)
    {
      int[] arrayOfInt = this.bic;
      int i = this.bia - 1;
      arrayOfInt[i] += 1;
    }
    return (String)localObject;
  }
  
  public final void push(Object paramObject)
  {
    if (this.bia == this.bhZ.length)
    {
      arrayOfObject = new Object[this.bia * 2];
      int[] arrayOfInt = new int[this.bia * 2];
      String[] arrayOfString = new String[this.bia * 2];
      System.arraycopy(this.bhZ, 0, arrayOfObject, 0, this.bia);
      System.arraycopy(this.bic, 0, arrayOfInt, 0, this.bia);
      System.arraycopy(this.bib, 0, arrayOfString, 0, this.bia);
      this.bhZ = arrayOfObject;
      this.bic = arrayOfInt;
      this.bib = arrayOfString;
    }
    Object[] arrayOfObject = this.bhZ;
    int i = this.bia;
    this.bia = (i + 1);
    arrayOfObject[i] = paramObject;
  }
  
  public final void skipValue()
    throws IOException
  {
    if (vv() == b.bkq)
    {
      nextName();
      this.bib[(this.bia - 2)] = "null";
    }
    for (;;)
    {
      if (this.bia > 0)
      {
        int[] arrayOfInt = this.bic;
        int i = this.bia - 1;
        arrayOfInt[i] += 1;
      }
      return;
      vx();
      if (this.bia > 0) {
        this.bib[(this.bia - 1)] = "null";
      }
    }
  }
  
  public final String toString()
  {
    return getClass().getSimpleName();
  }
  
  public final b vv()
    throws IOException
  {
    Object localObject;
    boolean bool;
    for (;;)
    {
      if (this.bia == 0) {
        return b.bkv;
      }
      localObject = vw();
      if (!(localObject instanceof Iterator)) {
        break label85;
      }
      bool = this.bhZ[(this.bia - 2)] instanceof n;
      localObject = (Iterator)localObject;
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
      if (bool) {
        return b.bkq;
      }
      push(((Iterator)localObject).next());
    }
    if (bool) {
      return b.bkp;
    }
    return b.bkn;
    label85:
    if ((localObject instanceof n)) {
      return b.bko;
    }
    if ((localObject instanceof i)) {
      return b.bkm;
    }
    if ((localObject instanceof p))
    {
      localObject = (p)localObject;
      if ((((p)localObject).value instanceof String)) {
        return b.bkr;
      }
      if ((((p)localObject).value instanceof Boolean)) {
        return b.bkt;
      }
      if ((((p)localObject).value instanceof Number)) {
        return b.bks;
      }
      throw new AssertionError();
    }
    if ((localObject instanceof m)) {
      return b.bku;
    }
    if (localObject == bhY) {
      throw new IllegalStateException("JsonReader is closed");
    }
    throw new AssertionError();
  }
  
  public final Object vw()
  {
    return this.bhZ[(this.bia - 1)];
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */