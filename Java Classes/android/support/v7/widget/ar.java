package android.support.v7.widget;

import android.support.v4.d.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

final class ar
  implements Runnable
{
  static final ThreadLocal<ar> Zt = new ThreadLocal();
  static Comparator<b> Zy = new Comparator() {};
  ArrayList<RecyclerView> Zu = new ArrayList();
  long Zv;
  long Zw;
  private ArrayList<b> Zx = new ArrayList();
  
  /* Error */
  private static RecyclerView.x a(RecyclerView paramRecyclerView, int paramInt, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 56	android/support/v7/widget/RecyclerView:adK	Landroid/support/v7/widget/ai;
    //   4: invokevirtual 62	android/support/v7/widget/ai:gw	()I
    //   7: istore 5
    //   9: iconst_0
    //   10: istore 4
    //   12: iload 4
    //   14: iload 5
    //   16: if_icmpge +53 -> 69
    //   19: aload_0
    //   20: getfield 56	android/support/v7/widget/RecyclerView:adK	Landroid/support/v7/widget/ai;
    //   23: iload 4
    //   25: invokevirtual 66	android/support/v7/widget/ai:bl	(I)Landroid/view/View;
    //   28: invokestatic 70	android/support/v7/widget/RecyclerView:aN	(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;
    //   31: astore 6
    //   33: aload 6
    //   35: getfield 76	android/support/v7/widget/RecyclerView$x:mPosition	I
    //   38: iload_1
    //   39: if_icmpne +21 -> 60
    //   42: aload 6
    //   44: invokevirtual 80	android/support/v7/widget/RecyclerView$x:isInvalid	()Z
    //   47: ifne +13 -> 60
    //   50: iconst_1
    //   51: istore 4
    //   53: iload 4
    //   55: ifeq +20 -> 75
    //   58: aconst_null
    //   59: areturn
    //   60: iload 4
    //   62: iconst_1
    //   63: iadd
    //   64: istore 4
    //   66: goto -54 -> 12
    //   69: iconst_0
    //   70: istore 4
    //   72: goto -19 -> 53
    //   75: aload_0
    //   76: getfield 84	android/support/v7/widget/RecyclerView:adH	Landroid/support/v7/widget/RecyclerView$p;
    //   79: astore 6
    //   81: aload_0
    //   82: invokevirtual 87	android/support/v7/widget/RecyclerView:hP	()V
    //   85: aload 6
    //   87: iload_1
    //   88: lload_2
    //   89: invokevirtual 93	android/support/v7/widget/RecyclerView$p:c	(IJ)Landroid/support/v7/widget/RecyclerView$x;
    //   92: astore 7
    //   94: aload 7
    //   96: ifnull +29 -> 125
    //   99: aload 7
    //   101: invokevirtual 96	android/support/v7/widget/RecyclerView$x:isBound	()Z
    //   104: ifeq +29 -> 133
    //   107: aload 7
    //   109: invokevirtual 80	android/support/v7/widget/RecyclerView$x:isInvalid	()Z
    //   112: ifne +21 -> 133
    //   115: aload 6
    //   117: aload 7
    //   119: getfield 100	android/support/v7/widget/RecyclerView$x:itemView	Landroid/view/View;
    //   122: invokevirtual 104	android/support/v7/widget/RecyclerView$p:bd	(Landroid/view/View;)V
    //   125: aload_0
    //   126: iconst_0
    //   127: invokevirtual 108	android/support/v7/widget/RecyclerView:ab	(Z)V
    //   130: aload 7
    //   132: areturn
    //   133: aload 6
    //   135: aload 7
    //   137: iconst_0
    //   138: invokevirtual 111	android/support/v7/widget/RecyclerView$p:a	(Landroid/support/v7/widget/RecyclerView$x;Z)V
    //   141: goto -16 -> 125
    //   144: astore 6
    //   146: aload_0
    //   147: iconst_0
    //   148: invokevirtual 108	android/support/v7/widget/RecyclerView:ab	(Z)V
    //   151: aload 6
    //   153: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	154	0	paramRecyclerView	RecyclerView
    //   0	154	1	paramInt	int
    //   0	154	2	paramLong	long
    //   10	61	4	i	int
    //   7	10	5	j	int
    //   31	103	6	localObject1	Object
    //   144	8	6	localObject2	Object
    //   92	44	7	localx	RecyclerView.x
    // Exception table:
    //   from	to	target	type
    //   81	94	144	finally
    //   99	125	144	finally
    //   133	141	144	finally
  }
  
  final void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    if ((paramRecyclerView.isAttachedToWindow()) && (this.Zv == 0L))
    {
      this.Zv = paramRecyclerView.getNanoTime();
      paramRecyclerView.post(this);
    }
    paramRecyclerView = paramRecyclerView.aeD;
    paramRecyclerView.Zz = paramInt1;
    paramRecyclerView.ZA = paramInt2;
  }
  
  public final void run()
  {
    for (;;)
    {
      int j;
      try
      {
        d.beginSection("RV Prefetch");
        bool = this.Zu.isEmpty();
        if (bool) {
          return;
        }
        j = this.Zu.size();
        long l1 = 0L;
        int i = 0;
        Object localObject1;
        if (i < j)
        {
          localObject1 = (RecyclerView)this.Zu.get(i);
          if (((RecyclerView)localObject1).getWindowVisibility() != 0) {
            break label719;
          }
          l1 = Math.max(((RecyclerView)localObject1).getDrawingTime(), l1);
          i += 1;
          continue;
        }
        if (l1 == 0L) {
          return;
        }
        long l2 = TimeUnit.MILLISECONDS.toNanos(l1) + this.Zw;
        int m = this.Zu.size();
        i = 0;
        j = 0;
        if (j < m)
        {
          localObject1 = (RecyclerView)this.Zu.get(j);
          if (((RecyclerView)localObject1).getWindowVisibility() != 0) {
            break label716;
          }
          ((RecyclerView)localObject1).aeD.a((RecyclerView)localObject1, false);
          i = ((RecyclerView)localObject1).aeD.bn + i;
          break label722;
        }
        this.Zx.ensureCapacity(i);
        i = 0;
        j = 0;
        Object localObject4;
        a locala;
        if (j < m)
        {
          localObject4 = (RecyclerView)this.Zu.get(j);
          if (((RecyclerView)localObject4).getWindowVisibility() != 0) {
            break label713;
          }
          locala = ((RecyclerView)localObject4).aeD;
          int n = Math.abs(locala.Zz) + Math.abs(locala.ZA);
          int k = 0;
          if (k >= locala.bn * 2) {
            break label735;
          }
          if (i >= this.Zx.size())
          {
            localObject1 = new b();
            this.Zx.add(localObject1);
            int i1 = locala.ZB[(k + 1)];
            if (i1 > n) {
              break label729;
            }
            bool = true;
            ((b)localObject1).ZC = bool;
            ((b)localObject1).ZD = n;
            ((b)localObject1).ZE = i1;
            ((b)localObject1).ZF = ((RecyclerView)localObject4);
            ((b)localObject1).position = locala.ZB[k];
            i += 1;
            k += 2;
            continue;
          }
          localObject1 = (b)this.Zx.get(i);
          continue;
        }
        Collections.sort(this.Zx, Zy);
        i = 0;
        if (i < this.Zx.size())
        {
          localObject1 = (b)this.Zx.get(i);
          if (((b)localObject1).ZF != null)
          {
            if (((b)localObject1).ZC)
            {
              l1 = Long.MAX_VALUE;
              localObject4 = a(((b)localObject1).ZF, ((b)localObject1).position, l1);
              if ((localObject4 == null) || (((RecyclerView.x)localObject4).mNestedRecyclerView == null) || (!((RecyclerView.x)localObject4).isBound()) || (((RecyclerView.x)localObject4).isInvalid())) {
                continue;
              }
              localObject4 = (RecyclerView)((RecyclerView.x)localObject4).mNestedRecyclerView.get();
              if (localObject4 == null) {
                continue;
              }
              if ((((RecyclerView)localObject4).aeg) && (((RecyclerView)localObject4).adK.gw() != 0)) {
                ((RecyclerView)localObject4).hD();
              }
              locala = ((RecyclerView)localObject4).aeD;
              locala.a((RecyclerView)localObject4, true);
              j = locala.bn;
              if (j == 0) {
                continue;
              }
            }
            try
            {
              d.beginSection("RV Nested Prefetch");
              RecyclerView.u localu = ((RecyclerView)localObject4).aeE;
              RecyclerView.a locala1 = ((RecyclerView)localObject4).adP;
              localu.afW = 1;
              localu.afX = locala1.getItemCount();
              localu.afZ = false;
              localu.aga = false;
              localu.agb = false;
              j = 0;
              if (j < locala.bn * 2)
              {
                a((RecyclerView)localObject4, locala.ZB[j], l2);
                j += 2;
                continue;
                l1 = l2;
                continue;
              }
              d.endSection();
              ((b)localObject1).ZC = false;
              ((b)localObject1).ZD = 0;
              ((b)localObject1).ZE = 0;
              ((b)localObject1).ZF = null;
              ((b)localObject1).position = 0;
              i += 1;
              continue;
            }
            finally
            {
              d.endSection();
            }
          }
        }
        this.Zv = 0L;
      }
      finally
      {
        this.Zv = 0L;
        d.endSection();
      }
      d.endSection();
      return;
      label713:
      break label735;
      label716:
      break label722;
      label719:
      continue;
      label722:
      j += 1;
      continue;
      label729:
      boolean bool = false;
      continue;
      label735:
      j += 1;
    }
  }
  
  static final class a
    implements RecyclerView.i.a
  {
    int ZA;
    int[] ZB;
    int Zz;
    int bn;
    
    public final void C(int paramInt1, int paramInt2)
    {
      if (paramInt1 < 0) {
        throw new IllegalArgumentException("Layout positions must be non-negative");
      }
      if (paramInt2 < 0) {
        throw new IllegalArgumentException("Pixel distance must be non-negative");
      }
      int i = this.bn * 2;
      if (this.ZB == null)
      {
        this.ZB = new int[4];
        Arrays.fill(this.ZB, -1);
      }
      for (;;)
      {
        this.ZB[i] = paramInt1;
        this.ZB[(i + 1)] = paramInt2;
        this.bn += 1;
        return;
        if (i >= this.ZB.length)
        {
          int[] arrayOfInt = this.ZB;
          this.ZB = new int[i * 2];
          System.arraycopy(arrayOfInt, 0, this.ZB, 0, arrayOfInt.length);
        }
      }
    }
    
    final void a(RecyclerView paramRecyclerView, boolean paramBoolean)
    {
      this.bn = 0;
      if (this.ZB != null) {
        Arrays.fill(this.ZB, -1);
      }
      RecyclerView.i locali = paramRecyclerView.adQ;
      if ((paramRecyclerView.adP != null) && (locali != null) && (locali.afj))
      {
        if (!paramBoolean) {
          break label101;
        }
        if (!paramRecyclerView.adJ.ga()) {
          locali.a(paramRecyclerView.adP.getItemCount(), this);
        }
      }
      for (;;)
      {
        if (this.bn > locali.afk)
        {
          locali.afk = this.bn;
          locali.afl = paramBoolean;
          paramRecyclerView.adH.io();
        }
        return;
        label101:
        if (!paramRecyclerView.ie()) {
          locali.a(this.Zz, this.ZA, paramRecyclerView.aeE, this);
        }
      }
    }
    
    final boolean bp(int paramInt)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      int j;
      int i;
      if (this.ZB != null)
      {
        j = this.bn;
        i = 0;
      }
      for (;;)
      {
        bool1 = bool2;
        if (i < j * 2)
        {
          if (this.ZB[i] == paramInt) {
            bool1 = true;
          }
        }
        else {
          return bool1;
        }
        i += 2;
      }
    }
    
    final void gI()
    {
      if (this.ZB != null) {
        Arrays.fill(this.ZB, -1);
      }
      this.bn = 0;
    }
  }
  
  static final class b
  {
    public boolean ZC;
    public int ZD;
    public int ZE;
    public RecyclerView ZF;
    public int position;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */