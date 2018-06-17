package android.support.v7.c.a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.widget.m;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

public final class b
{
  private static final ThreadLocal<TypedValue> Pm = new ThreadLocal();
  private static final WeakHashMap<Context, SparseArray<a>> Pn = new WeakHashMap(0);
  private static final Object Po = new Object();
  
  public static Drawable a(Context paramContext, int paramInt)
  {
    return m.gh().a(paramContext, paramInt, false);
  }
  
  public static ColorStateList b(Context paramContext, int paramInt)
  {
    Object localObject1;
    if (Build.VERSION.SDK_INT >= 23) {
      localObject1 = paramContext.getColorStateList(paramInt);
    }
    Object localObject2;
    do
    {
      return (ColorStateList)localObject1;
      localObject2 = f(paramContext, paramInt);
      localObject1 = localObject2;
    } while (localObject2 != null);
    ColorStateList localColorStateList = e(paramContext, paramInt);
    if (localColorStateList != null) {
      synchronized (Po)
      {
        localObject2 = (SparseArray)Pn.get(paramContext);
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject1 = new SparseArray();
          Pn.put(paramContext, localObject1);
        }
        ((SparseArray)localObject1).append(paramInt, new a(localColorStateList, paramContext.getResources().getConfiguration()));
        return localColorStateList;
      }
    }
    return android.support.v4.content.a.b(paramContext, paramInt);
  }
  
  private static ColorStateList e(Context paramContext, int paramInt)
  {
    Resources localResources = paramContext.getResources();
    Object localObject2 = (TypedValue)Pm.get();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new TypedValue();
      Pm.set(localObject1);
    }
    localResources.getValue(paramInt, (TypedValue)localObject1, true);
    if ((((TypedValue)localObject1).type >= 28) && (((TypedValue)localObject1).type <= 31)) {}
    for (int i = 1; i != 0; i = 0) {
      return null;
    }
    localObject1 = paramContext.getResources();
    localObject2 = ((Resources)localObject1).getXml(paramInt);
    try
    {
      paramContext = a.createFromXml((Resources)localObject1, (XmlPullParser)localObject2, paramContext.getTheme());
      return paramContext;
    }
    catch (Exception paramContext)
    {
      Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", paramContext);
    }
    return null;
  }
  
  private static ColorStateList f(Context paramContext, int paramInt)
  {
    synchronized (Po)
    {
      SparseArray localSparseArray = (SparseArray)Pn.get(paramContext);
      if ((localSparseArray != null) && (localSparseArray.size() > 0))
      {
        a locala = (a)localSparseArray.get(paramInt);
        if (locala != null)
        {
          if (locala.Pq.equals(paramContext.getResources().getConfiguration()))
          {
            paramContext = locala.Pp;
            return paramContext;
          }
          localSparseArray.remove(paramInt);
        }
      }
      return null;
    }
  }
  
  private static final class a
  {
    final ColorStateList Pp;
    final Configuration Pq;
    
    a(ColorStateList paramColorStateList, Configuration paramConfiguration)
    {
      this.Pp = paramColorStateList;
      this.Pq = paramConfiguration;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/c/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */