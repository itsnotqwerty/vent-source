package c.a.a.b;

import c.a.a.d.c;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Stack;

public final class e
  extends h
{
  private static final byte[] bIG = { 44 };
  private static final byte[] bKM = { 58 };
  private static final byte[] bMw = { 123 };
  private static final byte[] brf;
  private static final m cVA = new m();
  private static final byte[] cVc = { 125 };
  private static final byte[] cVd = { 91 };
  private static final byte[] cVe = { 93 };
  private static final byte[] cVf = { 34 };
  private static final byte[] cVg = { 92 };
  private static final byte[] cVh = { 48 };
  private static final byte[] cVi = { 92, 117, 48, 48 };
  private static final byte[] cVj = { 0, 0, 0, 0, 0, 0, 0, 0, 98, 116, 110, 0, 102, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 34, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 };
  private static final byte[] cVo = { 34, 92, 8, 12, 10, 13, 9 };
  private static final byte[] cVq = { 116, 102 };
  private static final byte[] cVr = { 105, 56 };
  private static final byte[] cVs = { 105, 49, 54 };
  private static final byte[] cVt;
  private static final byte[] cVu;
  private static final byte[] cVv;
  private static final byte[] cVw;
  private static final byte[] cVx;
  private static final byte[] cVy;
  private static final byte[] cVz;
  private Stack<b> cVB = new Stack();
  private b cVC = new b();
  private e cVD = new e();
  private byte[] cVE = new byte[4];
  
  static
  {
    brf = new byte[] { 105, 51, 50 };
    cVt = new byte[] { 105, 54, 52 };
    cVu = new byte[] { 100, 98, 108 };
    cVv = new byte[] { 114, 101, 99 };
    cVw = new byte[] { 115, 116, 114 };
    cVx = new byte[] { 109, 97, 112 };
    cVy = new byte[] { 108, 115, 116 };
    cVz = new byte[] { 115, 101, 116 };
  }
  
  public e(c paramc)
  {
    super(paramc);
  }
  
  private void G()
    throws c.a.a.g
  {
    LG();
    this.cVI.b(cVe);
  }
  
  private void K(long paramLong)
    throws c.a.a.g
  {
    this.cVC.a();
    Object localObject = Long.toString(paramLong);
    boolean bool = this.cVC.c();
    if (bool) {
      this.cVI.b(cVf);
    }
    try
    {
      localObject = ((String)localObject).getBytes("UTF-8");
      this.cVI.b((byte[])localObject);
      if (bool) {
        this.cVI.b(cVf);
      }
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new c.a.a.g("JVM DOES NOT SUPPORT UTF-8");
    }
  }
  
  private void L()
    throws c.a.a.g
  {
    this.cVC.b();
    I(bMw);
    a(new d());
  }
  
  private void LG()
  {
    this.cVC = ((b)this.cVB.pop());
  }
  
  private void LH()
    throws c.a.a.g
  {
    this.cVC.a();
    this.cVI.b(bMw);
    a(new d());
  }
  
  private void LI()
    throws c.a.a.g
  {
    LG();
    this.cVI.b(cVc);
  }
  
  private void LJ()
    throws c.a.a.g
  {
    this.cVC.a();
    this.cVI.b(cVd);
    a(new c());
  }
  
  private String LK()
    throws c.a.a.g
  {
    StringBuilder localStringBuilder = new StringBuilder();
    switch (this.cVD.LR())
    {
    }
    for (int i = 0;; i = 1)
    {
      if (i == 0) {
        break label171;
      }
      localStringBuilder.append((char)this.cVD.LQ());
      break;
    }
    label171:
    return localStringBuilder.toString();
  }
  
  private long LL()
    throws c.a.a.g
  {
    this.cVC.b();
    if (this.cVC.c()) {
      I(cVf);
    }
    String str = LK();
    if (this.cVC.c()) {
      I(cVf);
    }
    try
    {
      long l = Long.valueOf(str).longValue();
      return l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new i(1, "Bad data encounted in numeric data");
    }
  }
  
  private double LM()
    throws c.a.a.g
  {
    this.cVC.b();
    double d1;
    if (this.cVD.LR() == cVf[0])
    {
      c.a.a.e locale = by(true);
      try
      {
        double d2 = Double.valueOf(locale.toString("UTF-8")).doubleValue();
        d1 = d2;
        if (this.cVC.c()) {
          break label125;
        }
        d1 = d2;
        if (Double.isNaN(d2)) {
          break label125;
        }
        d1 = d2;
        if (Double.isInfinite(d2)) {
          break label125;
        }
        throw new i(1, "Numeric data unexpectedly quoted");
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new c.a.a.g("JVM DOES NOT SUPPORT UTF-8");
      }
    }
    else if (this.cVC.c())
    {
      I(cVf);
    }
    try
    {
      d1 = Double.valueOf(LK()).doubleValue();
      label125:
      return d1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new i(1, "Bad data encounted in numeric data");
    }
  }
  
  private void LN()
    throws c.a.a.g
  {
    this.cVC.b();
    I(cVd);
    a(new c());
  }
  
  private static final byte M(byte[] paramArrayOfByte)
    throws c.a.a.g
  {
    byte b2 = 0;
    byte b1 = b2;
    if (paramArrayOfByte.length > 1) {
      switch (paramArrayOfByte[0])
      {
      default: 
        b1 = b2;
      }
    }
    while (b1 == 0)
    {
      throw new i(5, "Unrecognized type");
      b1 = 4;
      continue;
      switch (paramArrayOfByte[1])
      {
      case 50: 
      case 52: 
      case 53: 
      case 55: 
      default: 
        b1 = b2;
        break;
      case 49: 
        b1 = 6;
        break;
      case 56: 
        b1 = 3;
        break;
      case 51: 
        b1 = 8;
        break;
      case 54: 
        b1 = 10;
        continue;
        b1 = 15;
        continue;
        b1 = 13;
        continue;
        b1 = 12;
        continue;
        if (paramArrayOfByte[1] == 116)
        {
          b1 = 11;
        }
        else
        {
          b1 = b2;
          if (paramArrayOfByte[1] == 101)
          {
            b1 = 14;
            continue;
            b1 = 2;
          }
        }
        break;
      }
    }
    return b1;
  }
  
  private void M()
    throws c.a.a.g
  {
    I(cVc);
    LG();
  }
  
  private void N(byte[] paramArrayOfByte)
    throws c.a.a.g
  {
    this.cVC.a();
    this.cVI.b(cVf);
    int j = paramArrayOfByte.length;
    int i = 0;
    if (i < j)
    {
      if ((paramArrayOfByte[i] & 0xFF) >= 48) {
        if (paramArrayOfByte[i] == cVg[0])
        {
          this.cVI.b(cVg);
          this.cVI.b(cVg);
        }
      }
      for (;;)
      {
        i += 1;
        break;
        this.cVI.h(paramArrayOfByte, i, 1);
        continue;
        this.cVE[0] = cVj[paramArrayOfByte[i]];
        if (this.cVE[0] == 1)
        {
          this.cVI.h(paramArrayOfByte, i, 1);
        }
        else if (this.cVE[0] > 1)
        {
          this.cVI.b(cVg);
          this.cVI.h(this.cVE, 0, 1);
        }
        else
        {
          this.cVI.b(cVi);
          this.cVE[0] = i((byte)(paramArrayOfByte[i] >> 4));
          this.cVE[1] = i(paramArrayOfByte[i]);
          this.cVI.h(this.cVE, 0, 2);
        }
      }
    }
    this.cVI.b(cVf);
  }
  
  private void a(b paramb)
  {
    this.cVB.push(this.cVC);
    this.cVC = paramb;
  }
  
  private c.a.a.e by(boolean paramBoolean)
    throws c.a.a.g
  {
    c.a.a.e locale = new c.a.a.e();
    if (!paramBoolean) {
      this.cVC.b();
    }
    I(cVf);
    int j = this.cVD.LQ();
    if (j != cVf[0])
    {
      int i = j;
      if (j == cVi[0])
      {
        i = this.cVD.LQ();
        if (i != cVi[1]) {
          break label131;
        }
        I(cVh);
        I(cVh);
        this.cVI.h(this.cVE, 2);
      }
      for (i = (byte)((k(this.cVE[0]) << 4) + k(this.cVE[1]));; i = cVo[i])
      {
        locale.write(i);
        break;
        label131:
        i = "\"\\bfnrt".indexOf(i);
        if (i == -1) {
          throw new i(1, "Expected control char");
        }
      }
    }
    return locale;
  }
  
  private static final byte i(byte paramByte)
  {
    paramByte = (byte)(paramByte & 0xF);
    if (paramByte < 10) {
      return (byte)((char)paramByte + '0');
    }
    return (byte)((char)(paramByte - 10) + 'a');
  }
  
  private static final byte[] j(byte paramByte)
    throws c.a.a.g
  {
    switch (paramByte)
    {
    case 5: 
    case 7: 
    case 9: 
    default: 
      throw new i(5, "Unrecognized type");
    case 2: 
      return cVq;
    case 3: 
      return cVr;
    case 6: 
      return cVs;
    case 8: 
      return brf;
    case 10: 
      return cVt;
    case 4: 
      return cVu;
    case 11: 
      return cVw;
    case 12: 
      return cVv;
    case 13: 
      return cVx;
    case 14: 
      return cVz;
    }
    return cVy;
  }
  
  private static final byte k(byte paramByte)
    throws c.a.a.g
  {
    if ((paramByte >= 48) && (paramByte <= 57)) {
      return (byte)((char)paramByte - '0');
    }
    if ((paramByte >= 97) && (paramByte <= 102)) {
      return (byte)((char)paramByte - 'a' + 10);
    }
    throw new i(1, "Expected hex character");
  }
  
  private void yA()
    throws c.a.a.g
  {
    I(cVe);
    LG();
  }
  
  protected final void I(byte[] paramArrayOfByte)
    throws c.a.a.g
  {
    int i = this.cVD.LQ();
    if (i != paramArrayOfByte[0]) {
      throw new i(1, "Unexpected character:" + (char)i);
    }
  }
  
  public final long LA()
    throws c.a.a.g
  {
    return LL();
  }
  
  public final double LB()
    throws c.a.a.g
  {
    return LM();
  }
  
  public final String LC()
    throws c.a.a.g
  {
    try
    {
      String str = by(false).toString("UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new c.a.a.g("JVM DOES NOT SUPPORT UTF-8");
    }
  }
  
  public final ByteBuffer LD()
    throws c.a.a.g
  {
    Object localObject = by(false);
    byte[] arrayOfByte = ((c.a.a.e)localObject).Lr();
    int j = ((c.a.a.e)localObject).b();
    int i = 0;
    int k = 0;
    while (j >= 4)
    {
      a.a(arrayOfByte, k, 4, arrayOfByte, i);
      k += 4;
      j -= 4;
      i += 3;
    }
    int m = i;
    if (j > 1)
    {
      a.a(arrayOfByte, k, j, arrayOfByte, i);
      m = i + (j - 1);
    }
    localObject = new byte[m];
    System.arraycopy(arrayOfByte, 0, localObject, 0, m);
    return ByteBuffer.wrap((byte[])localObject);
  }
  
  public final void LE()
  {
    this.cVB.clear();
    this.cVC = new b();
    this.cVD = new e();
  }
  
  public final void Ls()
    throws c.a.a.g
  {
    LH();
  }
  
  public final g Lt()
    throws c.a.a.g
  {
    LN();
    byte b1 = M(by(false).Lr());
    byte b2 = M(by(false).Lr());
    int i = (int)LL();
    L();
    return new g(b1, b2, i);
  }
  
  public final f Lu()
    throws c.a.a.g
  {
    LN();
    return new f(M(by(false).Lr()), (int)LL());
  }
  
  public final l Lv()
    throws c.a.a.g
  {
    LN();
    return new l(M(by(false).Lr()), (int)LL());
  }
  
  public final void Lw()
    throws c.a.a.g
  {
    yA();
  }
  
  public final byte Lx()
    throws c.a.a.g
  {
    return (byte)(int)LL();
  }
  
  public final short Ly()
    throws c.a.a.g
  {
    return (short)(int)LL();
  }
  
  public final int Lz()
    throws c.a.a.g
  {
    return (int)LL();
  }
  
  public final void a()
    throws c.a.a.g
  {
    LI();
  }
  
  public final void a(int paramInt)
    throws c.a.a.g
  {
    K(paramInt);
  }
  
  public final void a(long paramLong)
    throws c.a.a.g
  {
    K(paramLong);
  }
  
  public final void a(d paramd)
    throws c.a.a.g
  {
    K(paramd.cVp);
    LH();
    N(j(paramd.bKG));
  }
  
  public final void a(f paramf)
    throws c.a.a.g
  {
    LJ();
    N(j(paramf.cVH));
    K(paramf.b);
  }
  
  public final void a(g paramg)
    throws c.a.a.g
  {
    LJ();
    N(j(paramg.cVH));
    N(j(paramg.bKG));
    K(paramg.c);
    LH();
  }
  
  public final void a(l paraml)
    throws c.a.a.g
  {
    LJ();
    N(j(paraml.cVH));
    K(paraml.b);
  }
  
  public final void a(String paramString)
    throws c.a.a.g
  {
    try
    {
      N(paramString.getBytes("UTF-8"));
      return;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new c.a.a.g("JVM DOES NOT SUPPORT UTF-8");
    }
  }
  
  public final void a(boolean paramBoolean)
    throws c.a.a.g
  {
    if (paramBoolean) {}
    for (long l = 1L;; l = 0L)
    {
      K(l);
      return;
    }
  }
  
  public final void b()
    throws c.a.a.g
  {
    LI();
  }
  
  public final void c() {}
  
  public final void d()
    throws c.a.a.g
  {
    LI();
    G();
  }
  
  public final void e()
    throws c.a.a.g
  {
    G();
  }
  
  public final void f()
    throws c.a.a.g
  {
    G();
  }
  
  public final void g(byte paramByte)
    throws c.a.a.g
  {
    K(paramByte);
  }
  
  public final void h()
    throws c.a.a.g
  {
    M();
  }
  
  public final void h(ByteBuffer paramByteBuffer)
    throws c.a.a.g
  {
    byte[] arrayOfByte = paramByteBuffer.array();
    int i = paramByteBuffer.position();
    int j = paramByteBuffer.arrayOffset() + i;
    i = paramByteBuffer.limit() - paramByteBuffer.position() - paramByteBuffer.arrayOffset();
    this.cVC.a();
    this.cVI.b(cVf);
    while (i >= 3)
    {
      a.a(arrayOfByte, j, 3, this.cVE);
      this.cVI.h(this.cVE, 0, 4);
      j += 3;
      i -= 3;
    }
    if (i > 0)
    {
      a.a(arrayOfByte, j, i, this.cVE);
      this.cVI.h(this.cVE, 0, i + 1);
    }
    this.cVI.b(cVf);
  }
  
  public final void j()
    throws c.a.a.g
  {
    M();
  }
  
  public final void l()
    throws c.a.a.g
  {
    M();
    yA();
  }
  
  public final void n()
    throws c.a.a.g
  {
    yA();
  }
  
  public final boolean q()
    throws c.a.a.g
  {
    return LL() != 0L;
  }
  
  public final m xd()
    throws c.a.a.g
  {
    L();
    return cVA;
  }
  
  public final d xf()
    throws c.a.a.g
  {
    short s;
    if (this.cVD.LR() == cVc[0]) {
      s = 0;
    }
    for (byte b = 0;; b = M(by(false).Lr()))
    {
      return new d("", b, s);
      s = (short)(int)LL();
      L();
    }
  }
  
  public static final class a
    implements j
  {
    public final h a(c paramc)
    {
      return new e(paramc);
    }
  }
  
  protected class b
  {
    protected b() {}
    
    protected void a()
      throws c.a.a.g
    {}
    
    protected void b()
      throws c.a.a.g
    {}
    
    protected boolean c()
    {
      return false;
    }
  }
  
  protected final class c
    extends e.b
  {
    private boolean c = true;
    
    protected c()
    {
      super();
    }
    
    protected final void a()
      throws c.a.a.g
    {
      if (this.c)
      {
        this.c = false;
        return;
      }
      e.this.cVI.b(e.LO());
    }
    
    protected final void b()
      throws c.a.a.g
    {
      if (this.c)
      {
        this.c = false;
        return;
      }
      e.this.I(e.LO());
    }
  }
  
  protected final class d
    extends e.b
  {
    private boolean c = true;
    private boolean d = true;
    
    protected d()
    {
      super();
    }
    
    protected final void a()
      throws c.a.a.g
    {
      boolean bool;
      if (this.c)
      {
        this.c = false;
        bool = true;
      }
      for (;;)
      {
        this.d = bool;
        return;
        c localc = e.this.cVI;
        if (this.d) {}
        for (byte[] arrayOfByte = e.LP();; arrayOfByte = e.LO())
        {
          localc.b(arrayOfByte);
          if (this.d) {
            break label63;
          }
          bool = true;
          break;
        }
        label63:
        bool = false;
      }
    }
    
    protected final void b()
      throws c.a.a.g
    {
      boolean bool;
      if (this.c)
      {
        this.c = false;
        bool = true;
      }
      for (;;)
      {
        this.d = bool;
        return;
        e locale = e.this;
        if (this.d) {}
        for (byte[] arrayOfByte = e.LP();; arrayOfByte = e.LO())
        {
          locale.I(arrayOfByte);
          if (this.d) {
            break label60;
          }
          bool = true;
          break;
        }
        label60:
        bool = false;
      }
    }
    
    protected final boolean c()
    {
      return this.d;
    }
  }
  
  protected final class e
  {
    private boolean b;
    private byte[] bMw = new byte[1];
    
    protected e() {}
    
    protected final byte LQ()
      throws c.a.a.g
    {
      if (this.b) {
        this.b = false;
      }
      for (;;)
      {
        return this.bMw[0];
        e.this.cVI.h(this.bMw, 1);
      }
    }
    
    protected final byte LR()
      throws c.a.a.g
    {
      if (!this.b) {
        e.this.cVI.h(this.bMw, 1);
      }
      this.b = true;
      return this.bMw[0];
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/b/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */