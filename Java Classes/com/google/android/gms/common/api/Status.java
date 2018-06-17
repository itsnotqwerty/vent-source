package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ac;
import com.google.android.gms.common.internal.ad;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;
import java.util.Arrays;

public final class Status
  extends dr
  implements i, ReflectedParcelable
{
  public static final Parcelable.Creator<Status> CREATOR = new o();
  public static final Status aDa = new Status(0);
  public static final Status aDb = new Status(14);
  public static final Status aDc = new Status(8);
  public static final Status aDd = new Status(15);
  public static final Status aDe = new Status(16);
  private static Status aDf = new Status(17);
  private static Status aDg = new Status(18);
  private int aCi;
  public final int aCj;
  private final PendingIntent aCk;
  public final String aCl;
  
  public Status(int paramInt)
  {
    this(paramInt, null);
  }
  
  Status(int paramInt1, int paramInt2, String paramString, PendingIntent paramPendingIntent)
  {
    this.aCi = paramInt1;
    this.aCj = paramInt2;
    this.aCl = paramString;
    this.aCk = paramPendingIntent;
  }
  
  public Status(int paramInt, String paramString)
  {
    this(1, paramInt, paramString, null);
  }
  
  public Status(int paramInt, String paramString, PendingIntent paramPendingIntent)
  {
    this(1, paramInt, paramString, paramPendingIntent);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Status)) {}
    do
    {
      return false;
      paramObject = (Status)paramObject;
    } while ((this.aCi != ((Status)paramObject).aCi) || (this.aCj != ((Status)paramObject).aCj) || (!ac.equal(this.aCl, ((Status)paramObject).aCl)) || (!ac.equal(this.aCk, ((Status)paramObject).aCk)));
    return true;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(this.aCi), Integer.valueOf(this.aCj), this.aCl, this.aCk });
  }
  
  public final boolean mQ()
  {
    return this.aCj <= 0;
  }
  
  public final Status nf()
  {
    return this;
  }
  
  public final String toString()
  {
    ad localad = ac.O(this);
    if (this.aCl != null) {}
    for (String str = this.aCl;; str = d.cE(this.aCj)) {
      return localad.b("statusCode", str).b("resolution", this.aCk).toString();
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.aCj);
    du.a(paramParcel, 2, this.aCl);
    du.a(paramParcel, 3, this.aCk, paramInt);
    du.d(paramParcel, 1000, this.aCi);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/Status.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */