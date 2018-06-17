package com.google.android.gms.common.api.internal;

public final class be<L>
{
  private final L aFQ;
  private final String aFT;
  
  public be(L paramL, String paramString)
  {
    this.aFQ = paramL;
    this.aFT = paramString;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof be)) {
        return false;
      }
      paramObject = (be)paramObject;
    } while ((this.aFQ == ((be)paramObject).aFQ) && (this.aFT.equals(((be)paramObject).aFT)));
    return false;
  }
  
  public final int hashCode()
  {
    return System.identityHashCode(this.aFQ) * 31 + this.aFT.hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/be.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */