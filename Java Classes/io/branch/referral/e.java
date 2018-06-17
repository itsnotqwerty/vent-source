package io.branch.referral;

import android.os.AsyncTask;
import android.os.Build.VERSION;

public abstract class e<Params, Progress, Result>
  extends AsyncTask<Params, Progress, Result>
{
  public final AsyncTask<Params, Progress, Result> e(Params... paramVarArgs)
  {
    if (Build.VERSION.SDK_INT >= 11) {
      try
      {
        AsyncTask localAsyncTask = executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, paramVarArgs);
        return localAsyncTask;
      }
      catch (Throwable localThrowable)
      {
        return execute(paramVarArgs);
      }
    }
    return execute(paramVarArgs);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */