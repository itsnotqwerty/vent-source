package com.layer.sdk.internal.lsdkk;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.view.View;
import android.view.Window;
import com.layer.sdk.LayerClient;
import com.layer.sdk.internal.a;
import com.layer.sdk.internal.b;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

public class l
{
  private static final k.a a = k.a(l.class);
  
  public static String a(LayerClient paramLayerClient, boolean paramBoolean)
  {
    String str1 = Build.MANUFACTURER;
    String str2 = Build.MODEL;
    String str3;
    String str5;
    Object localObject1;
    Object localObject2;
    String str4;
    if (str2.startsWith(str1))
    {
      str3 = str2 + " (" + Build.PRODUCT + ") ";
      str2 = "unknown";
      str1 = "unknown";
      str5 = "unknown";
      if ((paramLayerClient == null) || (!paramBoolean)) {
        break label379;
      }
      a locala = (a)paramLayerClient;
      localObject1 = locala.r();
      if (localObject1 != null)
      {
        str2 = ((b)localObject1).d().toString();
        str1 = ((b)localObject1).i();
      }
      localObject2 = locala;
      localObject1 = str1;
      str4 = str2;
      if (paramLayerClient.getAppId() != null)
      {
        str5 = paramLayerClient.getAppId().toString();
        str4 = str2;
        localObject1 = str1;
        localObject2 = locala;
      }
    }
    for (;;)
    {
      if (localObject2 != null) {}
      for (paramLayerClient = ((a)localObject2).e();; paramLayerClient = null)
      {
        if (paramLayerClient != null) {
          e.a(paramLayerClient);
        }
        str1 = e.a();
        if ((paramBoolean) && (paramLayerClient != null)) {}
        for (paramLayerClient = e.b(paramLayerClient);; paramLayerClient = "<not included>")
        {
          str2 = new SimpleDateFormat("MM/dd/yy, hh:mm:ss aa zzz").format(new Date());
          localObject2 = new StringBuilder();
          a((StringBuilder)localObject2, "## Log Info");
          a((StringBuilder)localObject2, "App ID", str5);
          a((StringBuilder)localObject2, "Time", str2);
          a((StringBuilder)localObject2, "Platform", "Android " + Build.VERSION.RELEASE + " (" + Build.VERSION.SDK_INT + ")");
          a((StringBuilder)localObject2, "Device", str3);
          a((StringBuilder)localObject2, "SDK", str1);
          a((StringBuilder)localObject2, "Layer User ID", str4);
          a((StringBuilder)localObject2, "Provider User ID", localObject1);
          a((StringBuilder)localObject2, "Device Token", paramLayerClient);
          a((StringBuilder)localObject2, "User Agent", "unknown");
          return ((StringBuilder)localObject2).toString();
          str3 = str1 + " " + str2 + " (" + Build.PRODUCT + ") ";
          break;
        }
      }
      label379:
      localObject2 = null;
      localObject1 = str1;
      str4 = str2;
    }
  }
  
  static void a(LayerClient paramLayerClient, boolean paramBoolean, Activity paramActivity)
  {
    new AsyncTask()new a
    {
      private static l.b a(l.a... paramAnonymousVarArgs)
      {
        l.a locala = paramAnonymousVarArgs[0];
        k.a(l.wq(), "Preparing logs for email...");
        Object localObject2 = locala.a;
        if (localObject2 != null) {}
        for (paramAnonymousVarArgs = (a)localObject2;; paramAnonymousVarArgs = null)
        {
          if (paramAnonymousVarArgs != null) {}
          for (Object localObject1 = paramAnonymousVarArgs.e();; localObject1 = null)
          {
            File localFile = l.au((Context)localObject1);
            if (localFile == null) {
              return null;
            }
            localObject1 = new ArrayList();
            String str = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
            try
            {
              ((ArrayList)localObject1).add(Uri.fromFile(l.a(localFile, str + ".log", locala.c)));
              if ((!locala.b) || (locala.bsS == null)) {}
            }
            catch (Exception localException2)
            {
              try
              {
                ((ArrayList)localObject1).add(Uri.fromFile(l.a(localFile, str + ".jpg", locala.bsS, locala.d)));
                if ((!locala.b) || (locala.bsS == null) || (paramAnonymousVarArgs == null) || (paramAnonymousVarArgs.r() == null)) {}
              }
              catch (Exception localException2)
              {
                try
                {
                  for (;;)
                  {
                    ((ArrayList)localObject1).add(Uri.fromFile(paramAnonymousVarArgs.a(localFile, str)));
                    paramAnonymousVarArgs = l.a((LayerClient)localObject2, locala.b);
                    localObject2 = l.b();
                    paramAnonymousVarArgs = String.format(Locale.US, "%s\n\n\n%s", new Object[] { localObject2, paramAnonymousVarArgs });
                    return new l.b(locala.bsS, (ArrayList)localObject1, paramAnonymousVarArgs, (byte)0);
                    localException1 = localException1;
                    k.d(l.wq(), "Could not attach log file", localException1);
                  }
                  localException2 = localException2;
                  k.d(l.wq(), "Could not attach screenshot", localException2);
                }
                catch (Exception paramAnonymousVarArgs)
                {
                  for (;;)
                  {
                    k.d(l.wq(), "Could not attach db file", paramAnonymousVarArgs);
                  }
                }
              }
            }
          }
        }
      }
    }.execute(new a[] { new a(paramLayerClient, paramBoolean, paramActivity, 0) });
  }
  
  private static void a(StringBuilder paramStringBuilder, String paramString)
  {
    paramStringBuilder.append(paramString).append("\r\n");
  }
  
  private static void a(StringBuilder paramStringBuilder, String paramString, Object paramObject)
  {
    paramString = paramStringBuilder.append(" * ").append(paramString).append(": ");
    paramStringBuilder = (StringBuilder)paramObject;
    if (paramObject == null) {
      paramStringBuilder = "null";
    }
    paramString.append(paramStringBuilder).append("\r\n");
  }
  
  private static File b(Context paramContext)
  {
    File localFile2 = paramContext.getExternalCacheDir();
    File localFile1 = localFile2;
    if (localFile2 == null) {
      localFile1 = paramContext.getCacheDir();
    }
    if (k.a(2)) {
      k.a(a, "Using `" + localFile1.getAbsolutePath() + "` as logging directory");
    }
    return localFile1;
  }
  
  private static File b(File paramFile, String paramString, int paramInt)
    throws Exception
  {
    try
    {
      if (k.a(2)) {
        k.a(a, "LogUtils::createLogFile:Enter");
      }
      paramFile = new File(paramFile, paramString);
      paramString = "logcat -t " + paramInt + " -f " + paramFile.getAbsolutePath();
      k.a(a, "Executing `" + paramString + "`");
      paramInt = Runtime.getRuntime().exec(paramString).waitFor();
      k.a(a, "Exit code " + paramInt);
      paramFile.setReadable(true, false);
      return paramFile;
    }
    finally
    {
      if (k.a(2)) {
        k.a(a, "LogUtils::createLogFile:Exit");
      }
    }
  }
  
  private static File b(File paramFile, String paramString, Activity paramActivity, int paramInt)
    throws Exception
  {
    try
    {
      if (k.a(2)) {
        k.a(a, "LogUtils::createScreenshotFile:Enter");
      }
      paramActivity = paramActivity.getWindow().getDecorView().getRootView();
      paramActivity.setDrawingCacheEnabled(true);
      Bitmap localBitmap = Bitmap.createBitmap(paramActivity.getDrawingCache());
      paramActivity.setDrawingCacheEnabled(false);
      paramFile = new File(paramFile, paramString);
      paramString = new FileOutputStream(paramFile);
      localBitmap.compress(Bitmap.CompressFormat.JPEG, paramInt, paramString);
      paramString.flush();
      paramString.close();
      localBitmap.recycle();
      paramActivity.destroyDrawingCache();
      paramFile.setReadable(true, false);
      return paramFile;
    }
    finally
    {
      if (k.a(2)) {
        k.a(a, "LogUtils::createScreenshotFile:Exit");
      }
    }
  }
  
  private static String c()
  {
    return "If you have emailed our support about this issue already, please include the ticket ID you were assigned.\nOtherwise, provide steps to reproduce and more details about the issue.\nWithout these, we will not have enough information to investigate and will close the ticket.\n\nDescription of the issue: \nSteps to reproduce:\n1. \n2. \n3. \nRelated support ticket IDs: \nMore details: ";
  }
  
  private static final class a
  {
    final LayerClient a;
    final boolean b;
    final Activity bsS;
    final int c;
    final int d;
    
    private a(LayerClient paramLayerClient, boolean paramBoolean, Activity paramActivity)
    {
      this.a = paramLayerClient;
      this.b = paramBoolean;
      this.c = 3500;
      this.d = 75;
      this.bsS = paramActivity;
    }
  }
  
  private static final class b
  {
    final ArrayList<Uri> b;
    final Activity bsT;
    final String c;
    
    private b(Activity paramActivity, ArrayList<Uri> paramArrayList, String paramString)
    {
      this.bsT = paramActivity;
      this.b = paramArrayList;
      this.c = paramString;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */