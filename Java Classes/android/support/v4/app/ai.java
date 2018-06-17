package android.support.v4.app;

import android.app.Activity;
import android.arch.lifecycle.c;
import android.arch.lifecycle.c.b;
import android.arch.lifecycle.e;
import android.arch.lifecycle.f;
import android.os.Bundle;

public class ai
  extends Activity
  implements e
{
  private android.support.v4.g.m<Class<? extends a>, a> mExtraDataMap = new android.support.v4.g.m();
  private f mLifecycleRegistry = new f(this);
  
  public <T extends a> T getExtraData(Class<T> paramClass)
  {
    return (a)this.mExtraDataMap.get(paramClass);
  }
  
  public c getLifecycle()
  {
    return this.mLifecycleRegistry;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    android.arch.lifecycle.m.a(this);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    this.mLifecycleRegistry.b(c.b.aC);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void putExtraData(a parama)
  {
    this.mExtraDataMap.put(parama.getClass(), parama);
  }
  
  public static final class a {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */