package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.v4.view.r;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class al
  extends bi
{
  private static TimeInterpolator XM;
  private ArrayList<RecyclerView.x> XN = new ArrayList();
  private ArrayList<RecyclerView.x> XO = new ArrayList();
  private ArrayList<b> XP = new ArrayList();
  private ArrayList<a> XQ = new ArrayList();
  ArrayList<ArrayList<RecyclerView.x>> XR = new ArrayList();
  ArrayList<ArrayList<b>> XS = new ArrayList();
  ArrayList<ArrayList<a>> XT = new ArrayList();
  ArrayList<RecyclerView.x> XU = new ArrayList();
  ArrayList<RecyclerView.x> XV = new ArrayList();
  ArrayList<RecyclerView.x> XW = new ArrayList();
  ArrayList<RecyclerView.x> XX = new ArrayList();
  
  private void a(a parama)
  {
    if (parama.Yk != null) {
      a(parama, parama.Yk);
    }
    if (parama.Yl != null) {
      a(parama, parama.Yl);
    }
  }
  
  private void a(List<a> paramList, RecyclerView.x paramx)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      a locala = (a)paramList.get(i);
      if ((a(locala, paramx)) && (locala.Yk == null) && (locala.Yl == null)) {
        paramList.remove(locala);
      }
      i -= 1;
    }
  }
  
  private boolean a(a parama, RecyclerView.x paramx)
  {
    if (parama.Yl == paramx) {
      parama.Yl = null;
    }
    for (;;)
    {
      paramx.itemView.setAlpha(1.0F);
      paramx.itemView.setTranslationX(0.0F);
      paramx.itemView.setTranslationY(0.0F);
      k(paramx);
      return true;
      if (parama.Yk != paramx) {
        break;
      }
      parama.Yk = null;
    }
    return false;
  }
  
  private void d(RecyclerView.x paramx)
  {
    if (XM == null) {
      XM = new ValueAnimator().getInterpolator();
    }
    paramx.itemView.animate().setInterpolator(XM);
    c(paramx);
  }
  
  private static void k(List<RecyclerView.x> paramList)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      ((RecyclerView.x)paramList.get(i)).itemView.animate().cancel();
      i -= 1;
    }
  }
  
  public final boolean a(RecyclerView.x paramx)
  {
    d(paramx);
    this.XN.add(paramx);
    return true;
  }
  
  public final boolean a(RecyclerView.x paramx, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = paramx.itemView;
    paramInt1 += (int)paramx.itemView.getTranslationX();
    paramInt2 += (int)paramx.itemView.getTranslationY();
    d(paramx);
    int i = paramInt3 - paramInt1;
    int j = paramInt4 - paramInt2;
    if ((i == 0) && (j == 0))
    {
      k(paramx);
      return false;
    }
    if (i != 0) {
      localView.setTranslationX(-i);
    }
    if (j != 0) {
      localView.setTranslationY(-j);
    }
    this.XP.add(new b(paramx, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  public final boolean a(RecyclerView.x paramx1, RecyclerView.x paramx2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramx1 == paramx2) {
      return a(paramx1, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    float f1 = paramx1.itemView.getTranslationX();
    float f2 = paramx1.itemView.getTranslationY();
    float f3 = paramx1.itemView.getAlpha();
    d(paramx1);
    int i = (int)(paramInt3 - paramInt1 - f1);
    int j = (int)(paramInt4 - paramInt2 - f2);
    paramx1.itemView.setTranslationX(f1);
    paramx1.itemView.setTranslationY(f2);
    paramx1.itemView.setAlpha(f3);
    if (paramx2 != null)
    {
      d(paramx2);
      paramx2.itemView.setTranslationX(-i);
      paramx2.itemView.setTranslationY(-j);
      paramx2.itemView.setAlpha(0.0F);
    }
    this.XQ.add(new a(paramx1, paramx2, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  public final boolean a(RecyclerView.x paramx, List<Object> paramList)
  {
    return (!paramList.isEmpty()) || (super.a(paramx, paramList));
  }
  
  public final boolean b(RecyclerView.x paramx)
  {
    d(paramx);
    paramx.itemView.setAlpha(0.0F);
    this.XO.add(paramx);
    return true;
  }
  
  public final void c(RecyclerView.x paramx)
  {
    View localView = paramx.itemView;
    localView.animate().cancel();
    int i = this.XP.size() - 1;
    while (i >= 0)
    {
      if (((b)this.XP.get(i)).Yq == paramx)
      {
        localView.setTranslationY(0.0F);
        localView.setTranslationX(0.0F);
        k(paramx);
        this.XP.remove(i);
      }
      i -= 1;
    }
    a(this.XQ, paramx);
    if (this.XN.remove(paramx))
    {
      localView.setAlpha(1.0F);
      k(paramx);
    }
    if (this.XO.remove(paramx))
    {
      localView.setAlpha(1.0F);
      k(paramx);
    }
    i = this.XT.size() - 1;
    ArrayList localArrayList;
    while (i >= 0)
    {
      localArrayList = (ArrayList)this.XT.get(i);
      a(localArrayList, paramx);
      if (localArrayList.isEmpty()) {
        this.XT.remove(i);
      }
      i -= 1;
    }
    i = this.XS.size() - 1;
    if (i >= 0)
    {
      localArrayList = (ArrayList)this.XS.get(i);
      int j = localArrayList.size() - 1;
      for (;;)
      {
        if (j >= 0)
        {
          if (((b)localArrayList.get(j)).Yq != paramx) {
            break label293;
          }
          localView.setTranslationY(0.0F);
          localView.setTranslationX(0.0F);
          k(paramx);
          localArrayList.remove(j);
          if (localArrayList.isEmpty()) {
            this.XS.remove(i);
          }
        }
        i -= 1;
        break;
        label293:
        j -= 1;
      }
    }
    i = this.XR.size() - 1;
    while (i >= 0)
    {
      localArrayList = (ArrayList)this.XR.get(i);
      if (localArrayList.remove(paramx))
      {
        localView.setAlpha(1.0F);
        k(paramx);
        if (localArrayList.isEmpty()) {
          this.XR.remove(i);
        }
      }
      i -= 1;
    }
    this.XW.remove(paramx);
    this.XU.remove(paramx);
    this.XX.remove(paramx);
    this.XV.remove(paramx);
    gC();
  }
  
  public final void gB()
  {
    int i;
    int j;
    label24:
    int k;
    if (!this.XN.isEmpty())
    {
      i = 1;
      if (this.XP.isEmpty()) {
        break label72;
      }
      j = 1;
      if (this.XQ.isEmpty()) {
        break label77;
      }
      k = 1;
      label36:
      if (this.XO.isEmpty()) {
        break label82;
      }
    }
    label72:
    label77:
    label82:
    for (int m = 1;; m = 0)
    {
      if ((i != 0) || (j != 0) || (m != 0) || (k != 0)) {
        break label88;
      }
      return;
      i = 0;
      break;
      j = 0;
      break label24;
      k = 0;
      break label36;
    }
    label88:
    final Object localObject1 = this.XN.iterator();
    final Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (RecyclerView.x)((Iterator)localObject1).next();
      final View localView = ((RecyclerView.x)localObject2).itemView;
      final ViewPropertyAnimator localViewPropertyAnimator = localView.animate();
      this.XW.add(localObject2);
      localViewPropertyAnimator.setDuration(this.aeY).alpha(0.0F).setListener(new AnimatorListenerAdapter()
      {
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          localViewPropertyAnimator.setListener(null);
          localView.setAlpha(1.0F);
          al.this.k(localObject2);
          al.this.XW.remove(localObject2);
          al.this.gC();
        }
        
        public final void onAnimationStart(Animator paramAnonymousAnimator) {}
      }).start();
    }
    this.XN.clear();
    label266:
    label346:
    long l1;
    label421:
    long l2;
    if (j != 0)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(this.XP);
      this.XS.add(localObject1);
      this.XP.clear();
      localObject2 = new Runnable()
      {
        public final void run()
        {
          Iterator localIterator = localObject1.iterator();
          while (localIterator.hasNext())
          {
            Object localObject = (al.b)localIterator.next();
            al localal = al.this;
            RecyclerView.x localx = ((al.b)localObject).Yq;
            int k = ((al.b)localObject).Ym;
            int i = ((al.b)localObject).Yn;
            int m = ((al.b)localObject).Yo;
            int j = ((al.b)localObject).Yp;
            localObject = localx.itemView;
            k = m - k;
            i = j - i;
            if (k != 0) {
              ((View)localObject).animate().translationX(0.0F);
            }
            if (i != 0) {
              ((View)localObject).animate().translationY(0.0F);
            }
            ViewPropertyAnimator localViewPropertyAnimator = ((View)localObject).animate();
            localal.XV.add(localx);
            localViewPropertyAnimator.setDuration(localal.aeZ).setListener(new al.6(localal, localx, k, (View)localObject, i, localViewPropertyAnimator)).start();
          }
          localObject1.clear();
          al.this.XS.remove(localObject1);
        }
      };
      if (i != 0) {
        r.a(((b)((ArrayList)localObject1).get(0)).Yq.itemView, (Runnable)localObject2, this.aeY);
      }
    }
    else
    {
      if (k != 0)
      {
        localObject1 = new ArrayList();
        ((ArrayList)localObject1).addAll(this.XQ);
        this.XT.add(localObject1);
        this.XQ.clear();
        localObject2 = new Runnable()
        {
          public final void run()
          {
            Iterator localIterator = localObject1.iterator();
            if (localIterator.hasNext())
            {
              al.a locala = (al.a)localIterator.next();
              al localal = al.this;
              Object localObject1 = locala.Yk;
              if (localObject1 == null)
              {
                localObject1 = null;
                label46:
                localObject2 = locala.Yl;
                if (localObject2 == null) {
                  break label229;
                }
              }
              label229:
              for (Object localObject2 = ((RecyclerView.x)localObject2).itemView;; localObject2 = null)
              {
                if (localObject1 != null)
                {
                  ViewPropertyAnimator localViewPropertyAnimator = ((View)localObject1).animate().setDuration(localal.afa);
                  localal.XX.add(locala.Yk);
                  localViewPropertyAnimator.translationX(locala.Yo - locala.Ym);
                  localViewPropertyAnimator.translationY(locala.Yp - locala.Yn);
                  localViewPropertyAnimator.alpha(0.0F).setListener(new al.7(localal, locala, localViewPropertyAnimator, (View)localObject1)).start();
                }
                if (localObject2 == null) {
                  break;
                }
                localObject1 = ((View)localObject2).animate();
                localal.XX.add(locala.Yl);
                ((ViewPropertyAnimator)localObject1).translationX(0.0F).translationY(0.0F).setDuration(localal.afa).alpha(1.0F).setListener(new al.8(localal, locala, (ViewPropertyAnimator)localObject1, (View)localObject2)).start();
                break;
                localObject1 = ((RecyclerView.x)localObject1).itemView;
                break label46;
              }
            }
            localObject1.clear();
            al.this.XT.remove(localObject1);
          }
        };
        if (i == 0) {
          break label483;
        }
        r.a(((a)((ArrayList)localObject1).get(0)).Yk.itemView, (Runnable)localObject2, this.aeY);
      }
      if (m == 0) {
        break label491;
      }
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(this.XO);
      this.XR.add(localObject1);
      this.XO.clear();
      localObject2 = new Runnable()
      {
        public final void run()
        {
          Iterator localIterator = localObject1.iterator();
          while (localIterator.hasNext())
          {
            RecyclerView.x localx = (RecyclerView.x)localIterator.next();
            al localal = al.this;
            View localView = localx.itemView;
            ViewPropertyAnimator localViewPropertyAnimator = localView.animate();
            localal.XU.add(localx);
            localViewPropertyAnimator.alpha(1.0F).setDuration(localal.aeX).setListener(new al.5(localal, localx, localView, localViewPropertyAnimator)).start();
          }
          localObject1.clear();
          al.this.XR.remove(localObject1);
        }
      };
      if ((i == 0) && (j == 0) && (k == 0)) {
        break label511;
      }
      if (i == 0) {
        break label493;
      }
      l1 = this.aeY;
      if (j == 0) {
        break label499;
      }
      l2 = this.aeZ;
      label431:
      if (k == 0) {
        break label505;
      }
    }
    label483:
    label491:
    label493:
    label499:
    label505:
    for (long l3 = this.afa;; l3 = 0L)
    {
      l2 = Math.max(l2, l3);
      r.a(((RecyclerView.x)((ArrayList)localObject1).get(0)).itemView, (Runnable)localObject2, l1 + l2);
      return;
      ((Runnable)localObject2).run();
      break label266;
      ((Runnable)localObject2).run();
      break label346;
      break;
      l1 = 0L;
      break label421;
      l2 = 0L;
      break label431;
    }
    label511:
    ((Runnable)localObject2).run();
  }
  
  final void gC()
  {
    if (!isRunning()) {
      ih();
    }
  }
  
  public final void gD()
  {
    int i = this.XP.size() - 1;
    Object localObject1;
    Object localObject2;
    while (i >= 0)
    {
      localObject1 = (b)this.XP.get(i);
      localObject2 = ((b)localObject1).Yq.itemView;
      ((View)localObject2).setTranslationY(0.0F);
      ((View)localObject2).setTranslationX(0.0F);
      k(((b)localObject1).Yq);
      this.XP.remove(i);
      i -= 1;
    }
    i = this.XN.size() - 1;
    while (i >= 0)
    {
      k((RecyclerView.x)this.XN.get(i));
      this.XN.remove(i);
      i -= 1;
    }
    i = this.XO.size() - 1;
    while (i >= 0)
    {
      localObject1 = (RecyclerView.x)this.XO.get(i);
      ((RecyclerView.x)localObject1).itemView.setAlpha(1.0F);
      k((RecyclerView.x)localObject1);
      this.XO.remove(i);
      i -= 1;
    }
    i = this.XQ.size() - 1;
    while (i >= 0)
    {
      a((a)this.XQ.get(i));
      i -= 1;
    }
    this.XQ.clear();
    if (!isRunning()) {
      return;
    }
    i = this.XS.size() - 1;
    int j;
    while (i >= 0)
    {
      localObject1 = (ArrayList)this.XS.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        localObject2 = (b)((ArrayList)localObject1).get(j);
        View localView = ((b)localObject2).Yq.itemView;
        localView.setTranslationY(0.0F);
        localView.setTranslationX(0.0F);
        k(((b)localObject2).Yq);
        ((ArrayList)localObject1).remove(j);
        if (((ArrayList)localObject1).isEmpty()) {
          this.XS.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    i = this.XR.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ArrayList)this.XR.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        localObject2 = (RecyclerView.x)((ArrayList)localObject1).get(j);
        ((RecyclerView.x)localObject2).itemView.setAlpha(1.0F);
        k((RecyclerView.x)localObject2);
        ((ArrayList)localObject1).remove(j);
        if (((ArrayList)localObject1).isEmpty()) {
          this.XR.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    i = this.XT.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ArrayList)this.XT.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        a((a)((ArrayList)localObject1).get(j));
        if (((ArrayList)localObject1).isEmpty()) {
          this.XT.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    k(this.XW);
    k(this.XV);
    k(this.XU);
    k(this.XX);
    ih();
  }
  
  public final boolean isRunning()
  {
    return (!this.XO.isEmpty()) || (!this.XQ.isEmpty()) || (!this.XP.isEmpty()) || (!this.XN.isEmpty()) || (!this.XV.isEmpty()) || (!this.XW.isEmpty()) || (!this.XU.isEmpty()) || (!this.XX.isEmpty()) || (!this.XS.isEmpty()) || (!this.XR.isEmpty()) || (!this.XT.isEmpty());
  }
  
  private static final class a
  {
    public RecyclerView.x Yk;
    public RecyclerView.x Yl;
    public int Ym;
    public int Yn;
    public int Yo;
    public int Yp;
    
    private a(RecyclerView.x paramx1, RecyclerView.x paramx2)
    {
      this.Yk = paramx1;
      this.Yl = paramx2;
    }
    
    a(RecyclerView.x paramx1, RecyclerView.x paramx2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this(paramx1, paramx2);
      this.Ym = paramInt1;
      this.Yn = paramInt2;
      this.Yo = paramInt3;
      this.Yp = paramInt4;
    }
    
    public final String toString()
    {
      return "ChangeInfo{oldHolder=" + this.Yk + ", newHolder=" + this.Yl + ", fromX=" + this.Ym + ", fromY=" + this.Yn + ", toX=" + this.Yo + ", toY=" + this.Yp + '}';
    }
  }
  
  private static final class b
  {
    public int Ym;
    public int Yn;
    public int Yo;
    public int Yp;
    public RecyclerView.x Yq;
    
    b(RecyclerView.x paramx, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this.Yq = paramx;
      this.Ym = paramInt1;
      this.Yn = paramInt2;
      this.Yo = paramInt3;
      this.Yp = paramInt4;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */