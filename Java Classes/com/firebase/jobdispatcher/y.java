package com.firebase.jobdispatcher;

import android.os.AsyncTask;
import android.support.v4.g.m;

public abstract class y
  extends s
{
  private final m<r, a> runningJobs = new m();
  
  private void onJobFinished(r paramr, boolean paramBoolean)
  {
    synchronized (this.runningJobs)
    {
      this.runningJobs.remove(paramr);
      jobFinished(paramr, paramBoolean);
      return;
    }
  }
  
  public abstract int onRunJob(r paramr);
  
  public boolean onStartJob(r paramr)
  {
    a locala = new a(this, paramr, (byte)0);
    synchronized (this.runningJobs)
    {
      this.runningJobs.put(paramr, locala);
      locala.execute(new Void[0]);
      return true;
    }
  }
  
  public boolean onStopJob(r paramr)
  {
    synchronized (this.runningJobs)
    {
      paramr = (a)this.runningJobs.remove(paramr);
      if (paramr != null)
      {
        paramr.cancel(true);
        return true;
      }
      return false;
    }
  }
  
  private static final class a
    extends AsyncTask<Void, Void, Integer>
  {
    private final y ayg;
    private final r ayh;
    
    private a(y paramy, r paramr)
    {
      this.ayg = paramy;
      this.ayh = paramr;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */