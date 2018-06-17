package com.layer.atlas;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.c.a.ac;
import com.c.a.ad;
import com.c.a.ae;
import com.c.a.ag;
import com.c.a.p;
import com.c.a.t;
import com.c.a.t.d;
import com.c.a.w;
import com.c.a.w.a;
import com.c.a.x;
import com.layer.atlas.util.c;
import com.layer.sdk.messaging.Identity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;

public final class AtlasAvatar
  extends View
{
  public static final String TAG = AtlasAvatar.class.getSimpleName();
  private static final ae bmt = new com.layer.atlas.util.b.b.a(0.0F);
  private static final ae bmu = new com.layer.atlas.util.b.b.a(0.0F);
  private static final Paint bmv = new Paint();
  private static final Paint bmw = new Paint();
  public t bmA;
  private Set<Identity> bmB = new LinkedHashSet();
  private final Map<Identity, b> bmC = new HashMap();
  private final Map<Identity, String> bmD = new HashMap();
  private final List<b> bmE = new ArrayList();
  private float bmF;
  private float bmG;
  private float bmH;
  private float bmI;
  private float bmJ;
  private float bmK;
  private float bmL;
  private final RectF bmM = new RectF();
  public final Paint bmx = new Paint();
  public final Paint bmy = new Paint();
  public final Paint bmz = new Paint();
  private final Rect jU = new Rect();
  
  static
  {
    bmv.setARGB(0, 255, 255, 255);
    bmv.setAntiAlias(true);
    bmw.setARGB(255, 255, 255, 255);
    bmw.setAntiAlias(true);
  }
  
  public AtlasAvatar(Context paramContext)
  {
    super(paramContext);
  }
  
  public AtlasAvatar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public AtlasAvatar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private static a a(Set<Identity> paramSet1, Set<Identity> paramSet2)
  {
    a locala = new a((byte)0);
    Object localObject = paramSet1.iterator();
    while (((Iterator)localObject).hasNext())
    {
      Identity localIdentity = (Identity)((Iterator)localObject).next();
      if (paramSet2.contains(localIdentity)) {
        locala.bmN.add(localIdentity);
      } else {
        locala.bmP.add(localIdentity);
      }
    }
    paramSet2 = paramSet2.iterator();
    while (paramSet2.hasNext())
    {
      localObject = (Identity)paramSet2.next();
      if (!paramSet1.contains(localObject)) {
        locala.bmO.add(localObject);
      }
    }
    return locala;
  }
  
  private void update()
  {
    if (this.bmB.size() > 3)
    {
      localObject1 = new LinkedList();
      localObject2 = new LinkedList();
      localObject3 = this.bmB.iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (Identity)((Iterator)localObject3).next();
        if (localObject4 != null) {
          if (!TextUtils.isEmpty(((Identity)localObject4).getAvatarImageUrl())) {
            ((Queue)localObject1).add(localObject4);
          } else {
            ((Queue)localObject2).add(localObject4);
          }
        }
      }
      this.bmB = new LinkedHashSet();
      int j = Math.min(3 - ((Queue)localObject1).size(), ((Queue)localObject2).size());
      int i = 0;
      while (i < j)
      {
        this.bmB.add(((Queue)localObject2).remove());
        i += 1;
      }
      j = Math.min(3, ((Queue)localObject1).size());
      i = 0;
      while (i < j)
      {
        this.bmB.add(((Queue)localObject1).remove());
        i += 1;
      }
    }
    Object localObject3 = a(this.bmD.keySet(), this.bmB);
    Object localObject2 = new ArrayList();
    Object localObject4 = new ArrayList();
    Object localObject1 = ((a)localObject3).bmP.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject5 = (Identity)((Iterator)localObject1).next();
      this.bmD.remove(localObject5);
      localObject5 = (b)this.bmC.remove(localObject5);
      if (localObject5 != null)
      {
        this.bmA.ak(localObject5);
        ((List)localObject4).add(localObject5);
      }
    }
    Object localObject5 = ((a)localObject3).bmO.iterator();
    if (((Iterator)localObject5).hasNext())
    {
      Identity localIdentity = (Identity)((Iterator)localObject5).next();
      if (localIdentity == null) {
        return;
      }
      this.bmD.put(localIdentity, c.a(localIdentity));
      if (((List)localObject4).isEmpty()) {}
      for (localObject1 = new b(this);; localObject1 = (b)((List)localObject4).remove(0))
      {
        ((b)localObject1).bmS = localIdentity.getAvatarImageUrl();
        this.bmC.put(localIdentity, localObject1);
        ((List)localObject2).add(localObject1);
        break;
      }
    }
    localObject1 = ((a)localObject3).bmN.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (Identity)((Iterator)localObject1).next();
      if (localObject3 != null)
      {
        this.bmD.put(localObject3, c.a((Identity)localObject3));
        localObject3 = (b)this.bmC.get(localObject3);
        this.bmA.ak(localObject3);
        ((List)localObject2).add(localObject3);
      }
    }
    localObject1 = this.bmE.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (b)((Iterator)localObject1).next();
      this.bmA.ak(localObject3);
    }
    this.bmE.clear();
    this.bmE.addAll((Collection)localObject2);
    wb();
  }
  
  private boolean wb()
  {
    int j = this.bmD.size();
    if (j == 0) {
      return false;
    }
    Object localObject1 = getLayoutParams();
    if (localObject1 == null) {
      return false;
    }
    int i;
    float f1;
    if (j != 1)
    {
      i = 1;
      int k = ((ViewGroup.LayoutParams)localObject1).width - (getPaddingLeft() + getPaddingRight());
      int m = ((ViewGroup.LayoutParams)localObject1).height - (getPaddingTop() + getPaddingBottom());
      float f2 = Math.min(k, m);
      float f3 = getContext().getResources().getDisplayMetrics().density;
      if (j <= 1) {
        break label362;
      }
      f1 = 0.65F;
      label107:
      this.bmF = (f1 * f2 / 2.0F);
      this.bmG = (this.bmF - f3 * 1.0F);
      this.bmL = (this.bmG * 4.0F / 5.0F);
      this.bmH = (getPaddingLeft() + this.bmF);
      this.bmI = (getPaddingTop() + this.bmF);
      f1 *= f2;
      this.bmJ = ((k - f1) / (j - 1));
      this.bmK = ((m - f1) / (j - 1));
    }
    for (;;)
    {
      b localb;
      synchronized (this.bmE)
      {
        if (this.bmE.isEmpty()) {
          break label726;
        }
        if (i == 0) {
          break label367;
        }
        f1 = this.bmG * 2.0F;
        i = Math.round(f1);
        Iterator localIterator = this.bmE.iterator();
        if (!localIterator.hasNext()) {
          break label717;
        }
        localb = (b)localIterator.next();
        localObject4 = localb.bmS;
        localObject1 = localObject4;
        if (localObject4 != null)
        {
          localObject1 = localObject4;
          if (((String)localObject4).trim().length() == 0) {
            localObject1 = null;
          }
        }
        localObject1 = this.bmA.dO((String)localObject1).al(TAG);
        if (((x)localObject1).bOU == 0) {
          break label377;
        }
        throw new IllegalStateException("Placeholder resource already set.");
      }
      i = 0;
      break;
      label362:
      f1 = 1.0F;
      break label107;
      label367:
      f1 = this.bmF * 2.0F;
      continue;
      label377:
      if (((x)localObject2).bOV != null) {
        throw new IllegalStateException("Placeholder image already set.");
      }
      ((x)localObject2).bOT = false;
      ((x)localObject2).bMI = true;
      Object localObject4 = ((x)localObject2).bOR;
      if (((w.a)localObject4).bOJ) {
        throw new IllegalStateException("Center crop can not be used after calling centerInside");
      }
      ((w.a)localObject4).bOI = true;
      localObject4 = ((x)localObject2).aE(i, i);
      if (j > 1) {}
      long l;
      for (Object localObject3 = bmu;; localObject3 = bmt)
      {
        localObject3 = ((x)localObject4).a((ae)localObject3);
        l = System.nanoTime();
        ag.AC();
        if (localb != null) {
          break;
        }
        throw new IllegalArgumentException("Target must not be null.");
      }
      if (((x)localObject3).bOS) {
        throw new IllegalStateException("Fit cannot be used with a Target.");
      }
      if (!((x)localObject3).bOR.Az())
      {
        ((x)localObject3).bMF.ak(localb);
        if (((x)localObject3).bOT) {
          ((x)localObject3).AA();
        }
        localb.wd();
      }
      else
      {
        w localw = ((x)localObject3).R(l);
        String str = ag.e(localw);
        if (p.dY(((x)localObject3).bMJ))
        {
          localObject4 = ((x)localObject3).bMF.dP(str);
          if (localObject4 != null)
          {
            ((x)localObject3).bMF.ak(localb);
            localObject3 = t.d.bOn;
            localb.b((Bitmap)localObject4);
            continue;
          }
        }
        if (((x)localObject3).bOT) {
          ((x)localObject3).AA();
        }
        localb.wd();
        localObject4 = new ad(((x)localObject3).bMF, localb, localw, ((x)localObject3).bMJ, ((x)localObject3).bMK, ((x)localObject3).bMM, str, ((x)localObject3).tag, ((x)localObject3).bML);
        ((x)localObject3).bMF.c((com.c.a.a)localObject4);
      }
    }
    label717:
    this.bmE.clear();
    label726:
    return true;
  }
  
  public final AtlasAvatar a(Identity... paramVarArgs)
  {
    this.bmB.clear();
    this.bmB.addAll(Arrays.asList(paramVarArgs));
    update();
    return this;
  }
  
  public final AtlasAvatar e(Set<Identity> paramSet)
  {
    this.bmB.clear();
    this.bmB.addAll(paramSet);
    update();
    return this;
  }
  
  public final Set<Identity> getParticipants()
  {
    return new LinkedHashSet(this.bmB);
  }
  
  protected final void onDraw(Canvas paramCanvas)
  {
    int i = this.bmD.size();
    paramCanvas.drawRect(0.0F, 0.0F, paramCanvas.getWidth(), paramCanvas.getHeight(), bmv);
    if (i == 0) {
      return;
    }
    label45:
    float f1;
    label55:
    float f2;
    float f3;
    label103:
    Object localObject;
    if (i != 1)
    {
      i = 1;
      if (i == 0) {
        break label314;
      }
      f1 = this.bmG;
      f2 = this.bmH;
      f3 = this.bmI;
      this.bmM.set(f2 - f1, f3 - f1, f2 + f1, f3 + f1);
      Iterator localIterator = this.bmD.entrySet().iterator();
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (i != 0) {
          paramCanvas.drawCircle(f2, f3, this.bmF, this.bmy);
        }
        localObject = (b)this.bmC.get(localEntry.getKey());
        if (localObject != null) {
          break label322;
        }
        localObject = null;
        label174:
        if (localObject != null) {
          break label332;
        }
        localObject = (String)localEntry.getValue();
        this.bmx.setTextSize(this.bmL);
        this.bmx.getTextBounds((String)localObject, 0, ((String)localObject).length(), this.jU);
        paramCanvas.drawCircle(f2, f3, f1, this.bmz);
        paramCanvas.drawText((String)localObject, f2 - this.jU.centerX(), f3 - this.jU.centerY() - 1.0F, this.bmx);
      }
    }
    for (;;)
    {
      float f4 = this.bmJ;
      float f5 = this.bmK;
      this.bmM.offset(this.bmJ, this.bmK);
      f3 = f5 + f3;
      f2 += f4;
      break label103;
      break;
      i = 0;
      break label45;
      label314:
      f1 = this.bmF;
      break label55;
      label322:
      localObject = ((b)localObject).bmT;
      break label174;
      label332:
      paramCanvas.drawBitmap((Bitmap)localObject, this.bmM.left, this.bmM.top, bmw);
    }
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (!paramBoolean) {
      return;
    }
    wb();
  }
  
  private static final class a
  {
    public final List<Identity> bmN = new ArrayList();
    public final List<Identity> bmO = new ArrayList();
    public final List<Identity> bmP = new ArrayList();
  }
  
  private static final class b
    implements ac
  {
    private static final AtomicLong bmQ = new AtomicLong(0L);
    private final long CM = bmQ.incrementAndGet();
    private final AtlasAvatar bmR;
    String bmS;
    Bitmap bmT;
    
    public b(AtlasAvatar paramAtlasAvatar)
    {
      this.bmR = paramAtlasAvatar;
    }
    
    public final void b(Bitmap paramBitmap)
    {
      this.bmR.invalidate();
      this.bmT = paramBitmap;
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
        paramObject = (b)paramObject;
      } while (this.CM == ((b)paramObject).CM);
      return false;
    }
    
    public final int hashCode()
    {
      return (int)(this.CM ^ this.CM >>> 32);
    }
    
    public final void wc()
    {
      this.bmR.invalidate();
      this.bmT = null;
    }
    
    public final void wd()
    {
      this.bmT = null;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/AtlasAvatar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */