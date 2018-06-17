package a.a.a;

import java.io.DataInputStream;
import java.io.IOException;
import java.util.Arrays;

public class j
{
  private byte[] byteArray;
  public final e cqS;
  public final k.b cqT;
  public final k.a cqU;
  private final boolean cqV;
  
  static
  {
    if (!j.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public j(e parame, k.b paramb)
  {
    this(parame, paramb, k.a.cqZ, (byte)0);
  }
  
  private j(e parame, k.b paramb, k.a parama)
  {
    assert (parame != null);
    assert (paramb != null);
    assert (parama != null);
    this.cqS = parame;
    this.cqT = paramb;
    this.cqU = parama;
    this.cqV = false;
  }
  
  private j(e parame, k.b paramb, k.a parama, byte paramByte)
  {
    this(parame, paramb, parama);
  }
  
  public j(DataInputStream paramDataInputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    this.cqS = e.a(paramDataInputStream, paramArrayOfByte);
    this.cqT = k.b.fa(paramDataInputStream.readUnsignedShort());
    this.cqU = k.a.eZ(paramDataInputStream.readUnsignedShort());
    this.cqV = false;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof j)) {
      return false;
    }
    return Arrays.equals(toByteArray(), ((j)paramObject).toByteArray());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(toByteArray());
  }
  
  /* Error */
  public final byte[] toByteArray()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 95	a/a/a/j:byteArray	[B
    //   4: ifnonnull +84 -> 88
    //   7: new 97	java/io/ByteArrayOutputStream
    //   10: dup
    //   11: sipush 512
    //   14: invokespecial 100	java/io/ByteArrayOutputStream:<init>	(I)V
    //   17: astore_3
    //   18: new 102	java/io/DataOutputStream
    //   21: dup
    //   22: aload_3
    //   23: invokespecial 105	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   26: astore 4
    //   28: aload_0
    //   29: getfield 44	a/a/a/j:cqS	La/a/a/e;
    //   32: aload 4
    //   34: invokevirtual 108	a/a/a/e:writeToStream	(Ljava/io/OutputStream;)V
    //   37: aload 4
    //   39: aload_0
    //   40: getfield 46	a/a/a/j:cqT	La/a/a/k$b;
    //   43: getfield 112	a/a/a/k$b:value	I
    //   46: invokevirtual 115	java/io/DataOutputStream:writeShort	(I)V
    //   49: aload_0
    //   50: getfield 48	a/a/a/j:cqU	La/a/a/k$a;
    //   53: getfield 116	a/a/a/k$a:value	I
    //   56: istore_2
    //   57: aload_0
    //   58: getfield 50	a/a/a/j:cqV	Z
    //   61: ifeq +32 -> 93
    //   64: ldc 117
    //   66: istore_1
    //   67: aload 4
    //   69: iload_1
    //   70: iload_2
    //   71: ior
    //   72: invokevirtual 115	java/io/DataOutputStream:writeShort	(I)V
    //   75: aload 4
    //   77: invokevirtual 120	java/io/DataOutputStream:flush	()V
    //   80: aload_0
    //   81: aload_3
    //   82: invokevirtual 121	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   85: putfield 95	a/a/a/j:byteArray	[B
    //   88: aload_0
    //   89: getfield 95	a/a/a/j:byteArray	[B
    //   92: areturn
    //   93: iconst_0
    //   94: istore_1
    //   95: goto -28 -> 67
    //   98: astore_3
    //   99: new 123	java/lang/RuntimeException
    //   102: dup
    //   103: aload_3
    //   104: invokespecial 126	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   107: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	j
    //   66	29	1	i	int
    //   56	16	2	j	int
    //   17	65	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   98	6	3	localIOException	IOException
    //   26	50	4	localDataOutputStream	java.io.DataOutputStream
    // Exception table:
    //   from	to	target	type
    //   28	64	98	java/io/IOException
    //   67	80	98	java/io/IOException
  }
  
  public String toString()
  {
    return this.cqS + ".\t" + this.cqU + '\t' + this.cqT;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */