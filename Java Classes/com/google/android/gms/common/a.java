package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ac;
import com.google.android.gms.common.internal.ad;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;
import java.util.Arrays;

public final class a
  extends dr
{
  public static final Parcelable.Creator<a> CREATOR = new j();
  public static final a aCh = new a(0);
  private int aCi;
  public final int aCj;
  public final PendingIntent aCk;
  public final String aCl;
  
  public a(int paramInt)
  {
    this(paramInt, null, (byte)0);
  }
  
  a(int paramInt1, int paramInt2, PendingIntent paramPendingIntent, String paramString)
  {
    this.aCi = paramInt1;
    this.aCj = paramInt2;
    this.aCk = paramPendingIntent;
    this.aCl = paramString;
  }
  
  public a(int paramInt, PendingIntent paramPendingIntent)
  {
    this(paramInt, paramPendingIntent, (byte)0);
  }
  
  private a(int paramInt, PendingIntent paramPendingIntent, byte paramByte)
  {
    this(1, paramInt, paramPendingIntent, null);
  }
  
  static String cB(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 31 + "UNKNOWN_ERROR_CODE(" + paramInt + ")";
    case 0: 
      return "SUCCESS";
    case 1: 
      return "SERVICE_MISSING";
    case 2: 
      return "SERVICE_VERSION_UPDATE_REQUIRED";
    case 3: 
      return "SERVICE_DISABLED";
    case 4: 
      return "SIGN_IN_REQUIRED";
    case 5: 
      return "INVALID_ACCOUNT";
    case 6: 
      return "RESOLUTION_REQUIRED";
    case 7: 
      return "NETWORK_ERROR";
    case 8: 
      return "INTERNAL_ERROR";
    case 9: 
      return "SERVICE_INVALID";
    case 10: 
      return "DEVELOPER_ERROR";
    case 11: 
      return "LICENSE_CHECK_FAILED";
    case 13: 
      return "CANCELED";
    case 14: 
      return "TIMEOUT";
    case 15: 
      return "INTERRUPTED";
    case 16: 
      return "API_UNAVAILABLE";
    case 17: 
      return "SIGN_IN_FAILED";
    case 18: 
      return "SERVICE_UPDATING";
    case 19: 
      return "SERVICE_MISSING_PERMISSION";
    case 20: 
      return "RESTRICTED_PROFILE";
    case 21: 
      return "API_VERSION_UPDATE_REQUIRED";
    case 1500: 
      return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
    case 99: 
      return "UNFINISHED";
    }
    return "UNKNOWN";
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof a)) {
        return false;
      }
      paramObject = (a)paramObject;
    } while ((this.aCj == ((a)paramObject).aCj) && (ac.equal(this.aCk, ((a)paramObject).aCk)) && (ac.equal(this.aCl, ((a)paramObject).aCl)));
    return false;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(this.aCj), this.aCk, this.aCl });
  }
  
  public final boolean mP()
  {
    return (this.aCj != 0) && (this.aCk != null);
  }
  
  public final boolean mQ()
  {
    return this.aCj == 0;
  }
  
  public final String toString()
  {
    return ac.O(this).b("statusCode", cB(this.aCj)).b("resolution", this.aCk).b("message", this.aCl).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.aCi);
    du.d(paramParcel, 2, this.aCj);
    du.a(paramParcel, 3, this.aCk, paramInt);
    du.a(paramParcel, 4, this.aCl);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */