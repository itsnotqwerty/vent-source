package android.support.transition;

import android.os.IBinder;

final class at
  implements av
{
  private final IBinder wa;
  
  at(IBinder paramIBinder)
  {
    this.wa = paramIBinder;
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof at)) && (((at)paramObject).wa.equals(this.wa));
  }
  
  public final int hashCode()
  {
    return this.wa.hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */