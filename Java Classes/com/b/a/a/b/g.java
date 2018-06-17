package com.b.a.a.b;

import b.s;
import b.t;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class g
  implements q
{
  private static final Logger bIr = Logger.getLogger(b.class.getName());
  private static final b.f bKp = b.f.fn("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
  
  private static IOException f(String paramString, Object... paramVarArgs)
    throws IOException
  {
    throw new IOException(String.format(paramString, paramVarArgs));
  }
  
  public final b a(b.e parame, boolean paramBoolean)
  {
    return new c(parame, paramBoolean);
  }
  
  public final c a(b.d paramd, boolean paramBoolean)
  {
    return new d(paramd, paramBoolean);
  }
  
  static final class a
    implements s
  {
    int a;
    private final b.e bKE;
    byte bKG;
    short bKH;
    int c;
    int d;
    
    public a(b.e parame)
    {
      this.bKE = parame;
    }
    
    public final long b(b.c paramc, long paramLong)
      throws IOException
    {
      if (this.d == 0)
      {
        this.bKE.at(this.bKH);
        this.bKH = 0;
        if ((this.bKG & 0x4) == 0) {}
      }
      do
      {
        return -1L;
        int i = this.c;
        int j = g.a(this.bKE);
        this.d = j;
        this.a = j;
        byte b = (byte)(this.bKE.KX() & 0xFF);
        this.bKG = ((byte)(this.bKE.KX() & 0xFF));
        if (g.zO().isLoggable(Level.FINE)) {
          g.zO().fine(g.b.a(true, this.c, this.a, b, this.bKG));
        }
        this.c = (this.bKE.KZ() & 0x7FFFFFFF);
        if (b != 9) {
          throw g.g("%s != TYPE_CONTINUATION", new Object[] { Byte.valueOf(b) });
        }
        if (this.c == i) {
          break;
        }
        throw g.g("TYPE_CONTINUATION streamId changed", new Object[0]);
        paramLong = this.bKE.b(paramc, Math.min(paramLong, this.d));
      } while (paramLong == -1L);
      this.d = ((int)(this.d - paramLong));
      return paramLong;
    }
    
    public final void close()
      throws IOException
    {}
    
    public final t zA()
    {
      return this.bKE.zA();
    }
  }
  
  static final class b
  {
    private static final String[] a;
    private static final String[] bIH;
    private static final String[] bIZ;
    
    static
    {
      int k = 0;
      a = new String[] { "DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION" };
      bIH = new String[64];
      bIZ = new String['Ā'];
      int i = 0;
      while (i < bIZ.length)
      {
        bIZ[i] = String.format("%8s", new Object[] { Integer.toBinaryString(i) }).replace(' ', '0');
        i += 1;
      }
      bIH[0] = "";
      bIH[1] = "END_STREAM";
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = 1;
      bIH[8] = "PADDED";
      i = 0;
      int j;
      while (i <= 0)
      {
        j = arrayOfInt[i];
        bIH[(j | 0x8)] = (bIH[j] + "|PADDED");
        i += 1;
      }
      bIH[4] = "END_HEADERS";
      bIH[32] = "PRIORITY";
      bIH[36] = "END_HEADERS|PRIORITY";
      i = 0;
      for (;;)
      {
        j = k;
        if (i >= 3) {
          break;
        }
        int m = new int[] { 4, 32, 36 }[i];
        j = 0;
        while (j <= 0)
        {
          int n = arrayOfInt[j];
          bIH[(n | m)] = (bIH[n] + '|' + bIH[m]);
          bIH[(n | m | 0x8)] = (bIH[n] + '|' + bIH[m] + "|PADDED");
          j += 1;
        }
        i += 1;
      }
      while (j < bIH.length)
      {
        if (bIH[j] == null) {
          bIH[j] = bIZ[j];
        }
        j += 1;
      }
    }
    
    static String a(boolean paramBoolean, int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
    {
      String str2;
      Object localObject;
      if (paramByte1 < a.length)
      {
        str2 = a[paramByte1];
        if (paramByte2 != 0) {
          break label92;
        }
        localObject = "";
        label24:
        if (!paramBoolean) {
          break label259;
        }
      }
      label92:
      label225:
      label259:
      for (String str1 = "<<";; str1 = ">>")
      {
        return String.format("%s 0x%08x %5d %-13s %s", new Object[] { str1, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), str2, localObject });
        str2 = String.format("0x%02x", new Object[] { Byte.valueOf(paramByte1) });
        break;
        switch (paramByte1)
        {
        case 5: 
        default: 
          if (paramByte2 >= bIH.length) {
            break;
          }
        }
        for (str1 = bIH[paramByte2];; str1 = bIZ[paramByte2])
        {
          if ((paramByte1 != 5) || ((paramByte2 & 0x4) == 0)) {
            break label225;
          }
          localObject = str1.replace("HEADERS", "PUSH_PROMISE");
          break;
          if (paramByte2 == 1)
          {
            localObject = "ACK";
            break;
          }
          localObject = bIZ[paramByte2];
          break;
          localObject = bIZ[paramByte2];
          break;
        }
        localObject = str1;
        if (paramByte1 != 0) {
          break label24;
        }
        localObject = str1;
        if ((paramByte2 & 0x20) == 0) {
          break label24;
        }
        localObject = str1.replace("PRIORITY", "COMPRESSED");
        break label24;
      }
    }
  }
  
  static final class c
    implements b
  {
    private final b.e bJr;
    private final g.a bKI;
    final f.a bKJ;
    private final boolean d;
    
    c(b.e parame, boolean paramBoolean)
    {
      this.bJr = parame;
      this.d = paramBoolean;
      this.bKI = new g.a(this.bJr);
      this.bKJ = new f.a(this.bKI);
    }
    
    private List<d> a(int paramInt1, short paramShort, byte paramByte, int paramInt2)
      throws IOException
    {
      Object localObject1 = this.bKI;
      this.bKI.d = paramInt1;
      ((g.a)localObject1).a = paramInt1;
      this.bKI.bKH = paramShort;
      this.bKI.bKG = paramByte;
      this.bKI.c = paramInt2;
      localObject1 = this.bKJ;
      while (!((f.a)localObject1).bKE.xi())
      {
        paramInt1 = ((f.a)localObject1).bKE.KX() & 0xFF;
        if (paramInt1 == 128) {
          throw new IOException("index == 0");
        }
        if ((paramInt1 & 0x80) == 128)
        {
          paramInt1 = ((f.a)localObject1).aB(paramInt1, 127) - 1;
          if (f.a.dP(paramInt1))
          {
            localObject2 = f.zJ()[paramInt1];
            ((f.a)localObject1).bwT.add(localObject2);
          }
          else
          {
            paramInt2 = ((f.a)localObject1).dN(paramInt1 - f.zJ().length);
            if ((paramInt2 < 0) || (paramInt2 > ((f.a)localObject1).bKD.length - 1)) {
              throw new IOException("Header index too large " + (paramInt1 + 1));
            }
            ((f.a)localObject1).bwT.add(localObject1.bKD[paramInt2]);
          }
        }
        else if (paramInt1 == 64)
        {
          ((f.a)localObject1).a(new d(f.a(((f.a)localObject1).zM()), ((f.a)localObject1).zM()));
        }
        else if ((paramInt1 & 0x40) == 64)
        {
          ((f.a)localObject1).a(new d(((f.a)localObject1).dO(((f.a)localObject1).aB(paramInt1, 63) - 1), ((f.a)localObject1).zM()));
        }
        else if ((paramInt1 & 0x20) == 32)
        {
          ((f.a)localObject1).bpE = ((f.a)localObject1).aB(paramInt1, 31);
          if ((((f.a)localObject1).bpE < 0) || (((f.a)localObject1).bpE > ((f.a)localObject1).g)) {
            throw new IOException("Invalid dynamic table size update " + ((f.a)localObject1).bpE);
          }
          ((f.a)localObject1).d();
        }
        else
        {
          b.f localf;
          if ((paramInt1 == 16) || (paramInt1 == 0))
          {
            localObject2 = f.a(((f.a)localObject1).zM());
            localf = ((f.a)localObject1).zM();
            ((f.a)localObject1).bwT.add(new d((b.f)localObject2, localf));
          }
          else
          {
            localObject2 = ((f.a)localObject1).dO(((f.a)localObject1).aB(paramInt1, 15) - 1);
            localf = ((f.a)localObject1).zM();
            ((f.a)localObject1).bwT.add(new d((b.f)localObject2, localf));
          }
        }
      }
      localObject1 = this.bKJ;
      Object localObject2 = new ArrayList(((f.a)localObject1).bwT);
      ((f.a)localObject1).bwT.clear();
      return (List<d>)localObject2;
    }
    
    private void zP()
      throws IOException
    {
      this.bJr.KZ();
      this.bJr.KX();
    }
    
    public final void a()
      throws IOException
    {
      if (this.d) {}
      b.f localf;
      do
      {
        return;
        localf = this.bJr.ap(g.zN().bMw.length);
        if (g.zO().isLoggable(Level.FINE)) {
          g.zO().fine(String.format("<< CONNECTION %s", new Object[] { localf.d() }));
        }
      } while (g.zN().equals(localf));
      throw g.g("Expected a connection header but was %s", new Object[] { localf.a() });
    }
    
    public final boolean a(b.a parama)
      throws IOException
    {
      boolean bool1 = true;
      int j = 0;
      boolean bool2 = false;
      int i = 0;
      int n;
      byte b2;
      label250:
      label256:
      label428:
      label614:
      label841:
      do
      {
        do
        {
          try
          {
            this.bJr.a(9L);
            n = g.a(this.bJr);
            if ((n < 0) || (n > 16384)) {
              throw g.g("FRAME_SIZE_ERROR: %s", new Object[] { Integer.valueOf(n) });
            }
          }
          catch (IOException parama)
          {
            bool1 = false;
            return bool1;
          }
          byte b1 = (byte)(this.bJr.KX() & 0xFF);
          b2 = (byte)(this.bJr.KX() & 0xFF);
          m = this.bJr.KZ() & 0x7FFFFFFF;
          if (g.zO().isLoggable(Level.FINE)) {
            g.zO().fine(g.b.a(true, m, n, b1, b2));
          }
          switch (b1)
          {
          default: 
            this.bJr.at(n);
            return true;
          case 0: 
            if ((b2 & 0x1) != 0)
            {
              bool1 = true;
              if ((b2 & 0x20) == 0) {
                break label250;
              }
            }
            for (k = 1;; k = 0)
            {
              if (k == 0) {
                break label256;
              }
              throw g.g("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
              bool1 = false;
              break;
            }
            if ((b2 & 0x8) != 0) {
              i = (short)(this.bJr.KX() & 0xFF);
            }
            k = g.a(n, b2, i);
            parama.a(bool1, m, this.bJr, k);
            this.bJr.at(i);
            return true;
          case 1: 
            if (m == 0) {
              throw g.g("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            }
            if ((b2 & 0x1) != 0)
            {
              bool1 = true;
              if ((b2 & 0x8) == 0) {
                break label428;
              }
            }
            for (i = (short)(this.bJr.KX() & 0xFF);; i = 0)
            {
              k = n;
              if ((b2 & 0x20) != 0)
              {
                zP();
                k = n - 5;
              }
              parama.a(false, bool1, m, -1, a(g.a(k, b2, i), i, b2, m), e.bKB);
              return true;
              bool1 = false;
              break;
            }
          case 2: 
            if (n != 5) {
              throw g.g("TYPE_PRIORITY length: %d != 5", new Object[] { Integer.valueOf(n) });
            }
            if (m == 0) {
              throw g.g("TYPE_PRIORITY streamId == 0", new Object[0]);
            }
            zP();
            return true;
          case 3: 
            if (n != 4) {
              throw g.g("TYPE_RST_STREAM length: %d != 4", new Object[] { Integer.valueOf(n) });
            }
            if (m == 0) {
              throw g.g("TYPE_RST_STREAM streamId == 0", new Object[0]);
            }
            k = this.bJr.KZ();
            localObject = a.dK(k);
            if (localObject == null) {
              throw g.g("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(k) });
            }
            parama.a(m, (a)localObject);
            return true;
          case 4: 
            if (m != 0) {
              throw g.g("TYPE_SETTINGS streamId != 0", new Object[0]);
            }
            if ((b2 & 0x1) == 0) {
              break label614;
            }
          }
        } while (n == 0);
        throw g.g("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
        if (n % 6 != 0) {
          throw g.g("TYPE_SETTINGS length %% 6 != 0: %s", new Object[] { Integer.valueOf(n) });
        }
        localObject = new l();
        k = 0;
        if (k < n)
        {
          i = this.bJr.KY();
          int i1 = this.bJr.KZ();
          m = i;
          switch (i)
          {
          default: 
            throw g.g("PROTOCOL_ERROR invalid settings id: %s", new Object[] { Short.valueOf(i) });
          case 2: 
            m = i;
            if (i1 != 0)
            {
              m = i;
              if (i1 != 1) {
                throw g.g("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
              }
            }
            break;
          case 3: 
            m = 4;
          }
          do
          {
            do
            {
              ((l)localObject).m(m, 0, i1);
              k += 6;
              break;
              m = 7;
            } while (i1 >= 0);
            throw g.g("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
            if (i1 < 16384) {
              break label841;
            }
            m = i;
          } while (i1 <= 16777215);
          throw g.g("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", new Object[] { Integer.valueOf(i1) });
        }
        parama.a(false, (l)localObject);
      } while (((l)localObject).c() < 0);
      parama = this.bKJ;
      int k = ((l)localObject).c();
      parama.g = k;
      parama.bpE = k;
      parama.d();
      return true;
      if (m == 0) {
        throw g.g("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
      }
      i = j;
      if ((b2 & 0x8) != 0) {
        i = (short)(this.bJr.KX() & 0xFF);
      }
      parama.b(this.bJr.KZ() & 0x7FFFFFFF, a(g.a(n - 4, b2, i), i, b2, m));
      return true;
      if (n != 8) {
        throw g.g("TYPE_PING length != 8: %s", new Object[] { Integer.valueOf(n) });
      }
      if (m != 0) {
        throw g.g("TYPE_PING streamId != 0", new Object[0]);
      }
      k = this.bJr.KZ();
      int m = this.bJr.KZ();
      bool1 = bool2;
      if ((b2 & 0x1) != 0) {
        bool1 = true;
      }
      parama.a(bool1, k, m);
      return true;
      if (n < 8) {
        throw g.g("TYPE_GOAWAY length < 8: %s", new Object[] { Integer.valueOf(n) });
      }
      if (m != 0) {
        throw g.g("TYPE_GOAWAY streamId != 0", new Object[0]);
      }
      k = this.bJr.KZ();
      m = this.bJr.KZ();
      n -= 8;
      if (a.dK(m) == null) {
        throw g.g("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(m) });
      }
      Object localObject = b.f.bKp;
      if (n > 0) {
        localObject = this.bJr.ap(n);
      }
      parama.a(k, (b.f)localObject);
      return true;
      if (n != 4) {
        throw g.g("TYPE_WINDOW_UPDATE length !=4: %s", new Object[] { Integer.valueOf(n) });
      }
      long l = this.bJr.KZ() & 0x7FFFFFFF;
      if (l == 0L) {
        throw g.g("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
      }
      parama.g(m, l);
      return true;
    }
    
    public final void close()
      throws IOException
    {
      this.bJr.close();
    }
  }
  
  static final class d
    implements c
  {
    private final boolean b;
    private final b.c bJz;
    private final b.d bKK;
    private final f.b bKL;
    private int bpD;
    private boolean f;
    
    d(b.d paramd, boolean paramBoolean)
    {
      this.bKK = paramd;
      this.b = paramBoolean;
      this.bJz = new b.c();
      this.bKL = new f.b(this.bJz);
      this.bpD = 16384;
    }
    
    private void a(int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
      throws IOException
    {
      if (g.zO().isLoggable(Level.FINE)) {
        g.zO().fine(g.b.a(false, paramInt1, paramInt2, paramByte1, paramByte2));
      }
      if (paramInt2 > this.bpD) {
        throw g.h("FRAME_SIZE_ERROR length > %d: %d", new Object[] { Integer.valueOf(this.bpD), Integer.valueOf(paramInt2) });
      }
      if ((0x80000000 & paramInt1) != 0) {
        throw g.h("reserved bit set: %s", new Object[] { Integer.valueOf(paramInt1) });
      }
      g.a(this.bKK, paramInt2);
      this.bKK.fL(paramByte1 & 0xFF);
      this.bKK.fL(paramByte2 & 0xFF);
      this.bKK.fJ(0x7FFFFFFF & paramInt1);
    }
    
    private void h(int paramInt, long paramLong)
      throws IOException
    {
      if (paramLong > 0L)
      {
        int i = (int)Math.min(this.bpD, paramLong);
        paramLong -= i;
        if (paramLong == 0L) {}
        for (byte b1 = 4;; b1 = 0)
        {
          a(paramInt, i, (byte)9, b1);
          this.bKK.a(this.bJz, i);
          break;
        }
      }
    }
    
    public final void a()
      throws IOException
    {
      try
      {
        if (this.f) {
          throw new IOException("closed");
        }
      }
      finally {}
      boolean bool = this.b;
      if (!bool) {}
      for (;;)
      {
        return;
        if (g.zO().isLoggable(Level.FINE)) {
          g.zO().fine(String.format(">> CONNECTION %s", new Object[] { g.zN().d() }));
        }
        this.bKK.K(g.zN().g());
        this.bKK.flush();
      }
    }
    
    public final void a(int paramInt, a parama)
      throws IOException
    {
      try
      {
        if (this.f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (parama.bKl == -1) {
        throw new IllegalArgumentException();
      }
      a(paramInt, 4, (byte)3, (byte)0);
      this.bKK.fJ(parama.bKk);
      this.bKK.flush();
    }
    
    public final void a(int paramInt, a parama, byte[] paramArrayOfByte)
      throws IOException
    {
      try
      {
        if (this.f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (parama.bKk == -1) {
        throw g.h("errorCode.httpCode == -1", new Object[0]);
      }
      a(0, paramArrayOfByte.length + 8, (byte)7, (byte)0);
      this.bKK.fJ(paramInt);
      this.bKK.fJ(parama.bKk);
      if (paramArrayOfByte.length > 0) {
        this.bKK.K(paramArrayOfByte);
      }
      this.bKK.flush();
    }
    
    public final void a(l paraml)
      throws IOException
    {
      try
      {
        if (this.f) {
          throw new IOException("closed");
        }
      }
      finally {}
      int i = this.bpD;
      if ((paraml.a & 0x20) != 0) {
        i = paraml.brd[5];
      }
      this.bpD = i;
      a(0, 0, (byte)4, (byte)1);
      this.bKK.flush();
    }
    
    public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
      throws IOException
    {
      byte b1 = 0;
      try
      {
        if (this.f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (paramBoolean) {
        b1 = 1;
      }
      a(0, 8, (byte)6, b1);
      this.bKK.fJ(paramInt1);
      this.bKK.fJ(paramInt2);
      this.bKK.flush();
    }
    
    public final void a(boolean paramBoolean, int paramInt1, b.c paramc, int paramInt2)
      throws IOException
    {
      byte b1 = 0;
      try
      {
        if (this.f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (paramBoolean) {
        b1 = 1;
      }
      a(paramInt1, paramInt2, (byte)0, b1);
      if (paramInt2 > 0) {
        this.bKK.a(paramc, paramInt2);
      }
    }
    
    public final void a(boolean paramBoolean, int paramInt, List<d> paramList)
      throws IOException
    {
      try
      {
        if (this.f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (this.f) {
        throw new IOException("closed");
      }
      if (this.bJz.b != 0L) {
        throw new IllegalStateException();
      }
      this.bKL.a(paramList);
      long l = this.bJz.b;
      int i = (int)Math.min(this.bpD, l);
      byte b1;
      if (l == i) {
        b1 = 4;
      }
      for (;;)
      {
        a(paramInt, i, (byte)1, b2);
        this.bKK.a(this.bJz, i);
        if (l > i) {
          h(paramInt, l - i);
        }
        return;
        b1 = 0;
        byte b2 = b1;
        if (paramBoolean) {
          b2 = (byte)(b1 | 0x1);
        }
      }
    }
    
    public final void b()
      throws IOException
    {
      try
      {
        if (this.f) {
          throw new IOException("closed");
        }
      }
      finally {}
      this.bKK.flush();
    }
    
    public final void b(l paraml)
      throws IOException
    {
      int i = 0;
      try
      {
        if (this.f) {
          throw new IOException("closed");
        }
      }
      finally {}
      a(0, Integer.bitCount(paraml.a) * 6, (byte)4, (byte)0);
      int j;
      if (i < 10)
      {
        if (!paraml.a(i)) {
          break label111;
        }
        if (i != 4) {
          break label118;
        }
        j = 3;
      }
      for (;;)
      {
        label64:
        this.bKK.fK(j);
        this.bKK.fJ(paraml.brd[i]);
        break label111;
        this.bKK.flush();
        return;
        label111:
        label118:
        do
        {
          j = i;
          break label64;
          i += 1;
          break;
        } while (i != 7);
        j = 4;
      }
    }
    
    public final int c()
    {
      return this.bpD;
    }
    
    public final void close()
      throws IOException
    {
      try
      {
        this.f = true;
        this.bKK.close();
        return;
      }
      finally
      {
        localObject = finally;
        throw ((Throwable)localObject);
      }
    }
    
    public final void g(int paramInt, long paramLong)
      throws IOException
    {
      try
      {
        if (this.f) {
          throw new IOException("closed");
        }
      }
      finally {}
      if ((paramLong == 0L) || (paramLong > 2147483647L)) {
        throw g.h("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[] { Long.valueOf(paramLong) });
      }
      a(paramInt, 4, (byte)8, (byte)0);
      this.bKK.fJ((int)paramLong);
      this.bKK.flush();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/b/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */