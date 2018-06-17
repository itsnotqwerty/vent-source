package com.intercom.input.gallery;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.provider.MediaStore.Images.Media;
import java.util.ArrayList;
import java.util.List;

public final class k
  implements d
{
  private l bml;
  private g bmm;
  private Context context;
  private d.a listener;
  private boolean loading;
  
  public k(Context paramContext, l paraml, g paramg)
  {
    this.context = paramContext;
    this.bmm = paramg;
    this.bml = paraml;
  }
  
  private static List<b> c(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList(paramCursor.getCount());
    String str1;
    String str2;
    String str3;
    int k;
    int j;
    int i;
    if (paramCursor.moveToFirst())
    {
      str1 = paramCursor.getString(paramCursor.getColumnIndexOrThrow("_data"));
      str2 = paramCursor.getString(paramCursor.getColumnIndexOrThrow("mime_type"));
      str3 = paramCursor.getString(paramCursor.getColumnIndexOrThrow("title"));
      k = paramCursor.getInt(paramCursor.getColumnIndexOrThrow("_size"));
      if ((str1 != null) && (str3 != null) && (str2 != null))
      {
        if (Build.VERSION.SDK_INT < 16) {
          break label238;
        }
        j = paramCursor.getInt(paramCursor.getColumnIndexOrThrow("height"));
        i = paramCursor.getInt(paramCursor.getColumnIndexOrThrow("width"));
      }
    }
    for (;;)
    {
      Object localObject = new Point(i, j);
      b.a locala = new b.a();
      locala.bmd = str3;
      locala.path = str1;
      locala.mimeType = str2;
      locala.imageWidth = ((Point)localObject).x;
      locala.imageHeight = ((Point)localObject).y;
      locala.bmf = k;
      localArrayList.add(locala.wa());
      if (paramCursor.moveToNext()) {
        break;
      }
      paramCursor.close();
      return localArrayList;
      label238:
      localObject = new BitmapFactory.Options();
      ((BitmapFactory.Options)localObject).inJustDecodeBounds = true;
      BitmapFactory.decodeFile(str1, (BitmapFactory.Options)localObject);
      i = ((BitmapFactory.Options)localObject).outWidth;
      j = ((BitmapFactory.Options)localObject).outHeight;
    }
  }
  
  public final int getCount()
  {
    if (getPermissionStatus() != 0) {
      return 0;
    }
    Cursor localCursor = this.context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, null, null, null);
    int i;
    if (localCursor != null)
    {
      i = localCursor.getCount();
      localCursor.close();
    }
    for (;;)
    {
      return i;
      i = 0;
    }
  }
  
  public final void getImages(int paramInt, String paramString)
  {
    this.loading = true;
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramString = new String[7];
      paramString[0] = "_data";
      paramString[1] = "date_added";
      paramString[2] = "mime_type";
      paramString[3] = "title";
      paramString[4] = "height";
      paramString[5] = "width";
      paramString[6] = "_size";
    }
    for (;;)
    {
      paramString = this.context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, paramString, null, null, "date_added DESC LIMIT 50 OFFSET " + paramInt);
      this.loading = false;
      if (paramString != null) {
        break;
      }
      this.listener.onError();
      return;
      paramString = new String[5];
      paramString[0] = "_data";
      paramString[1] = "date_added";
      paramString[2] = "mime_type";
      paramString[3] = "title";
      paramString[4] = "_size";
    }
    this.listener.u(c(paramString));
  }
  
  public final int getPermissionStatus()
  {
    l locall;
    if (Build.VERSION.SDK_INT >= 23)
    {
      locall = this.bml;
      if (android.support.v4.content.a.c(locall.activity, "android.permission.READ_EXTERNAL_STORAGE") != 0) {}
    }
    else
    {
      return 0;
    }
    if (android.support.v4.app.a.a(locall.activity, "android.permission.READ_EXTERNAL_STORAGE")) {
      return 1;
    }
    if (locall.blR.getBoolean("asked_for_permission", false)) {
      return 2;
    }
    return 3;
  }
  
  public final boolean isLoading()
  {
    return this.loading;
  }
  
  public final void requestPermission()
  {
    this.bml.blR.edit().putBoolean("asked_for_permission", true).apply();
    if (Build.VERSION.SDK_INT >= 23) {
      this.bmm.requestPermissions(new String[] { "android.permission.READ_EXTERNAL_STORAGE" }, 1);
    }
  }
  
  public final void setListener(d.a parama)
  {
    this.listener = parama;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */