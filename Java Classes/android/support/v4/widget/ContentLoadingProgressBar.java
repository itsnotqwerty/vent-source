package android.support.v4.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

public class ContentLoadingProgressBar
  extends ProgressBar
{
  boolean IV = false;
  boolean IW = false;
  private final Runnable IX = new Runnable()
  {
    public final void run()
    {
      ContentLoadingProgressBar.this.IV = false;
      ContentLoadingProgressBar.this.Ie = -1L;
      ContentLoadingProgressBar.this.setVisibility(8);
    }
  };
  private final Runnable IY = new Runnable()
  {
    public final void run()
    {
      ContentLoadingProgressBar.this.IW = false;
      if (!ContentLoadingProgressBar.this.wR)
      {
        ContentLoadingProgressBar.this.Ie = System.currentTimeMillis();
        ContentLoadingProgressBar.this.setVisibility(0);
      }
    }
  };
  long Ie = -1L;
  boolean wR = false;
  
  public ContentLoadingProgressBar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ContentLoadingProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0);
  }
  
  private void removeCallbacks()
  {
    removeCallbacks(this.IX);
    removeCallbacks(this.IY);
  }
  
  /* Error */
  public final void hide()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 36	android/support/v4/widget/ContentLoadingProgressBar:wR	Z
    //   7: aload_0
    //   8: aload_0
    //   9: getfield 44	android/support/v4/widget/ContentLoadingProgressBar:IY	Ljava/lang/Runnable;
    //   12: invokevirtual 49	android/support/v4/widget/ContentLoadingProgressBar:removeCallbacks	(Ljava/lang/Runnable;)Z
    //   15: pop
    //   16: aload_0
    //   17: iconst_0
    //   18: putfield 34	android/support/v4/widget/ContentLoadingProgressBar:IW	Z
    //   21: invokestatic 56	java/lang/System:currentTimeMillis	()J
    //   24: aload_0
    //   25: getfield 30	android/support/v4/widget/ContentLoadingProgressBar:Ie	J
    //   28: lsub
    //   29: lstore_1
    //   30: lload_1
    //   31: ldc2_w 57
    //   34: lcmp
    //   35: ifge +14 -> 49
    //   38: aload_0
    //   39: getfield 30	android/support/v4/widget/ContentLoadingProgressBar:Ie	J
    //   42: ldc2_w 27
    //   45: lcmp
    //   46: ifne +12 -> 58
    //   49: aload_0
    //   50: bipush 8
    //   52: invokevirtual 62	android/support/v4/widget/ContentLoadingProgressBar:setVisibility	(I)V
    //   55: aload_0
    //   56: monitorexit
    //   57: return
    //   58: aload_0
    //   59: getfield 32	android/support/v4/widget/ContentLoadingProgressBar:IV	Z
    //   62: ifne -7 -> 55
    //   65: aload_0
    //   66: aload_0
    //   67: getfield 41	android/support/v4/widget/ContentLoadingProgressBar:IX	Ljava/lang/Runnable;
    //   70: ldc2_w 57
    //   73: lload_1
    //   74: lsub
    //   75: invokevirtual 66	android/support/v4/widget/ContentLoadingProgressBar:postDelayed	(Ljava/lang/Runnable;J)Z
    //   78: pop
    //   79: aload_0
    //   80: iconst_1
    //   81: putfield 32	android/support/v4/widget/ContentLoadingProgressBar:IV	Z
    //   84: goto -29 -> 55
    //   87: astore_3
    //   88: aload_0
    //   89: monitorexit
    //   90: aload_3
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	ContentLoadingProgressBar
    //   29	45	1	l	long
    //   87	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	30	87	finally
    //   38	49	87	finally
    //   49	55	87	finally
    //   58	84	87	finally
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    removeCallbacks();
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks();
  }
  
  public final void show()
  {
    try
    {
      this.Ie = -1L;
      this.wR = false;
      removeCallbacks(this.IX);
      this.IV = false;
      if (!this.IW)
      {
        postDelayed(this.IY, 500L);
        this.IW = true;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/ContentLoadingProgressBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */