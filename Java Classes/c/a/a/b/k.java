package c.a.a.b;

public final class k
{
  private static int a = Integer.MAX_VALUE;
  
  public static void a(h paramh, byte paramByte)
    throws c.a.a.g
  {
    a(paramh, paramByte, a);
  }
  
  private static void a(h paramh, byte paramByte, int paramInt)
    throws c.a.a.g
  {
    byte b2 = 0;
    byte b3 = 0;
    byte b1 = 0;
    if (paramInt <= 0) {
      throw new c.a.a.g("Maximum skip depth exceeded");
    }
    switch (paramByte)
    {
    case 5: 
    case 7: 
    case 9: 
    default: 
      return;
    case 2: 
      paramh.q();
      return;
    case 3: 
      paramh.Lx();
      return;
    case 6: 
      paramh.Ly();
      return;
    case 8: 
      paramh.Lz();
      return;
    case 10: 
      paramh.LA();
      return;
    case 4: 
      paramh.LB();
      return;
    case 11: 
      paramh.LD();
      return;
    case 12: 
      paramh.xd();
      for (;;)
      {
        localObject = paramh.xf();
        if (((d)localObject).bKG == 0) {
          break;
        }
        a(paramh, ((d)localObject).bKG, paramInt - 1);
        paramh.j();
      }
      paramh.h();
      return;
    case 13: 
      localObject = paramh.Lt();
      paramByte = b1;
      while (paramByte < ((g)localObject).c)
      {
        a(paramh, ((g)localObject).cVH, paramInt - 1);
        a(paramh, ((g)localObject).bKG, paramInt - 1);
        paramByte += 1;
      }
      paramh.l();
      return;
    case 14: 
      localObject = paramh.Lv();
      paramByte = b2;
      while (paramByte < ((l)localObject).b)
      {
        a(paramh, ((l)localObject).cVH, paramInt - 1);
        paramByte += 1;
      }
      paramh.Lw();
      return;
    }
    Object localObject = paramh.Lu();
    paramByte = b3;
    while (paramByte < ((f)localObject).b)
    {
      a(paramh, ((f)localObject).cVH, paramInt - 1);
      paramByte += 1;
    }
    paramh.n();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/b/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */