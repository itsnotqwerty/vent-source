package android.support.c.a;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class c
  extends h
  implements b
{
  private Context mContext;
  private ArrayList<Object> qA = null;
  final Drawable.Callback qB = new Drawable.Callback()
  {
    public final void invalidateDrawable(Drawable paramAnonymousDrawable)
    {
      c.this.invalidateSelf();
    }
    
    public final void scheduleDrawable(Drawable paramAnonymousDrawable, Runnable paramAnonymousRunnable, long paramAnonymousLong)
    {
      c.this.scheduleSelf(paramAnonymousRunnable, paramAnonymousLong);
    }
    
    public final void unscheduleDrawable(Drawable paramAnonymousDrawable, Runnable paramAnonymousRunnable)
    {
      c.this.unscheduleSelf(paramAnonymousRunnable);
    }
  };
  private a qx;
  private ArgbEvaluator qy = null;
  private Animator.AnimatorListener qz = null;
  
  c()
  {
    this(null, (byte)0);
  }
  
  private c(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private c(Context paramContext, byte paramByte)
  {
    this.mContext = paramContext;
    this.qx = new a();
  }
  
  public static c a(Context paramContext, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    paramContext = new c(paramContext);
    paramContext.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    return paramContext;
  }
  
  private void a(Animator paramAnimator)
  {
    Object localObject;
    if ((paramAnimator instanceof AnimatorSet))
    {
      localObject = ((AnimatorSet)paramAnimator).getChildAnimations();
      if (localObject != null)
      {
        int i = 0;
        while (i < ((List)localObject).size())
        {
          a((Animator)((List)localObject).get(i));
          i += 1;
        }
      }
    }
    if ((paramAnimator instanceof ObjectAnimator))
    {
      paramAnimator = (ObjectAnimator)paramAnimator;
      localObject = paramAnimator.getPropertyName();
      if (("fillColor".equals(localObject)) || ("strokeColor".equals(localObject)))
      {
        if (this.qy == null) {
          this.qy = new ArgbEvaluator();
        }
        paramAnimator.setEvaluator(this.qy);
      }
    }
  }
  
  public final void applyTheme(Resources.Theme paramTheme)
  {
    if (this.qN != null) {
      android.support.v4.a.a.a.a(this.qN, paramTheme);
    }
  }
  
  public final boolean canApplyTheme()
  {
    if (this.qN != null) {
      return android.support.v4.a.a.a.d(this.qN);
    }
    return false;
  }
  
  public final void draw(Canvas paramCanvas)
  {
    if (this.qN != null) {
      this.qN.draw(paramCanvas);
    }
    do
    {
      return;
      this.qx.qE.draw(paramCanvas);
    } while (!this.qx.qF.isStarted());
    invalidateSelf();
  }
  
  public final int getAlpha()
  {
    if (this.qN != null) {
      return android.support.v4.a.a.a.c(this.qN);
    }
    return this.qx.qE.getAlpha();
  }
  
  public final int getChangingConfigurations()
  {
    if (this.qN != null) {
      return this.qN.getChangingConfigurations();
    }
    return super.getChangingConfigurations() | this.qx.qD;
  }
  
  public final Drawable.ConstantState getConstantState()
  {
    if ((this.qN != null) && (Build.VERSION.SDK_INT >= 24)) {
      return new b(this.qN.getConstantState());
    }
    return null;
  }
  
  public final int getIntrinsicHeight()
  {
    if (this.qN != null) {
      return this.qN.getIntrinsicHeight();
    }
    return this.qx.qE.getIntrinsicHeight();
  }
  
  public final int getIntrinsicWidth()
  {
    if (this.qN != null) {
      return this.qN.getIntrinsicWidth();
    }
    return this.qx.qE.getIntrinsicWidth();
  }
  
  public final int getOpacity()
  {
    if (this.qN != null) {
      return this.qN.getOpacity();
    }
    return this.qx.qE.getOpacity();
  }
  
  public final void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    inflate(paramResources, paramXmlPullParser, paramAttributeSet, null);
  }
  
  public final void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    if (this.qN != null)
    {
      android.support.v4.a.a.a.a(this.qN, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return;
    }
    int i = paramXmlPullParser.getEventType();
    int j = paramXmlPullParser.getDepth();
    if ((i != 1) && ((paramXmlPullParser.getDepth() >= j + 1) || (i != 3)))
    {
      if (i == 2)
      {
        localObject1 = paramXmlPullParser.getName();
        if (!"animated-vector".equals(localObject1)) {
          break label182;
        }
        localObject1 = android.support.v4.content.a.c.a(paramResources, paramTheme, paramAttributeSet, a.qp);
        i = ((TypedArray)localObject1).getResourceId(0, 0);
        if (i != 0)
        {
          localObject2 = i.a(paramResources, i, paramTheme);
          ((i)localObject2).qT = false;
          ((i)localObject2).setCallback(this.qB);
          if (this.qx.qE != null) {
            this.qx.qE.setCallback(null);
          }
          this.qx.qE = ((i)localObject2);
        }
        ((TypedArray)localObject1).recycle();
      }
      label182:
      while (!"target".equals(localObject1))
      {
        i = paramXmlPullParser.next();
        break;
      }
      Object localObject2 = paramResources.obtainAttributes(paramAttributeSet, a.qq);
      String str = ((TypedArray)localObject2).getString(0);
      i = ((TypedArray)localObject2).getResourceId(1, 0);
      if (i != 0)
      {
        if (this.mContext == null) {
          break label392;
        }
        localObject1 = this.mContext;
        if (Build.VERSION.SDK_INT < 24) {
          break label370;
        }
      }
      label370:
      for (Object localObject1 = AnimatorInflater.loadAnimator((Context)localObject1, i);; localObject1 = e.a((Context)localObject1, ((Context)localObject1).getResources(), ((Context)localObject1).getTheme(), i))
      {
        ((Animator)localObject1).setTarget(this.qx.qE.qP.rM.rL.get(str));
        if (Build.VERSION.SDK_INT < 21) {
          a((Animator)localObject1);
        }
        if (a.a(this.qx) == null)
        {
          a.a(this.qx, new ArrayList());
          this.qx.qH = new android.support.v4.g.a();
        }
        a.a(this.qx).add(localObject1);
        this.qx.qH.put(localObject1, str);
        ((TypedArray)localObject2).recycle();
        break;
      }
      label392:
      ((TypedArray)localObject2).recycle();
      throw new IllegalStateException("Context can't be null when inflating animators");
    }
    paramResources = this.qx;
    if (paramResources.qF == null) {
      paramResources.qF = new AnimatorSet();
    }
    paramResources.qF.playTogether(paramResources.qG);
  }
  
  public final boolean isAutoMirrored()
  {
    if (this.qN != null) {
      return android.support.v4.a.a.a.b(this.qN);
    }
    return this.qx.qE.isAutoMirrored();
  }
  
  public final boolean isRunning()
  {
    if (this.qN != null) {
      return ((AnimatedVectorDrawable)this.qN).isRunning();
    }
    return this.qx.qF.isRunning();
  }
  
  public final boolean isStateful()
  {
    if (this.qN != null) {
      return this.qN.isStateful();
    }
    return this.qx.qE.isStateful();
  }
  
  public final Drawable mutate()
  {
    if (this.qN != null) {
      this.qN.mutate();
    }
    return this;
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    if (this.qN != null)
    {
      this.qN.setBounds(paramRect);
      return;
    }
    this.qx.qE.setBounds(paramRect);
  }
  
  protected final boolean onLevelChange(int paramInt)
  {
    if (this.qN != null) {
      return this.qN.setLevel(paramInt);
    }
    return this.qx.qE.setLevel(paramInt);
  }
  
  protected final boolean onStateChange(int[] paramArrayOfInt)
  {
    if (this.qN != null) {
      return this.qN.setState(paramArrayOfInt);
    }
    return this.qx.qE.setState(paramArrayOfInt);
  }
  
  public final void setAlpha(int paramInt)
  {
    if (this.qN != null)
    {
      this.qN.setAlpha(paramInt);
      return;
    }
    this.qx.qE.setAlpha(paramInt);
  }
  
  public final void setAutoMirrored(boolean paramBoolean)
  {
    if (this.qN != null)
    {
      android.support.v4.a.a.a.a(this.qN, paramBoolean);
      return;
    }
    this.qx.qE.setAutoMirrored(paramBoolean);
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    if (this.qN != null)
    {
      this.qN.setColorFilter(paramColorFilter);
      return;
    }
    this.qx.qE.setColorFilter(paramColorFilter);
  }
  
  public final void setTint(int paramInt)
  {
    if (this.qN != null)
    {
      android.support.v4.a.a.a.a(this.qN, paramInt);
      return;
    }
    this.qx.qE.setTint(paramInt);
  }
  
  public final void setTintList(ColorStateList paramColorStateList)
  {
    if (this.qN != null)
    {
      android.support.v4.a.a.a.a(this.qN, paramColorStateList);
      return;
    }
    this.qx.qE.setTintList(paramColorStateList);
  }
  
  public final void setTintMode(PorterDuff.Mode paramMode)
  {
    if (this.qN != null)
    {
      android.support.v4.a.a.a.a(this.qN, paramMode);
      return;
    }
    this.qx.qE.setTintMode(paramMode);
  }
  
  public final boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.qN != null) {
      return this.qN.setVisible(paramBoolean1, paramBoolean2);
    }
    this.qx.qE.setVisible(paramBoolean1, paramBoolean2);
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public final void start()
  {
    if (this.qN != null) {
      ((AnimatedVectorDrawable)this.qN).start();
    }
    while (this.qx.qF.isStarted()) {
      return;
    }
    this.qx.qF.start();
    invalidateSelf();
  }
  
  public final void stop()
  {
    if (this.qN != null)
    {
      ((AnimatedVectorDrawable)this.qN).stop();
      return;
    }
    this.qx.qF.end();
  }
  
  private static final class a
    extends Drawable.ConstantState
  {
    int qD;
    i qE;
    AnimatorSet qF;
    ArrayList<Animator> qG;
    android.support.v4.g.a<Animator, String> qH;
    
    public final int getChangingConfigurations()
    {
      return this.qD;
    }
    
    public final Drawable newDrawable()
    {
      throw new IllegalStateException("No constant state support for SDK < 24.");
    }
    
    public final Drawable newDrawable(Resources paramResources)
    {
      throw new IllegalStateException("No constant state support for SDK < 24.");
    }
  }
  
  private static final class b
    extends Drawable.ConstantState
  {
    private final Drawable.ConstantState qI;
    
    public b(Drawable.ConstantState paramConstantState)
    {
      this.qI = paramConstantState;
    }
    
    public final boolean canApplyTheme()
    {
      return this.qI.canApplyTheme();
    }
    
    public final int getChangingConfigurations()
    {
      return this.qI.getChangingConfigurations();
    }
    
    public final Drawable newDrawable()
    {
      c localc = new c();
      localc.qN = this.qI.newDrawable();
      localc.qN.setCallback(localc.qB);
      return localc;
    }
    
    public final Drawable newDrawable(Resources paramResources)
    {
      c localc = new c();
      localc.qN = this.qI.newDrawable(paramResources);
      localc.qN.setCallback(localc.qB);
      return localc;
    }
    
    public final Drawable newDrawable(Resources paramResources, Resources.Theme paramTheme)
    {
      c localc = new c();
      localc.qN = this.qI.newDrawable(paramResources, paramTheme);
      localc.qN.setCallback(localc.qB);
      return localc;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/c/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */