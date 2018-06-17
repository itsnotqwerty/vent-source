package io.intercom.a.a.a.g.a;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManager;
import io.intercom.a.a.a.g.c;
import io.intercom.a.a.a.i.h;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class i<T extends View, Z>
  extends a<Z>
{
  private static boolean cQy = false;
  private static Integer cQz = null;
  private final a cQA;
  private View.OnAttachStateChangeListener cQB;
  private boolean cQC;
  private boolean cQD;
  protected final T view;
  
  public i(T paramT)
  {
    this.view = ((View)h.checkNotNull(paramT, "Argument must not be null"));
    this.cQA = new a(paramT);
  }
  
  public c getRequest()
  {
    Object localObject;
    if (cQz == null) {
      localObject = this.view.getTag();
    }
    while (localObject != null) {
      if ((localObject instanceof c))
      {
        return (c)localObject;
        localObject = this.view.getTag(cQz.intValue());
      }
      else
      {
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
      }
    }
    return null;
  }
  
  public void getSize(g paramg)
  {
    a locala = this.cQA;
    int i = locala.JL();
    int j = locala.JK();
    if (a.aQ(i, j)) {
      paramg.aP(i, j);
    }
    do
    {
      return;
      if (!locala.cKz.contains(paramg)) {
        locala.cKz.add(paramg);
      }
    } while (locala.cQG != null);
    paramg = locala.view.getViewTreeObserver();
    locala.cQG = new i.a.a(locala);
    paramg.addOnPreDrawListener(locala.cQG);
  }
  
  public void onLoadCleared(Drawable paramDrawable)
  {
    super.onLoadCleared(paramDrawable);
    this.cQA.JJ();
    if ((this.cQC) || (this.cQB == null) || (!this.cQD)) {
      return;
    }
    this.view.removeOnAttachStateChangeListener(this.cQB);
    this.cQD = false;
  }
  
  public void onLoadStarted(Drawable paramDrawable)
  {
    super.onLoadStarted(paramDrawable);
    if ((this.cQB == null) || (this.cQD)) {
      return;
    }
    this.view.addOnAttachStateChangeListener(this.cQB);
    this.cQD = true;
  }
  
  public void removeCallback(g paramg)
  {
    this.cQA.cKz.remove(paramg);
  }
  
  public void setRequest(c paramc)
  {
    if (cQz == null)
    {
      cQy = true;
      this.view.setTag(paramc);
      return;
    }
    this.view.setTag(cQz.intValue(), paramc);
  }
  
  public String toString()
  {
    return "Target for: " + this.view;
  }
  
  static final class a
  {
    static Integer cQE;
    final List<g> cKz = new ArrayList();
    private boolean cQF;
    a cQG;
    final View view;
    
    a(View paramView)
    {
      this.view = paramView;
    }
    
    static boolean aQ(int paramInt1, int paramInt2)
    {
      return (fq(paramInt1)) && (fq(paramInt2));
    }
    
    private static boolean fq(int paramInt)
    {
      return (paramInt > 0) || (paramInt == Integer.MIN_VALUE);
    }
    
    private int o(int paramInt1, int paramInt2, int paramInt3)
    {
      int i = paramInt2 - paramInt3;
      if (i > 0) {
        paramInt1 = i;
      }
      do
      {
        return paramInt1;
        if ((this.cQF) && (this.view.isLayoutRequested())) {
          return 0;
        }
        paramInt3 = paramInt1 - paramInt3;
        paramInt1 = paramInt3;
      } while (paramInt3 > 0);
      if ((!this.view.isLayoutRequested()) && (paramInt2 == -2))
      {
        if (Log.isLoggable("ViewTarget", 4)) {
          Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
        }
        Object localObject = this.view.getContext();
        if (cQE == null)
        {
          localObject = ((WindowManager)h.checkNotNull((WindowManager)((Context)localObject).getSystemService("window"), "Argument must not be null")).getDefaultDisplay();
          Point localPoint = new Point();
          ((Display)localObject).getSize(localPoint);
          cQE = Integer.valueOf(Math.max(localPoint.x, localPoint.y));
        }
        return cQE.intValue();
      }
      return 0;
    }
    
    final void JI()
    {
      if (this.cKz.isEmpty()) {}
      int i;
      int j;
      do
      {
        return;
        i = JL();
        j = JK();
      } while (!aQ(i, j));
      Iterator localIterator = new ArrayList(this.cKz).iterator();
      while (localIterator.hasNext()) {
        ((g)localIterator.next()).aP(i, j);
      }
      JJ();
    }
    
    final void JJ()
    {
      ViewTreeObserver localViewTreeObserver = this.view.getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeOnPreDrawListener(this.cQG);
      }
      this.cQG = null;
      this.cKz.clear();
    }
    
    final int JK()
    {
      int j = this.view.getPaddingTop();
      int k = this.view.getPaddingBottom();
      ViewGroup.LayoutParams localLayoutParams = this.view.getLayoutParams();
      if (localLayoutParams != null) {}
      for (int i = localLayoutParams.height;; i = 0) {
        return o(this.view.getHeight(), i, k + j);
      }
    }
    
    final int JL()
    {
      int j = this.view.getPaddingLeft();
      int k = this.view.getPaddingRight();
      ViewGroup.LayoutParams localLayoutParams = this.view.getLayoutParams();
      if (localLayoutParams != null) {}
      for (int i = localLayoutParams.width;; i = 0) {
        return o(this.view.getWidth(), i, k + j);
      }
    }
    
    private static final class a
      implements ViewTreeObserver.OnPreDrawListener
    {
      private final WeakReference<i.a> cQH;
      
      a(i.a parama)
      {
        this.cQH = new WeakReference(parama);
      }
      
      public final boolean onPreDraw()
      {
        if (Log.isLoggable("ViewTarget", 2)) {
          Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
        }
        i.a locala = (i.a)this.cQH.get();
        if (locala != null) {
          locala.JI();
        }
        return true;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/g/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */