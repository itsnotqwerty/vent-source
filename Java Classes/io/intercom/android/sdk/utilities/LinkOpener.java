package io.intercom.android.sdk.utilities;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import java.util.Locale;

public class LinkOpener
{
  private static final Twig twig = ;
  
  static Uri getTargetUriFromTrackingUrl(String paramString)
  {
    Object localObject = Uri.parse(paramString);
    if (((Uri)localObject).isHierarchical())
    {
      localObject = ((Uri)localObject).getQueryParameter("url");
      if (localObject != null) {
        break label33;
      }
    }
    for (;;)
    {
      return parseUrl(paramString);
      localObject = paramString;
      break;
      label33:
      paramString = (String)localObject;
    }
  }
  
  public static void handleUrl(String paramString, Context paramContext, Api paramApi)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    if (isTrackingUrl(paramString)) {
      paramApi.hitTrackingUrl(paramString);
    }
    for (paramString = getTargetUriFromTrackingUrl(paramString);; paramString = parseUrl(paramString))
    {
      openUrl(paramString, paramContext);
      return;
    }
  }
  
  private static boolean isTrackingUrl(String paramString)
  {
    return paramString.contains("via.intercom.io");
  }
  
  private static Uri normalizeScheme(Uri paramUri)
  {
    String str1 = paramUri.getScheme();
    if (str1 == null) {}
    String str2;
    do
    {
      return paramUri;
      str2 = str1.toLowerCase(Locale.ROOT);
    } while (str1.equals(str2));
    return paramUri.buildUpon().scheme(str2).build();
  }
  
  private static void openUrl(Uri paramUri, Context paramContext)
  {
    if ("mailto".equals(paramUri.getScheme())) {}
    for (Object localObject = "android.intent.action.SENDTO";; localObject = "android.intent.action.VIEW")
    {
      localObject = new Intent((String)localObject, paramUri);
      ((Intent)localObject).addFlags(268435456);
      try
      {
        IntentUtils.safelyOpenIntent(paramContext, (Intent)localObject);
        return;
      }
      catch (ActivityNotFoundException paramContext)
      {
        twig.e("No Activity found to handle the URL '" + paramUri.toString() + "'", new Object[0]);
        return;
      }
      catch (SecurityException paramUri)
      {
        twig.e("Couldn't open link because of error: " + paramUri.getMessage(), new Object[0]);
      }
    }
  }
  
  private static Uri parseUrl(String paramString)
  {
    Uri localUri2 = Uri.parse(paramString);
    Uri localUri1 = localUri2;
    if (localUri2.getScheme() == null) {
      localUri1 = Uri.parse("http://" + paramString);
    }
    if (!localUri1.getScheme().equalsIgnoreCase("http"))
    {
      paramString = localUri1;
      if (!localUri1.getScheme().equalsIgnoreCase("https")) {}
    }
    else
    {
      paramString = normalizeScheme(localUri1);
    }
    return paramString;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/LinkOpener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */