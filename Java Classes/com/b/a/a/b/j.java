package com.b.a.a.b;

import b.c;
import b.e;
import b.f;
import b.h;
import b.l;
import b.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

final class j
{
  int b;
  private final l bKR = new l(new h(parame)new Inflater
  {
    public final long b(c paramAnonymousc, long paramAnonymousLong)
      throws IOException
    {
      if (j.this.b == 0) {}
      do
      {
        return -1L;
        paramAnonymousLong = super.b(paramAnonymousc, Math.min(paramAnonymousLong, j.this.b));
      } while (paramAnonymousLong == -1L);
      paramAnonymousc = j.this;
      paramAnonymousc.b = ((int)(paramAnonymousc.b - paramAnonymousLong));
      return paramAnonymousLong;
    }
  }, new Inflater()
  {
    public final int inflate(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
      throws DataFormatException
    {
      int j = super.inflate(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      int i = j;
      if (j == 0)
      {
        i = j;
        if (needsDictionary())
        {
          setDictionary(m.bIG);
          i = super.inflate(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
        }
      }
      return i;
    }
  });
  final e bKS = b.m.b(this.bKR);
  
  public j(e parame) {}
  
  private f zR()
    throws IOException
  {
    int i = this.bKS.KZ();
    return this.bKS.ap(i);
  }
  
  public final List<d> a(int paramInt)
    throws IOException
  {
    this.b += paramInt;
    int i = this.bKS.KZ();
    if (i < 0) {
      throw new IOException("numberOfPairs < 0: " + i);
    }
    if (i > 1024) {
      throw new IOException("numberOfPairs > 1024: " + i);
    }
    ArrayList localArrayList = new ArrayList(i);
    paramInt = 0;
    while (paramInt < i)
    {
      f localf1 = zR().Lj();
      f localf2 = zR();
      if (localf1.bMw.length == 0) {
        throw new IOException("name.size == 0");
      }
      localArrayList.add(new d(localf1, localf2));
      paramInt += 1;
    }
    if (this.b > 0)
    {
      this.bKR.b();
      if (this.b != 0) {
        throw new IOException("compressedLimit > 0: " + this.b);
      }
    }
    return localArrayList;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/b/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */