package com.layer.atlas.util;

import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.TextUtils;
import com.layer.atlas.b.i;
import com.layer.sdk.listeners.LayerProgressListener.BackgroundThread.Weak;
import com.layer.sdk.listeners.LayerProgressListener.Operation;
import com.layer.sdk.messaging.Identity;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.MessagePart;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class c
{
  private static final SimpleDateFormat bpr = new SimpleDateFormat("EEE, LLL dd,", Locale.US);
  
  public static String a(Context paramContext, Message paramMessage)
  {
    if (com.layer.atlas.b.d.a.d(paramMessage)) {
      return com.layer.atlas.b.d.a.f(paramMessage);
    }
    if (com.layer.atlas.b.e.a.d(paramMessage)) {
      return com.layer.atlas.b.e.a.at(paramContext);
    }
    if (com.layer.atlas.b.b.a.d(paramMessage)) {
      return com.layer.atlas.b.b.a.at(paramContext);
    }
    if (com.layer.atlas.b.c.a.d(paramMessage)) {
      return com.layer.atlas.b.c.a.at(paramContext);
    }
    paramContext = new StringBuilder();
    paramContext.append("[");
    paramMessage = paramMessage.getMessageParts().iterator();
    int i = 1;
    while (paramMessage.hasNext())
    {
      MessagePart localMessagePart = (MessagePart)paramMessage.next();
      if (i == 0) {
        paramContext.append(", ");
      }
      i = 0;
      paramContext.append(localMessagePart.getSize()).append("-byte ").append(localMessagePart.getMimeType());
    }
    paramContext.append("]");
    return paramContext.toString();
  }
  
  public static String a(Context paramContext, Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(11, 0);
    localCalendar.set(12, 0);
    localCalendar.set(13, 0);
    long l = localCalendar.getTimeInMillis();
    if (paramDate.getTime() > l) {
      return paramContext.getString(b.i.atlas_time_today);
    }
    if (paramDate.getTime() > l - 86400000L) {
      return paramContext.getString(b.i.atlas_time_yesterday);
    }
    if (paramDate.getTime() > l - 604800000L)
    {
      localCalendar.setTime(paramDate);
      return paramContext.getResources().getStringArray(com.layer.atlas.b.a.atlas_time_days_of_week)[(localCalendar.get(7) - 1)];
    }
    return bpr.format(paramDate);
  }
  
  public static String a(Identity paramIdentity)
  {
    String str1 = paramIdentity.getFirstName();
    String str2 = paramIdentity.getLastName();
    if (!TextUtils.isEmpty(str1))
    {
      if (!TextUtils.isEmpty(str2)) {
        return dv(str1) + dv(str2);
      }
      return dv(str1);
    }
    if (!TextUtils.isEmpty(str2)) {
      return dv(str2);
    }
    return dv(paramIdentity.getDisplayName());
  }
  
  public static boolean a(MessagePart paramMessagePart, TimeUnit paramTimeUnit)
  {
    if (paramMessagePart.isContentReady()) {
      return true;
    }
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    paramMessagePart.download(new LayerProgressListener.BackgroundThread.Weak()
    {
      public final void onProgressComplete(MessagePart paramAnonymousMessagePart, LayerProgressListener.Operation paramAnonymousOperation)
      {
        this.bps.countDown();
      }
      
      public final void onProgressError(MessagePart paramAnonymousMessagePart, LayerProgressListener.Operation paramAnonymousOperation, Throwable paramAnonymousThrowable)
      {
        this.bps.countDown();
      }
      
      public final void onProgressStart(MessagePart paramAnonymousMessagePart, LayerProgressListener.Operation paramAnonymousOperation) {}
      
      public final void onProgressUpdate(MessagePart paramAnonymousMessagePart, LayerProgressListener.Operation paramAnonymousOperation, long paramAnonymousLong) {}
    });
    if (!paramMessagePart.isContentReady()) {}
    try
    {
      localCountDownLatch.await(3L, paramTimeUnit);
      return paramMessagePart.isContentReady();
    }
    catch (InterruptedException paramTimeUnit)
    {
      for (;;)
      {
        if (b.dm(6)) {
          b.e(paramTimeUnit.getMessage(), paramTimeUnit);
        }
      }
    }
  }
  
  public static String b(Identity paramIdentity)
  {
    if (TextUtils.isEmpty(paramIdentity.getDisplayName()))
    {
      String str1 = paramIdentity.getFirstName();
      String str2 = paramIdentity.getLastName();
      if (!TextUtils.isEmpty(str1))
      {
        paramIdentity = str1;
        if (!TextUtils.isEmpty(str2)) {
          paramIdentity = String.format("%s %s", new Object[] { str1, str2 });
        }
        return paramIdentity;
      }
      if (!TextUtils.isEmpty(str2)) {
        return str2;
      }
      return paramIdentity.getUserId();
    }
    return paramIdentity.getDisplayName();
  }
  
  public static void c(Context paramContext, int paramInt, String paramString)
  {
    String str = paramContext.getString(paramInt);
    paramContext = (ClipboardManager)paramContext.getSystemService("clipboard");
    paramString = new ClipData.Item(paramString);
    paramContext.setPrimaryClip(new ClipData(str, new String[] { "text/plain" }, paramString));
  }
  
  private static String dv(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    if (paramString.contains(" "))
    {
      paramString = paramString.split(" ");
      StringBuilder localStringBuilder = new StringBuilder();
      int m = paramString.length;
      int i = 0;
      int k;
      for (int j = 0; i < m; j = k)
      {
        String str = paramString[i].trim();
        k = j;
        if (!str.isEmpty())
        {
          localStringBuilder.append(str.charAt(0).toUpperCase());
          k = j + 1;
          if (k >= 2) {
            break;
          }
        }
        i += 1;
      }
      return localStringBuilder.toString();
    }
    return paramString.trim().charAt(0).toUpperCase();
  }
  
  public static int[] i(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i;
    int j;
    double d2;
    if (paramInt1 <= paramInt3)
    {
      i = paramInt1;
      j = paramInt2;
      if (paramInt2 <= paramInt4) {}
    }
    else
    {
      double d1 = paramInt1 / paramInt3;
      d2 = paramInt2 / paramInt4;
      if (d1 <= d2) {
        break label66;
      }
      j = (int)Math.round(paramInt2 / d1);
      i = paramInt3;
    }
    for (;;)
    {
      return new int[] { i, j };
      label66:
      i = (int)Math.round(paramInt1 / d2);
      j = paramInt4;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/util/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */