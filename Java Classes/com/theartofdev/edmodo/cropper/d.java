package com.theartofdev.edmodo.cropper;

import android.app.Activity;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.provider.MediaStore.Images.Media;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class d
{
  private static List<Intent> a(Context paramContext, PackageManager paramPackageManager)
  {
    ArrayList localArrayList = new ArrayList();
    paramContext = aD(paramContext);
    Intent localIntent1 = new Intent("android.media.action.IMAGE_CAPTURE");
    paramPackageManager = paramPackageManager.queryIntentActivities(localIntent1, 0).iterator();
    while (paramPackageManager.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)paramPackageManager.next();
      Intent localIntent2 = new Intent(localIntent1);
      localIntent2.setComponent(new ComponentName(localResolveInfo.activityInfo.packageName, localResolveInfo.activityInfo.name));
      localIntent2.setPackage(localResolveInfo.activityInfo.packageName);
      if (paramContext != null) {
        localIntent2.putExtra("output", paramContext);
      }
      localArrayList.add(localIntent2);
    }
    return localArrayList;
  }
  
  private static List<Intent> a(PackageManager paramPackageManager, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramString == "android.intent.action.GET_CONTENT") {}
    for (paramString = new Intent(paramString);; paramString = new Intent(paramString, MediaStore.Images.Media.EXTERNAL_CONTENT_URI))
    {
      paramString.setType("image/*");
      paramPackageManager = paramPackageManager.queryIntentActivities(paramString, 0).iterator();
      while (paramPackageManager.hasNext())
      {
        ResolveInfo localResolveInfo = (ResolveInfo)paramPackageManager.next();
        Intent localIntent = new Intent(paramString);
        localIntent.setComponent(new ComponentName(localResolveInfo.activityInfo.packageName, localResolveInfo.activityInfo.name));
        localIntent.setPackage(localResolveInfo.activityInfo.packageName);
        localArrayList.add(localIntent);
      }
    }
    paramPackageManager = localArrayList.iterator();
    while (paramPackageManager.hasNext())
    {
      paramString = (Intent)paramPackageManager.next();
      if (paramString.getComponent().getClassName().equals("com.android.documentsui.DocumentsActivity")) {
        localArrayList.remove(paramString);
      }
    }
    return localArrayList;
  }
  
  public static boolean aC(Context paramContext)
  {
    return (Build.VERSION.SDK_INT >= 23) && (u(paramContext, "android.permission.CAMERA")) && (paramContext.checkSelfPermission("android.permission.CAMERA") != 0);
  }
  
  public static Uri aD(Context paramContext)
  {
    Object localObject = null;
    File localFile = paramContext.getExternalCacheDir();
    paramContext = (Context)localObject;
    if (localFile != null) {
      paramContext = Uri.fromFile(new File(localFile.getPath(), "pickImageResult.jpeg"));
    }
    return paramContext;
  }
  
  public static boolean e(Context paramContext, Uri paramUri)
  {
    return (Build.VERSION.SDK_INT >= 23) && (paramContext.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) && (f(paramContext, paramUri));
  }
  
  private static boolean f(Context paramContext, Uri paramUri)
  {
    try
    {
      paramContext = paramContext.getContentResolver().openInputStream(paramUri);
      if (paramContext != null) {
        paramContext.close();
      }
      return false;
    }
    catch (Exception paramContext) {}
    return true;
  }
  
  public static void k(Activity paramActivity)
  {
    String str = paramActivity.getString(i.d.pick_image_intent_chooser_title);
    ArrayList localArrayList = new ArrayList();
    PackageManager localPackageManager = paramActivity.getPackageManager();
    if (!aC(paramActivity)) {
      localArrayList.addAll(a(paramActivity, localPackageManager));
    }
    List localList = a(localPackageManager, "android.intent.action.GET_CONTENT");
    Object localObject = localList;
    if (localList.size() == 0) {
      localObject = a(localPackageManager, "android.intent.action.PICK");
    }
    localArrayList.addAll((Collection)localObject);
    if (localArrayList.isEmpty()) {
      localObject = new Intent();
    }
    for (;;)
    {
      localObject = Intent.createChooser((Intent)localObject, str);
      ((Intent)localObject).putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[])localArrayList.toArray(new Parcelable[localArrayList.size()]));
      paramActivity.startActivityForResult((Intent)localObject, 200);
      return;
      localObject = (Intent)localArrayList.get(localArrayList.size() - 1);
      localArrayList.remove(localArrayList.size() - 1);
    }
  }
  
  private static boolean u(Context paramContext, String paramString)
  {
    boolean bool2 = false;
    String str = paramContext.getPackageName();
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(str, 4096).requestedPermissions;
      boolean bool1 = bool2;
      int j;
      int i;
      if (paramContext != null)
      {
        bool1 = bool2;
        if (paramContext.length > 0)
        {
          j = paramContext.length;
          i = 0;
        }
      }
      for (;;)
      {
        bool1 = bool2;
        if (i < j)
        {
          bool1 = paramContext[i].equalsIgnoreCase(paramString);
          if (bool1) {
            bool1 = true;
          }
        }
        else
        {
          return bool1;
        }
        i += 1;
      }
      return false;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
  }
  
  public static final class a
  {
    public final Uri bPQ;
    public final f bPR;
    
    private a(Uri paramUri)
    {
      this.bPQ = paramUri;
      this.bPR = new f();
    }
  }
  
  public static final class b
    extends CropImageView.a
    implements Parcelable
  {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator() {};
    
    public b(Uri paramUri1, Uri paramUri2, Exception paramException, float[] paramArrayOfFloat, Rect paramRect1, int paramInt1, Rect paramRect2, int paramInt2)
    {
      super(paramUri1, null, paramUri2, paramException, paramArrayOfFloat, paramRect1, paramRect2, paramInt1, paramInt2);
    }
    
    protected b(Parcel paramParcel)
    {
      super((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()), null, (Uri)paramParcel.readParcelable(Uri.class.getClassLoader()), (Exception)paramParcel.readSerializable(), paramParcel.createFloatArray(), (Rect)paramParcel.readParcelable(Rect.class.getClassLoader()), (Rect)paramParcel.readParcelable(Rect.class.getClassLoader()), paramParcel.readInt(), paramParcel.readInt());
    }
    
    public final int describeContents()
    {
      return 0;
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeParcelable(this.bRH, paramInt);
      paramParcel.writeParcelable(this.DD, paramInt);
      paramParcel.writeSerializable(this.bRI);
      paramParcel.writeFloatArray(this.bPp);
      paramParcel.writeParcelable(this.bRJ, paramInt);
      paramParcel.writeParcelable(this.bRK, paramInt);
      paramParcel.writeInt(this.bRL);
      paramParcel.writeInt(this.bRM);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/theartofdev/edmodo/cropper/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */