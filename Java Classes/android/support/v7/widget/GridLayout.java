package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.view.r;
import android.support.v4.view.t;
import android.support.v7.e.a.a;
import android.support.v7.e.a.b;
import android.util.AttributeSet;
import android.util.LogPrinter;
import android.util.Pair;
import android.util.Printer;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class GridLayout
  extends ViewGroup
{
  static final Printer ZG = new LogPrinter(3, GridLayout.class.getName());
  static final Printer ZH = new Printer()
  {
    public final void println(String paramAnonymousString) {}
  };
  private static final int ZI = a.b.GridLayout_orientation;
  private static final int ZJ = a.b.GridLayout_rowCount;
  private static final int ZK = a.b.GridLayout_columnCount;
  private static final int ZL = a.b.GridLayout_useDefaultMargins;
  private static final int ZM = a.b.GridLayout_alignmentMode;
  private static final int ZN = a.b.GridLayout_rowOrderPreserved;
  private static final int ZO = a.b.GridLayout_columnOrderPreserved;
  static final a ZW = new a()
  {
    public final int f(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return Integer.MIN_VALUE;
    }
    
    final String gP()
    {
      return "UNDEFINED";
    }
    
    final int r(View paramAnonymousView, int paramAnonymousInt)
    {
      return Integer.MIN_VALUE;
    }
  };
  private static final a ZX = new a()
  {
    public final int f(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return 0;
    }
    
    final String gP()
    {
      return "LEADING";
    }
    
    final int r(View paramAnonymousView, int paramAnonymousInt)
    {
      return 0;
    }
  };
  private static final a ZY = new a()
  {
    public final int f(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return paramAnonymousInt1;
    }
    
    final String gP()
    {
      return "TRAILING";
    }
    
    final int r(View paramAnonymousView, int paramAnonymousInt)
    {
      return paramAnonymousInt;
    }
  };
  public static final a ZZ = ZX;
  public static final a aaa = ZY;
  public static final a aab = ZX;
  public static final a aac = ZY;
  public static final a aad = a(aab, aac);
  public static final a aae = a(aac, aab);
  public static final a aaf = new a()
  {
    public final int f(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return paramAnonymousInt1 >> 1;
    }
    
    final String gP()
    {
      return "CENTER";
    }
    
    final int r(View paramAnonymousView, int paramAnonymousInt)
    {
      return paramAnonymousInt >> 1;
    }
  };
  public static final a aag = new a()
  {
    public final int f(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if (paramAnonymousView.getVisibility() == 8) {
        paramAnonymousInt1 = 0;
      }
      do
      {
        return paramAnonymousInt1;
        paramAnonymousInt2 = paramAnonymousView.getBaseline();
        paramAnonymousInt1 = paramAnonymousInt2;
      } while (paramAnonymousInt2 != -1);
      return Integer.MIN_VALUE;
    }
    
    final String gP()
    {
      return "BASELINE";
    }
    
    public final GridLayout.e gQ()
    {
      new GridLayout.e()
      {
        private int size;
        
        protected final void E(int paramAnonymous2Int1, int paramAnonymous2Int2)
        {
          super.E(paramAnonymous2Int1, paramAnonymous2Int2);
          this.size = Math.max(this.size, paramAnonymous2Int1 + paramAnonymous2Int2);
        }
        
        protected final int R(boolean paramAnonymous2Boolean)
        {
          return Math.max(super.R(paramAnonymous2Boolean), this.size);
        }
        
        protected final int a(GridLayout paramAnonymous2GridLayout, View paramAnonymous2View, GridLayout.a paramAnonymous2a, int paramAnonymous2Int, boolean paramAnonymous2Boolean)
        {
          return Math.max(0, super.a(paramAnonymous2GridLayout, paramAnonymous2View, paramAnonymous2a, paramAnonymous2Int, paramAnonymous2Boolean));
        }
        
        protected final void reset()
        {
          super.reset();
          this.size = Integer.MIN_VALUE;
        }
      };
    }
    
    final int r(View paramAnonymousView, int paramAnonymousInt)
    {
      return 0;
    }
  };
  public static final a aah = new a()
  {
    public final int F(int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return paramAnonymousInt2;
    }
    
    public final int f(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return Integer.MIN_VALUE;
    }
    
    final String gP()
    {
      return "FILL";
    }
    
    final int r(View paramAnonymousView, int paramAnonymousInt)
    {
      return 0;
    }
  };
  final d ZP = new d(true);
  final d ZQ = new d(false);
  boolean ZR = false;
  int ZS = 1;
  int ZT;
  int ZU = 0;
  Printer ZV = ZG;
  int hE = 0;
  
  public GridLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public GridLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public GridLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.ZT = paramContext.getResources().getDimensionPixelOffset(a.a.default_gap);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.b.GridLayout);
    try
    {
      setRowCount(paramContext.getInt(ZJ, Integer.MIN_VALUE));
      setColumnCount(paramContext.getInt(ZK, Integer.MIN_VALUE));
      setOrientation(paramContext.getInt(ZI, 0));
      setUseDefaultMargins(paramContext.getBoolean(ZL, false));
      setAlignmentMode(paramContext.getInt(ZM, 1));
      setRowOrderPreserved(paramContext.getBoolean(ZN, true));
      setColumnOrderPreserved(paramContext.getBoolean(ZO, true));
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  private static int D(int paramInt1, int paramInt2)
  {
    return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1 + paramInt2), View.MeasureSpec.getMode(paramInt1));
  }
  
  static void E(String paramString)
  {
    throw new IllegalArgumentException(paramString + ". ");
  }
  
  private static a a(a parama1, final a parama2)
  {
    new a()
    {
      public final int f(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        int i = 1;
        if (r.K(paramAnonymousView) == 1) {
          if (i != 0) {
            break label37;
          }
        }
        label37:
        for (GridLayout.a locala = this.aai;; locala = parama2)
        {
          return locala.f(paramAnonymousView, paramAnonymousInt1, paramAnonymousInt2);
          i = 0;
          break;
        }
      }
      
      final String gP()
      {
        return "SWITCHING[L:" + this.aai.gP() + ", R:" + parama2.gP() + "]";
      }
      
      final int r(View paramAnonymousView, int paramAnonymousInt)
      {
        int i = 1;
        if (r.K(paramAnonymousView) == 1) {
          if (i != 0) {
            break label33;
          }
        }
        label33:
        for (GridLayout.a locala = this.aai;; locala = parama2)
        {
          return locala.r(paramAnonymousView, paramAnonymousInt);
          i = 0;
          break;
        }
      }
    };
  }
  
  public static j a(int paramInt1, int paramInt2, a parama, float paramFloat)
  {
    if (paramInt1 != Integer.MIN_VALUE) {}
    for (boolean bool = true;; bool = false) {
      return new j(bool, paramInt1, paramInt2, parama, paramFloat);
    }
  }
  
  private static void a(g paramg, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    f localf = new f(paramInt1, paramInt1 + paramInt2);
    paramg.abl = paramg.abl.a(localf);
    localf = new f(paramInt3, paramInt3 + paramInt4);
    paramg.abm = paramg.abm.a(localf);
  }
  
  private void a(g paramg, boolean paramBoolean)
  {
    String str;
    label18:
    f localf;
    if (paramBoolean)
    {
      str = "column";
      if (!paramBoolean) {
        break label183;
      }
      paramg = paramg.abm;
      localf = paramg.aal;
      if ((localf.min != Integer.MIN_VALUE) && (localf.min < 0)) {
        E(str + " indices must be positive");
      }
      if (!paramBoolean) {
        break label191;
      }
    }
    label183:
    label191:
    for (paramg = this.ZP;; paramg = this.ZQ)
    {
      int i = paramg.aar;
      if (i != Integer.MIN_VALUE)
      {
        if (localf.max > i) {
          E(str + " indices (start + span) mustn't exceed the " + str + " count");
        }
        if (localf.size() > i) {
          E(str + " span mustn't exceed the " + str + " count");
        }
      }
      return;
      str = "row";
      break;
      paramg = paramg.abl;
      break label18;
    }
  }
  
  static <T> T[] a(T[] paramArrayOfT1, T[] paramArrayOfT2)
  {
    Object[] arrayOfObject = (Object[])Array.newInstance(paramArrayOfT1.getClass().getComponentType(), paramArrayOfT1.length + paramArrayOfT2.length);
    System.arraycopy(paramArrayOfT1, 0, arrayOfObject, 0, paramArrayOfT1.length);
    System.arraycopy(paramArrayOfT2, 0, arrayOfObject, paramArrayOfT1.length, paramArrayOfT2.length);
    return arrayOfObject;
  }
  
  static g aE(View paramView)
  {
    return (g)paramView.getLayoutParams();
  }
  
  private int b(View paramView, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.ZS == 1) {
      return a(paramView, paramBoolean1, paramBoolean2);
    }
    Object localObject;
    if (paramBoolean1)
    {
      localObject = this.ZP;
      if (!paramBoolean2) {
        break label124;
      }
      if (((d)localObject).aaz == null) {
        ((d)localObject).aaz = new int[((d)localObject).getCount() + 1];
      }
      if (!((d)localObject).aaA)
      {
        ((d)localObject).U(true);
        ((d)localObject).aaA = true;
      }
      localObject = ((d)localObject).aaz;
      label79:
      paramView = (g)paramView.getLayoutParams();
      if (!paramBoolean1) {
        break label176;
      }
      paramView = paramView.abm;
      label96:
      if (!paramBoolean2) {
        break label184;
      }
    }
    label124:
    label176:
    label184:
    for (int i = paramView.aal.min;; i = paramView.aal.max)
    {
      return localObject[i];
      localObject = this.ZQ;
      break;
      if (((d)localObject).aaB == null) {
        ((d)localObject).aaB = new int[((d)localObject).getCount() + 1];
      }
      if (!((d)localObject).aaC)
      {
        ((d)localObject).U(false);
        ((d)localObject).aaC = true;
      }
      localObject = ((d)localObject).aaB;
      break label79;
      paramView = paramView.abl;
      break label96;
    }
  }
  
  private void b(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j = getChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = getChildAt(i);
      g localg;
      if (localView.getVisibility() != 8)
      {
        localg = (g)localView.getLayoutParams();
        if (!paramBoolean) {
          break label75;
        }
        e(localView, paramInt1, paramInt2, localg.width, localg.height);
      }
      for (;;)
      {
        i += 1;
        break;
        label75:
        boolean bool;
        label85:
        label97:
        f localf;
        if (this.hE == 0)
        {
          bool = true;
          if (!bool) {
            break label192;
          }
          localObject = localg.abm;
          if (((j)localObject).V(bool) != aah) {
            break label200;
          }
          localf = ((j)localObject).aal;
          if (!bool) {
            break label202;
          }
        }
        int k;
        label192:
        label200:
        label202:
        for (Object localObject = this.ZP;; localObject = this.ZQ)
        {
          localObject = ((d)localObject).gZ();
          k = localObject[localf.max] - localObject[localf.min] - f(localView, bool);
          if (!bool) {
            break label211;
          }
          e(localView, paramInt1, paramInt2, k, localg.height);
          break;
          bool = false;
          break label85;
          localObject = localg.abl;
          break label97;
          break;
        }
        label211:
        e(localView, paramInt1, paramInt2, localg.width, k);
      }
    }
  }
  
  static boolean bq(int paramInt)
  {
    return (paramInt & 0x2) != 0;
  }
  
  static int d(int[] paramArrayOfInt)
  {
    int j = -1;
    int i = 0;
    int k = paramArrayOfInt.length;
    while (i < k)
    {
      j = Math.max(j, paramArrayOfInt[i]);
      i += 1;
    }
    return j;
  }
  
  private void e(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.measure(getChildMeasureSpec(paramInt1, f(paramView, true), paramInt3), getChildMeasureSpec(paramInt2, f(paramView, false), paramInt4));
  }
  
  static int g(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramView.getMeasuredWidth();
    }
    return paramView.getMeasuredHeight();
  }
  
  static a g(int paramInt, boolean paramBoolean)
  {
    int i;
    if (paramBoolean)
    {
      i = 7;
      label7:
      if (!paramBoolean) {
        break label86;
      }
    }
    label86:
    for (int j = 0;; j = 4) {
      switch ((i & paramInt) >> j)
      {
      default: 
        return ZW;
        i = 112;
        break label7;
      }
    }
    if (paramBoolean) {
      return aad;
    }
    return ZZ;
    if (paramBoolean) {
      return aae;
    }
    return aaa;
    return aah;
    return aaf;
    return aab;
    return aac;
  }
  
  private boolean gJ()
  {
    return r.K(this) == 1;
  }
  
  private void gK()
  {
    this.ZU = 0;
    if (this.ZP != null) {
      this.ZP.gK();
    }
    if (this.ZQ != null) {
      this.ZQ.gK();
    }
    gL();
  }
  
  private void gL()
  {
    if ((this.ZP != null) && (this.ZQ != null))
    {
      this.ZP.gL();
      this.ZQ.gL();
    }
  }
  
  private int gM()
  {
    int i = 1;
    int k = getChildCount();
    int j = 0;
    if (j < k)
    {
      View localView = getChildAt(j);
      if (localView.getVisibility() == 8) {
        break label57;
      }
      i = ((g)localView.getLayoutParams()).hashCode() + i * 31;
    }
    label57:
    for (;;)
    {
      j += 1;
      break;
      return i;
    }
  }
  
  private void gN()
  {
    int i2;
    Object localObject;
    label28:
    int i3;
    label45:
    int i;
    int j;
    int[] arrayOfInt;
    int i4;
    g localg;
    label97:
    f localf;
    boolean bool1;
    int i7;
    label141:
    boolean bool2;
    int i5;
    if (this.ZU == 0) {
      if (this.hE == 0)
      {
        i2 = 1;
        if (i2 == 0) {
          break label260;
        }
        localObject = this.ZP;
        if (((d)localObject).aar == Integer.MIN_VALUE) {
          break label269;
        }
        i3 = ((d)localObject).aar;
        i = 0;
        j = 0;
        arrayOfInt = new int[i3];
        int i6 = getChildCount();
        i4 = 0;
        if (i4 >= i6) {
          break label471;
        }
        localg = (g)getChildAt(i4).getLayoutParams();
        if (i2 == 0) {
          break label275;
        }
        localObject = localg.abl;
        localf = ((j)localObject).aal;
        bool1 = ((j)localObject).abr;
        i7 = localf.size();
        if (bool1) {
          i = localf.min;
        }
        if (i2 == 0) {
          break label285;
        }
        localObject = localg.abm;
        localf = ((j)localObject).aal;
        bool2 = ((j)localObject).abr;
        i5 = localf.size();
        if (i3 != 0) {
          break label295;
        }
        if (!bool2) {
          break label510;
        }
      }
    }
    label215:
    label260:
    label269:
    label275:
    label285:
    label295:
    label358:
    label363:
    label390:
    label471:
    label510:
    for (int k = localf.min;; k = j)
    {
      int n = k;
      int i1 = i;
      if (i3 != 0)
      {
        j = k;
        int m = i;
        if (bool1)
        {
          n = k;
          i1 = i;
          if (!bool2)
          {
            m = i;
            j = k;
          }
        }
        else
        {
          for (;;)
          {
            k = j + i5;
            if (k > arrayOfInt.length) {
              i = 0;
            }
            for (;;)
            {
              n = j;
              i1 = m;
              if (i != 0) {
                break label390;
              }
              if (!bool2) {
                break label363;
              }
              m += 1;
              break label215;
              i2 = 0;
              break;
              localObject = this.ZQ;
              break label28;
              i3 = 0;
              break label45;
              localObject = localg.abm;
              break label97;
              localObject = localg.abl;
              break label141;
              if (bool2) {}
              for (k = Math.min(localf.min, i3);; k = 0)
              {
                i5 = Math.min(i5, i3 - k);
                break;
              }
              i = j;
              for (;;)
              {
                if (i >= k) {
                  break label358;
                }
                if (arrayOfInt[i] > m)
                {
                  i = 0;
                  break;
                }
                i += 1;
              }
              i = 1;
            }
            if (j + i5 <= i3)
            {
              j += 1;
            }
            else
            {
              j = 0;
              m += 1;
            }
          }
        }
        i = arrayOfInt.length;
        Arrays.fill(arrayOfInt, Math.min(n, i), Math.min(n + i5, i), i1 + i7);
      }
      if (i2 != 0) {
        a(localg, i1, i7, n, i5);
      }
      for (;;)
      {
        j = n + i5;
        i4 += 1;
        i = i1;
        break;
        a(localg, n, i5, i1, i7);
      }
      this.ZU = gM();
      do
      {
        return;
      } while (this.ZU == gM());
      this.ZV.println("The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec.");
      gK();
      break;
    }
  }
  
  public static j gO()
  {
    return a(Integer.MIN_VALUE, 1, ZW, 0.0F);
  }
  
  final int a(View paramView, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject = (g)paramView.getLayoutParams();
    int i;
    if (paramBoolean1) {
      if (paramBoolean2) {
        i = ((g)localObject).leftMargin;
      }
    }
    while (i == Integer.MIN_VALUE) {
      if (!this.ZR)
      {
        return 0;
        i = ((g)localObject).rightMargin;
        continue;
        if (paramBoolean2) {
          i = ((g)localObject).topMargin;
        } else {
          i = ((g)localObject).bottomMargin;
        }
      }
      else
      {
        d locald;
        label95:
        boolean bool;
        if (paramBoolean1)
        {
          localObject = ((g)localObject).abm;
          if (!paramBoolean1) {
            break label171;
          }
          locald = this.ZP;
          localObject = ((j)localObject).aal;
          bool = paramBoolean2;
          if (paramBoolean1)
          {
            bool = paramBoolean2;
            if (gJ())
            {
              if (paramBoolean2) {
                break label180;
              }
              bool = true;
            }
          }
          label126:
          if (!bool) {
            break label186;
          }
          if (((f)localObject).min == 0) {}
        }
        for (;;)
        {
          if ((paramView.getClass() != android.support.v4.widget.Space.class) && (paramView.getClass() != android.widget.Space.class)) {
            break label195;
          }
          return 0;
          localObject = ((g)localObject).abl;
          break;
          label171:
          locald = this.ZQ;
          break label95;
          label180:
          bool = false;
          break label126;
          label186:
          locald.getCount();
        }
        label195:
        return this.ZT / 2;
      }
    }
    return i;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!(paramLayoutParams instanceof g)) {
      return false;
    }
    paramLayoutParams = (g)paramLayoutParams;
    a(paramLayoutParams, true);
    a(paramLayoutParams, false);
    return true;
  }
  
  final int f(View paramView, boolean paramBoolean)
  {
    return b(paramView, paramBoolean, true) + b(paramView, paramBoolean, false);
  }
  
  public int getAlignmentMode()
  {
    return this.ZS;
  }
  
  public int getColumnCount()
  {
    return this.ZP.getCount();
  }
  
  public int getOrientation()
  {
    return this.hE;
  }
  
  public Printer getPrinter()
  {
    return this.ZV;
  }
  
  public int getRowCount()
  {
    return this.ZQ.getCount();
  }
  
  public boolean getUseDefaultMargins()
  {
    return this.ZR;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    gN();
    paramInt3 -= paramInt1;
    int i = getPaddingLeft();
    int j = getPaddingTop();
    int k = getPaddingRight();
    paramInt1 = getPaddingBottom();
    this.ZP.bs(paramInt3 - i - k);
    this.ZQ.bs(paramInt4 - paramInt2 - j - paramInt1);
    int[] arrayOfInt1 = this.ZP.gZ();
    int[] arrayOfInt2 = this.ZQ.gZ();
    paramInt4 = getChildCount();
    paramInt1 = 0;
    if (paramInt1 < paramInt4)
    {
      View localView = getChildAt(paramInt1);
      int m;
      int i1;
      int n;
      int i5;
      int i7;
      int i4;
      int i2;
      if (localView.getVisibility() != 8)
      {
        Object localObject2 = (g)localView.getLayoutParams();
        Object localObject1 = ((g)localObject2).abm;
        localObject2 = ((g)localObject2).abl;
        Object localObject3 = ((j)localObject1).aal;
        Object localObject4 = ((j)localObject2).aal;
        paramInt2 = arrayOfInt1[localObject3.min];
        m = arrayOfInt2[localObject4.min];
        i1 = arrayOfInt1[localObject3.max];
        n = arrayOfInt2[localObject4.max];
        i5 = i1 - paramInt2;
        i7 = n - m;
        int i10 = g(localView, true);
        int i8 = g(localView, false);
        localObject1 = ((j)localObject1).V(true);
        localObject2 = ((j)localObject2).V(false);
        localObject3 = (e)this.ZP.gT().bu(paramInt1);
        localObject4 = (e)this.ZQ.gT().bu(paramInt1);
        int i6 = ((a)localObject1).r(localView, i5 - ((e)localObject3).R(true));
        n = ((a)localObject2).r(localView, i7 - ((e)localObject4).R(true));
        int i3 = b(localView, true, true);
        i1 = b(localView, false, true);
        i4 = b(localView, true, false);
        i2 = b(localView, false, false);
        int i11 = i3 + i4;
        int i12 = i1 + i2;
        int i9 = ((e)localObject3).a(this, localView, (a)localObject1, i10 + i11, true);
        i2 = ((e)localObject4).a(this, localView, (a)localObject2, i8 + i12, false);
        i5 = ((a)localObject1).F(i10, i5 - i11);
        i7 = ((a)localObject2).F(i8, i7 - i12);
        paramInt2 = i9 + (paramInt2 + i6);
        if (gJ()) {
          break label525;
        }
        paramInt2 += i + i3;
      }
      for (;;)
      {
        m = i2 + (j + m + n) + i1;
        if ((i5 != localView.getMeasuredWidth()) || (i7 != localView.getMeasuredHeight())) {
          localView.measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), View.MeasureSpec.makeMeasureSpec(i7, 1073741824));
        }
        localView.layout(paramInt2, m, i5 + paramInt2, i7 + m);
        paramInt1 += 1;
        break;
        label525:
        paramInt2 = paramInt3 - i5 - k - i4 - paramInt2;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    gN();
    gL();
    int m = getPaddingLeft() + getPaddingRight();
    int k = getPaddingTop() + getPaddingBottom();
    int n = D(paramInt1, -m);
    int i1 = D(paramInt2, -k);
    b(n, i1, true);
    int j;
    int i;
    if (this.hE == 0)
    {
      j = this.ZP.br(n);
      b(n, i1, false);
      i = this.ZQ.br(i1);
    }
    for (;;)
    {
      j = Math.max(j + m, getSuggestedMinimumWidth());
      i = Math.max(i + k, getSuggestedMinimumHeight());
      setMeasuredDimension(View.resolveSizeAndState(j, paramInt1, 0), View.resolveSizeAndState(i, paramInt2, 0));
      return;
      i = this.ZQ.br(i1);
      b(n, i1, false);
      j = this.ZP.br(n);
    }
  }
  
  public void requestLayout()
  {
    super.requestLayout();
    gK();
  }
  
  public void setAlignmentMode(int paramInt)
  {
    this.ZS = paramInt;
    requestLayout();
  }
  
  public void setColumnCount(int paramInt)
  {
    this.ZP.setCount(paramInt);
    gK();
    requestLayout();
  }
  
  public void setColumnOrderPreserved(boolean paramBoolean)
  {
    this.ZP.S(paramBoolean);
    gK();
    requestLayout();
  }
  
  public void setOrientation(int paramInt)
  {
    if (this.hE != paramInt)
    {
      this.hE = paramInt;
      gK();
      requestLayout();
    }
  }
  
  public void setPrinter(Printer paramPrinter)
  {
    Printer localPrinter = paramPrinter;
    if (paramPrinter == null) {
      localPrinter = ZH;
    }
    this.ZV = localPrinter;
  }
  
  public void setRowCount(int paramInt)
  {
    this.ZQ.setCount(paramInt);
    gK();
    requestLayout();
  }
  
  public void setRowOrderPreserved(boolean paramBoolean)
  {
    this.ZQ.S(paramBoolean);
    gK();
    requestLayout();
  }
  
  public void setUseDefaultMargins(boolean paramBoolean)
  {
    this.ZR = paramBoolean;
    requestLayout();
  }
  
  public static abstract class a
  {
    int F(int paramInt1, int paramInt2)
    {
      return paramInt1;
    }
    
    abstract int f(View paramView, int paramInt1, int paramInt2);
    
    abstract String gP();
    
    GridLayout.e gQ()
    {
      return new GridLayout.e();
    }
    
    abstract int r(View paramView, int paramInt);
    
    public String toString()
    {
      return "Alignment:" + gP();
    }
  }
  
  static final class b
  {
    public final GridLayout.f aal;
    public final GridLayout.h aam;
    public boolean aan = true;
    
    public b(GridLayout.f paramf, GridLayout.h paramh)
    {
      this.aal = paramf;
      this.aam = paramh;
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder().append(this.aal).append(" ");
      if (!this.aan) {}
      for (String str = "+>";; str = "->") {
        return str + " " + this.aam;
      }
    }
  }
  
  static final class c<K, V>
    extends ArrayList<Pair<K, V>>
  {
    private final Class<K> aao;
    private final Class<V> aap;
    
    private c(Class<K> paramClass, Class<V> paramClass1)
    {
      this.aao = paramClass;
      this.aap = paramClass1;
    }
    
    public static <K, V> c<K, V> a(Class<K> paramClass, Class<V> paramClass1)
    {
      return new c(paramClass, paramClass1);
    }
    
    public final void f(K paramK, V paramV)
    {
      add(Pair.create(paramK, paramV));
    }
    
    public final GridLayout.i<K, V> gR()
    {
      int j = size();
      Object[] arrayOfObject1 = (Object[])Array.newInstance(this.aao, j);
      Object[] arrayOfObject2 = (Object[])Array.newInstance(this.aap, j);
      int i = 0;
      while (i < j)
      {
        arrayOfObject1[i] = ((Pair)get(i)).first;
        arrayOfObject2[i] = ((Pair)get(i)).second;
        i += 1;
      }
      return new GridLayout.i(arrayOfObject1, arrayOfObject2);
    }
  }
  
  final class d
  {
    public boolean aaA = false;
    public int[] aaB;
    public boolean aaC = false;
    public GridLayout.b[] aaD;
    public boolean aaE = false;
    public int[] aaF;
    public boolean aaG = false;
    public boolean aaH;
    public boolean aaI = false;
    public int[] aaJ;
    boolean aaK = true;
    private GridLayout.h aaL = new GridLayout.h(0);
    private GridLayout.h aaM = new GridLayout.h(-100000);
    public final boolean aaq;
    public int aar = Integer.MIN_VALUE;
    private int aas = Integer.MIN_VALUE;
    GridLayout.i<GridLayout.j, GridLayout.e> aat;
    public boolean aau = false;
    GridLayout.i<GridLayout.f, GridLayout.h> aav;
    public boolean aaw = false;
    GridLayout.i<GridLayout.f, GridLayout.h> aax;
    public boolean aay = false;
    public int[] aaz;
    
    static
    {
      if (!GridLayout.class.desiredAssertionStatus()) {}
      for (boolean bool = true;; bool = false)
      {
        $assertionsDisabled = bool;
        return;
      }
    }
    
    d(boolean paramBoolean)
    {
      this.aaq = paramBoolean;
    }
    
    private void G(int paramInt1, int paramInt2)
    {
      this.aaL.value = paramInt1;
      this.aaM.value = (-paramInt2);
      this.aaG = false;
    }
    
    private int H(int paramInt1, int paramInt2)
    {
      G(paramInt1, paramInt2);
      return gZ()[getCount()];
    }
    
    private GridLayout.i<GridLayout.f, GridLayout.h> T(boolean paramBoolean)
    {
      GridLayout.c localc = GridLayout.c.a(GridLayout.f.class, GridLayout.h.class);
      GridLayout.j[] arrayOfj = (GridLayout.j[])gT().abo;
      int j = arrayOfj.length;
      int i = 0;
      if (i < j)
      {
        if (paramBoolean) {}
        for (GridLayout.f localf = arrayOfj[i].aal;; localf = new GridLayout.f(localf.max, localf.min))
        {
          localc.f(localf, new GridLayout.h());
          i += 1;
          break;
          localf = arrayOfj[i].aal;
        }
      }
      return localc.gR();
    }
    
    private void a(GridLayout.i<GridLayout.f, GridLayout.h> parami, boolean paramBoolean)
    {
      int j = 0;
      Object localObject = (GridLayout.h[])parami.abp;
      int i = 0;
      while (i < localObject.length)
      {
        localObject[i].value = Integer.MIN_VALUE;
        i += 1;
      }
      localObject = (GridLayout.e[])gT().abp;
      i = j;
      if (i < localObject.length)
      {
        j = localObject[i].R(paramBoolean);
        GridLayout.h localh = (GridLayout.h)parami.bu(i);
        int k = localh.value;
        if (paramBoolean) {}
        for (;;)
        {
          localh.value = Math.max(k, j);
          i += 1;
          break;
          j = -j;
        }
      }
    }
    
    private static void a(List<GridLayout.b> paramList, GridLayout.f paramf, GridLayout.h paramh)
    {
      a(paramList, paramf, paramh, true);
    }
    
    private static void a(List<GridLayout.b> paramList, GridLayout.f paramf, GridLayout.h paramh, boolean paramBoolean)
    {
      if (paramf.size() == 0) {
        return;
      }
      if (paramBoolean)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if (((GridLayout.b)localIterator.next()).aal.equals(paramf)) {
            return;
          }
        }
      }
      paramList.add(new GridLayout.b(paramf, paramh));
    }
    
    private static void a(List<GridLayout.b> paramList, GridLayout.i<GridLayout.f, GridLayout.h> parami)
    {
      int i = 0;
      while (i < ((GridLayout.f[])parami.abo).length)
      {
        a(paramList, ((GridLayout.f[])parami.abo)[i], ((GridLayout.h[])parami.abp)[i], false);
        i += 1;
      }
    }
    
    private static boolean a(int[] paramArrayOfInt, GridLayout.b paramb)
    {
      if (!paramb.aan) {}
      int j;
      int i;
      do
      {
        return false;
        GridLayout.f localf = paramb.aal;
        j = localf.min;
        i = localf.max;
        int k = paramb.aam.value;
        j = paramArrayOfInt[j] + k;
      } while (j <= paramArrayOfInt[i]);
      paramArrayOfInt[i] = j;
      return true;
    }
    
    private boolean a(GridLayout.b[] paramArrayOfb, int[] paramArrayOfInt, boolean paramBoolean)
    {
      boolean bool3 = false;
      int n = 0;
      if (this.aaq) {}
      int i1;
      Object localObject1;
      int i;
      int k;
      boolean bool1;
      for (String str = "horizontal";; str = "vertical")
      {
        i1 = getCount() + 1;
        localObject1 = null;
        i = 0;
        if (i >= paramArrayOfb.length) {
          break label415;
        }
        Arrays.fill(paramArrayOfInt, 0);
        j = 0;
        if (j >= i1) {
          break label264;
        }
        int i2 = paramArrayOfb.length;
        k = 0;
        bool1 = false;
        while (k < i2)
        {
          bool1 |= a(paramArrayOfInt, paramArrayOfb[k]);
          k += 1;
        }
      }
      GridLayout.b localb;
      boolean bool2;
      if (!bool1)
      {
        if (localObject1 != null)
        {
          paramArrayOfInt = new ArrayList();
          localObject2 = new ArrayList();
          i = n;
          while (i < paramArrayOfb.length)
          {
            localb = paramArrayOfb[i];
            if (localObject1[i] != 0) {
              paramArrayOfInt.add(localb);
            }
            if (!localb.aan) {
              ((List)localObject2).add(localb);
            }
            i += 1;
          }
          GridLayout.this.ZV.println(str + " constraints: " + m(paramArrayOfInt) + " are inconsistent; permanently removing: " + m((List)localObject2) + ". ");
        }
        bool2 = true;
      }
      label264:
      do
      {
        return bool2;
        j += 1;
        break;
        bool2 = bool3;
      } while (!paramBoolean);
      Object localObject2 = new boolean[paramArrayOfb.length];
      int j = 0;
      while (j < i1)
      {
        int m = paramArrayOfb.length;
        k = 0;
        while (k < m)
        {
          localObject2[k] |= a(paramArrayOfInt, paramArrayOfb[k]);
          k += 1;
        }
        j += 1;
      }
      if (i == 0) {
        localObject1 = localObject2;
      }
      j = 0;
      for (;;)
      {
        if (j < paramArrayOfb.length)
        {
          if (localObject2[j] != 0)
          {
            localb = paramArrayOfb[j];
            if (localb.aal.min >= localb.aal.max) {
              localb.aan = false;
            }
          }
        }
        else
        {
          i += 1;
          break;
        }
        j += 1;
      }
      label415:
      return true;
    }
    
    private void d(int paramInt, float paramFloat)
    {
      Arrays.fill(this.aaJ, 0);
      int k = GridLayout.this.getChildCount();
      int j = 0;
      int i = paramInt;
      paramInt = j;
      Object localObject;
      if (paramInt < k)
      {
        localObject = GridLayout.this.getChildAt(paramInt);
        if (((View)localObject).getVisibility() == 8) {
          break label134;
        }
        localObject = GridLayout.aE((View)localObject);
        if (this.aaq)
        {
          localObject = ((GridLayout.g)localObject).abm;
          label73:
          float f = ((GridLayout.j)localObject).weight;
          if (f == 0.0F) {
            break label134;
          }
          j = Math.round(i * f / paramFloat);
          this.aaJ[paramInt] = j;
          i -= j;
          paramFloat -= f;
        }
      }
      label134:
      for (;;)
      {
        paramInt += 1;
        break;
        localObject = ((GridLayout.g)localObject).abl;
        break label73;
        return;
      }
    }
    
    private boolean e(int[] paramArrayOfInt)
    {
      return a(gX(), paramArrayOfInt, true);
    }
    
    private int gS()
    {
      int i;
      if (this.aas == Integer.MIN_VALUE)
      {
        int k = GridLayout.this.getChildCount();
        int j = 0;
        i = -1;
        if (j < k)
        {
          Object localObject = GridLayout.aE(GridLayout.this.getChildAt(j));
          if (this.aaq) {}
          for (localObject = ((GridLayout.g)localObject).abm;; localObject = ((GridLayout.g)localObject).abl)
          {
            localObject = ((GridLayout.j)localObject).aal;
            i = Math.max(Math.max(Math.max(i, ((GridLayout.f)localObject).min), ((GridLayout.f)localObject).max), ((GridLayout.f)localObject).size());
            j += 1;
            break;
          }
        }
        if (i != -1) {
          break label125;
        }
        i = Integer.MIN_VALUE;
      }
      label125:
      for (;;)
      {
        this.aas = Math.max(0, i);
        return this.aas;
      }
    }
    
    private GridLayout.i<GridLayout.f, GridLayout.h> gU()
    {
      if (this.aav == null) {
        this.aav = T(true);
      }
      if (!this.aaw)
      {
        a(this.aav, true);
        this.aaw = true;
      }
      return this.aav;
    }
    
    private GridLayout.i<GridLayout.f, GridLayout.h> gV()
    {
      if (this.aax == null) {
        this.aax = T(false);
      }
      if (!this.aay)
      {
        a(this.aax, false);
        this.aay = true;
      }
      return this.aax;
    }
    
    private void gW()
    {
      gU();
      gV();
    }
    
    private GridLayout.b[] gX()
    {
      if (this.aaD == null)
      {
        ArrayList localArrayList1 = new ArrayList();
        ArrayList localArrayList2 = new ArrayList();
        a(localArrayList1, gU());
        a(localArrayList2, gV());
        if (this.aaK)
        {
          i = 0;
          while (i < getCount())
          {
            a(localArrayList1, new GridLayout.f(i, i + 1), new GridLayout.h(0));
            i += 1;
          }
        }
        int i = getCount();
        a(localArrayList1, new GridLayout.f(0, i), this.aaL, false);
        a(localArrayList2, new GridLayout.f(i, 0), this.aaM, false);
        this.aaD = ((GridLayout.b[])GridLayout.a(l(localArrayList1), l(localArrayList2)));
      }
      if (!this.aaE)
      {
        gW();
        this.aaE = true;
      }
      return this.aaD;
    }
    
    private int[] gY()
    {
      if (this.aaJ == null) {
        this.aaJ = new int[GridLayout.this.getChildCount()];
      }
      return this.aaJ;
    }
    
    private GridLayout.b[] l(List<GridLayout.b> paramList)
    {
      paramList = new Object()
      {
        GridLayout.b[] aaO = new GridLayout.b[this.aaS.length];
        int aaP = this.aaO.length - 1;
        GridLayout.b[][] aaQ = GridLayout.d.this.a(this.aaS);
        int[] aaR = new int[GridLayout.d.this.getCount() + 1];
        
        static
        {
          if (!GridLayout.class.desiredAssertionStatus()) {}
          for (boolean bool = true;; bool = false)
          {
            $assertionsDisabled = bool;
            return;
          }
        }
        
        final void bt(int paramAnonymousInt)
        {
          switch (this.aaR[paramAnonymousInt])
          {
          }
          do
          {
            return;
            this.aaR[paramAnonymousInt] = 1;
            GridLayout.b[] arrayOfb1 = this.aaQ[paramAnonymousInt];
            int j = arrayOfb1.length;
            int i = 0;
            while (i < j)
            {
              GridLayout.b localb = arrayOfb1[i];
              bt(localb.aal.max);
              GridLayout.b[] arrayOfb2 = this.aaO;
              int k = this.aaP;
              this.aaP = (k - 1);
              arrayOfb2[k] = localb;
              i += 1;
            }
            this.aaR[paramAnonymousInt] = 2;
            return;
          } while ($assertionsDisabled);
          throw new AssertionError();
        }
      };
      int i = 0;
      int j = paramList.aaQ.length;
      while (i < j)
      {
        paramList.bt(i);
        i += 1;
      }
      if ((!1.$assertionsDisabled) && (paramList.aaP != -1)) {
        throw new AssertionError();
      }
      return paramList.aaO;
    }
    
    private String m(List<GridLayout.b> paramList)
    {
      String str;
      label34:
      label62:
      int j;
      int k;
      int m;
      if (this.aaq)
      {
        str = "x";
        localObject = new StringBuilder();
        Iterator localIterator = paramList.iterator();
        int i = 1;
        paramList = (List<GridLayout.b>)localObject;
        if (!localIterator.hasNext()) {
          break label226;
        }
        localObject = (GridLayout.b)localIterator.next();
        if (i == 0) {
          break label163;
        }
        i = 0;
        j = ((GridLayout.b)localObject).aal.min;
        k = ((GridLayout.b)localObject).aal.max;
        m = ((GridLayout.b)localObject).aam.value;
        if (j >= k) {
          break label174;
        }
      }
      label163:
      label174:
      for (Object localObject = str + k + "-" + str + j + ">=" + m;; localObject = str + j + "-" + str + k + "<=" + -m)
      {
        paramList.append((String)localObject);
        break label34;
        str = "y";
        break;
        paramList = paramList.append(", ");
        break label62;
      }
      label226:
      return paramList.toString();
    }
    
    public final void S(boolean paramBoolean)
    {
      this.aaK = paramBoolean;
      gK();
    }
    
    final void U(boolean paramBoolean)
    {
      int[] arrayOfInt;
      int i;
      label21:
      View localView;
      Object localObject;
      if (paramBoolean)
      {
        arrayOfInt = this.aaz;
        int k = GridLayout.this.getChildCount();
        i = 0;
        if (i >= k) {
          return;
        }
        localView = GridLayout.this.getChildAt(i);
        if (localView.getVisibility() != 8)
        {
          localObject = GridLayout.aE(localView);
          if (!this.aaq) {
            break label126;
          }
          localObject = ((GridLayout.g)localObject).abm;
          label68:
          localObject = ((GridLayout.j)localObject).aal;
          if (!paramBoolean) {
            break label136;
          }
        }
      }
      label126:
      label136:
      for (int j = ((GridLayout.f)localObject).min;; j = ((GridLayout.f)localObject).max)
      {
        arrayOfInt[j] = Math.max(arrayOfInt[j], GridLayout.this.a(localView, this.aaq, paramBoolean));
        i += 1;
        break label21;
        arrayOfInt = this.aaB;
        break;
        localObject = ((GridLayout.g)localObject).abl;
        break label68;
      }
    }
    
    final GridLayout.b[][] a(GridLayout.b[] paramArrayOfb)
    {
      int j = 0;
      int i = getCount() + 1;
      GridLayout.b[][] arrayOfb = new GridLayout.b[i][];
      int[] arrayOfInt = new int[i];
      int k = paramArrayOfb.length;
      i = 0;
      int m;
      while (i < k)
      {
        m = paramArrayOfb[i].aal.min;
        arrayOfInt[m] += 1;
        i += 1;
      }
      i = 0;
      while (i < arrayOfInt.length)
      {
        arrayOfb[i] = new GridLayout.b[arrayOfInt[i]];
        i += 1;
      }
      Arrays.fill(arrayOfInt, 0);
      k = paramArrayOfb.length;
      i = j;
      while (i < k)
      {
        GridLayout.b localb = paramArrayOfb[i];
        j = localb.aal.min;
        GridLayout.b[] arrayOfb1 = arrayOfb[j];
        m = arrayOfInt[j];
        arrayOfInt[j] = (m + 1);
        arrayOfb1[m] = localb;
        i += 1;
      }
      return arrayOfb;
    }
    
    public final int br(int paramInt)
    {
      int i = 0;
      int j = View.MeasureSpec.getMode(paramInt);
      paramInt = View.MeasureSpec.getSize(paramInt);
      switch (j)
      {
      default: 
        paramInt = i;
        if (!$assertionsDisabled) {
          throw new AssertionError();
        }
      case 0: 
        paramInt = H(0, 100000);
        return paramInt;
      case 1073741824: 
        return H(paramInt, paramInt);
      }
      return H(0, paramInt);
    }
    
    public final void bs(int paramInt)
    {
      G(paramInt, paramInt);
      gZ();
    }
    
    public final void gK()
    {
      this.aas = Integer.MIN_VALUE;
      this.aat = null;
      this.aav = null;
      this.aax = null;
      this.aaz = null;
      this.aaB = null;
      this.aaD = null;
      this.aaF = null;
      this.aaJ = null;
      this.aaI = false;
      gL();
    }
    
    public final void gL()
    {
      this.aau = false;
      this.aaw = false;
      this.aay = false;
      this.aaA = false;
      this.aaC = false;
      this.aaE = false;
      this.aaG = false;
    }
    
    public final GridLayout.i<GridLayout.j, GridLayout.e> gT()
    {
      Object localObject2;
      int j;
      int i;
      Object localObject1;
      if (this.aat == null)
      {
        localObject2 = GridLayout.c.a(GridLayout.j.class, GridLayout.e.class);
        j = GridLayout.this.getChildCount();
        i = 0;
        if (i < j)
        {
          localObject1 = GridLayout.aE(GridLayout.this.getChildAt(i));
          if (this.aaq) {}
          for (localObject1 = ((GridLayout.g)localObject1).abm;; localObject1 = ((GridLayout.g)localObject1).abl)
          {
            ((GridLayout.c)localObject2).f(localObject1, ((GridLayout.j)localObject1).V(this.aaq).gQ());
            i += 1;
            break;
          }
        }
        this.aat = ((GridLayout.c)localObject2).gR();
      }
      if (!this.aau)
      {
        localObject1 = (GridLayout.e[])this.aat.abp;
        i = 0;
        while (i < localObject1.length)
        {
          localObject1[i].reset();
          i += 1;
        }
        int m = GridLayout.this.getChildCount();
        i = 0;
        if (i < m)
        {
          localObject2 = GridLayout.this.getChildAt(i);
          localObject1 = GridLayout.aE((View)localObject2);
          label193:
          GridLayout localGridLayout;
          boolean bool;
          if (this.aaq)
          {
            localObject1 = ((GridLayout.g)localObject1).abm;
            localGridLayout = GridLayout.this;
            bool = this.aaq;
            if (((View)localObject2).getVisibility() != 8) {
              break label272;
            }
            j = 0;
            label217:
            if (((GridLayout.j)localObject1).weight != 0.0F) {
              break label295;
            }
          }
          label272:
          label295:
          for (int k = 0;; k = gY()[i])
          {
            ((GridLayout.e)this.aat.bu(i)).a(GridLayout.this, (View)localObject2, (GridLayout.j)localObject1, this, j + k);
            i += 1;
            break;
            localObject1 = ((GridLayout.g)localObject1).abl;
            break label193;
            j = GridLayout.g((View)localObject2, bool);
            j = localGridLayout.f((View)localObject2, bool) + j;
            break label217;
          }
        }
        this.aau = true;
      }
      return this.aat;
    }
    
    public final int[] gZ()
    {
      float f = 0.0F;
      int n = 0;
      if (this.aaF == null) {
        this.aaF = new int[getCount() + 1];
      }
      int[] arrayOfInt;
      int j;
      int i;
      Object localObject;
      label100:
      boolean bool;
      label113:
      label138:
      int k;
      if (!this.aaG)
      {
        arrayOfInt = this.aaF;
        if (!this.aaI)
        {
          j = GridLayout.this.getChildCount();
          i = 0;
          if (i >= j) {
            break label198;
          }
          localObject = GridLayout.this.getChildAt(i);
          if (((View)localObject).getVisibility() == 8) {
            break label191;
          }
          localObject = GridLayout.aE((View)localObject);
          if (this.aaq)
          {
            localObject = ((GridLayout.g)localObject).abm;
            if (((GridLayout.j)localObject).weight == 0.0F) {
              break label191;
            }
            bool = true;
            this.aaH = bool;
            this.aaI = true;
          }
        }
        else
        {
          if (this.aaH) {
            break label204;
          }
          e(arrayOfInt);
        }
        for (;;)
        {
          if (!this.aaK)
          {
            j = arrayOfInt[0];
            k = arrayOfInt.length;
            i = n;
            for (;;)
            {
              if (i < k)
              {
                arrayOfInt[i] -= j;
                i += 1;
                continue;
                localObject = ((GridLayout.g)localObject).abl;
                break label100;
                label191:
                i += 1;
                break;
                label198:
                bool = false;
                break label113;
                label204:
                Arrays.fill(gY(), 0);
                e(arrayOfInt);
                j = this.aaL.value * GridLayout.this.getChildCount() + 1;
                if (j < 2) {
                  break label138;
                }
                k = GridLayout.this.getChildCount();
                i = 0;
                label253:
                if (i < k)
                {
                  localObject = GridLayout.this.getChildAt(i);
                  if (((View)localObject).getVisibility() == 8) {
                    break label444;
                  }
                  localObject = GridLayout.aE((View)localObject);
                  if (this.aaq)
                  {
                    localObject = ((GridLayout.g)localObject).abm;
                    label300:
                    f = ((GridLayout.j)localObject).weight + f;
                  }
                }
              }
            }
          }
        }
      }
      label444:
      for (;;)
      {
        i += 1;
        break label253;
        localObject = ((GridLayout.g)localObject).abl;
        break label300;
        int m = -1;
        bool = true;
        k = 0;
        i = j;
        j = m;
        while (k < i)
        {
          m = (int)((k + i) / 2L);
          gL();
          d(m, f);
          bool = a(gX(), arrayOfInt, false);
          if (bool)
          {
            k = m + 1;
            j = m;
          }
          else
          {
            i = m;
          }
        }
        if ((j <= 0) || (bool)) {
          break;
        }
        gL();
        d(j, f);
        e(arrayOfInt);
        break;
        this.aaG = true;
        return this.aaF;
      }
    }
    
    public final int getCount()
    {
      return Math.max(this.aar, gS());
    }
    
    public final void setCount(int paramInt)
    {
      StringBuilder localStringBuilder;
      if ((paramInt != Integer.MIN_VALUE) && (paramInt < gS()))
      {
        localStringBuilder = new StringBuilder();
        if (!this.aaq) {
          break label56;
        }
      }
      label56:
      for (String str = "column";; str = "row")
      {
        GridLayout.E(str + "Count must be greater than or equal to the maximum of all grid indices (and spans) defined in the LayoutParams of each child");
        this.aar = paramInt;
        return;
      }
    }
  }
  
  static class e
  {
    public int aaU;
    public int aaV;
    public int aaW;
    
    e()
    {
      reset();
    }
    
    protected void E(int paramInt1, int paramInt2)
    {
      this.aaU = Math.max(this.aaU, paramInt1);
      this.aaV = Math.max(this.aaV, paramInt2);
    }
    
    protected int R(boolean paramBoolean)
    {
      if ((!paramBoolean) && (GridLayout.bq(this.aaW))) {
        return 100000;
      }
      return this.aaU + this.aaV;
    }
    
    protected int a(GridLayout paramGridLayout, View paramView, GridLayout.a parama, int paramInt, boolean paramBoolean)
    {
      return this.aaU - parama.f(paramView, paramInt, t.d(paramGridLayout));
    }
    
    protected final void a(GridLayout paramGridLayout, View paramView, GridLayout.j paramj, GridLayout.d paramd, int paramInt)
    {
      int j = this.aaW;
      if ((paramj.abs == GridLayout.ZW) && (paramj.weight == 0.0F)) {}
      for (int i = 0;; i = 2)
      {
        this.aaW = (i & j);
        i = paramj.V(paramd.aaq).f(paramView, paramInt, t.d(paramGridLayout));
        E(i, paramInt - i);
        return;
      }
    }
    
    protected void reset()
    {
      this.aaU = Integer.MIN_VALUE;
      this.aaV = Integer.MIN_VALUE;
      this.aaW = 2;
    }
    
    public String toString()
    {
      return "Bounds{before=" + this.aaU + ", after=" + this.aaV + '}';
    }
  }
  
  static final class f
  {
    public final int max;
    public final int min;
    
    public f(int paramInt1, int paramInt2)
    {
      this.min = paramInt1;
      this.max = paramInt2;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if ((paramObject == null) || (getClass() != paramObject.getClass())) {
          return false;
        }
        paramObject = (f)paramObject;
        if (this.max != ((f)paramObject).max) {
          return false;
        }
      } while (this.min == ((f)paramObject).min);
      return false;
    }
    
    public final int hashCode()
    {
      return this.min * 31 + this.max;
    }
    
    final int size()
    {
      return this.max - this.min;
    }
    
    public final String toString()
    {
      return "[" + this.min + ", " + this.max + "]";
    }
  }
  
  public static final class g
    extends ViewGroup.MarginLayoutParams
  {
    private static final GridLayout.f aaX;
    private static final int aaY;
    private static final int aaZ = a.b.GridLayout_Layout_android_layout_margin;
    private static final int aba = a.b.GridLayout_Layout_android_layout_marginLeft;
    private static final int abb = a.b.GridLayout_Layout_android_layout_marginTop;
    private static final int abc = a.b.GridLayout_Layout_android_layout_marginRight;
    private static final int abd = a.b.GridLayout_Layout_android_layout_marginBottom;
    private static final int abe = a.b.GridLayout_Layout_layout_column;
    private static final int abf = a.b.GridLayout_Layout_layout_columnSpan;
    private static final int abg = a.b.GridLayout_Layout_layout_columnWeight;
    private static final int abh = a.b.GridLayout_Layout_layout_row;
    private static final int abi = a.b.GridLayout_Layout_layout_rowSpan;
    private static final int abj = a.b.GridLayout_Layout_layout_rowWeight;
    private static final int abk = a.b.GridLayout_Layout_layout_gravity;
    public GridLayout.j abl = GridLayout.j.abq;
    public GridLayout.j abm = GridLayout.j.abq;
    
    static
    {
      GridLayout.f localf = new GridLayout.f(Integer.MIN_VALUE, -2147483647);
      aaX = localf;
      aaY = localf.size();
    }
    
    public g()
    {
      this(GridLayout.j.abq, GridLayout.j.abq, (byte)0);
    }
    
    /* Error */
    public g(Context paramContext, AttributeSet paramAttributeSet)
    {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: aload_2
      //   3: invokespecial 118	android/view/ViewGroup$MarginLayoutParams:<init>	(Landroid/content/Context;Landroid/util/AttributeSet;)V
      //   6: aload_0
      //   7: getstatic 112	android/support/v7/widget/GridLayout$j:abq	Landroid/support/v7/widget/GridLayout$j;
      //   10: putfield 120	android/support/v7/widget/GridLayout$g:abl	Landroid/support/v7/widget/GridLayout$j;
      //   13: aload_0
      //   14: getstatic 112	android/support/v7/widget/GridLayout$j:abq	Landroid/support/v7/widget/GridLayout$j;
      //   17: putfield 122	android/support/v7/widget/GridLayout$g:abm	Landroid/support/v7/widget/GridLayout$j;
      //   20: aload_1
      //   21: aload_2
      //   22: getstatic 126	android/support/v7/e/a$b:GridLayout_Layout	[I
      //   25: invokevirtual 132	android/content/Context:obtainStyledAttributes	(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
      //   28: astore 7
      //   30: aload 7
      //   32: getstatic 51	android/support/v7/widget/GridLayout$g:aaZ	I
      //   35: ldc 31
      //   37: invokevirtual 138	android/content/res/TypedArray:getDimensionPixelSize	(II)I
      //   40: istore 4
      //   42: aload_0
      //   43: aload 7
      //   45: getstatic 56	android/support/v7/widget/GridLayout$g:aba	I
      //   48: iload 4
      //   50: invokevirtual 138	android/content/res/TypedArray:getDimensionPixelSize	(II)I
      //   53: putfield 141	android/support/v7/widget/GridLayout$g:leftMargin	I
      //   56: aload_0
      //   57: aload 7
      //   59: getstatic 61	android/support/v7/widget/GridLayout$g:abb	I
      //   62: iload 4
      //   64: invokevirtual 138	android/content/res/TypedArray:getDimensionPixelSize	(II)I
      //   67: putfield 144	android/support/v7/widget/GridLayout$g:topMargin	I
      //   70: aload_0
      //   71: aload 7
      //   73: getstatic 66	android/support/v7/widget/GridLayout$g:abc	I
      //   76: iload 4
      //   78: invokevirtual 138	android/content/res/TypedArray:getDimensionPixelSize	(II)I
      //   81: putfield 147	android/support/v7/widget/GridLayout$g:rightMargin	I
      //   84: aload_0
      //   85: aload 7
      //   87: getstatic 71	android/support/v7/widget/GridLayout$g:abd	I
      //   90: iload 4
      //   92: invokevirtual 138	android/content/res/TypedArray:getDimensionPixelSize	(II)I
      //   95: putfield 150	android/support/v7/widget/GridLayout$g:bottomMargin	I
      //   98: aload 7
      //   100: invokevirtual 153	android/content/res/TypedArray:recycle	()V
      //   103: aload_1
      //   104: aload_2
      //   105: getstatic 126	android/support/v7/e/a$b:GridLayout_Layout	[I
      //   108: invokevirtual 132	android/content/Context:obtainStyledAttributes	(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
      //   111: astore_1
      //   112: aload_1
      //   113: getstatic 106	android/support/v7/widget/GridLayout$g:abk	I
      //   116: iconst_0
      //   117: invokevirtual 156	android/content/res/TypedArray:getInt	(II)I
      //   120: istore 4
      //   122: aload_1
      //   123: getstatic 76	android/support/v7/widget/GridLayout$g:abe	I
      //   126: ldc 31
      //   128: invokevirtual 156	android/content/res/TypedArray:getInt	(II)I
      //   131: istore 5
      //   133: aload_1
      //   134: getstatic 81	android/support/v7/widget/GridLayout$g:abf	I
      //   137: getstatic 44	android/support/v7/widget/GridLayout$g:aaY	I
      //   140: invokevirtual 156	android/content/res/TypedArray:getInt	(II)I
      //   143: istore 6
      //   145: aload_1
      //   146: getstatic 86	android/support/v7/widget/GridLayout$g:abg	I
      //   149: fconst_0
      //   150: invokevirtual 160	android/content/res/TypedArray:getFloat	(IF)F
      //   153: fstore_3
      //   154: aload_0
      //   155: iload 5
      //   157: iload 6
      //   159: iload 4
      //   161: iconst_1
      //   162: invokestatic 163	android/support/v7/widget/GridLayout:g	(IZ)Landroid/support/v7/widget/GridLayout$a;
      //   165: fload_3
      //   166: invokestatic 167	android/support/v7/widget/GridLayout:a	(IILandroid/support/v7/widget/GridLayout$a;F)Landroid/support/v7/widget/GridLayout$j;
      //   169: putfield 122	android/support/v7/widget/GridLayout$g:abm	Landroid/support/v7/widget/GridLayout$j;
      //   172: aload_1
      //   173: getstatic 91	android/support/v7/widget/GridLayout$g:abh	I
      //   176: ldc 31
      //   178: invokevirtual 156	android/content/res/TypedArray:getInt	(II)I
      //   181: istore 5
      //   183: aload_1
      //   184: getstatic 96	android/support/v7/widget/GridLayout$g:abi	I
      //   187: getstatic 44	android/support/v7/widget/GridLayout$g:aaY	I
      //   190: invokevirtual 156	android/content/res/TypedArray:getInt	(II)I
      //   193: istore 6
      //   195: aload_1
      //   196: getstatic 101	android/support/v7/widget/GridLayout$g:abj	I
      //   199: fconst_0
      //   200: invokevirtual 160	android/content/res/TypedArray:getFloat	(IF)F
      //   203: fstore_3
      //   204: aload_0
      //   205: iload 5
      //   207: iload 6
      //   209: iload 4
      //   211: iconst_0
      //   212: invokestatic 163	android/support/v7/widget/GridLayout:g	(IZ)Landroid/support/v7/widget/GridLayout$a;
      //   215: fload_3
      //   216: invokestatic 167	android/support/v7/widget/GridLayout:a	(IILandroid/support/v7/widget/GridLayout$a;F)Landroid/support/v7/widget/GridLayout$j;
      //   219: putfield 120	android/support/v7/widget/GridLayout$g:abl	Landroid/support/v7/widget/GridLayout$j;
      //   222: aload_1
      //   223: invokevirtual 153	android/content/res/TypedArray:recycle	()V
      //   226: return
      //   227: astore_1
      //   228: aload 7
      //   230: invokevirtual 153	android/content/res/TypedArray:recycle	()V
      //   233: aload_1
      //   234: athrow
      //   235: astore_2
      //   236: aload_1
      //   237: invokevirtual 153	android/content/res/TypedArray:recycle	()V
      //   240: aload_2
      //   241: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	242	0	this	g
      //   0	242	1	paramContext	Context
      //   0	242	2	paramAttributeSet	AttributeSet
      //   153	63	3	f	float
      //   40	170	4	i	int
      //   131	75	5	j	int
      //   143	65	6	k	int
      //   28	201	7	localTypedArray	TypedArray
      // Exception table:
      //   from	to	target	type
      //   30	98	227	finally
      //   112	222	235	finally
    }
    
    public g(g paramg)
    {
      super();
      this.abl = paramg.abl;
      this.abm = paramg.abm;
    }
    
    private g(GridLayout.j paramj1, GridLayout.j paramj2)
    {
      super(-2);
      setMargins(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
      this.abl = paramj1;
      this.abm = paramj2;
    }
    
    private g(GridLayout.j paramj1, GridLayout.j paramj2, byte paramByte)
    {
      this(paramj1, paramj2);
    }
    
    public g(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public g(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if ((paramObject == null) || (getClass() != paramObject.getClass())) {
          return false;
        }
        paramObject = (g)paramObject;
        if (!this.abm.equals(((g)paramObject).abm)) {
          return false;
        }
      } while (this.abl.equals(((g)paramObject).abl));
      return false;
    }
    
    public final int hashCode()
    {
      return this.abl.hashCode() * 31 + this.abm.hashCode();
    }
    
    protected final void setBaseAttributes(TypedArray paramTypedArray, int paramInt1, int paramInt2)
    {
      this.width = paramTypedArray.getLayoutDimension(paramInt1, -2);
      this.height = paramTypedArray.getLayoutDimension(paramInt2, -2);
    }
  }
  
  static final class h
  {
    public int value;
    
    public h()
    {
      this.value = Integer.MIN_VALUE;
    }
    
    public h(int paramInt)
    {
      this.value = paramInt;
    }
    
    public final String toString()
    {
      return Integer.toString(this.value);
    }
  }
  
  static final class i<K, V>
  {
    public final int[] abn;
    public final K[] abo;
    public final V[] abp;
    
    i(K[] paramArrayOfK, V[] paramArrayOfV)
    {
      this.abn = b(paramArrayOfK);
      this.abo = a(paramArrayOfK, this.abn);
      this.abp = a(paramArrayOfV, this.abn);
    }
    
    private static <K> K[] a(K[] paramArrayOfK, int[] paramArrayOfInt)
    {
      int j = paramArrayOfK.length;
      Object[] arrayOfObject = (Object[])Array.newInstance(paramArrayOfK.getClass().getComponentType(), GridLayout.d(paramArrayOfInt) + 1);
      int i = 0;
      while (i < j)
      {
        arrayOfObject[paramArrayOfInt[i]] = paramArrayOfK[i];
        i += 1;
      }
      return arrayOfObject;
    }
    
    private static <K> int[] b(K[] paramArrayOfK)
    {
      int j = paramArrayOfK.length;
      int[] arrayOfInt = new int[j];
      HashMap localHashMap = new HashMap();
      int i = 0;
      while (i < j)
      {
        K ? = paramArrayOfK[i];
        Integer localInteger2 = (Integer)localHashMap.get(?);
        Integer localInteger1 = localInteger2;
        if (localInteger2 == null)
        {
          localInteger1 = Integer.valueOf(localHashMap.size());
          localHashMap.put(?, localInteger1);
        }
        arrayOfInt[i] = localInteger1.intValue();
        i += 1;
      }
      return arrayOfInt;
    }
    
    public final V bu(int paramInt)
    {
      return (V)this.abp[this.abn[paramInt]];
    }
  }
  
  public static class j
  {
    static final j abq = ;
    final GridLayout.f aal;
    final boolean abr;
    final GridLayout.a abs;
    final float weight;
    
    j(boolean paramBoolean, int paramInt1, int paramInt2, GridLayout.a parama, float paramFloat)
    {
      this(paramBoolean, new GridLayout.f(paramInt1, paramInt1 + paramInt2), parama, paramFloat);
    }
    
    private j(boolean paramBoolean, GridLayout.f paramf, GridLayout.a parama, float paramFloat)
    {
      this.abr = paramBoolean;
      this.aal = paramf;
      this.abs = parama;
      this.weight = paramFloat;
    }
    
    public final GridLayout.a V(boolean paramBoolean)
    {
      if (this.abs != GridLayout.ZW) {
        return this.abs;
      }
      if (this.weight == 0.0F)
      {
        if (paramBoolean) {
          return GridLayout.aab;
        }
        return GridLayout.aag;
      }
      return GridLayout.aah;
    }
    
    final j a(GridLayout.f paramf)
    {
      return new j(this.abr, paramf, this.abs, this.weight);
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if ((paramObject == null) || (getClass() != paramObject.getClass())) {
          return false;
        }
        paramObject = (j)paramObject;
        if (!this.abs.equals(((j)paramObject).abs)) {
          return false;
        }
      } while (this.aal.equals(((j)paramObject).aal));
      return false;
    }
    
    public int hashCode()
    {
      return this.aal.hashCode() * 31 + this.abs.hashCode();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/GridLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */