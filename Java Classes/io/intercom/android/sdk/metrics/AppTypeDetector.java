package io.intercom.android.sdk.metrics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;

class AppTypeDetector
{
  private static final X500Principal DEBUG_DN = new X500Principal("CN=Android Debug,O=Android,C=US");
  private static final Twig twig = LumberMill.getLogger();
  
  static String getInstallerPackageName(Context paramContext)
  {
    Object localObject = null;
    try
    {
      paramContext = paramContext.getPackageManager().getInstallerPackageName(paramContext.getPackageName());
      localObject = paramContext;
      if (TextUtils.isEmpty(paramContext)) {
        localObject = "unknown";
      }
      return (String)localObject;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        twig.internal("Package name is unknown, error: " + paramContext.getMessage());
        paramContext = (Context)localObject;
      }
    }
  }
  
  static boolean isDebugBuild(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 64).signatures;
      if ((paramContext != null) && (paramContext.length > 0))
      {
        CertificateFactory localCertificateFactory = CertificateFactory.getInstance("X.509");
        int j = paramContext.length;
        int i = 0;
        while (i < j)
        {
          boolean bool = ((X509Certificate)localCertificateFactory.generateCertificate(new ByteArrayInputStream(paramContext[i].toByteArray()))).getSubjectX500Principal().equals(DEBUG_DN);
          if (bool) {
            return true;
          }
          i += 1;
        }
      }
      return false;
    }
    catch (Exception paramContext)
    {
      twig.internal("Debug build status is unknown, error: " + paramContext.getMessage());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/metrics/AppTypeDetector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */