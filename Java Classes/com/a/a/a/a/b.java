package com.a.a.a.a;

import android.util.Log;
import com.crashlytics.android.answers.Answers;

public final class b
{
  private static final d avm;
  
  static
  {
    try
    {
      Answers localAnswers = Answers.getInstance();
      if (localAnswers == null) {
        throw new IllegalStateException("Answers must be initialized before logging kit events");
      }
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      for (Object localObject1 = null; localObject1 != null; localObject1 = new a((Answers)localObject1))
      {
        avm = (d)localObject1;
        return;
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;)
      {
        Object localObject2 = null;
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        Log.w("AnswersOptionalLogger", "Unexpected error creating AnswersKitEventLogger", localThrowable);
        e locale = null;
        continue;
        locale = new e();
      }
    }
  }
  
  public static d kl()
  {
    return avm;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/a/a/a/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */