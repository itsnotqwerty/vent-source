package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Action.Builder;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class ab
  implements z
{
  int Ac;
  final aa.c Av;
  final List<Bundle> Aw = new ArrayList();
  final Notification.Builder mBuilder;
  RemoteViews zV;
  RemoteViews zW;
  RemoteViews zX;
  final Bundle zp = new Bundle();
  
  ab(aa.c paramc)
  {
    this.Av = paramc;
    Object localObject1;
    Object localObject2;
    label138:
    label158:
    label178:
    PendingIntent localPendingIntent;
    if (Build.VERSION.SDK_INT >= 26)
    {
      this.mBuilder = new Notification.Builder(paramc.mContext, paramc.zY);
      localObject1 = paramc.Ad;
      localObject2 = this.mBuilder.setWhen(((Notification)localObject1).when).setSmallIcon(((Notification)localObject1).icon, ((Notification)localObject1).iconLevel).setContent(((Notification)localObject1).contentView).setTicker(((Notification)localObject1).tickerText, paramc.zz).setVibrate(((Notification)localObject1).vibrate).setLights(((Notification)localObject1).ledARGB, ((Notification)localObject1).ledOnMS, ((Notification)localObject1).ledOffMS);
      if ((((Notification)localObject1).flags & 0x2) == 0) {
        break label397;
      }
      bool = true;
      localObject2 = ((Notification.Builder)localObject2).setOngoing(bool);
      if ((((Notification)localObject1).flags & 0x8) == 0) {
        break label402;
      }
      bool = true;
      localObject2 = ((Notification.Builder)localObject2).setOnlyAlertOnce(bool);
      if ((((Notification)localObject1).flags & 0x10) == 0) {
        break label407;
      }
      bool = true;
      localObject2 = ((Notification.Builder)localObject2).setAutoCancel(bool).setDefaults(((Notification)localObject1).defaults).setContentTitle(paramc.zv).setContentText(paramc.zw).setContentInfo(paramc.zB).setContentIntent(paramc.zx).setDeleteIntent(((Notification)localObject1).deleteIntent);
      localPendingIntent = paramc.zy;
      if ((((Notification)localObject1).flags & 0x80) == 0) {
        break label412;
      }
    }
    label397:
    label402:
    label407:
    label412:
    for (boolean bool = true;; bool = false)
    {
      ((Notification.Builder)localObject2).setFullScreenIntent(localPendingIntent, bool).setLargeIcon(paramc.zA).setNumber(paramc.zC).setProgress(paramc.zJ, paramc.zK, paramc.zL);
      if (Build.VERSION.SDK_INT < 21) {
        this.mBuilder.setSound(((Notification)localObject1).sound, ((Notification)localObject1).audioStreamType);
      }
      if (Build.VERSION.SDK_INT < 16) {
        break label537;
      }
      this.mBuilder.setSubText(paramc.zH).setUsesChronometer(paramc.zF).setPriority(paramc.zD);
      localObject2 = paramc.zu.iterator();
      while (((Iterator)localObject2).hasNext()) {
        b((aa.a)((Iterator)localObject2).next());
      }
      this.mBuilder = new Notification.Builder(paramc.mContext);
      break;
      bool = false;
      break label138;
      bool = false;
      break label158;
      bool = false;
      break label178;
    }
    if (paramc.zp != null) {
      this.zp.putAll(paramc.zp);
    }
    if (Build.VERSION.SDK_INT < 20)
    {
      if (paramc.zP) {
        this.zp.putBoolean("android.support.localOnly", true);
      }
      if (paramc.zM != null)
      {
        this.zp.putString("android.support.groupKey", paramc.zM);
        if (!paramc.zN) {
          break label754;
        }
        this.zp.putBoolean("android.support.isGroupSummary", true);
      }
    }
    for (;;)
    {
      if (paramc.zO != null) {
        this.zp.putString("android.support.sortKey", paramc.zO);
      }
      this.zV = paramc.zV;
      this.zW = paramc.zW;
      label537:
      if (Build.VERSION.SDK_INT >= 19)
      {
        this.mBuilder.setShowWhen(paramc.zE);
        if ((Build.VERSION.SDK_INT < 21) && (paramc.Ae != null) && (!paramc.Ae.isEmpty())) {
          this.zp.putStringArray("android.people", (String[])paramc.Ae.toArray(new String[paramc.Ae.size()]));
        }
      }
      if (Build.VERSION.SDK_INT >= 20)
      {
        this.mBuilder.setLocalOnly(paramc.zP).setGroup(paramc.zM).setGroupSummary(paramc.zN).setSortKey(paramc.zO);
        this.Ac = paramc.Ac;
      }
      if (Build.VERSION.SDK_INT < 21) {
        break label776;
      }
      this.mBuilder.setCategory(paramc.zS).setColor(paramc.zT).setVisibility(paramc.gS).setPublicVersion(paramc.zU).setSound(((Notification)localObject1).sound, ((Notification)localObject1).audioAttributes);
      localObject1 = paramc.Ae.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (String)((Iterator)localObject1).next();
        this.mBuilder.addPerson((String)localObject2);
      }
      label754:
      this.zp.putBoolean("android.support.useSideChannel", true);
    }
    this.zX = paramc.zX;
    label776:
    if (Build.VERSION.SDK_INT >= 24)
    {
      this.mBuilder.setExtras(paramc.zp).setRemoteInputHistory(paramc.zI);
      if (paramc.zV != null) {
        this.mBuilder.setCustomContentView(paramc.zV);
      }
      if (paramc.zW != null) {
        this.mBuilder.setCustomBigContentView(paramc.zW);
      }
      if (paramc.zX != null) {
        this.mBuilder.setCustomHeadsUpContentView(paramc.zX);
      }
    }
    if (Build.VERSION.SDK_INT >= 26)
    {
      this.mBuilder.setBadgeIconType(paramc.zZ).setShortcutId(paramc.Aa).setTimeoutAfter(paramc.Ab).setGroupAlertBehavior(paramc.Ac);
      if (paramc.zR) {
        this.mBuilder.setColorized(paramc.zQ);
      }
      if (!TextUtils.isEmpty(paramc.zY)) {
        this.mBuilder.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
      }
    }
  }
  
  static void b(Notification paramNotification)
  {
    paramNotification.sound = null;
    paramNotification.vibrate = null;
    paramNotification.defaults &= 0xFFFFFFFE;
    paramNotification.defaults &= 0xFFFFFFFD;
  }
  
  private void b(aa.a parama)
  {
    if (Build.VERSION.SDK_INT >= 20)
    {
      localBuilder = new Notification.Action.Builder(parama.icon, parama.title, parama.actionIntent);
      if (parama.zq != null)
      {
        localObject = ae.b(parama.zq);
        j = localObject.length;
        i = 0;
        while (i < j)
        {
          localBuilder.addRemoteInput(localObject[i]);
          i += 1;
        }
      }
      if (parama.zp != null)
      {
        localObject = new Bundle(parama.zp);
        ((Bundle)localObject).putBoolean("android.support.allowGeneratedReplies", parama.zs);
        if (Build.VERSION.SDK_INT >= 24) {
          localBuilder.setAllowGeneratedReplies(parama.zs);
        }
        localBuilder.addExtras((Bundle)localObject);
        this.mBuilder.addAction(localBuilder.build());
      }
    }
    while (Build.VERSION.SDK_INT < 16) {
      for (;;)
      {
        Notification.Action.Builder localBuilder;
        int j;
        int i;
        return;
        Object localObject = new Bundle();
      }
    }
    this.Aw.add(ac.a(this.mBuilder, parama));
  }
  
  public final Notification.Builder cY()
  {
    return this.mBuilder;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */