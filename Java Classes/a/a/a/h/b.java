package a.a.a.h;

import a.a.a.d;
import a.a.a.i.a;
import a.a.a.i.f;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class b
  extends a
{
  protected static final Logger coH;
  
  static
  {
    if (!b.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      coH = Logger.getLogger(b.class.getName());
      return;
    }
  }
  
  /* Error */
  private d b(d paramd, InetAddress paramInetAddress)
    throws IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 44	a/a/a/d:FL	()[B
    //   4: astore_3
    //   5: new 46	java/net/DatagramPacket
    //   8: dup
    //   9: aload_3
    //   10: aload_3
    //   11: arraylength
    //   12: aload_2
    //   13: bipush 53
    //   15: invokespecial 49	java/net/DatagramPacket:<init>	([BILjava/net/InetAddress;I)V
    //   18: astore_3
    //   19: aload_0
    //   20: getfield 53	a/a/a/h/b:cqG	I
    //   23: newarray <illegal type>
    //   25: astore 4
    //   27: new 55	java/net/DatagramSocket
    //   30: dup
    //   31: invokespecial 56	java/net/DatagramSocket:<init>	()V
    //   34: astore_2
    //   35: aload_2
    //   36: aload_0
    //   37: getfield 59	a/a/a/h/b:cuw	I
    //   40: invokevirtual 63	java/net/DatagramSocket:setSoTimeout	(I)V
    //   43: aload_2
    //   44: aload_3
    //   45: invokevirtual 67	java/net/DatagramSocket:send	(Ljava/net/DatagramPacket;)V
    //   48: new 46	java/net/DatagramPacket
    //   51: dup
    //   52: aload 4
    //   54: aload 4
    //   56: arraylength
    //   57: invokespecial 70	java/net/DatagramPacket:<init>	([BI)V
    //   60: astore_3
    //   61: aload_2
    //   62: aload_3
    //   63: invokevirtual 73	java/net/DatagramSocket:receive	(Ljava/net/DatagramPacket;)V
    //   66: new 40	a/a/a/d
    //   69: dup
    //   70: aload_3
    //   71: invokevirtual 76	java/net/DatagramPacket:getData	()[B
    //   74: invokespecial 79	a/a/a/d:<init>	([B)V
    //   77: astore_3
    //   78: aload_3
    //   79: getfield 82	a/a/a/d:id	I
    //   82: aload_1
    //   83: getfield 82	a/a/a/d:id	I
    //   86: if_icmpeq +24 -> 110
    //   89: new 84	a/a/a/i$a
    //   92: dup
    //   93: aload_1
    //   94: aload_3
    //   95: invokespecial 87	a/a/a/i$a:<init>	(La/a/a/d;La/a/a/d;)V
    //   98: athrow
    //   99: astore_1
    //   100: aload_2
    //   101: ifnull +7 -> 108
    //   104: aload_2
    //   105: invokevirtual 90	java/net/DatagramSocket:close	()V
    //   108: aload_1
    //   109: athrow
    //   110: aload_2
    //   111: invokevirtual 90	java/net/DatagramSocket:close	()V
    //   114: aload_3
    //   115: areturn
    //   116: astore_1
    //   117: aconst_null
    //   118: astore_2
    //   119: goto -19 -> 100
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	this	b
    //   0	122	1	paramd	d
    //   0	122	2	paramInetAddress	InetAddress
    //   4	111	3	localObject	Object
    //   25	30	4	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   35	99	99	finally
    //   27	35	116	finally
  }
  
  private d c(d paramd, InetAddress paramInetAddress)
    throws IOException
  {
    try
    {
      localSocket = new Socket();
      try
      {
        localSocket.connect(new InetSocketAddress(paramInetAddress, 53), this.cuw);
        localSocket.setSoTimeout(this.cuw);
        paramInetAddress = new DataOutputStream(localSocket.getOutputStream());
        byte[] arrayOfByte = paramd.FL();
        paramInetAddress.writeShort(arrayOfByte.length);
        paramInetAddress.write(arrayOfByte);
        paramInetAddress.flush();
        paramInetAddress = new DataInputStream(localSocket.getInputStream());
        int j = paramInetAddress.readUnsignedShort();
        arrayOfByte = new byte[j];
        int i = 0;
        while (i < j) {
          i += paramInetAddress.read(arrayOfByte, i, j - i);
        }
        paramInetAddress = new d(arrayOfByte);
        if (paramInetAddress.id == paramd.id) {
          break label168;
        }
        throw new i.a(paramd, paramInetAddress);
      }
      finally
      {
        paramInetAddress = localSocket;
      }
    }
    finally
    {
      for (;;)
      {
        Socket localSocket;
        label168:
        paramInetAddress = null;
      }
    }
    if (paramInetAddress != null) {
      paramInetAddress.close();
    }
    throw paramd;
    localSocket.close();
    return paramInetAddress;
  }
  
  public final d a(d paramd, InetAddress paramInetAddress)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList(2);
    Object localObject1 = null;
    Logger localLogger;
    Level localLevel;
    try
    {
      d locald = b(paramd, paramInetAddress);
      localObject1 = locald;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localArrayList.add(localIOException);
      }
      assert ((localObject1 == null) || (((d)localObject1).cpg) || (localArrayList.size() == 1));
      localLogger = coH;
      localLevel = Level.FINE;
      if (localObject1 == null) {
        break label132;
      }
    }
    if ((localObject1 != null) && (!((d)localObject1).cpg)) {
      return (d)localObject1;
    }
    Object localObject2 = "response is truncated";
    for (;;)
    {
      localLogger.log(localLevel, "Fallback to TCP because {0}", new Object[] { localObject2 });
      try
      {
        paramd = c(paramd, paramInetAddress);
        return paramd;
        label132:
        localObject2 = (Serializable)localArrayList.get(0);
      }
      catch (IOException paramd)
      {
        for (;;)
        {
          localArrayList.add(paramd);
          f.B(localArrayList);
          paramd = (d)localObject1;
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/h/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */