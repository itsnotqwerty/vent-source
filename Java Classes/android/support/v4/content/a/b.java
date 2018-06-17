package android.support.v4.content.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.a.c;
import android.util.Log;
import android.util.TypedValue;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

public final class b
{
  public static Typeface a(Context paramContext, Resources paramResources, TypedValue paramTypedValue, int paramInt1, int paramInt2, a parama)
  {
    if (paramTypedValue.string == null) {
      throw new Resources.NotFoundException("Resource \"" + paramResources.getResourceName(paramInt1) + "\" (" + Integer.toHexString(paramInt1) + ") is not a Font: " + paramTypedValue);
    }
    paramTypedValue = paramTypedValue.string.toString();
    if (!paramTypedValue.startsWith("res/"))
    {
      parama.a(-3, null);
      return null;
    }
    Object localObject = c.a(paramResources, paramInt1, paramInt2);
    if (localObject != null)
    {
      parama.a((Typeface)localObject, null);
      return (Typeface)localObject;
    }
    try
    {
      if (paramTypedValue.toLowerCase().endsWith(".xml"))
      {
        localObject = a.a(paramResources.getXml(paramInt1), paramResources);
        if (localObject == null)
        {
          Log.e("ResourcesCompat", "Failed to find font-family tag");
          parama.a(-3, null);
          return null;
        }
        return c.a(paramContext, (a.a)localObject, paramResources, paramInt1, paramInt2, parama);
      }
      paramContext = c.a(paramContext, paramResources, paramInt1, paramTypedValue, paramInt2);
      if (paramContext != null)
      {
        parama.a(paramContext, null);
        return paramContext;
      }
    }
    catch (XmlPullParserException paramContext)
    {
      Log.e("ResourcesCompat", "Failed to parse xml resource " + paramTypedValue, paramContext);
      parama.a(-3, null);
      return null;
      parama.a(-3, null);
      return paramContext;
    }
    catch (IOException paramContext)
    {
      for (;;)
      {
        Log.e("ResourcesCompat", "Failed to read xml resource " + paramTypedValue, paramContext);
      }
    }
  }
  
  public static Drawable b(Resources paramResources, int paramInt, Resources.Theme paramTheme)
    throws Resources.NotFoundException
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramResources.getDrawable(paramInt, paramTheme);
    }
    return paramResources.getDrawable(paramInt);
  }
  
  public static abstract class a
  {
    public final void a(final int paramInt, Handler paramHandler)
    {
      Handler localHandler = paramHandler;
      if (paramHandler == null) {
        localHandler = new Handler(Looper.getMainLooper());
      }
      localHandler.post(new Runnable()
      {
        public final void run() {}
      });
    }
    
    public final void a(final Typeface paramTypeface, Handler paramHandler)
    {
      Handler localHandler = paramHandler;
      if (paramHandler == null) {
        localHandler = new Handler(Looper.getMainLooper());
      }
      localHandler.post(new Runnable()
      {
        public final void run()
        {
          b.a.this.b(paramTypeface);
        }
      });
    }
    
    public abstract void b(Typeface paramTypeface);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/content/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */