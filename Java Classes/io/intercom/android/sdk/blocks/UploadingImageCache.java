package io.intercom.android.sdk.blocks;

import android.net.Uri;
import android.net.Uri.Builder;
import com.intercom.input.gallery.b;
import io.intercom.android.sdk.models.Upload;
import java.util.HashMap;
import java.util.Map;

public class UploadingImageCache
{
  private final Map<String, String> localImagePaths;
  
  public UploadingImageCache()
  {
    this(new HashMap());
  }
  
  UploadingImageCache(Map<String, String> paramMap)
  {
    this.localImagePaths = paramMap;
  }
  
  public String getLocalImagePathForRemoteUrl(String paramString)
  {
    return (String)this.localImagePaths.get(paramString);
  }
  
  public void put(Upload paramUpload, b paramb)
  {
    paramUpload = Uri.parse(paramUpload.getUploadDestination()).buildUpon().path(paramUpload.getKey()).build();
    this.localImagePaths.put(paramUpload.toString(), paramb.path);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/UploadingImageCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */