package com.a.a.a.a;

import android.util.Log;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.CustomEvent;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class a
  implements d
{
  private final Answers avl;
  
  a(Answers paramAnswers)
  {
    this.avl = paramAnswers;
  }
  
  public final void a(c paramc)
  {
    Answers localAnswers;
    CustomEvent localCustomEvent;
    for (;;)
    {
      String str;
      Object localObject;
      try
      {
        localAnswers = this.avl;
        localCustomEvent = new CustomEvent(paramc.avn);
        Iterator localIterator = paramc.attributes.keySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        str = (String)localIterator.next();
        localObject = paramc.attributes.get(str);
        if ((localObject instanceof String))
        {
          localCustomEvent.putCustomAttribute(str, (String)localObject);
          continue;
        }
        if (!(localObject instanceof Number)) {
          continue;
        }
      }
      catch (Throwable paramc)
      {
        Log.w("AnswersKitEventLogger", "Unexpected error sending Answers event", paramc);
        return;
      }
      localCustomEvent.putCustomAttribute(str, (Number)localObject);
    }
    localAnswers.logCustom(localCustomEvent);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/a/a/a/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */