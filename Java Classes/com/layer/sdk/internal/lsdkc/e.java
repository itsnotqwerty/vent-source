package com.layer.sdk.internal.lsdkc;

import android.content.Context;
import android.net.Uri;
import com.layer.sdk.internal.lsdkd.lsdka.j;
import java.io.File;
import java.util.UUID;

public class e
{
  public static File a(Context paramContext, UUID paramUUID1, UUID paramUUID2)
  {
    return new File(paramContext.getFilesDir(), "content" + File.separator + paramUUID1 + File.separator + paramUUID2);
  }
  
  public static File a(File paramFile, j paramj)
  {
    File localFile = paramj.f();
    if ((localFile != null) && (localFile.exists())) {
      paramFile = localFile;
    }
    do
    {
      do
      {
        return paramFile;
        paramj = new File(paramFile, a(paramj));
        localFile = paramj.getParentFile();
        paramFile = paramj;
      } while (localFile.exists());
      paramFile = paramj;
    } while (localFile.mkdirs());
    throw new IllegalArgumentException("Could not create directory: " + localFile);
  }
  
  public static String a(j paramj)
  {
    paramj = paramj.getId();
    if (paramj == null) {
      throw new IllegalArgumentException("MessagePart has no ID");
    }
    return paramj.getHost() + File.separator + paramj.getPath() + ".content";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkc/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */