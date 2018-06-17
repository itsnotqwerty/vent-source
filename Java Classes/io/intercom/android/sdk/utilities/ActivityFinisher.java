package io.intercom.android.sdk.utilities;

import android.app.Activity;
import android.support.v4.g.b;
import java.util.Iterator;
import java.util.Set;

public class ActivityFinisher
{
  private final Set<Activity> activities = new b();
  
  public void finishActivities()
  {
    Iterator localIterator = this.activities.iterator();
    while (localIterator.hasNext()) {
      ((Activity)localIterator.next()).finish();
    }
    this.activities.clear();
  }
  
  public void register(Activity paramActivity)
  {
    this.activities.add(paramActivity);
  }
  
  public void unregister(Activity paramActivity)
  {
    this.activities.remove(paramActivity);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/ActivityFinisher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */