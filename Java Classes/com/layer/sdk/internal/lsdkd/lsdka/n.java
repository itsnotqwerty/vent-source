package com.layer.sdk.internal.lsdkd.lsdka;

import android.text.TextUtils;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.messaging.Presence;
import com.layer.sdk.messaging.Presence.PresenceStatus;
import java.util.Date;

public class n
  implements Presence
{
  private static final k.a a = k.a(n.class);
  private Long b;
  private String c = null;
  private Date d = null;
  private Presence.PresenceStatus e = null;
  
  public n(String paramString, Presence.PresenceStatus paramPresenceStatus, Date paramDate, Long paramLong)
  {
    if (paramString == null)
    {
      if (k.a(6)) {
        k.e(a, "UserId cannot be null");
      }
      throw new IllegalArgumentException("UserId cannot be null");
    }
    if ((TextUtils.isEmpty(paramString)) && (k.a(5))) {
      k.d(a, "UserId is empty");
    }
    this.c = paramString;
    this.e = paramPresenceStatus;
    this.d = paramDate;
    this.b = paramLong;
  }
  
  public String a()
  {
    return this.c;
  }
  
  public void a(Presence.PresenceStatus paramPresenceStatus)
  {
    this.e = paramPresenceStatus;
  }
  
  public void a(Long paramLong)
  {
    this.b = paramLong;
  }
  
  public void a(String paramString)
  {
    if (paramString == null)
    {
      if (k.a(6)) {
        k.e(a, "UserId cannot be null");
      }
      throw new IllegalArgumentException("UserId cannot be null");
    }
    if ((TextUtils.isEmpty(paramString)) && (k.a(5))) {
      k.d(a, "UserId is empty");
    }
    this.c = paramString;
  }
  
  public void a(Date paramDate)
  {
    this.d = paramDate;
  }
  
  public Presence.PresenceStatus b()
  {
    return this.e;
  }
  
  public Date c()
  {
    return this.d;
  }
  
  public Long d()
  {
    return this.b;
  }
  
  public String toString()
  {
    return "PresenceImpl{mDatabaseId=" + this.b + ", mUserId='" + this.c + '\'' + ", mLastSeenAt=" + this.d + ", mStatus=" + this.e + '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */