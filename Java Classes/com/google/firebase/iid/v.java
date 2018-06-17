package com.google.firebase.iid;

import android.os.Bundle;

public final class v
  extends w<Void>
{
  public v(int paramInt, Bundle paramBundle)
  {
    super(paramInt, 2, paramBundle);
  }
  
  final void l(Bundle paramBundle)
  {
    if (paramBundle.getBoolean("ack", false))
    {
      Y(null);
      return;
    }
    b(new x(4, "Invalid response to one way request"));
  }
  
  final boolean uP()
  {
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */