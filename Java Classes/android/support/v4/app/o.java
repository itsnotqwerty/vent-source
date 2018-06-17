package android.support.v4.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.g.b;
import android.support.v4.g.e;
import android.support.v4.g.j;
import android.support.v4.view.r;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater.Factory2;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

final class o
  extends n
  implements LayoutInflater.Factory2
{
  static boolean DEBUG = false;
  static Field xJ = null;
  static final Interpolator xX = new DecelerateInterpolator(2.5F);
  static final Interpolator xY = new DecelerateInterpolator(1.5F);
  static final Interpolator xZ = new AccelerateInterpolator(2.5F);
  static final Interpolator ya = new AccelerateInterpolator(1.5F);
  m mHost;
  boolean mStopped;
  ArrayList<i> xA;
  ArrayList<c> xB;
  ArrayList<Integer> xC;
  ArrayList<Object> xD;
  private final CopyOnWriteArrayList<j<Object, Boolean>> xE = new CopyOnWriteArrayList();
  int xF = 0;
  k xG;
  i xH;
  i xI;
  boolean xK;
  boolean xL;
  boolean xM;
  String xN;
  boolean xO;
  ArrayList<c> xP;
  ArrayList<Boolean> xQ;
  ArrayList<i> xR;
  Bundle xS = null;
  SparseArray<Parcelable> xT = null;
  ArrayList<i> xU;
  p xV;
  Runnable xW = new Runnable()
  {
    public final void run()
    {
      o.this.execPendingActions();
    }
  };
  ArrayList<g> xu;
  boolean xv;
  int xw = 0;
  final ArrayList<i> xx = new ArrayList();
  SparseArray<i> xy;
  ArrayList<c> xz;
  
  private int a(ArrayList<c> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2, b<i> paramb)
  {
    int j = paramInt2 - 1;
    int i = paramInt2;
    c localc;
    int k;
    if (j >= paramInt1)
    {
      localc = (c)paramArrayList.get(j);
      boolean bool = ((Boolean)paramArrayList1.get(j)).booleanValue();
      k = 0;
      label44:
      if (k < localc.wk.size()) {
        if (c.b((c.a)localc.wk.get(k)))
        {
          k = 1;
          label79:
          if ((k == 0) || (localc.a(paramArrayList, j + 1, paramInt2))) {
            break label223;
          }
          k = 1;
          label102:
          if (k == 0) {
            break label241;
          }
          if (this.xU == null) {
            this.xU = new ArrayList();
          }
          i locali = new i(localc, bool);
          this.xU.add(locali);
          localc.a(locali);
          if (!bool) {
            break label229;
          }
          localc.cB();
          label165:
          i -= 1;
          if (j != i)
          {
            paramArrayList.remove(j);
            paramArrayList.add(i, localc);
          }
          b(paramb);
        }
      }
    }
    label223:
    label229:
    label241:
    for (;;)
    {
      j -= 1;
      break;
      k += 1;
      break label44;
      k = 0;
      break label79;
      k = 0;
      break label102;
      localc.n(false);
      break label165;
      return i;
    }
  }
  
  private static c a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    AnimationSet localAnimationSet = new AnimationSet(false);
    Object localObject = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 0.5F, 1, 0.5F);
    ((ScaleAnimation)localObject).setInterpolator(xX);
    ((ScaleAnimation)localObject).setDuration(220L);
    localAnimationSet.addAnimation((Animation)localObject);
    localObject = new AlphaAnimation(paramFloat3, paramFloat4);
    ((AlphaAnimation)localObject).setInterpolator(xY);
    ((AlphaAnimation)localObject).setDuration(220L);
    localAnimationSet.addAnimation((Animation)localObject);
    return new c(localAnimationSet, (byte)0);
  }
  
  private c a(i parami, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    int j = parami.getNextAnim();
    Animation localAnimation = parami.onCreateAnimation(paramInt1, paramBoolean, j);
    if (localAnimation != null) {
      return new c(localAnimation, (byte)0);
    }
    parami = parami.onCreateAnimator(paramInt1, paramBoolean, j);
    if (parami != null) {
      return new c(parami, (byte)0);
    }
    if (j != 0)
    {
      boolean bool = "anim".equals(this.mHost.mContext.getResources().getResourceTypeName(j));
      if (bool) {}
      for (;;)
      {
        try
        {
          parami = AnimationUtils.loadAnimation(this.mHost.mContext, j);
          if (parami != null)
          {
            parami = new c(parami, (byte)0);
            return parami;
          }
        }
        catch (Resources.NotFoundException parami)
        {
          throw parami;
          i = 1;
          if (i != 0) {
            break label199;
          }
          try
          {
            parami = AnimatorInflater.loadAnimator(this.mHost.mContext, j);
            if (parami == null) {
              break label199;
            }
            parami = new c(parami, (byte)0);
            return parami;
          }
          catch (RuntimeException parami)
          {
            if (!bool) {
              break;
            }
          }
          throw parami;
        }
        catch (RuntimeException parami) {}
        i = 0;
      }
      parami = AnimationUtils.loadAnimation(this.mHost.mContext, j);
      if (parami != null) {
        return new c(parami, (byte)0);
      }
    }
    label199:
    if (paramInt1 == 0) {
      return null;
    }
    int i = -1;
    switch (paramInt1)
    {
    default: 
      paramInt1 = i;
    }
    while (paramInt1 < 0)
    {
      return null;
      if (paramBoolean)
      {
        paramInt1 = 1;
      }
      else
      {
        paramInt1 = 2;
        continue;
        if (paramBoolean)
        {
          paramInt1 = 3;
        }
        else
        {
          paramInt1 = 4;
          continue;
          if (paramBoolean) {
            paramInt1 = 5;
          } else {
            paramInt1 = 6;
          }
        }
      }
    }
    switch (paramInt1)
    {
    default: 
      paramInt1 = paramInt2;
      if (paramInt2 == 0)
      {
        paramInt1 = paramInt2;
        if (this.mHost.onHasWindowAnimations()) {
          paramInt1 = this.mHost.onGetWindowAnimations();
        }
      }
      if (paramInt1 == 0) {
        return null;
      }
      break;
    case 1: 
      return a(1.125F, 1.0F, 0.0F, 1.0F);
    case 2: 
      return a(1.0F, 0.975F, 1.0F, 0.0F);
    case 3: 
      return a(0.975F, 1.0F, 0.0F, 1.0F);
    case 4: 
      return a(1.0F, 1.075F, 1.0F, 0.0F);
    case 5: 
      return d(0.0F, 1.0F);
    case 6: 
      return d(1.0F, 0.0F);
    }
    return null;
  }
  
  private static Animation.AnimationListener a(Animation paramAnimation)
  {
    try
    {
      if (xJ == null)
      {
        Field localField = Animation.class.getDeclaredField("mListener");
        xJ = localField;
        localField.setAccessible(true);
      }
      paramAnimation = (Animation.AnimationListener)xJ.get(paramAnimation);
      return paramAnimation;
    }
    catch (NoSuchFieldException paramAnimation)
    {
      Log.e("FragmentManager", "No field with the name mListener is found in Animation class", paramAnimation);
      return null;
    }
    catch (IllegalAccessException paramAnimation)
    {
      Log.e("FragmentManager", "Cannot access Animation's mListener field", paramAnimation);
    }
    return null;
  }
  
  /* Error */
  private void a(int paramInt, c paramc)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 362	android/support/v4/app/o:xB	Ljava/util/ArrayList;
    //   6: ifnonnull +14 -> 20
    //   9: aload_0
    //   10: new 137	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 138	java/util/ArrayList:<init>	()V
    //   17: putfield 362	android/support/v4/app/o:xB	Ljava/util/ArrayList;
    //   20: aload_0
    //   21: getfield 362	android/support/v4/app/o:xB	Ljava/util/ArrayList;
    //   24: invokevirtual 176	java/util/ArrayList:size	()I
    //   27: istore 4
    //   29: iload 4
    //   31: istore_3
    //   32: iload_1
    //   33: iload 4
    //   35: if_icmpge +56 -> 91
    //   38: getstatic 109	android/support/v4/app/o:DEBUG	Z
    //   41: ifeq +37 -> 78
    //   44: ldc_w 350
    //   47: new 364	java/lang/StringBuilder
    //   50: dup
    //   51: ldc_w 366
    //   54: invokespecial 369	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   57: iload_1
    //   58: invokevirtual 373	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   61: ldc_w 375
    //   64: invokevirtual 378	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload_2
    //   68: invokevirtual 381	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 385	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokestatic 389	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   77: pop
    //   78: aload_0
    //   79: getfield 362	android/support/v4/app/o:xB	Ljava/util/ArrayList;
    //   82: iload_1
    //   83: aload_2
    //   84: invokevirtual 393	java/util/ArrayList:set	(ILjava/lang/Object;)Ljava/lang/Object;
    //   87: pop
    //   88: aload_0
    //   89: monitorexit
    //   90: return
    //   91: iload_3
    //   92: iload_1
    //   93: if_icmpge +79 -> 172
    //   96: aload_0
    //   97: getfield 362	android/support/v4/app/o:xB	Ljava/util/ArrayList;
    //   100: aconst_null
    //   101: invokevirtual 193	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   104: pop
    //   105: aload_0
    //   106: getfield 395	android/support/v4/app/o:xC	Ljava/util/ArrayList;
    //   109: ifnonnull +14 -> 123
    //   112: aload_0
    //   113: new 137	java/util/ArrayList
    //   116: dup
    //   117: invokespecial 138	java/util/ArrayList:<init>	()V
    //   120: putfield 395	android/support/v4/app/o:xC	Ljava/util/ArrayList;
    //   123: getstatic 109	android/support/v4/app/o:DEBUG	Z
    //   126: ifeq +27 -> 153
    //   129: ldc_w 350
    //   132: new 364	java/lang/StringBuilder
    //   135: dup
    //   136: ldc_w 397
    //   139: invokespecial 369	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   142: iload_3
    //   143: invokevirtual 373	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   146: invokevirtual 385	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: invokestatic 389	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   152: pop
    //   153: aload_0
    //   154: getfield 395	android/support/v4/app/o:xC	Ljava/util/ArrayList;
    //   157: iload_3
    //   158: invokestatic 403	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   161: invokevirtual 193	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   164: pop
    //   165: iload_3
    //   166: iconst_1
    //   167: iadd
    //   168: istore_3
    //   169: goto -78 -> 91
    //   172: getstatic 109	android/support/v4/app/o:DEBUG	Z
    //   175: ifeq +37 -> 212
    //   178: ldc_w 350
    //   181: new 364	java/lang/StringBuilder
    //   184: dup
    //   185: ldc_w 405
    //   188: invokespecial 369	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   191: iload_1
    //   192: invokevirtual 373	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   195: ldc_w 407
    //   198: invokevirtual 378	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: aload_2
    //   202: invokevirtual 381	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   205: invokevirtual 385	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   208: invokestatic 389	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   211: pop
    //   212: aload_0
    //   213: getfield 362	android/support/v4/app/o:xB	Ljava/util/ArrayList;
    //   216: aload_2
    //   217: invokevirtual 193	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   220: pop
    //   221: goto -133 -> 88
    //   224: astore_2
    //   225: aload_0
    //   226: monitorexit
    //   227: aload_2
    //   228: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	229	0	this	o
    //   0	229	1	paramInt	int
    //   0	229	2	paramc	c
    //   31	138	3	i	int
    //   27	9	4	j	int
    // Exception table:
    //   from	to	target	type
    //   2	20	224	finally
    //   20	29	224	finally
    //   38	78	224	finally
    //   78	88	224	finally
    //   88	90	224	finally
    //   96	123	224	finally
    //   123	153	224	finally
    //   153	165	224	finally
    //   172	212	224	finally
    //   212	221	224	finally
    //   225	227	224	finally
  }
  
  private void a(i parami, Context paramContext, boolean paramBoolean)
  {
    if (this.xH != null)
    {
      n localn = this.xH.getFragmentManager();
      if ((localn instanceof o)) {
        ((o)localn).a(parami, paramContext, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      paramContext = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)paramContext.second).booleanValue();
      }
    }
  }
  
  private void a(i parami, Bundle paramBundle, boolean paramBoolean)
  {
    if (this.xH != null)
    {
      n localn = this.xH.getFragmentManager();
      if ((localn instanceof o)) {
        ((o)localn).a(parami, paramBundle, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      paramBundle = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)paramBundle.second).booleanValue();
      }
    }
  }
  
  private void a(i parami, View paramView, Bundle paramBundle, boolean paramBoolean)
  {
    if (this.xH != null)
    {
      n localn = this.xH.getFragmentManager();
      if ((localn instanceof o)) {
        ((o)localn).a(parami, paramView, paramBundle, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      paramView = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)paramView.second).booleanValue();
      }
    }
  }
  
  static void a(p paramp)
  {
    if (paramp == null) {}
    for (;;)
    {
      return;
      Object localObject = paramp.ys;
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ((i)((Iterator)localObject).next()).mRetaining = true;
        }
      }
      paramp = paramp.yt;
      if (paramp != null)
      {
        paramp = paramp.iterator();
        while (paramp.hasNext()) {
          a((p)paramp.next());
        }
      }
    }
  }
  
  private static void a(b<i> paramb)
  {
    int j = paramb.size();
    int i = 0;
    while (i < j)
    {
      i locali = (i)paramb.Et[i];
      if (!locali.mAdded)
      {
        View localView = locali.getView();
        locali.mPostponedAlpha = localView.getAlpha();
        localView.setAlpha(0.0F);
      }
      i += 1;
    }
  }
  
  private static void a(View paramView, c paramc)
  {
    int j = 0;
    if ((paramView == null) || (paramc == null)) {
      return;
    }
    int i = j;
    if (paramView != null)
    {
      if (paramc != null) {
        break label50;
      }
      i = j;
    }
    label23:
    label50:
    boolean bool;
    while (i != 0)
    {
      if (paramc.yk == null) {
        break label183;
      }
      paramc.yk.addListener(new d(paramView));
      return;
      i = j;
      if (Build.VERSION.SDK_INT >= 19)
      {
        i = j;
        if (paramView.getLayerType() == 0)
        {
          i = j;
          if (r.Y(paramView))
          {
            if (!(paramc.yj instanceof AlphaAnimation)) {
              break label103;
            }
            bool = true;
          }
        }
      }
    }
    for (;;)
    {
      i = j;
      if (!bool) {
        break label23;
      }
      i = 1;
      break label23;
      break;
      label103:
      if ((paramc.yj instanceof AnimationSet))
      {
        localObject = ((AnimationSet)paramc.yj).getAnimations();
        i = 0;
        for (;;)
        {
          if (i >= ((List)localObject).size()) {
            break label165;
          }
          if ((((List)localObject).get(i) instanceof AlphaAnimation))
          {
            bool = true;
            break;
          }
          i += 1;
        }
        label165:
        bool = false;
      }
      else
      {
        bool = d(paramc.yk);
      }
    }
    label183:
    Object localObject = a(paramc.yj);
    paramView.setLayerType(2, null);
    paramc.yj.setAnimationListener(new a(paramView, (Animation.AnimationListener)localObject));
  }
  
  private void a(RuntimeException paramRuntimeException)
  {
    Log.e("FragmentManager", paramRuntimeException.getMessage());
    Log.e("FragmentManager", "Activity state:");
    PrintWriter localPrintWriter = new PrintWriter(new e("FragmentManager"));
    if (this.mHost != null) {}
    for (;;)
    {
      try
      {
        this.mHost.a("  ", localPrintWriter, new String[0]);
        throw paramRuntimeException;
      }
      catch (Exception localException1)
      {
        Log.e("FragmentManager", "Failed dumping state", localException1);
        continue;
      }
      try
      {
        dump("  ", null, localException1, new String[0]);
      }
      catch (Exception localException2)
      {
        Log.e("FragmentManager", "Failed dumping state", localException2);
      }
    }
  }
  
  private void a(ArrayList<c> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2)
  {
    boolean bool = ((c)paramArrayList.get(paramInt1)).wA;
    Object localObject;
    int j;
    label55:
    c localc;
    if (this.xR == null)
    {
      this.xR = new ArrayList();
      this.xR.addAll(this.xx);
      localObject = this.xI;
      j = paramInt1;
      i = 0;
      if (j >= paramInt2) {
        break label158;
      }
      localc = (c)paramArrayList.get(j);
      if (((Boolean)paramArrayList1.get(j)).booleanValue()) {
        break label136;
      }
      localObject = localc.a(this.xR, (i)localObject);
      label101:
      if ((i == 0) && (!localc.wr)) {
        break label152;
      }
    }
    label136:
    label152:
    for (int i = 1;; i = 0)
    {
      j += 1;
      break label55;
      this.xR.clear();
      break;
      localObject = localc.b(this.xR, (i)localObject);
      break label101;
    }
    label158:
    this.xR.clear();
    if (!bool) {
      u.a(this, paramArrayList, paramArrayList1, paramInt1, paramInt2, false);
    }
    b(paramArrayList, paramArrayList1, paramInt1, paramInt2);
    int k;
    if (bool)
    {
      localObject = new b();
      b((b)localObject);
      k = a(paramArrayList, paramArrayList1, paramInt1, paramInt2, (b)localObject);
      a((b)localObject);
    }
    for (;;)
    {
      j = paramInt1;
      if (k != paramInt1)
      {
        j = paramInt1;
        if (bool)
        {
          u.a(this, paramArrayList, paramArrayList1, paramInt1, k, true);
          c(this.xF, true);
          j = paramInt1;
        }
      }
      while (j < paramInt2)
      {
        localObject = (c)paramArrayList.get(j);
        if ((((Boolean)paramArrayList1.get(j)).booleanValue()) && (((c)localObject).mIndex >= 0)) {
          paramInt1 = ((c)localObject).mIndex;
        }
        try
        {
          this.xB.set(paramInt1, null);
          if (this.xC == null) {
            this.xC = new ArrayList();
          }
          if (DEBUG) {
            Log.v("FragmentManager", "Freeing back stack index " + paramInt1);
          }
          this.xC.add(Integer.valueOf(paramInt1));
          ((c)localObject).mIndex = -1;
          ((c)localObject).cA();
          j += 1;
        }
        finally {}
      }
      if (i != 0) {
        cP();
      }
      return;
      k = paramInt2;
    }
  }
  
  public static int ab(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 0;
    case 4097: 
      return 8194;
    case 8194: 
      return 4097;
    }
    return 4099;
  }
  
  private i b(Bundle paramBundle, String paramString)
  {
    int i = paramBundle.getInt(paramString, -1);
    if (i == -1) {
      paramBundle = null;
    }
    i locali;
    do
    {
      return paramBundle;
      locali = (i)this.xy.get(i);
      paramBundle = locali;
    } while (locali != null);
    a(new IllegalStateException("Fragment no longer exists for key " + paramString + ": index " + i));
    return locali;
  }
  
  private void b(i parami, Context paramContext, boolean paramBoolean)
  {
    if (this.xH != null)
    {
      n localn = this.xH.getFragmentManager();
      if ((localn instanceof o)) {
        ((o)localn).b(parami, paramContext, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      paramContext = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)paramContext.second).booleanValue();
      }
    }
  }
  
  private void b(i parami, Bundle paramBundle, boolean paramBoolean)
  {
    if (this.xH != null)
    {
      n localn = this.xH.getFragmentManager();
      if ((localn instanceof o)) {
        ((o)localn).b(parami, paramBundle, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      paramBundle = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)paramBundle.second).booleanValue();
      }
    }
  }
  
  private void b(i parami, boolean paramBoolean)
  {
    Object localObject;
    if (this.xH != null)
    {
      localObject = this.xH.getFragmentManager();
      if ((localObject instanceof o)) {
        ((o)localObject).b(parami, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      localObject = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)((j)localObject).second).booleanValue();
      }
    }
  }
  
  private void b(b<i> paramb)
  {
    if (this.xF <= 0) {}
    for (;;)
    {
      return;
      int j = Math.min(this.xF, 4);
      int k = this.xx.size();
      int i = 0;
      while (i < k)
      {
        i locali = (i)this.xx.get(i);
        if (locali.mState < j)
        {
          a(locali, j, locali.getNextAnim(), locali.getNextTransition(), false);
          if ((locali.mView != null) && (!locali.mHidden) && (locali.mIsNewlyAdded)) {
            paramb.add(locali);
          }
        }
        i += 1;
      }
    }
  }
  
  private void b(ArrayList<c> paramArrayList, ArrayList<Boolean> paramArrayList1)
  {
    int i;
    int j;
    label12:
    i locali;
    int k;
    if (this.xU == null)
    {
      i = 0;
      j = 0;
      if (j >= i) {
        return;
      }
      locali = (i)this.xU.get(j);
      if ((paramArrayList == null) || (locali.yp)) {
        break label101;
      }
      k = paramArrayList.indexOf(locali.yq);
      if ((k == -1) || (!((Boolean)paramArrayList1.get(k)).booleanValue())) {
        break label101;
      }
      locali.cT();
    }
    for (;;)
    {
      j += 1;
      break label12;
      i = this.xU.size();
      break;
      label101:
      if (locali.yr == 0) {}
      int m;
      for (k = 1;; k = 0)
      {
        if (k == 0)
        {
          m = j;
          k = i;
          if (paramArrayList == null) {
            break label240;
          }
          m = j;
          k = i;
          if (!locali.yq.a(paramArrayList, 0, paramArrayList.size())) {
            break label240;
          }
        }
        this.xU.remove(j);
        m = j - 1;
        k = i - 1;
        if ((paramArrayList == null) || (locali.yp)) {
          break label235;
        }
        i = paramArrayList.indexOf(locali.yq);
        if ((i == -1) || (!((Boolean)paramArrayList1.get(i)).booleanValue())) {
          break label235;
        }
        locali.cT();
        j = m;
        i = k;
        break;
      }
      label235:
      locali.cS();
      label240:
      j = m;
      i = k;
    }
  }
  
  private static void b(ArrayList<c> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
    {
      c localc = (c)paramArrayList.get(paramInt1);
      boolean bool;
      if (((Boolean)paramArrayList1.get(paramInt1)).booleanValue())
      {
        localc.V(-1);
        if (paramInt1 == paramInt2 - 1)
        {
          bool = true;
          label45:
          localc.n(bool);
        }
      }
      for (;;)
      {
        paramInt1 += 1;
        break;
        bool = false;
        break label45;
        localc.V(1);
        localc.cB();
      }
    }
  }
  
  private void c(i parami, Bundle paramBundle, boolean paramBoolean)
  {
    if (this.xH != null)
    {
      n localn = this.xH.getFragmentManager();
      if ((localn instanceof o)) {
        ((o)localn).c(parami, paramBundle, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      paramBundle = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)paramBundle.second).booleanValue();
      }
    }
  }
  
  private void c(i parami, boolean paramBoolean)
  {
    Object localObject;
    if (this.xH != null)
    {
      localObject = this.xH.getFragmentManager();
      if ((localObject instanceof o)) {
        ((o)localObject).c(parami, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      localObject = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)((j)localObject).second).booleanValue();
      }
    }
  }
  
  private boolean cH()
  {
    execPendingActions();
    cL();
    if (this.xI != null)
    {
      n localn = this.xI.peekChildFragmentManager();
      if ((localn != null) && (localn.popBackStackImmediate())) {
        return true;
      }
    }
    boolean bool = a(this.xP, this.xQ, null, -1, 0);
    if (bool) {
      this.xv = true;
    }
    try
    {
      c(this.xP, this.xQ);
      cM();
      cO();
      return bool;
    }
    finally
    {
      cM();
    }
  }
  
  private void cI()
  {
    if (this.xy == null) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < this.xy.size())
      {
        i locali = (i)this.xy.valueAt(i);
        if (locali != null) {
          d(locali);
        }
        i += 1;
      }
    }
  }
  
  private void cJ()
  {
    if (isStateSaved()) {
      throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
    if (this.xN != null) {
      throw new IllegalStateException("Can not perform this action inside of " + this.xN);
    }
  }
  
  private void cK()
  {
    int j = 1;
    label44:
    label73:
    label92:
    label97:
    label100:
    for (;;)
    {
      int i;
      try
      {
        if ((this.xU == null) || (this.xU.isEmpty())) {
          break label92;
        }
        i = 1;
        if ((this.xu == null) || (this.xu.size() != 1)) {
          break label97;
        }
      }
      finally {}
      this.mHost.mHandler.removeCallbacks(this.xW);
      this.mHost.mHandler.post(this.xW);
      return;
      for (;;)
      {
        if (i != 0) {
          break label100;
        }
        if (j == 0) {
          break label73;
        }
        break label44;
        i = 0;
        break;
        j = 0;
      }
    }
  }
  
  private void cN()
  {
    if (this.xU != null) {
      while (!this.xU.isEmpty()) {
        ((i)this.xU.remove(0)).cS();
      }
    }
  }
  
  private void cP()
  {
    if (this.xD != null)
    {
      int i = 0;
      while (i < this.xD.size())
      {
        this.xD.get(i);
        i += 1;
      }
    }
  }
  
  private void cQ()
  {
    if (this.xy != null)
    {
      int i = 0;
      Object localObject1 = null;
      Object localObject3 = null;
      Object localObject7;
      for (Object localObject2 = null;; localObject2 = localObject7)
      {
        localObject6 = localObject1;
        localObject5 = localObject3;
        localObject4 = localObject2;
        if (i >= this.xy.size()) {
          break;
        }
        i locali = (i)this.xy.valueAt(i);
        localObject5 = localObject1;
        localObject6 = localObject3;
        localObject7 = localObject2;
        if (locali != null)
        {
          localObject4 = localObject2;
          int j;
          if (locali.mRetainInstance)
          {
            localObject5 = localObject2;
            if (localObject2 == null) {
              localObject5 = new ArrayList();
            }
            ((ArrayList)localObject5).add(locali);
            if (locali.mTarget == null) {
              break label253;
            }
            j = locali.mTarget.mIndex;
            locali.mTargetIndex = j;
            localObject4 = localObject5;
            if (DEBUG)
            {
              Log.v("FragmentManager", "retainNonConfig: keeping retained " + locali);
              localObject4 = localObject5;
            }
          }
          if (locali.mChildFragmentManager != null) {
            locali.mChildFragmentManager.cQ();
          }
          for (localObject5 = locali.mChildFragmentManager.xV;; localObject5 = locali.mChildNonConfig)
          {
            localObject2 = localObject3;
            if (localObject3 != null) {
              break label268;
            }
            localObject2 = localObject3;
            if (localObject5 == null) {
              break label268;
            }
            localObject3 = new ArrayList(this.xy.size());
            j = 0;
            for (;;)
            {
              localObject2 = localObject3;
              if (j >= i) {
                break;
              }
              ((ArrayList)localObject3).add(null);
              j += 1;
            }
            label253:
            j = -1;
            break;
          }
          label268:
          if (localObject2 != null) {
            ((ArrayList)localObject2).add(localObject5);
          }
          localObject3 = localObject1;
          if (localObject1 == null)
          {
            localObject3 = localObject1;
            if (locali.mViewModelStore != null)
            {
              localObject1 = new ArrayList(this.xy.size());
              j = 0;
              for (;;)
              {
                localObject3 = localObject1;
                if (j >= i) {
                  break;
                }
                ((ArrayList)localObject1).add(null);
                j += 1;
              }
            }
          }
          localObject5 = localObject3;
          localObject6 = localObject2;
          localObject7 = localObject4;
          if (localObject3 != null)
          {
            ((ArrayList)localObject3).add(locali.mViewModelStore);
            localObject7 = localObject4;
            localObject6 = localObject2;
            localObject5 = localObject3;
          }
        }
        i += 1;
        localObject1 = localObject5;
        localObject3 = localObject6;
      }
    }
    Object localObject6 = null;
    Object localObject5 = null;
    Object localObject4 = null;
    if ((localObject4 == null) && (localObject5 == null) && (localObject6 == null))
    {
      this.xV = null;
      return;
    }
    this.xV = new p((List)localObject4, (List)localObject5, (List)localObject6);
  }
  
  private static c d(float paramFloat1, float paramFloat2)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat1, paramFloat2);
    localAlphaAnimation.setInterpolator(xY);
    localAlphaAnimation.setDuration(220L);
    return new c(localAlphaAnimation, (byte)0);
  }
  
  private void d(i parami, Bundle paramBundle, boolean paramBoolean)
  {
    if (this.xH != null)
    {
      n localn = this.xH.getFragmentManager();
      if ((localn instanceof o)) {
        ((o)localn).d(parami, paramBundle, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      paramBundle = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)paramBundle.second).booleanValue();
      }
    }
  }
  
  private void d(i parami, boolean paramBoolean)
  {
    Object localObject;
    if (this.xH != null)
    {
      localObject = this.xH.getFragmentManager();
      if ((localObject instanceof o)) {
        ((o)localObject).d(parami, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      localObject = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)((j)localObject).second).booleanValue();
      }
    }
  }
  
  private static boolean d(Animator paramAnimator)
  {
    if (paramAnimator == null) {}
    for (;;)
    {
      return false;
      int i;
      if ((paramAnimator instanceof ValueAnimator))
      {
        paramAnimator = ((ValueAnimator)paramAnimator).getValues();
        i = 0;
        while (i < paramAnimator.length)
        {
          if ("alpha".equals(paramAnimator[i].getPropertyName())) {
            return true;
          }
          i += 1;
        }
      }
      else if ((paramAnimator instanceof AnimatorSet))
      {
        paramAnimator = ((AnimatorSet)paramAnimator).getChildAnimations();
        i = 0;
        while (i < paramAnimator.size())
        {
          if (d((Animator)paramAnimator.get(i))) {
            return true;
          }
          i += 1;
        }
      }
    }
  }
  
  private boolean d(ArrayList<c> paramArrayList, ArrayList<Boolean> paramArrayList1)
  {
    try
    {
      if ((this.xu == null) || (this.xu.size() == 0)) {
        return false;
      }
      int j = this.xu.size();
      int i = 0;
      boolean bool = false;
      while (i < j)
      {
        bool |= ((g)this.xu.get(i)).a(paramArrayList, paramArrayList1);
        i += 1;
      }
      this.xu.clear();
      this.mHost.mHandler.removeCallbacks(this.xW);
      return bool;
    }
    finally {}
  }
  
  private void e(i parami)
  {
    a(parami, this.xF, 0, 0, false);
  }
  
  private void e(i parami, boolean paramBoolean)
  {
    Object localObject;
    if (this.xH != null)
    {
      localObject = this.xH.getFragmentManager();
      if ((localObject instanceof o)) {
        ((o)localObject).e(parami, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      localObject = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)((j)localObject).second).booleanValue();
      }
    }
  }
  
  private void f(i parami, boolean paramBoolean)
  {
    Object localObject;
    if (this.xH != null)
    {
      localObject = this.xH.getFragmentManager();
      if ((localObject instanceof o)) {
        ((o)localObject).f(parami, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      localObject = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)((j)localObject).second).booleanValue();
      }
    }
  }
  
  private void g(i parami, boolean paramBoolean)
  {
    Object localObject;
    if (this.xH != null)
    {
      localObject = this.xH.getFragmentManager();
      if ((localObject instanceof o)) {
        ((o)localObject).g(parami, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      localObject = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)((j)localObject).second).booleanValue();
      }
    }
  }
  
  private void h(i parami, boolean paramBoolean)
  {
    Object localObject;
    if (this.xH != null)
    {
      localObject = this.xH.getFragmentManager();
      if ((localObject instanceof o)) {
        ((o)localObject).h(parami, true);
      }
    }
    parami = this.xE.iterator();
    while (parami.hasNext())
    {
      localObject = (j)parami.next();
      if (paramBoolean) {
        ((Boolean)((j)localObject).second).booleanValue();
      }
    }
  }
  
  public static void i(i parami)
  {
    boolean bool = true;
    if (DEBUG) {
      Log.v("FragmentManager", "hide: " + parami);
    }
    if (!parami.mHidden)
    {
      parami.mHidden = true;
      if (parami.mHiddenChanged) {
        break label57;
      }
    }
    for (;;)
    {
      parami.mHiddenChanged = bool;
      return;
      label57:
      bool = false;
    }
  }
  
  public static void j(i parami)
  {
    boolean bool = false;
    if (DEBUG) {
      Log.v("FragmentManager", "show: " + parami);
    }
    if (parami.mHidden)
    {
      parami.mHidden = false;
      if (!parami.mHiddenChanged) {
        bool = true;
      }
      parami.mHiddenChanged = bool;
    }
  }
  
  private void m(i parami)
  {
    if (parami.mInnerView == null) {
      return;
    }
    if (this.xT == null) {
      this.xT = new SparseArray();
    }
    for (;;)
    {
      parami.mInnerView.saveHierarchyState(this.xT);
      if (this.xT.size() <= 0) {
        break;
      }
      parami.mSavedViewState = this.xT;
      this.xT = null;
      return;
      this.xT.clear();
    }
  }
  
  public final i Y(int paramInt)
  {
    int i = this.xx.size() - 1;
    Object localObject;
    while (i >= 0)
    {
      localObject = (i)this.xx.get(i);
      if ((localObject != null) && (((i)localObject).mFragmentId == paramInt)) {
        return (i)localObject;
      }
      i -= 1;
    }
    if (this.xy != null)
    {
      i = this.xy.size() - 1;
      for (;;)
      {
        if (i < 0) {
          break label105;
        }
        i locali = (i)this.xy.valueAt(i);
        if (locali != null)
        {
          localObject = locali;
          if (locali.mFragmentId == paramInt) {
            break;
          }
        }
        i -= 1;
      }
    }
    label105:
    return null;
  }
  
  public final void Z(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("Bad id: " + paramInt);
    }
    a(new h(paramInt), false);
  }
  
  public final int a(c paramc)
  {
    try
    {
      if ((this.xC == null) || (this.xC.size() <= 0))
      {
        if (this.xB == null) {
          this.xB = new ArrayList();
        }
        i = this.xB.size();
        if (DEBUG) {
          Log.v("FragmentManager", "Setting back stack index " + i + " to " + paramc);
        }
        this.xB.add(paramc);
        return i;
      }
      int i = ((Integer)this.xC.remove(this.xC.size() - 1)).intValue();
      if (DEBUG) {
        Log.v("FragmentManager", "Adding back stack index " + i + " with " + paramc);
      }
      this.xB.set(i, paramc);
      return i;
    }
    finally {}
  }
  
  final void a(Parcelable arg1, p paramp)
  {
    if (??? == null) {}
    q localq;
    do
    {
      return;
      localq = (q)???;
    } while (localq.yv == null);
    List localList = null;
    Object localObject1;
    int i;
    int j;
    Object localObject2;
    Object localObject3;
    if (paramp != null)
    {
      localObject1 = paramp.ys;
      localList = paramp.yt;
      ??? = paramp.yu;
      if (localObject1 != null)
      {
        i = ((List)localObject1).size();
        j = 0;
      }
      for (;;)
      {
        if (j >= i) {
          break label308;
        }
        localObject2 = (i)((List)localObject1).get(j);
        if (DEBUG) {
          Log.v("FragmentManager", "restoreAllState: re-attaching retained " + localObject2);
        }
        int k = 0;
        for (;;)
        {
          if ((k < localq.yv.length) && (localq.yv[k].mIndex != ((i)localObject2).mIndex))
          {
            k += 1;
            continue;
            i = 0;
            break;
          }
        }
        if (k == localq.yv.length) {
          a(new IllegalStateException("Could not find active fragment with index " + ((i)localObject2).mIndex));
        }
        localObject3 = localq.yv[k];
        ((s)localObject3).yD = ((i)localObject2);
        ((i)localObject2).mSavedViewState = null;
        ((i)localObject2).mBackStackNesting = 0;
        ((i)localObject2).mInLayout = false;
        ((i)localObject2).mAdded = false;
        ((i)localObject2).mTarget = null;
        if (((s)localObject3).mSavedFragmentState != null)
        {
          ((s)localObject3).mSavedFragmentState.setClassLoader(this.mHost.mContext.getClassLoader());
          ((i)localObject2).mSavedViewState = ((s)localObject3).mSavedFragmentState.getSparseParcelableArray("android:view_state");
          ((i)localObject2).mSavedFragmentState = ((s)localObject3).mSavedFragmentState;
        }
        j += 1;
      }
    }
    for (;;)
    {
      label308:
      this.xy = new SparseArray(localq.yv.length);
      i = 0;
      s locals;
      if (i < localq.yv.length)
      {
        locals = localq.yv[i];
        if (locals != null) {
          if ((localList == null) || (i >= localList.size())) {
            break label1323;
          }
        }
      }
      label789:
      label1323:
      for (localObject1 = (p)localList.get(i);; localObject1 = null)
      {
        localObject3 = null;
        localObject2 = localObject3;
        if (??? != null)
        {
          localObject2 = localObject3;
          if (i < ???.size()) {
            localObject2 = (android.arch.lifecycle.p)???.get(i);
          }
        }
        localObject3 = this.mHost;
        k localk = this.xG;
        i locali = this.xH;
        Context localContext;
        if (locals.yD == null)
        {
          localContext = ((m)localObject3).mContext;
          if (locals.mArguments != null) {
            locals.mArguments.setClassLoader(localContext.getClassLoader());
          }
          if (localk == null) {
            break label789;
          }
        }
        for (locals.yD = localk.instantiate(localContext, locals.yC, locals.mArguments);; locals.yD = i.instantiate(localContext, locals.yC, locals.mArguments))
        {
          if (locals.mSavedFragmentState != null)
          {
            locals.mSavedFragmentState.setClassLoader(localContext.getClassLoader());
            locals.yD.mSavedFragmentState = locals.mSavedFragmentState;
          }
          locals.yD.setIndex(locals.mIndex, locali);
          locals.yD.mFromLayout = locals.mFromLayout;
          locals.yD.mRestored = true;
          locals.yD.mFragmentId = locals.mFragmentId;
          locals.yD.mContainerId = locals.mContainerId;
          locals.yD.mTag = locals.mTag;
          locals.yD.mRetainInstance = locals.mRetainInstance;
          locals.yD.mDetached = locals.mDetached;
          locals.yD.mHidden = locals.mHidden;
          locals.yD.mFragmentManager = ((m)localObject3).mFragmentManager;
          if (DEBUG) {
            Log.v("FragmentManager", "Instantiated fragment " + locals.yD);
          }
          locals.yD.mChildNonConfig = ((p)localObject1);
          locals.yD.mViewModelStore = ((android.arch.lifecycle.p)localObject2);
          localObject1 = locals.yD;
          if (DEBUG) {
            Log.v("FragmentManager", "restoreAllState: active #" + i + ": " + localObject1);
          }
          this.xy.put(((i)localObject1).mIndex, localObject1);
          locals.yD = null;
          i += 1;
          break;
        }
        if (paramp != null)
        {
          ??? = paramp.ys;
          if (??? != null) {}
          for (i = ???.size();; i = 0)
          {
            j = 0;
            while (j < i)
            {
              paramp = (i)???.get(j);
              if (paramp.mTargetIndex >= 0)
              {
                paramp.mTarget = ((i)this.xy.get(paramp.mTargetIndex));
                if (paramp.mTarget == null) {
                  Log.w("FragmentManager", "Re-attaching retained fragment " + paramp + " target no longer exists: " + paramp.mTargetIndex);
                }
              }
              j += 1;
            }
          }
        }
        this.xx.clear();
        if (localq.yw != null)
        {
          i = 0;
          while (i < localq.yw.length)
          {
            paramp = (i)this.xy.get(localq.yw[i]);
            if (paramp == null) {
              a(new IllegalStateException("No instantiated fragment for index #" + localq.yw[i]));
            }
            paramp.mAdded = true;
            if (DEBUG) {
              Log.v("FragmentManager", "restoreAllState: added #" + i + ": " + paramp);
            }
            if (this.xx.contains(paramp)) {
              throw new IllegalStateException("Already added!");
            }
            synchronized (this.xx)
            {
              this.xx.add(paramp);
              i += 1;
            }
          }
        }
        if (localq.yx != null)
        {
          this.xz = new ArrayList(localq.yx.length);
          i = 0;
          while (i < localq.yx.length)
          {
            ??? = localq.yx[i].a(this);
            if (DEBUG)
            {
              Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + ???.mIndex + "): " + ???);
              paramp = new PrintWriter(new e("FragmentManager"));
              ???.a("  ", paramp, false);
              paramp.close();
            }
            this.xz.add(???);
            if (???.mIndex >= 0) {
              a(???.mIndex, ???);
            }
            i += 1;
          }
        }
        this.xz = null;
        if (localq.yy >= 0) {
          this.xI = ((i)this.xy.get(localq.yy));
        }
        this.xw = localq.xw;
        return;
      }
      ??? = null;
    }
  }
  
  final void a(final i parami, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    boolean bool = true;
    int j;
    if (parami.mAdded)
    {
      j = paramInt1;
      if (!parami.mDetached) {}
    }
    else
    {
      j = paramInt1;
      if (paramInt1 > 1) {
        j = 1;
      }
    }
    int i = j;
    if (parami.mRemoving)
    {
      i = j;
      if (j > parami.mState)
      {
        if ((parami.mState != 0) || (!parami.isInBackStack())) {
          break label127;
        }
        i = 1;
      }
    }
    paramInt1 = i;
    if (parami.mDeferStart)
    {
      paramInt1 = i;
      if (parami.mState < 4)
      {
        paramInt1 = i;
        if (i > 3) {
          paramInt1 = 3;
        }
      }
    }
    label127:
    Object localObject1;
    label561:
    label591:
    label613:
    label695:
    label743:
    final Object localObject3;
    if (parami.mState <= paramInt1)
    {
      if ((parami.mFromLayout) && (!parami.mInLayout)) {}
      do
      {
        return;
        i = parami.mState;
        break;
        if ((parami.getAnimatingAway() != null) || (parami.getAnimator() != null))
        {
          parami.setAnimatingAway(null);
          parami.setAnimator(null);
          a(parami, parami.getStateAfterAnimating(), 0, 0, true);
        }
        paramInt3 = paramInt1;
        i = paramInt1;
        j = paramInt1;
        paramInt2 = paramInt1;
        switch (parami.mState)
        {
        default: 
          i = paramInt1;
        }
      } while (parami.mState == i);
      Log.w("FragmentManager", "moveToState: Fragment state for " + parami + " not updated inline; expected state " + i + " found " + parami.mState);
      parami.mState = i;
      return;
      paramInt3 = paramInt1;
      if (paramInt1 > 0)
      {
        if (DEBUG) {
          Log.v("FragmentManager", "moveto CREATED: " + parami);
        }
        paramInt3 = paramInt1;
        if (parami.mSavedFragmentState != null)
        {
          parami.mSavedFragmentState.setClassLoader(this.mHost.mContext.getClassLoader());
          parami.mSavedViewState = parami.mSavedFragmentState.getSparseParcelableArray("android:view_state");
          parami.mTarget = b(parami.mSavedFragmentState, "android:target_state");
          if (parami.mTarget != null) {
            parami.mTargetRequestCode = parami.mSavedFragmentState.getInt("android:target_req_state", 0);
          }
          if (parami.mSavedUserVisibleHint == null) {
            break label561;
          }
          parami.mUserVisibleHint = parami.mSavedUserVisibleHint.booleanValue();
          parami.mSavedUserVisibleHint = null;
          paramInt3 = paramInt1;
          if (!parami.mUserVisibleHint)
          {
            parami.mDeferStart = true;
            paramInt3 = paramInt1;
            if (paramInt1 > 3) {
              paramInt3 = 3;
            }
          }
        }
        parami.mHost = this.mHost;
        parami.mParentFragment = this.xH;
        if (this.xH != null) {}
        for (localObject1 = this.xH.mChildFragmentManager;; localObject1 = this.mHost.mFragmentManager)
        {
          parami.mFragmentManager = ((o)localObject1);
          if (parami.mTarget == null) {
            break label613;
          }
          if (this.xy.get(parami.mTarget.mIndex) == parami.mTarget) {
            break label591;
          }
          throw new IllegalStateException("Fragment " + parami + " declared target fragment " + parami.mTarget + " that does not belong to this FragmentManager!");
          parami.mUserVisibleHint = parami.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
          break;
        }
        if (parami.mTarget.mState <= 0) {
          a(parami.mTarget, 1, 0, 0, true);
        }
        a(parami, this.mHost.mContext, false);
        parami.mCalled = false;
        parami.onAttach(this.mHost.mContext);
        if (!parami.mCalled) {
          throw new ah("Fragment " + parami + " did not call through to super.onAttach()");
        }
        if (parami.mParentFragment == null)
        {
          this.mHost.onAttachFragment(parami);
          b(parami, this.mHost.mContext, false);
          if (parami.mIsCreated) {
            break label1374;
          }
          a(parami, parami.mSavedFragmentState, false);
          parami.performCreate(parami.mSavedFragmentState);
          b(parami, parami.mSavedFragmentState, false);
          parami.mRetaining = false;
        }
      }
      else
      {
        if ((parami.mFromLayout) && (!parami.mPerformedCreateView))
        {
          parami.mView = parami.performCreateView(parami.performGetLayoutInflater(parami.mSavedFragmentState), null, parami.mSavedFragmentState);
          if (parami.mView == null) {
            break label1390;
          }
          parami.mInnerView = parami.mView;
          parami.mView.setSaveFromParentEnabled(false);
          if (parami.mHidden) {
            parami.mView.setVisibility(8);
          }
          parami.onViewCreated(parami.mView, parami.mSavedFragmentState);
          a(parami, parami.mView, parami.mSavedFragmentState, false);
        }
        i = paramInt3;
        if (paramInt3 > 1)
        {
          if (DEBUG) {
            Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + parami);
          }
          if (!parami.mFromLayout)
          {
            if (parami.mContainerId == 0) {
              break label2213;
            }
            if (parami.mContainerId == -1) {
              a(new IllegalArgumentException("Cannot create fragment " + parami + " for a container view with no id"));
            }
            localObject3 = (ViewGroup)this.xG.onFindViewById(parami.mContainerId);
            localObject1 = localObject3;
            if (localObject3 == null)
            {
              localObject1 = localObject3;
              if (parami.mRestored) {}
            }
          }
        }
      }
    }
    for (;;)
    {
      label1374:
      label1390:
      Object localObject2;
      try
      {
        localObject1 = parami.getResources().getResourceName(parami.mContainerId);
        a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(parami.mContainerId) + " (" + (String)localObject1 + ") for fragment " + parami));
        localObject1 = localObject3;
        parami.mContainer = ((ViewGroup)localObject1);
        parami.mView = parami.performCreateView(parami.performGetLayoutInflater(parami.mSavedFragmentState), (ViewGroup)localObject1, parami.mSavedFragmentState);
        if (parami.mView != null)
        {
          parami.mInnerView = parami.mView;
          parami.mView.setSaveFromParentEnabled(false);
          if (localObject1 != null) {
            ((ViewGroup)localObject1).addView(parami.mView);
          }
          if (parami.mHidden) {
            parami.mView.setVisibility(8);
          }
          parami.onViewCreated(parami.mView, parami.mSavedFragmentState);
          a(parami, parami.mView, parami.mSavedFragmentState, false);
          if ((parami.mView.getVisibility() == 0) && (parami.mContainer != null))
          {
            paramBoolean = bool;
            parami.mIsNewlyAdded = paramBoolean;
            parami.performActivityCreated(parami.mSavedFragmentState);
            c(parami, parami.mSavedFragmentState, false);
            if (parami.mView != null) {
              parami.restoreViewState(parami.mSavedFragmentState);
            }
            parami.mSavedFragmentState = null;
            i = paramInt3;
            j = i;
            if (i > 2)
            {
              parami.mState = 3;
              j = i;
            }
            paramInt2 = j;
            if (j > 3)
            {
              if (DEBUG) {
                Log.v("FragmentManager", "moveto STARTED: " + parami);
              }
              parami.performStart();
              b(parami, false);
              paramInt2 = j;
            }
            i = paramInt2;
            if (paramInt2 <= 4) {
              break;
            }
            if (DEBUG) {
              Log.v("FragmentManager", "moveto RESUMED: " + parami);
            }
            parami.performResume();
            c(parami, false);
            parami.mSavedFragmentState = null;
            parami.mSavedViewState = null;
            i = paramInt2;
            break;
            parami.mParentFragment.onAttachFragment(parami);
            break label695;
            parami.restoreChildFragmentState(parami.mSavedFragmentState);
            parami.mState = 1;
            break label743;
            parami.mInnerView = null;
          }
        }
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        localObject2 = "unknown";
        continue;
        paramBoolean = false;
        continue;
        parami.mInnerView = null;
        continue;
      }
      i = paramInt1;
      if (parami.mState <= paramInt1) {
        break;
      }
      switch (parami.mState)
      {
      default: 
        i = paramInt1;
        break;
      case 1: 
      case 5: 
      case 4: 
      case 3: 
      case 2: 
        label1515:
        do
        {
          i = paramInt1;
          if (paramInt1 > 0) {
            break;
          }
          if (this.xM)
          {
            if (parami.getAnimatingAway() == null) {
              break label2018;
            }
            localObject2 = parami.getAnimatingAway();
            parami.setAnimatingAway(null);
            ((View)localObject2).clearAnimation();
          }
          if ((parami.getAnimatingAway() == null) && (parami.getAnimator() == null)) {
            break label2044;
          }
          parami.setStateAfterAnimating(paramInt1);
          i = 1;
          break;
          if (paramInt1 < 5)
          {
            if (DEBUG) {
              Log.v("FragmentManager", "movefrom RESUMED: " + parami);
            }
            parami.performPause();
            d(parami, false);
          }
          if (paramInt1 < 4)
          {
            if (DEBUG) {
              Log.v("FragmentManager", "movefrom STARTED: " + parami);
            }
            parami.performStop();
            e(parami, false);
          }
          if (paramInt1 < 3)
          {
            if (DEBUG) {
              Log.v("FragmentManager", "movefrom STOPPED: " + parami);
            }
            parami.performReallyStop();
          }
        } while (paramInt1 >= 2);
        if (DEBUG) {
          Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + parami);
        }
        if ((parami.mView != null) && (this.mHost.cE()) && (parami.mSavedViewState == null)) {
          m(parami);
        }
        parami.performDestroyView();
        f(parami, false);
        if ((parami.mView != null) && (parami.mContainer != null))
        {
          parami.mContainer.endViewTransition(parami.mView);
          parami.mView.clearAnimation();
          if ((this.xF <= 0) || (this.xM) || (parami.mView.getVisibility() != 0) || (parami.mPostponedAlpha < 0.0F)) {
            break label2207;
          }
        }
        label1958:
        label2018:
        label2044:
        label2186:
        label2207:
        for (localObject2 = a(parami, paramInt2, false, paramInt3);; localObject2 = null)
        {
          parami.mPostponedAlpha = 0.0F;
          final ViewGroup localViewGroup;
          Object localObject4;
          if (localObject2 != null)
          {
            localObject3 = parami.mView;
            localViewGroup = parami.mContainer;
            localViewGroup.startViewTransition((View)localObject3);
            parami.setStateAfterAnimating(paramInt1);
            if (((c)localObject2).yj == null) {
              break label1958;
            }
            localObject4 = new e(((c)localObject2).yj, localViewGroup, (View)localObject3);
            parami.setAnimatingAway(parami.mView);
            ((Animation)localObject4).setAnimationListener(new b(a((Animation)localObject4), localViewGroup)
            {
              public final void onAnimationEnd(Animation paramAnonymousAnimation)
              {
                super.onAnimationEnd(paramAnonymousAnimation);
                localViewGroup.post(new Runnable()
                {
                  public final void run()
                  {
                    if (o.2.this.yd.getAnimatingAway() != null)
                    {
                      o.2.this.yd.setAnimatingAway(null);
                      o.this.a(o.2.this.yd, o.2.this.yd.getStateAfterAnimating(), 0, 0, false);
                    }
                  }
                });
              }
            });
            a((View)localObject3, (c)localObject2);
            parami.mView.startAnimation((Animation)localObject4);
          }
          for (;;)
          {
            parami.mContainer.removeView(parami.mView);
            parami.mContainer = null;
            parami.mView = null;
            parami.mInnerView = null;
            parami.mInLayout = false;
            break;
            localObject4 = ((c)localObject2).yk;
            parami.setAnimator(((c)localObject2).yk);
            ((Animator)localObject4).addListener(new AnimatorListenerAdapter()
            {
              public final void onAnimationEnd(Animator paramAnonymousAnimator)
              {
                localViewGroup.endViewTransition(localObject3);
                paramAnonymousAnimator = parami.getAnimator();
                parami.setAnimator(null);
                if ((paramAnonymousAnimator != null) && (localViewGroup.indexOfChild(localObject3) < 0)) {
                  o.this.a(parami, parami.getStateAfterAnimating(), 0, 0, false);
                }
              }
            });
            ((Animator)localObject4).setTarget(parami.mView);
            a(parami.mView, (c)localObject2);
            ((Animator)localObject4).start();
          }
          if (parami.getAnimator() == null) {
            break label1515;
          }
          localObject2 = parami.getAnimator();
          parami.setAnimator(null);
          ((Animator)localObject2).cancel();
          break label1515;
          if (DEBUG) {
            Log.v("FragmentManager", "movefrom CREATED: " + parami);
          }
          if (!parami.mRetaining)
          {
            parami.performDestroy();
            g(parami, false);
          }
          for (;;)
          {
            parami.performDetach();
            h(parami, false);
            i = paramInt1;
            if (paramBoolean) {
              break;
            }
            if (parami.mRetaining) {
              break label2186;
            }
            i = paramInt1;
            if (parami.mIndex < 0) {
              break;
            }
            if (DEBUG) {
              Log.v("FragmentManager", "Freeing fragment index " + parami);
            }
            this.xy.put(parami.mIndex, null);
            parami.initState();
            i = paramInt1;
            break;
            parami.mState = 0;
          }
          parami.mHost = null;
          parami.mParentFragment = null;
          parami.mFragmentManager = null;
          i = paramInt1;
          break;
        }
        label2213:
        localObject2 = null;
      }
    }
  }
  
  public final void a(i parami, boolean paramBoolean)
  {
    if (DEBUG) {
      Log.v("FragmentManager", "add: " + parami);
    }
    g(parami);
    if (!parami.mDetached) {
      if (this.xx.contains(parami)) {
        throw new IllegalStateException("Fragment already added: " + parami);
      }
    }
    synchronized (this.xx)
    {
      this.xx.add(parami);
      parami.mAdded = true;
      parami.mRemoving = false;
      if (parami.mView == null) {
        parami.mHiddenChanged = false;
      }
      if ((parami.mHasMenu) && (parami.mMenuVisible)) {
        this.xK = true;
      }
      if (paramBoolean) {
        e(parami);
      }
      return;
    }
  }
  
  public final void a(m paramm, k paramk, i parami)
  {
    if (this.mHost != null) {
      throw new IllegalStateException("Already attached");
    }
    this.mHost = paramm;
    this.xG = paramk;
    this.xH = parami;
  }
  
  public final void a(g paramg, boolean paramBoolean)
  {
    if (!paramBoolean) {
      cJ();
    }
    try
    {
      if ((this.xM) || (this.mHost == null))
      {
        if (paramBoolean) {
          return;
        }
        throw new IllegalStateException("Activity has been destroyed");
      }
    }
    finally {}
    if (this.xu == null) {
      this.xu = new ArrayList();
    }
    this.xu.add(paramg);
    cK();
  }
  
  final boolean a(ArrayList<c> paramArrayList, ArrayList<Boolean> paramArrayList1, String paramString, int paramInt1, int paramInt2)
  {
    if (this.xz == null) {
      return false;
    }
    if ((paramString == null) && (paramInt1 < 0) && ((paramInt2 & 0x1) == 0))
    {
      paramInt1 = this.xz.size() - 1;
      if (paramInt1 < 0) {
        return false;
      }
      paramArrayList.add(this.xz.remove(paramInt1));
      paramArrayList1.add(Boolean.valueOf(true));
    }
    for (;;)
    {
      return true;
      int i = -1;
      if ((paramString != null) || (paramInt1 >= 0))
      {
        int j = this.xz.size() - 1;
        c localc;
        while (j >= 0)
        {
          localc = (c)this.xz.get(j);
          if (((paramString != null) && (paramString.equals(localc.mName))) || ((paramInt1 >= 0) && (paramInt1 == localc.mIndex))) {
            break;
          }
          j -= 1;
        }
        if (j < 0) {
          return false;
        }
        i = j;
        if ((paramInt2 & 0x1) != 0)
        {
          paramInt2 = j - 1;
          for (;;)
          {
            i = paramInt2;
            if (paramInt2 < 0) {
              break;
            }
            localc = (c)this.xz.get(paramInt2);
            if ((paramString == null) || (!paramString.equals(localc.mName)))
            {
              i = paramInt2;
              if (paramInt1 < 0) {
                break;
              }
              i = paramInt2;
              if (paramInt1 != localc.mIndex) {
                break;
              }
            }
            paramInt2 -= 1;
          }
        }
      }
      if (i == this.xz.size() - 1) {
        return false;
      }
      paramInt1 = this.xz.size() - 1;
      while (paramInt1 > i)
      {
        paramArrayList.add(this.xz.remove(paramInt1));
        paramArrayList1.add(Boolean.valueOf(true));
        paramInt1 -= 1;
      }
    }
  }
  
  final void aa(int paramInt)
  {
    try
    {
      this.xv = true;
      c(paramInt, false);
      this.xv = false;
      execPendingActions();
      return;
    }
    finally
    {
      this.xv = false;
    }
  }
  
  final void c(int paramInt, boolean paramBoolean)
  {
    if ((this.mHost == null) && (paramInt != 0)) {
      throw new IllegalStateException("No activity");
    }
    if ((!paramBoolean) && (paramInt == this.xF)) {}
    do
    {
      do
      {
        return;
        this.xF = paramInt;
      } while (this.xy == null);
      int i = this.xx.size();
      paramInt = 0;
      while (paramInt < i)
      {
        f((i)this.xx.get(paramInt));
        paramInt += 1;
      }
      i = this.xy.size();
      paramInt = 0;
      while (paramInt < i)
      {
        i locali = (i)this.xy.valueAt(paramInt);
        if ((locali != null) && ((locali.mRemoving) || (locali.mDetached)) && (!locali.mIsNewlyAdded)) {
          f(locali);
        }
        paramInt += 1;
      }
      cI();
    } while ((!this.xK) || (this.mHost == null) || (this.xF != 5));
    this.mHost.cF();
    this.xK = false;
  }
  
  final void c(ArrayList<c> paramArrayList, ArrayList<Boolean> paramArrayList1)
  {
    if ((paramArrayList == null) || (paramArrayList.isEmpty())) {
      return;
    }
    if ((paramArrayList1 == null) || (paramArrayList.size() != paramArrayList1.size())) {
      throw new IllegalStateException("Internal error with the back stack records");
    }
    b(paramArrayList, paramArrayList1);
    int m = paramArrayList.size();
    int i = 0;
    int j = 0;
    label55:
    int k;
    if (i < m)
    {
      if (((c)paramArrayList.get(i)).wA) {
        break label222;
      }
      if (j != i) {
        a(paramArrayList, paramArrayList1, j, i);
      }
      k = i + 1;
      j = k;
      if (((Boolean)paramArrayList1.get(i)).booleanValue()) {
        for (;;)
        {
          j = k;
          if (k >= m) {
            break;
          }
          j = k;
          if (!((Boolean)paramArrayList1.get(k)).booleanValue()) {
            break;
          }
          j = k;
          if (((c)paramArrayList.get(k)).wA) {
            break;
          }
          k += 1;
        }
      }
      a(paramArrayList, paramArrayList1, i, j);
      k = j - 1;
    }
    for (i = j;; i = j)
    {
      k += 1;
      j = i;
      i = k;
      break label55;
      if (j == m) {
        break;
      }
      a(paramArrayList, paramArrayList1, j, m);
      return;
      label222:
      k = i;
    }
  }
  
  public final t cG()
  {
    return new c(this);
  }
  
  final void cL()
  {
    if (this.xv) {
      throw new IllegalStateException("FragmentManager is already executing transactions");
    }
    if (this.mHost == null) {
      throw new IllegalStateException("Fragment host has been destroyed");
    }
    if (Looper.myLooper() != this.mHost.mHandler.getLooper()) {
      throw new IllegalStateException("Must be called from main thread of fragment host");
    }
    if (this.xP == null)
    {
      this.xP = new ArrayList();
      this.xQ = new ArrayList();
    }
    this.xv = true;
    try
    {
      b(null, null);
      return;
    }
    finally
    {
      this.xv = false;
    }
  }
  
  final void cM()
  {
    this.xv = false;
    this.xQ.clear();
    this.xP.clear();
  }
  
  final void cO()
  {
    if (this.xO)
    {
      this.xO = false;
      cI();
    }
  }
  
  final void cR()
  {
    if (this.xy != null)
    {
      int i = this.xy.size() - 1;
      while (i >= 0)
      {
        if (this.xy.valueAt(i) == null) {
          this.xy.delete(this.xy.keyAt(i));
        }
        i -= 1;
      }
    }
  }
  
  public final void d(i parami)
  {
    if (parami.mDeferStart)
    {
      if (this.xv) {
        this.xO = true;
      }
    }
    else {
      return;
    }
    parami.mDeferStart = false;
    a(parami, this.xF, 0, 0, false);
  }
  
  public final void dispatchActivityCreated()
  {
    this.xL = false;
    this.mStopped = false;
    aa(2);
  }
  
  public final void dispatchConfigurationChanged(Configuration paramConfiguration)
  {
    int i = 0;
    while (i < this.xx.size())
    {
      i locali = (i)this.xx.get(i);
      if (locali != null) {
        locali.performConfigurationChanged(paramConfiguration);
      }
      i += 1;
    }
  }
  
  public final boolean dispatchContextItemSelected(MenuItem paramMenuItem)
  {
    if (this.xF <= 0) {}
    for (;;)
    {
      return false;
      int i = 0;
      while (i < this.xx.size())
      {
        i locali = (i)this.xx.get(i);
        if ((locali != null) && (locali.performContextItemSelected(paramMenuItem))) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public final void dispatchCreate()
  {
    this.xL = false;
    this.mStopped = false;
    aa(1);
  }
  
  public final boolean dispatchCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    int j = 0;
    if (this.xF <= 0) {
      return false;
    }
    Object localObject1 = null;
    int i = 0;
    boolean bool1 = false;
    while (i < this.xx.size())
    {
      i locali = (i)this.xx.get(i);
      Object localObject2 = localObject1;
      boolean bool2 = bool1;
      if (locali != null)
      {
        localObject2 = localObject1;
        bool2 = bool1;
        if (locali.performCreateOptionsMenu(paramMenu, paramMenuInflater))
        {
          bool2 = true;
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new ArrayList();
          }
          ((ArrayList)localObject2).add(locali);
        }
      }
      i += 1;
      bool1 = bool2;
      localObject1 = localObject2;
    }
    if (this.xA != null)
    {
      i = j;
      while (i < this.xA.size())
      {
        paramMenu = (i)this.xA.get(i);
        if ((localObject1 == null) || (!((ArrayList)localObject1).contains(paramMenu))) {
          paramMenu.onDestroyOptionsMenu();
        }
        i += 1;
      }
    }
    this.xA = ((ArrayList)localObject1);
    return bool1;
  }
  
  public final void dispatchDestroy()
  {
    this.xM = true;
    execPendingActions();
    aa(0);
    this.mHost = null;
    this.xG = null;
    this.xH = null;
  }
  
  public final void dispatchLowMemory()
  {
    int i = 0;
    while (i < this.xx.size())
    {
      i locali = (i)this.xx.get(i);
      if (locali != null) {
        locali.performLowMemory();
      }
      i += 1;
    }
  }
  
  public final void dispatchMultiWindowModeChanged(boolean paramBoolean)
  {
    int i = this.xx.size() - 1;
    while (i >= 0)
    {
      i locali = (i)this.xx.get(i);
      if (locali != null) {
        locali.performMultiWindowModeChanged(paramBoolean);
      }
      i -= 1;
    }
  }
  
  public final boolean dispatchOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (this.xF <= 0) {}
    for (;;)
    {
      return false;
      int i = 0;
      while (i < this.xx.size())
      {
        i locali = (i)this.xx.get(i);
        if ((locali != null) && (locali.performOptionsItemSelected(paramMenuItem))) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public final void dispatchOptionsMenuClosed(Menu paramMenu)
  {
    if (this.xF <= 0) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < this.xx.size())
      {
        i locali = (i)this.xx.get(i);
        if (locali != null) {
          locali.performOptionsMenuClosed(paramMenu);
        }
        i += 1;
      }
    }
  }
  
  public final void dispatchPictureInPictureModeChanged(boolean paramBoolean)
  {
    int i = this.xx.size() - 1;
    while (i >= 0)
    {
      i locali = (i)this.xx.get(i);
      if (locali != null) {
        locali.performPictureInPictureModeChanged(paramBoolean);
      }
      i -= 1;
    }
  }
  
  public final boolean dispatchPrepareOptionsMenu(Menu paramMenu)
  {
    if (this.xF <= 0) {
      return false;
    }
    int i = 0;
    boolean bool2;
    for (boolean bool1 = false; i < this.xx.size(); bool1 = bool2)
    {
      i locali = (i)this.xx.get(i);
      bool2 = bool1;
      if (locali != null)
      {
        bool2 = bool1;
        if (locali.performPrepareOptionsMenu(paramMenu)) {
          bool2 = true;
        }
      }
      i += 1;
    }
    return bool1;
  }
  
  public final void dispatchResume()
  {
    this.xL = false;
    this.mStopped = false;
    aa(5);
  }
  
  public final void dispatchStart()
  {
    this.xL = false;
    this.mStopped = false;
    aa(4);
  }
  
  public final void dispatchStop()
  {
    this.mStopped = true;
    aa(3);
  }
  
  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int j = 0;
    String str = paramString + "    ";
    int i;
    if (this.xy != null)
    {
      k = this.xy.size();
      if (k > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("Active Fragments in ");
        paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
        paramPrintWriter.println(":");
        i = 0;
        while (i < k)
        {
          i locali = (i)this.xy.valueAt(i);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(locali);
          if (locali != null) {
            locali.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
          }
          i += 1;
        }
      }
    }
    int k = this.xx.size();
    if (k > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Added Fragments:");
      i = 0;
      while (i < k)
      {
        paramFileDescriptor = (i)this.xx.get(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(i);
        paramPrintWriter.print(": ");
        paramPrintWriter.println(paramFileDescriptor.toString());
        i += 1;
      }
    }
    if (this.xA != null)
    {
      k = this.xA.size();
      if (k > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Fragments Created Menus:");
        i = 0;
        while (i < k)
        {
          paramFileDescriptor = (i)this.xA.get(i);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(paramFileDescriptor.toString());
          i += 1;
        }
      }
    }
    if (this.xz != null)
    {
      k = this.xz.size();
      if (k > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Back Stack:");
        i = 0;
        while (i < k)
        {
          paramFileDescriptor = (c)this.xz.get(i);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(paramFileDescriptor.toString());
          paramFileDescriptor.a(str, paramPrintWriter);
          i += 1;
        }
      }
    }
    try
    {
      if (this.xB != null)
      {
        k = this.xB.size();
        if (k > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Back Stack Indices:");
          i = 0;
          while (i < k)
          {
            paramFileDescriptor = (c)this.xB.get(i);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i += 1;
          }
        }
      }
      if ((this.xC != null) && (this.xC.size() > 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mAvailBackStackIndices: ");
        paramPrintWriter.println(Arrays.toString(this.xC.toArray()));
      }
      if (this.xu != null)
      {
        k = this.xu.size();
        if (k > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Pending Actions:");
          i = j;
          while (i < k)
          {
            paramFileDescriptor = (g)this.xu.get(i);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i += 1;
          }
        }
      }
      paramPrintWriter.print(paramString);
    }
    finally {}
    paramPrintWriter.println("FragmentManager misc state:");
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mHost=");
    paramPrintWriter.println(this.mHost);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mContainer=");
    paramPrintWriter.println(this.xG);
    if (this.xH != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mParent=");
      paramPrintWriter.println(this.xH);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mCurState=");
    paramPrintWriter.print(this.xF);
    paramPrintWriter.print(" mStateSaved=");
    paramPrintWriter.print(this.xL);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(this.mStopped);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(this.xM);
    if (this.xK)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNeedMenuInvalidate=");
      paramPrintWriter.println(this.xK);
    }
    if (this.xN != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNoTransactionsBecause=");
      paramPrintWriter.println(this.xN);
    }
  }
  
  /* Error */
  public final boolean execPendingActions()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 734	android/support/v4/app/o:cL	()V
    //   4: iconst_0
    //   5: istore_1
    //   6: aload_0
    //   7: aload_0
    //   8: getfield 742	android/support/v4/app/o:xP	Ljava/util/ArrayList;
    //   11: aload_0
    //   12: getfield 744	android/support/v4/app/o:xQ	Ljava/util/ArrayList;
    //   15: invokespecial 1500	android/support/v4/app/o:d	(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    //   18: ifeq +36 -> 54
    //   21: aload_0
    //   22: iconst_1
    //   23: putfield 749	android/support/v4/app/o:xv	Z
    //   26: aload_0
    //   27: aload_0
    //   28: getfield 742	android/support/v4/app/o:xP	Ljava/util/ArrayList;
    //   31: aload_0
    //   32: getfield 744	android/support/v4/app/o:xQ	Ljava/util/ArrayList;
    //   35: invokevirtual 751	android/support/v4/app/o:c	(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    //   38: aload_0
    //   39: invokevirtual 754	android/support/v4/app/o:cM	()V
    //   42: iconst_1
    //   43: istore_1
    //   44: goto -38 -> 6
    //   47: astore_2
    //   48: aload_0
    //   49: invokevirtual 754	android/support/v4/app/o:cM	()V
    //   52: aload_2
    //   53: athrow
    //   54: aload_0
    //   55: invokevirtual 757	android/support/v4/app/o:cO	()V
    //   58: aload_0
    //   59: invokevirtual 760	android/support/v4/app/o:cR	()V
    //   62: iload_1
    //   63: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	this	o
    //   5	58	1	bool	boolean
    //   47	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   26	38	47	finally
  }
  
  public final boolean executePendingTransactions()
  {
    boolean bool = execPendingActions();
    cN();
    return bool;
  }
  
  final void f(final i parami)
  {
    if (parami == null) {
      return;
    }
    int j = this.xF;
    int i = j;
    label32:
    final Object localObject3;
    Object localObject1;
    label79:
    final Object localObject2;
    label230:
    boolean bool;
    if (parami.mRemoving)
    {
      if (parami.isInBackStack()) {
        i = Math.min(j, 1);
      }
    }
    else
    {
      a(parami, i, parami.getNextTransition(), parami.getNextTransitionStyle(), false);
      if (parami.mView != null)
      {
        localObject3 = parami.mContainer;
        localObject1 = parami.mView;
        if ((localObject3 != null) && (localObject1 != null)) {
          break label383;
        }
        localObject1 = null;
        if (localObject1 != null)
        {
          localObject1 = ((i)localObject1).mView;
          localObject2 = parami.mContainer;
          i = ((ViewGroup)localObject2).indexOfChild((View)localObject1);
          j = ((ViewGroup)localObject2).indexOfChild(parami.mView);
          if (j < i)
          {
            ((ViewGroup)localObject2).removeViewAt(j);
            ((ViewGroup)localObject2).addView(parami.mView, i);
          }
        }
        if ((parami.mIsNewlyAdded) && (parami.mContainer != null))
        {
          if (parami.mPostponedAlpha > 0.0F) {
            parami.mView.setAlpha(parami.mPostponedAlpha);
          }
          parami.mPostponedAlpha = 0.0F;
          parami.mIsNewlyAdded = false;
          localObject1 = a(parami, parami.getNextTransition(), true, parami.getNextTransitionStyle());
          if (localObject1 != null)
          {
            a(parami.mView, (c)localObject1);
            if (((c)localObject1).yj == null) {
              break label446;
            }
            parami.mView.startAnimation(((c)localObject1).yj);
          }
        }
      }
      if (!parami.mHiddenChanged) {
        break label467;
      }
      if (parami.mView != null)
      {
        i = parami.getNextTransition();
        if (parami.mHidden) {
          break label469;
        }
        bool = true;
        label259:
        localObject1 = a(parami, i, bool, parami.getNextTransitionStyle());
        if ((localObject1 == null) || (((c)localObject1).yk == null)) {
          break label529;
        }
        ((c)localObject1).yk.setTarget(parami.mView);
        if (!parami.mHidden) {
          break label518;
        }
        if (!parami.isHideReplaced()) {
          break label475;
        }
        parami.setHideReplaced(false);
      }
    }
    for (;;)
    {
      a(parami.mView, (c)localObject1);
      ((c)localObject1).yk.start();
      if ((parami.mAdded) && (parami.mHasMenu) && (parami.mMenuVisible)) {
        this.xK = true;
      }
      parami.mHiddenChanged = false;
      parami.onHiddenChanged(parami.mHidden);
      return;
      i = Math.min(j, 0);
      break label32;
      label383:
      i = this.xx.indexOf(parami) - 1;
      for (;;)
      {
        if (i < 0) {
          break label440;
        }
        localObject2 = (i)this.xx.get(i);
        if (((i)localObject2).mContainer == localObject3)
        {
          localObject1 = localObject2;
          if (((i)localObject2).mView != null) {
            break;
          }
        }
        i -= 1;
      }
      label440:
      localObject1 = null;
      break label79;
      label446:
      ((c)localObject1).yk.setTarget(parami.mView);
      ((c)localObject1).yk.start();
      break label230;
      label467:
      break;
      label469:
      bool = false;
      break label259;
      label475:
      localObject2 = parami.mContainer;
      localObject3 = parami.mView;
      ((ViewGroup)localObject2).startViewTransition((View)localObject3);
      ((c)localObject1).yk.addListener(new AnimatorListenerAdapter()
      {
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          localObject2.endViewTransition(localObject3);
          paramAnonymousAnimator.removeListener(this);
          if (parami.mView != null) {
            parami.mView.setVisibility(8);
          }
        }
      });
      continue;
      label518:
      parami.mView.setVisibility(0);
    }
    label529:
    if (localObject1 != null)
    {
      a(parami.mView, (c)localObject1);
      parami.mView.startAnimation(((c)localObject1).yj);
      ((c)localObject1).yj.start();
    }
    if ((parami.mHidden) && (!parami.isHideReplaced())) {}
    for (i = 8;; i = 0)
    {
      parami.mView.setVisibility(i);
      if (!parami.isHideReplaced()) {
        break;
      }
      parami.setHideReplaced(false);
      break;
    }
  }
  
  public final i findFragmentByWho(String paramString)
  {
    if ((this.xy != null) && (paramString != null))
    {
      int i = this.xy.size() - 1;
      while (i >= 0)
      {
        i locali = (i)this.xy.valueAt(i);
        if (locali != null)
        {
          locali = locali.findFragmentByWho(paramString);
          if (locali != null) {
            return locali;
          }
        }
        i -= 1;
      }
    }
    return null;
  }
  
  final void g(i parami)
  {
    if (parami.mIndex >= 0) {}
    do
    {
      return;
      int i = this.xw;
      this.xw = (i + 1);
      parami.setIndex(i, this.xH);
      if (this.xy == null) {
        this.xy = new SparseArray();
      }
      this.xy.put(parami.mIndex, parami);
    } while (!DEBUG);
    Log.v("FragmentManager", "Allocated fragment index " + parami);
  }
  
  public final int getBackStackEntryCount()
  {
    if (this.xz != null) {
      return this.xz.size();
    }
    return 0;
  }
  
  public final List<i> getFragments()
  {
    if (this.xx.isEmpty()) {
      return Collections.EMPTY_LIST;
    }
    synchronized (this.xx)
    {
      List localList = (List)this.xx.clone();
      return localList;
    }
  }
  
  public final void h(i parami)
  {
    if (DEBUG) {
      Log.v("FragmentManager", "remove: " + parami + " nesting=" + parami.mBackStackNesting);
    }
    int i;
    if (!parami.isInBackStack()) {
      i = 1;
    }
    for (;;)
    {
      if ((!parami.mDetached) || (i != 0)) {}
      synchronized (this.xx)
      {
        this.xx.remove(parami);
        if ((parami.mHasMenu) && (parami.mMenuVisible)) {
          this.xK = true;
        }
        parami.mAdded = false;
        parami.mRemoving = true;
        return;
        i = 0;
      }
    }
  }
  
  public final boolean isStateSaved()
  {
    return (this.xL) || (this.mStopped);
  }
  
  public final void k(i parami)
  {
    if (DEBUG) {
      Log.v("FragmentManager", "detach: " + parami);
    }
    if (!parami.mDetached)
    {
      parami.mDetached = true;
      if (parami.mAdded) {
        if (DEBUG) {
          Log.v("FragmentManager", "remove from detach: " + parami);
        }
      }
    }
    synchronized (this.xx)
    {
      this.xx.remove(parami);
      if ((parami.mHasMenu) && (parami.mMenuVisible)) {
        this.xK = true;
      }
      parami.mAdded = false;
      return;
    }
  }
  
  public final void l(i parami)
  {
    if (DEBUG) {
      Log.v("FragmentManager", "attach: " + parami);
    }
    if (parami.mDetached)
    {
      parami.mDetached = false;
      if (!parami.mAdded)
      {
        if (this.xx.contains(parami)) {
          throw new IllegalStateException("Fragment already added: " + parami);
        }
        if (DEBUG) {
          Log.v("FragmentManager", "add from attach: " + parami);
        }
      }
    }
    synchronized (this.xx)
    {
      this.xx.add(parami);
      parami.mAdded = true;
      if ((parami.mHasMenu) && (parami.mMenuVisible)) {
        this.xK = true;
      }
      return;
    }
  }
  
  public final void n(i parami)
  {
    if ((parami != null) && ((this.xy.get(parami.mIndex) != parami) || ((parami.mHost != null) && (parami.getFragmentManager() != this)))) {
      throw new IllegalArgumentException("Fragment " + parami + " is not an active fragment of FragmentManager " + this);
    }
    this.xI = parami;
  }
  
  public final void noteStateNotSaved()
  {
    this.xV = null;
    this.xL = false;
    this.mStopped = false;
    int j = this.xx.size();
    int i = 0;
    while (i < j)
    {
      i locali = (i)this.xx.get(i);
      if (locali != null) {
        locali.noteStateNotSaved();
      }
      i += 1;
    }
  }
  
  public final View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!"fragment".equals(paramString)) {
      return null;
    }
    String str1 = paramAttributeSet.getAttributeValue(null, "class");
    paramString = paramContext.obtainStyledAttributes(paramAttributeSet, f.yn);
    if (str1 == null) {
      str1 = paramString.getString(0);
    }
    for (;;)
    {
      int k = paramString.getResourceId(1, -1);
      String str2 = paramString.getString(2);
      paramString.recycle();
      if (!i.isSupportFragmentClass(this.mHost.mContext, str1)) {
        return null;
      }
      if (paramView != null) {}
      for (int i = paramView.getId(); (i == -1) && (k == -1) && (str2 == null); i = 0) {
        throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str1);
      }
      int j;
      if (k != -1)
      {
        paramString = Y(k);
        paramView = paramString;
        if (paramString == null)
        {
          paramView = paramString;
          if (str2 != null) {
            paramView = w(str2);
          }
        }
        paramString = paramView;
        if (paramView == null)
        {
          paramString = paramView;
          if (i != -1) {
            paramString = Y(i);
          }
        }
        if (DEBUG) {
          Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(k) + " fname=" + str1 + " existing=" + paramString);
        }
        if (paramString != null) {
          break label427;
        }
        paramView = this.xG.instantiate(paramContext, str1, null);
        paramView.mFromLayout = true;
        if (k == 0) {
          break label420;
        }
        j = k;
        label294:
        paramView.mFragmentId = j;
        paramView.mContainerId = i;
        paramView.mTag = str2;
        paramView.mInLayout = true;
        paramView.mFragmentManager = this;
        paramView.mHost = this.mHost;
        paramView.onInflate(this.mHost.mContext, paramAttributeSet, paramView.mSavedFragmentState);
        a(paramView, true);
        label353:
        if ((this.xF > 0) || (!paramView.mFromLayout)) {
          break label554;
        }
        a(paramView, 1, 0, 0, false);
      }
      for (;;)
      {
        if (paramView.mView != null) {
          break label562;
        }
        throw new IllegalStateException("Fragment " + str1 + " did not create a view.");
        paramString = null;
        break;
        label420:
        j = i;
        break label294;
        label427:
        if (paramString.mInLayout) {
          throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(k) + ", tag " + str2 + ", or parent id 0x" + Integer.toHexString(i) + " with another fragment for " + str1);
        }
        paramString.mInLayout = true;
        paramString.mHost = this.mHost;
        if (!paramString.mRetaining) {
          paramString.onInflate(this.mHost.mContext, paramAttributeSet, paramString.mSavedFragmentState);
        }
        paramView = paramString;
        break label353;
        label554:
        e(paramView);
      }
      label562:
      if (k != 0) {
        paramView.mView.setId(k);
      }
      if (paramView.mView.getTag() == null) {
        paramView.mView.setTag(str2);
      }
      return paramView.mView;
    }
  }
  
  public final View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return onCreateView(null, paramString, paramContext, paramAttributeSet);
  }
  
  public final boolean popBackStackImmediate()
  {
    cJ();
    return cH();
  }
  
  final Parcelable saveAllState()
  {
    Object localObject3 = null;
    int k = 0;
    cN();
    label20:
    Object localObject1;
    Object localObject2;
    if (this.xy == null)
    {
      i = 0;
      j = 0;
      if (j >= i) {
        break label141;
      }
      localObject1 = (i)this.xy.valueAt(j);
      if (localObject1 != null)
      {
        if (((i)localObject1).getAnimatingAway() == null) {
          break label122;
        }
        m = ((i)localObject1).getStateAfterAnimating();
        localObject2 = ((i)localObject1).getAnimatingAway();
        localObject4 = ((View)localObject2).getAnimation();
        if (localObject4 != null)
        {
          ((Animation)localObject4).cancel();
          ((View)localObject2).clearAnimation();
        }
        ((i)localObject1).setAnimatingAway(null);
        a((i)localObject1, m, 0, 0, false);
      }
    }
    for (;;)
    {
      j += 1;
      break label20;
      i = this.xy.size();
      break;
      label122:
      if (((i)localObject1).getAnimator() != null) {
        ((i)localObject1).getAnimator().end();
      }
    }
    label141:
    execPendingActions();
    this.xL = true;
    this.xV = null;
    if ((this.xy == null) || (this.xy.size() <= 0)) {
      return null;
    }
    int m = this.xy.size();
    Object localObject4 = new s[m];
    int j = 0;
    int i = 0;
    label195:
    i locali;
    s locals;
    if (j < m)
    {
      locali = (i)this.xy.valueAt(j);
      if (locali == null) {
        break label1077;
      }
      if (locali.mIndex < 0) {
        a(new IllegalStateException("Failure saving state: active " + locali + " has cleared index: " + locali.mIndex));
      }
      locals = new s(locali);
      localObject4[j] = locals;
      if ((locali.mState > 0) && (locals.mSavedFragmentState == null))
      {
        if (this.xS == null) {
          this.xS = new Bundle();
        }
        locali.performSaveInstanceState(this.xS);
        d(locali, this.xS, false);
        if (this.xS.isEmpty()) {
          break label1080;
        }
        localObject2 = this.xS;
        this.xS = null;
      }
    }
    for (;;)
    {
      if (locali.mView != null) {
        m(locali);
      }
      localObject1 = localObject2;
      if (locali.mSavedViewState != null)
      {
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = new Bundle();
        }
        ((Bundle)localObject1).putSparseParcelableArray("android:view_state", locali.mSavedViewState);
      }
      localObject2 = localObject1;
      if (!locali.mUserVisibleHint)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new Bundle();
        }
        ((Bundle)localObject2).putBoolean("android:user_visible_hint", locali.mUserVisibleHint);
      }
      locals.mSavedFragmentState = ((Bundle)localObject2);
      if (locali.mTarget != null)
      {
        if (locali.mTarget.mIndex < 0) {
          a(new IllegalStateException("Failure saving state: " + locali + " has target not in fragment manager: " + locali.mTarget));
        }
        if (locals.mSavedFragmentState == null) {
          locals.mSavedFragmentState = new Bundle();
        }
        localObject1 = locals.mSavedFragmentState;
        localObject2 = locali.mTarget;
        if (((i)localObject2).mIndex < 0) {
          a(new IllegalStateException("Fragment " + localObject2 + " is not currently in the FragmentManager"));
        }
        ((Bundle)localObject1).putInt("android:target_state", ((i)localObject2).mIndex);
        if (locali.mTargetRequestCode != 0) {
          locals.mSavedFragmentState.putInt("android:target_req_state", locali.mTargetRequestCode);
        }
      }
      label645:
      if (DEBUG) {
        Log.v("FragmentManager", "Saved state of " + locali + ": " + locals.mSavedFragmentState);
      }
      i = 1;
      label1077:
      for (;;)
      {
        j += 1;
        break label195;
        locals.mSavedFragmentState = locali.mSavedFragmentState;
        break label645;
        if (i == 0)
        {
          if (!DEBUG) {
            break;
          }
          Log.v("FragmentManager", "saveAllState: no fragments!");
          return null;
        }
        j = this.xx.size();
        if (j > 0)
        {
          localObject2 = new int[j];
          i = 0;
          for (;;)
          {
            localObject1 = localObject2;
            if (i >= j) {
              break;
            }
            localObject2[i] = ((i)this.xx.get(i)).mIndex;
            if (localObject2[i] < 0) {
              a(new IllegalStateException("Failure saving state: active " + this.xx.get(i) + " has cleared index: " + localObject2[i]));
            }
            if (DEBUG) {
              Log.v("FragmentManager", "saveAllState: adding fragment #" + i + ": " + this.xx.get(i));
            }
            i += 1;
          }
        }
        localObject1 = null;
        localObject2 = localObject3;
        if (this.xz != null)
        {
          j = this.xz.size();
          localObject2 = localObject3;
          if (j > 0)
          {
            localObject3 = new d[j];
            i = k;
            for (;;)
            {
              localObject2 = localObject3;
              if (i >= j) {
                break;
              }
              localObject3[i] = new d((c)this.xz.get(i));
              if (DEBUG) {
                Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.xz.get(i));
              }
              i += 1;
            }
          }
        }
        localObject3 = new q();
        ((q)localObject3).yv = ((s[])localObject4);
        ((q)localObject3).yw = ((int[])localObject1);
        ((q)localObject3).yx = ((d[])localObject2);
        if (this.xI != null) {
          ((q)localObject3).yy = this.xI.mIndex;
        }
        ((q)localObject3).xw = this.xw;
        cQ();
        return (Parcelable)localObject3;
      }
      label1080:
      localObject2 = null;
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("FragmentManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    if (this.xH != null) {
      android.support.v4.g.d.a(this.xH, localStringBuilder);
    }
    for (;;)
    {
      localStringBuilder.append("}}");
      return localStringBuilder.toString();
      android.support.v4.g.d.a(this.mHost, localStringBuilder);
    }
  }
  
  public final i w(String paramString)
  {
    int i;
    Object localObject;
    if (paramString != null)
    {
      i = this.xx.size() - 1;
      while (i >= 0)
      {
        localObject = (i)this.xx.get(i);
        if ((localObject != null) && (paramString.equals(((i)localObject).mTag))) {
          return (i)localObject;
        }
        i -= 1;
      }
    }
    if ((this.xy != null) && (paramString != null))
    {
      i = this.xy.size() - 1;
      for (;;)
      {
        if (i < 0) {
          break label119;
        }
        i locali = (i)this.xy.valueAt(i);
        if (locali != null)
        {
          localObject = locali;
          if (paramString.equals(locali.mTag)) {
            break;
          }
        }
        i -= 1;
      }
    }
    label119:
    return null;
  }
  
  private static final class a
    extends o.b
  {
    View mView;
    
    a(View paramView, Animation.AnimationListener paramAnimationListener)
    {
      super((byte)0);
      this.mView = paramView;
    }
    
    public final void onAnimationEnd(Animation paramAnimation)
    {
      if ((r.ah(this.mView)) || (Build.VERSION.SDK_INT >= 24)) {
        this.mView.post(new Runnable()
        {
          public final void run()
          {
            o.a.this.mView.setLayerType(0, null);
          }
        });
      }
      for (;;)
      {
        super.onAnimationEnd(paramAnimation);
        return;
        this.mView.setLayerType(0, null);
      }
    }
  }
  
  private static class b
    implements Animation.AnimationListener
  {
    private final Animation.AnimationListener yi;
    
    private b(Animation.AnimationListener paramAnimationListener)
    {
      this.yi = paramAnimationListener;
    }
    
    public void onAnimationEnd(Animation paramAnimation)
    {
      if (this.yi != null) {
        this.yi.onAnimationEnd(paramAnimation);
      }
    }
    
    public void onAnimationRepeat(Animation paramAnimation)
    {
      if (this.yi != null) {
        this.yi.onAnimationRepeat(paramAnimation);
      }
    }
    
    public void onAnimationStart(Animation paramAnimation)
    {
      if (this.yi != null) {
        this.yi.onAnimationStart(paramAnimation);
      }
    }
  }
  
  private static final class c
  {
    public final Animation yj;
    public final Animator yk;
    
    private c(Animator paramAnimator)
    {
      this.yj = null;
      this.yk = paramAnimator;
      if (paramAnimator == null) {
        throw new IllegalStateException("Animator cannot be null");
      }
    }
    
    private c(Animation paramAnimation)
    {
      this.yj = paramAnimation;
      this.yk = null;
      if (paramAnimation == null) {
        throw new IllegalStateException("Animation cannot be null");
      }
    }
  }
  
  private static final class d
    extends AnimatorListenerAdapter
  {
    View mView;
    
    d(View paramView)
    {
      this.mView = paramView;
    }
    
    public final void onAnimationEnd(Animator paramAnimator)
    {
      this.mView.setLayerType(0, null);
      paramAnimator.removeListener(this);
    }
    
    public final void onAnimationStart(Animator paramAnimator)
    {
      this.mView.setLayerType(2, null);
    }
  }
  
  private static final class e
    extends AnimationSet
    implements Runnable
  {
    private boolean uF;
    private final ViewGroup vR;
    private final View yl;
    private boolean ym;
    
    e(Animation paramAnimation, ViewGroup paramViewGroup, View paramView)
    {
      super();
      this.vR = paramViewGroup;
      this.yl = paramView;
      addAnimation(paramAnimation);
    }
    
    public final boolean getTransformation(long paramLong, Transformation paramTransformation)
    {
      if (this.uF) {
        if (this.ym) {}
      }
      while (super.getTransformation(paramLong, paramTransformation))
      {
        return true;
        return false;
      }
      this.uF = true;
      ad.a(this.vR, this);
      return true;
    }
    
    public final boolean getTransformation(long paramLong, Transformation paramTransformation, float paramFloat)
    {
      if (this.uF) {
        if (this.ym) {}
      }
      while (super.getTransformation(paramLong, paramTransformation, paramFloat))
      {
        return true;
        return false;
      }
      this.uF = true;
      ad.a(this.vR, this);
      return true;
    }
    
    public final void run()
    {
      this.vR.endViewTransition(this.yl);
      this.ym = true;
    }
  }
  
  static final class f
  {
    public static final int[] yn = { 16842755, 16842960, 16842961 };
  }
  
  static abstract interface g
  {
    public abstract boolean a(ArrayList<c> paramArrayList, ArrayList<Boolean> paramArrayList1);
  }
  
  private final class h
    implements o.g
  {
    final int mFlags;
    final String mName = null;
    final int yo;
    
    h(int paramInt)
    {
      this.yo = paramInt;
      this.mFlags = 1;
    }
    
    public final boolean a(ArrayList<c> paramArrayList, ArrayList<Boolean> paramArrayList1)
    {
      if ((o.this.xI != null) && (this.yo < 0) && (this.mName == null))
      {
        n localn = o.this.xI.peekChildFragmentManager();
        if ((localn != null) && (localn.popBackStackImmediate())) {
          return false;
        }
      }
      return o.this.a(paramArrayList, paramArrayList1, this.mName, this.yo, this.mFlags);
    }
  }
  
  static final class i
    implements i.c
  {
    final boolean yp;
    final c yq;
    int yr;
    
    i(c paramc, boolean paramBoolean)
    {
      this.yp = paramBoolean;
      this.yq = paramc;
    }
    
    public final void cD()
    {
      this.yr -= 1;
      if (this.yr != 0) {
        return;
      }
      o.b(this.yq.wj);
    }
    
    public final void cS()
    {
      boolean bool1 = false;
      if (this.yr > 0) {}
      for (int i = 1;; i = 0)
      {
        localo = this.yq.wj;
        int k = localo.xx.size();
        int j = 0;
        while (j < k)
        {
          localObject = (i)localo.xx.get(j);
          ((i)localObject).setOnStartEnterTransitionListener(null);
          if ((i != 0) && (((i)localObject).isPostponed())) {
            ((i)localObject).startPostponedEnterTransition();
          }
          j += 1;
        }
      }
      o localo = this.yq.wj;
      Object localObject = this.yq;
      boolean bool2 = this.yp;
      if (i == 0) {
        bool1 = true;
      }
      o.a(localo, (c)localObject, bool2, bool1, true);
    }
    
    public final void cT()
    {
      o.a(this.yq.wj, this.yq, this.yp, false, false);
    }
    
    public final void startListening()
    {
      this.yr += 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */