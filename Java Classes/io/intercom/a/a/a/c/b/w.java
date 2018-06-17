package io.intercom.a.a.a.c.b;

import io.intercom.a.a.a.c.b.a.b;
import io.intercom.a.a.a.c.h;
import io.intercom.a.a.a.c.j;
import io.intercom.a.a.a.c.m;
import io.intercom.a.a.a.i.e;
import io.intercom.a.a.a.i.i;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

final class w
  implements h
{
  private static final e<Class<?>, byte[]> cKY = new e(50L);
  private final b cFw;
  private final h cIS;
  private final h cIX;
  private final j cIZ;
  private final Class<?> cKZ;
  private final m<?> cLa;
  private final int height;
  private final int width;
  
  w(b paramb, h paramh1, h paramh2, int paramInt1, int paramInt2, m<?> paramm, Class<?> paramClass, j paramj)
  {
    this.cFw = paramb;
    this.cIS = paramh1;
    this.cIX = paramh2;
    this.width = paramInt1;
    this.height = paramInt2;
    this.cLa = paramm;
    this.cKZ = paramClass;
    this.cIZ = paramj;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof w))
    {
      paramObject = (w)paramObject;
      bool1 = bool2;
      if (this.height == ((w)paramObject).height)
      {
        bool1 = bool2;
        if (this.width == ((w)paramObject).width)
        {
          bool1 = bool2;
          if (i.i(this.cLa, ((w)paramObject).cLa))
          {
            bool1 = bool2;
            if (this.cKZ.equals(((w)paramObject).cKZ))
            {
              bool1 = bool2;
              if (this.cIS.equals(((w)paramObject).cIS))
              {
                bool1 = bool2;
                if (this.cIX.equals(((w)paramObject).cIX))
                {
                  bool1 = bool2;
                  if (this.cIZ.equals(((w)paramObject).cIZ)) {
                    bool1 = true;
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public final int hashCode()
  {
    int j = ((this.cIS.hashCode() * 31 + this.cIX.hashCode()) * 31 + this.width) * 31 + this.height;
    int i = j;
    if (this.cLa != null) {
      i = j * 31 + this.cLa.hashCode();
    }
    return (i * 31 + this.cKZ.hashCode()) * 31 + this.cIZ.hashCode();
  }
  
  public final String toString()
  {
    return "ResourceCacheKey{sourceKey=" + this.cIS + ", signature=" + this.cIX + ", width=" + this.width + ", height=" + this.height + ", decodedResourceClass=" + this.cKZ + ", transformation='" + this.cLa + '\'' + ", options=" + this.cIZ + '}';
  }
  
  public final void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    byte[] arrayOfByte3 = (byte[])this.cFw.C(byte[].class);
    ByteBuffer.wrap(arrayOfByte3).putInt(this.width).putInt(this.height).array();
    this.cIX.updateDiskCacheKey(paramMessageDigest);
    this.cIS.updateDiskCacheKey(paramMessageDigest);
    paramMessageDigest.update(arrayOfByte3);
    if (this.cLa != null) {
      this.cLa.updateDiskCacheKey(paramMessageDigest);
    }
    this.cIZ.updateDiskCacheKey(paramMessageDigest);
    byte[] arrayOfByte2 = (byte[])cKY.get(this.cKZ);
    byte[] arrayOfByte1 = arrayOfByte2;
    if (arrayOfByte2 == null)
    {
      arrayOfByte1 = this.cKZ.getName().getBytes(cIb);
      cKY.put(this.cKZ, arrayOfByte1);
    }
    paramMessageDigest.update(arrayOfByte1);
    this.cFw.put(arrayOfByte3);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */