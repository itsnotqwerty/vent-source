package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.reward.a;
import com.google.android.gms.common.internal.ac;
import java.util.Arrays;

public final class u
  extends dr
{
  public static final Parcelable.Creator<u> CREATOR = new v();
  public final int aKS;
  public final String type;
  
  public u(a parama)
  {
    this(parama.getType(), parama.mC());
  }
  
  public u(String paramString, int paramInt)
  {
    this.type = paramString;
    this.aKS = paramInt;
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof u))) {}
    do
    {
      return false;
      paramObject = (u)paramObject;
    } while ((!ac.equal(this.type, ((u)paramObject).type)) || (!ac.equal(Integer.valueOf(this.aKS), Integer.valueOf(((u)paramObject).aKS))));
    return true;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { this.type, Integer.valueOf(this.aKS) });
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.a(paramParcel, 2, this.type);
    du.d(paramParcel, 3, this.aKS);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */