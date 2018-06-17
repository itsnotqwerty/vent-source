package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

final class na
  implements Cloneable
{
  private my<?, ?> aZV;
  List<nf> aZW = new ArrayList();
  private Object value;
  
  private na sT()
  {
    na localna = new na();
    try
    {
      localna.aZV = this.aZV;
      if (this.aZW == null) {
        localna.aZW = null;
      }
      for (;;)
      {
        if (this.value == null) {
          return localna;
        }
        if (!(this.value instanceof nd)) {
          break;
        }
        localna.value = ((nd)((nd)this.value).clone());
        return localna;
        localna.aZW.addAll(this.aZW);
      }
      if (!(this.value instanceof byte[])) {
        break label117;
      }
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError(localCloneNotSupportedException);
    }
    localCloneNotSupportedException.value = ((byte[])this.value).clone();
    return localCloneNotSupportedException;
    label117:
    Object localObject1;
    Object localObject2;
    int i;
    if ((this.value instanceof byte[][]))
    {
      localObject1 = (byte[][])this.value;
      localObject2 = new byte[localObject1.length][];
      localCloneNotSupportedException.value = localObject2;
      i = 0;
      while (i < localObject1.length)
      {
        localObject2[i] = ((byte[])localObject1[i].clone());
        i += 1;
      }
    }
    if ((this.value instanceof boolean[]))
    {
      localCloneNotSupportedException.value = ((boolean[])this.value).clone();
      return localCloneNotSupportedException;
    }
    if ((this.value instanceof int[]))
    {
      localCloneNotSupportedException.value = ((int[])this.value).clone();
      return localCloneNotSupportedException;
    }
    if ((this.value instanceof long[]))
    {
      localCloneNotSupportedException.value = ((long[])this.value).clone();
      return localCloneNotSupportedException;
    }
    if ((this.value instanceof float[]))
    {
      localCloneNotSupportedException.value = ((float[])this.value).clone();
      return localCloneNotSupportedException;
    }
    if ((this.value instanceof double[]))
    {
      localCloneNotSupportedException.value = ((double[])this.value).clone();
      return localCloneNotSupportedException;
    }
    if ((this.value instanceof nd[]))
    {
      localObject1 = (nd[])this.value;
      localObject2 = new nd[localObject1.length];
      localCloneNotSupportedException.value = localObject2;
      i = 0;
      while (i < localObject1.length)
      {
        localObject2[i] = ((nd)localObject1[i].clone());
        i += 1;
      }
    }
    return localCloneNotSupportedException;
  }
  
  private final byte[] toByteArray()
    throws IOException
  {
    byte[] arrayOfByte = new byte[st()];
    a(mv.b(arrayOfByte, arrayOfByte.length));
    return arrayOfByte;
  }
  
  final void a(mv parammv)
    throws IOException
  {
    Object localObject1;
    Object localObject2;
    int i;
    if (this.value != null)
    {
      localObject1 = this.aZV;
      localObject2 = this.value;
      if (((my)localObject1).aZQ)
      {
        int j = Array.getLength(localObject2);
        i = 0;
        while (i < j)
        {
          Object localObject3 = Array.get(localObject2, i);
          if (localObject3 != null) {
            ((my)localObject1).a(localObject3, parammv);
          }
          i += 1;
        }
      }
      ((my)localObject1).a(localObject2, parammv);
    }
    for (;;)
    {
      return;
      localObject1 = this.aZW.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (nf)((Iterator)localObject1).next();
        parammv.da(((nf)localObject2).tag);
        localObject2 = ((nf)localObject2).aZZ;
        i = localObject2.length;
        if (parammv.aZN.remaining() < i) {
          break label156;
        }
        parammv.aZN.put((byte[])localObject2, 0, i);
      }
    }
    label156:
    throw new mw(parammv.aZN.position(), parammv.aZN.limit());
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (!(paramObject instanceof na));
      paramObject = (na)paramObject;
      if ((this.value == null) || (((na)paramObject).value == null)) {
        break;
      }
      bool1 = bool2;
    } while (this.aZV != ((na)paramObject).aZV);
    if (!this.aZV.aZP.isArray()) {
      return this.value.equals(((na)paramObject).value);
    }
    if ((this.value instanceof byte[])) {
      return Arrays.equals((byte[])this.value, (byte[])((na)paramObject).value);
    }
    if ((this.value instanceof int[])) {
      return Arrays.equals((int[])this.value, (int[])((na)paramObject).value);
    }
    if ((this.value instanceof long[])) {
      return Arrays.equals((long[])this.value, (long[])((na)paramObject).value);
    }
    if ((this.value instanceof float[])) {
      return Arrays.equals((float[])this.value, (float[])((na)paramObject).value);
    }
    if ((this.value instanceof double[])) {
      return Arrays.equals((double[])this.value, (double[])((na)paramObject).value);
    }
    if ((this.value instanceof boolean[])) {
      return Arrays.equals((boolean[])this.value, (boolean[])((na)paramObject).value);
    }
    return Arrays.deepEquals((Object[])this.value, (Object[])((na)paramObject).value);
    if ((this.aZW != null) && (((na)paramObject).aZW != null)) {
      return this.aZW.equals(((na)paramObject).aZW);
    }
    try
    {
      bool1 = Arrays.equals(toByteArray(), ((na)paramObject).toByteArray());
      return bool1;
    }
    catch (IOException paramObject)
    {
      throw new IllegalStateException((Throwable)paramObject);
    }
  }
  
  public final int hashCode()
  {
    try
    {
      int i = Arrays.hashCode(toByteArray());
      return i + 527;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException(localIOException);
    }
  }
  
  final int st()
  {
    int i = 0;
    Object localObject2;
    int j;
    if (this.value != null)
    {
      localObject1 = this.aZV;
      localObject2 = this.value;
      if (((my)localObject1).aZQ)
      {
        int m = Array.getLength(localObject2);
        j = 0;
        for (i = 0;; i = k)
        {
          k = i;
          if (j >= m) {
            break;
          }
          k = i;
          if (Array.get(localObject2, j) != null) {
            k = i + ((my)localObject1).W(Array.get(localObject2, j));
          }
          j += 1;
        }
      }
      int k = ((my)localObject1).W(localObject2);
      return k;
    }
    Object localObject1 = this.aZW.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (nf)((Iterator)localObject1).next();
      j = mv.db(((nf)localObject2).tag);
      i = ((nf)localObject2).aZZ.length + (j + 0) + i;
    }
    return i;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/na.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */