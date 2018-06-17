package io.intercom.android.sdk.api;

import io.intercom.android.sdk.conversation.UploadProgressListener;
import io.intercom.b.d;
import io.intercom.b.l;
import io.intercom.b.s;
import io.intercom.okhttp3.MediaType;
import io.intercom.okhttp3.RequestBody;
import io.intercom.okhttp3.internal.Util;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;

class ProgressRequestBody
  extends RequestBody
{
  private static final int SEGMENT_SIZE = 2048;
  private final MediaType contentType;
  private final File file;
  private final UploadProgressListener listener;
  
  public ProgressRequestBody(MediaType paramMediaType, File paramFile, UploadProgressListener paramUploadProgressListener)
  {
    this.contentType = paramMediaType;
    this.file = paramFile;
    this.listener = paramUploadProgressListener;
  }
  
  public long contentLength()
  {
    return this.file.length();
  }
  
  public MediaType contentType()
  {
    return this.contentType;
  }
  
  public void writeTo(d paramd)
    throws IOException
  {
    Object localObject = null;
    try
    {
      s locals = l.source(this.file);
      long l1 = 0L;
      for (;;)
      {
        localObject = locals;
        long l2 = locals.read(paramd.Kp(), 2048L);
        if (l2 == -1L) {
          break;
        }
        l1 += l2;
        localObject = locals;
        paramd.flush();
        localObject = locals;
        this.listener.uploadNotice((byte)(int)(100L * l1 / this.file.length() * 0.8D + 10.0D));
      }
      Util.closeQuietly(locals);
    }
    finally
    {
      Util.closeQuietly((Closeable)localObject);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/ProgressRequestBody.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */