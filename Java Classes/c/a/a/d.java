package c.a.a;

import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

public final class d
{
  private static final Comparator cUT = new a((byte)0);
  
  public static int W(String paramString1, String paramString2)
  {
    return paramString1.compareTo(paramString2);
  }
  
  public static int a(byte paramByte1, byte paramByte2)
  {
    if (paramByte1 < paramByte2) {
      return -1;
    }
    if (paramByte2 < paramByte1) {
      return 1;
    }
    return 0;
  }
  
  public static int a(Comparable paramComparable1, Comparable paramComparable2)
  {
    return paramComparable1.compareTo(paramComparable2);
  }
  
  public static void a(ByteBuffer paramByteBuffer, StringBuilder paramStringBuilder)
  {
    byte[] arrayOfByte = paramByteBuffer.array();
    int i = paramByteBuffer.arrayOffset();
    int k = i + paramByteBuffer.position();
    int m = paramByteBuffer.limit() + i;
    if (m - k > 128) {}
    for (i = k + 128;; i = m)
    {
      int j = k;
      while (j < i)
      {
        if (j > k) {
          paramStringBuilder.append(" ");
        }
        paramStringBuilder.append(Integer.toHexString((arrayOfByte[j] | 0x100) & 0x1FF).toUpperCase().substring(1));
        j += 1;
      }
    }
    if (m != i) {
      paramStringBuilder.append("...");
    }
  }
  
  public static int aB(int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2) {
      return -1;
    }
    if (paramInt2 < paramInt1) {
      return 1;
    }
    return 0;
  }
  
  public static int c(Set paramSet1, Set paramSet2)
  {
    int i = aB(paramSet1.size(), paramSet2.size());
    if (i != 0) {
      return i;
    }
    TreeSet localTreeSet = new TreeSet(cUT);
    localTreeSet.addAll(paramSet1);
    paramSet1 = new TreeSet(cUT);
    paramSet1.addAll(paramSet2);
    paramSet2 = localTreeSet.iterator();
    paramSet1 = paramSet1.iterator();
    while ((paramSet2.hasNext()) && (paramSet1.hasNext()))
    {
      i = cUT.compare(paramSet2.next(), paramSet1.next());
      if (i != 0) {
        return i;
      }
    }
    return 0;
  }
  
  public static int c(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int k = 0;
    int j = aB(paramArrayOfByte1.length, paramArrayOfByte2.length);
    if (j != 0) {
      return j;
    }
    int i = 0;
    for (;;)
    {
      j = k;
      if (i >= paramArrayOfByte1.length) {
        break;
      }
      j = a(paramArrayOfByte1[i], paramArrayOfByte2[i]);
      if (j != 0) {
        return j;
      }
      i += 1;
    }
  }
  
  public static int e(Map paramMap1, Map paramMap2)
  {
    int i = aB(paramMap1.size(), paramMap2.size());
    if (i != 0) {
      return i;
    }
    Object localObject = new TreeMap(cUT);
    ((SortedMap)localObject).putAll(paramMap1);
    paramMap1 = ((SortedMap)localObject).entrySet().iterator();
    localObject = new TreeMap(cUT);
    ((SortedMap)localObject).putAll(paramMap2);
    paramMap2 = ((SortedMap)localObject).entrySet().iterator();
    while ((paramMap1.hasNext()) && (paramMap2.hasNext()))
    {
      localObject = (Map.Entry)paramMap1.next();
      Map.Entry localEntry = (Map.Entry)paramMap2.next();
      i = cUT.compare(((Map.Entry)localObject).getKey(), localEntry.getKey());
      if (i != 0) {
        return i;
      }
      i = cUT.compare(((Map.Entry)localObject).getValue(), localEntry.getValue());
      if (i != 0) {
        return i;
      }
    }
    return 0;
  }
  
  private static boolean e(ByteBuffer paramByteBuffer)
  {
    return (paramByteBuffer.hasArray()) && (paramByteBuffer.position() == 0) && (paramByteBuffer.arrayOffset() == 0) && (paramByteBuffer.remaining() == paramByteBuffer.capacity());
  }
  
  public static int f(long paramLong1, long paramLong2)
  {
    if (paramLong1 < paramLong2) {
      return -1;
    }
    if (paramLong2 < paramLong1) {
      return 1;
    }
    return 0;
  }
  
  public static int f(List paramList1, List paramList2)
  {
    int k = 0;
    int j = aB(paramList1.size(), paramList2.size());
    if (j != 0) {
      return j;
    }
    int i = 0;
    for (;;)
    {
      j = k;
      if (i >= paramList1.size()) {
        break;
      }
      j = cUT.compare(paramList1.get(i), paramList2.get(i));
      if (j != 0) {
        return j;
      }
      i += 1;
    }
  }
  
  public static ByteBuffer f(ByteBuffer paramByteBuffer)
  {
    Object localObject;
    if (paramByteBuffer == null) {
      localObject = null;
    }
    do
    {
      return (ByteBuffer)localObject;
      localObject = paramByteBuffer;
    } while (e(paramByteBuffer));
    if (e(paramByteBuffer)) {}
    for (paramByteBuffer = paramByteBuffer.array();; paramByteBuffer = (ByteBuffer)localObject)
    {
      return ByteBuffer.wrap(paramByteBuffer);
      localObject = new byte[paramByteBuffer.remaining()];
      int i = paramByteBuffer.remaining();
      System.arraycopy(paramByteBuffer.array(), paramByteBuffer.arrayOffset() + paramByteBuffer.position(), localObject, 0, i);
    }
  }
  
  public static ByteBuffer g(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer == null) {
      return null;
    }
    ByteBuffer localByteBuffer = ByteBuffer.wrap(new byte[paramByteBuffer.remaining()]);
    if (paramByteBuffer.hasArray())
    {
      System.arraycopy(paramByteBuffer.array(), paramByteBuffer.arrayOffset() + paramByteBuffer.position(), localByteBuffer.array(), 0, paramByteBuffer.remaining());
      return localByteBuffer;
    }
    paramByteBuffer.slice().get(localByteBuffer.array());
    return localByteBuffer;
  }
  
  public static int i(boolean paramBoolean1, boolean paramBoolean2)
  {
    return Boolean.valueOf(paramBoolean1).compareTo(Boolean.valueOf(paramBoolean2));
  }
  
  private static final class a
    implements Comparator
  {
    public final int compare(Object paramObject1, Object paramObject2)
    {
      if ((paramObject1 == null) && (paramObject2 == null)) {
        return 0;
      }
      if (paramObject1 == null) {
        return -1;
      }
      if (paramObject2 == null) {
        return 1;
      }
      if ((paramObject1 instanceof List)) {
        return d.f((List)paramObject1, (List)paramObject2);
      }
      if ((paramObject1 instanceof Set)) {
        return d.c((Set)paramObject1, (Set)paramObject2);
      }
      if ((paramObject1 instanceof Map)) {
        return d.e((Map)paramObject1, (Map)paramObject2);
      }
      if ((paramObject1 instanceof byte[])) {
        return d.c((byte[])paramObject1, (byte[])paramObject2);
      }
      return d.a((Comparable)paramObject1, (Comparable)paramObject2);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */