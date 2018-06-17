package com.vent;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;

public final class AppWidget
  extends AppWidgetProvider
{
  public static void a(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    if ((paramAppWidgetManager != null) && (paramArrayOfInt != null))
    {
      int j = paramArrayOfInt.length;
      int i = 0;
      if (i < j)
      {
        int k = paramArrayOfInt[i];
        Object localObject = paramAppWidgetManager.getAppWidgetInfo(k);
        int m;
        label94:
        Intent localIntent;
        if (localObject != null)
        {
          m = ((AppWidgetProviderInfo)localObject).initialLayout;
          localObject = new RemoteViews(paramContext.getPackageName(), m);
          m = bb.ciF + bb.ciG;
          if (m <= 0) {
            break label202;
          }
          ((RemoteViews)localObject).setViewVisibility(2131296421, 0);
          ((RemoteViews)localObject).setTextViewText(2131296421, String.valueOf(m));
          localIntent = new Intent(paramContext, ActMain.class);
          localIntent.addFlags(603979776);
          localIntent.setClass(paramContext, ActMain.class);
          localIntent.setAction("android.intent.action.VIEW");
          m = (int)Math.round(Math.random() * 2.147483647E9D);
          localIntent.putExtra("id", m);
          if (bb.ciF <= 0) {
            break label214;
          }
          localIntent.putExtra("cmd", "notification");
        }
        for (;;)
        {
          ((RemoteViews)localObject).setOnClickPendingIntent(2131296682, PendingIntent.getActivity(paramContext, m, localIntent, 134217728));
          paramAppWidgetManager.updateAppWidget(k, (RemoteViews)localObject);
          i += 1;
          break;
          label202:
          ((RemoteViews)localObject).setViewVisibility(2131296421, 8);
          break label94;
          label214:
          if (bb.ciG > 0) {
            localIntent.putExtra("cmd", "chats");
          }
        }
      }
    }
  }
  
  public final void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    super.onUpdate(paramContext, paramAppWidgetManager, paramArrayOfInt);
    a(paramContext, paramAppWidgetManager, paramArrayOfInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/AppWidget.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */