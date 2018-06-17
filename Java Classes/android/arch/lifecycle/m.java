package android.arch.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;

public final class m
  extends Fragment
{
  private a bf;
  
  public static void a(Activity paramActivity)
  {
    paramActivity = paramActivity.getFragmentManager();
    if (paramActivity.findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag") == null)
    {
      paramActivity.beginTransaction().add(new m(), "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
      paramActivity.executePendingTransactions();
    }
  }
  
  private void c(c.a parama)
  {
    Object localObject = getActivity();
    if ((localObject instanceof g)) {
      ((g)localObject).aa().a(parama);
    }
    do
    {
      do
      {
        return;
      } while (!(localObject instanceof e));
      localObject = ((e)localObject).getLifecycle();
    } while (!(localObject instanceof f));
    ((f)localObject).a(parama);
  }
  
  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    c(c.a.ON_CREATE);
  }
  
  public final void onDestroy()
  {
    super.onDestroy();
    c(c.a.ON_DESTROY);
    this.bf = null;
  }
  
  public final void onPause()
  {
    super.onPause();
    c(c.a.ON_PAUSE);
  }
  
  public final void onResume()
  {
    super.onResume();
    c(c.a.ON_RESUME);
  }
  
  public final void onStart()
  {
    super.onStart();
    c(c.a.ON_START);
  }
  
  public final void onStop()
  {
    super.onStop();
    c(c.a.ON_STOP);
  }
  
  static abstract interface a {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/arch/lifecycle/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */