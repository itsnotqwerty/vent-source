package android.support.v4.app;

public final class l
{
  final m<?> mHost;
  
  l(m<?> paramm)
  {
    this.mHost = paramm;
  }
  
  public final boolean execPendingActions()
  {
    return this.mHost.mFragmentManager.execPendingActions();
  }
  
  public final i findFragmentByWho(String paramString)
  {
    return this.mHost.mFragmentManager.findFragmentByWho(paramString);
  }
  
  public final void noteStateNotSaved()
  {
    this.mHost.mFragmentManager.noteStateNotSaved();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */