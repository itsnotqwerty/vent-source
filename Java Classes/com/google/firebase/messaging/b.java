package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.g.a;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class b
  extends dr
{
  public static final Parcelable.Creator<b> CREATOR = new h();
  public Bundle Cs;
  private Map<String, String> aBu;
  
  b(Bundle paramBundle)
  {
    this.Cs = paramBundle;
  }
  
  public final Map<String, String> getData()
  {
    if (this.aBu == null)
    {
      this.aBu = new a();
      Iterator localIterator = this.Cs.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = this.Cs.get(str);
        if ((localObject instanceof String))
        {
          localObject = (String)localObject;
          if ((!str.startsWith("google.")) && (!str.startsWith("gcm.")) && (!str.equals("from")) && (!str.equals("message_type")) && (!str.equals("collapse_key"))) {
            this.aBu.put(str, localObject);
          }
        }
      }
    }
    return this.aBu;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.a(paramParcel, 2, this.Cs);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/messaging/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */