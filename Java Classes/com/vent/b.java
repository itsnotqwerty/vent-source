package com.vent;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.support.v4.app.h;
import android.support.v4.content.FileProvider;
import android.support.v7.app.c.a;
import android.support.v7.app.d;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.theartofdev.edmodo.cropper.CropImageActivity;
import com.theartofdev.edmodo.cropper.CropImageView.a;
import com.theartofdev.edmodo.cropper.CropImageView.b;
import com.theartofdev.edmodo.cropper.CropImageView.j;
import com.theartofdev.edmodo.cropper.d.a;
import com.theartofdev.edmodo.cropper.d.b;
import com.theartofdev.edmodo.cropper.f;
import com.vent.a.y;
import com.vent.d.e;
import java.io.Closeable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.URI;
import java.net.URL;
import java.nio.channels.FileChannel;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

@SuppressLint({"Registered"})
public abstract class b
  extends a
{
  protected static final Regions bUD = Regions.apa;
  protected static final Regions bUE = Regions.apa;
  protected static File bUJ;
  protected boolean bQp;
  CachedImageView bUF;
  File bUG;
  private final String bUH = "profilepic_download.tmp";
  private final String bUI = "profilepic_rescale.tmp";
  
  static boolean a(Activity paramActivity, File paramFile)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramFile == null) || (!paramFile.exists()))
    {
      if (com.vent.d.c.bF(paramActivity)) {
        new c.a(paramActivity).setMessage(2131689618).setPositiveButton(17039370, null).create().show();
      }
      bool1 = false;
    }
    BitmapFactory.Options localOptions;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return bool1;
              localOptions = new BitmapFactory.Options();
              localOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
              localOptions.inSampleSize = 1;
              localOptions.inJustDecodeBounds = true;
              localOptions.inScaled = false;
              BitmapFactory.decodeFile(paramFile.getAbsolutePath(), localOptions);
              if ((paramFile.length() > 10485760L) || (localOptions.outWidth == 0) || (localOptions.outMimeType == null)) {
                break;
              }
              bool1 = bool2;
            } while (localOptions.outMimeType.equals("image/jpeg"));
            bool1 = bool2;
          } while (localOptions.outMimeType.equals("image/pjpeg"));
          bool1 = bool2;
        } while (localOptions.outMimeType.equals("image/png"));
        bool1 = bool2;
      } while (localOptions.outMimeType.equals("image/gif"));
      bool1 = bool2;
    } while (localOptions.outMimeType.equals("image/webp"));
    if (com.vent.d.c.bF(paramActivity)) {
      new c.a(paramActivity).setMessage(2131689688).setPositiveButton(17039370, null).create().show();
    }
    return false;
  }
  
  static boolean e(Bitmap paramBitmap)
  {
    int k = Math.min(20, paramBitmap.getHeight());
    int i = 0;
    int m;
    int j;
    while (i < k)
    {
      m = Math.min(20, paramBitmap.getWidth());
      j = 0;
      while (j < m)
      {
        if ((paramBitmap.getPixel(j, i) >> 24 & 0xFF) != 255) {
          return true;
        }
        j += 1;
      }
      i += 1;
    }
    k = Math.min(20, paramBitmap.getHeight());
    i = 0;
    for (;;)
    {
      if (i >= k) {
        break label145;
      }
      j = Math.max(0, paramBitmap.getWidth() - 20);
      m = paramBitmap.getWidth();
      for (;;)
      {
        if (j >= m) {
          break label138;
        }
        if ((paramBitmap.getPixel(j, i) >> 24 & 0xFF) != 255) {
          break;
        }
        j += 1;
      }
      label138:
      i += 1;
    }
    label145:
    i = Math.max(0, paramBitmap.getHeight() - 20);
    k = paramBitmap.getHeight();
    for (;;)
    {
      if (i >= k) {
        break label224;
      }
      j = Math.max(0, paramBitmap.getWidth() - 20);
      m = paramBitmap.getWidth();
      for (;;)
      {
        if (j >= m) {
          break label217;
        }
        if ((paramBitmap.getPixel(j, i) >> 24 & 0xFF) != 255) {
          break;
        }
        j += 1;
      }
      label217:
      i += 1;
    }
    label224:
    i = Math.max(0, paramBitmap.getHeight() - 20);
    k = paramBitmap.getHeight();
    for (;;)
    {
      if (i >= k) {
        break label298;
      }
      m = Math.min(20, paramBitmap.getWidth());
      j = 0;
      for (;;)
      {
        if (j >= m) {
          break label291;
        }
        if ((paramBitmap.getPixel(j, i) >> 24 & 0xFF) != 255) {
          break;
        }
        j += 1;
      }
      label291:
      i += 1;
    }
    label298:
    return false;
  }
  
  private void f(Intent paramIntent)
  {
    Uri localUri = FileProvider.a(this, "com.vent.fileprovider", this.bUG);
    paramIntent.putExtra("output", localUri);
    Iterator localIterator = getPackageManager().queryIntentActivities(paramIntent, 65536).iterator();
    while (localIterator.hasNext()) {
      grantUriPermission(((ResolveInfo)localIterator.next()).activityInfo.packageName, localUri, 3);
    }
    grantUriPermission(getPackageName(), localUri, 3);
    paramIntent.addFlags(3);
  }
  
  void Bi()
  {
    if (!a(this, this.bUG)) {
      Bo();
    }
    do
    {
      return;
      if (this.bUF != null)
      {
        this.bUF.setCachedImage(null);
        String str = this.bUG.toURI().toString();
        ae.dW(str);
        this.bUF.setCachedImage(str);
      }
    } while (!com.vent.d.c.bF(this));
    new c.a(this).setMessage(2131689835).setCancelable(false).setNegativeButton(2131689668, null).setPositiveButton(2131689846, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        int i = 1;
        if (b.this.bUG == null) {
          return;
        }
        Object localObject = new BitmapFactory.Options();
        ((BitmapFactory.Options)localObject).inPreferredConfig = Bitmap.Config.ARGB_8888;
        ((BitmapFactory.Options)localObject).inSampleSize = 1;
        ((BitmapFactory.Options)localObject).inJustDecodeBounds = true;
        ((BitmapFactory.Options)localObject).inScaled = false;
        BitmapFactory.decodeFile(b.this.bUG.getAbsolutePath(), (BitmapFactory.Options)localObject);
        if (((BitmapFactory.Options)localObject).outMimeType != null)
        {
          paramAnonymousDialogInterface = ((BitmapFactory.Options)localObject).outMimeType;
          paramAnonymousInt = -1;
        }
        d.a locala;
        switch (paramAnonymousDialogInterface.hashCode())
        {
        default: 
          switch (paramAnonymousInt)
          {
          default: 
            i = 0;
          }
          locala = new d.a(Uri.fromFile(b.this.bUG), (byte)0);
          paramAnonymousDialogInterface = CropImageView.b.bRN;
          locala.bPR.bQe = paramAnonymousDialogInterface;
          if (i == 0) {
            break;
          }
        }
        for (paramAnonymousDialogInterface = Bitmap.CompressFormat.PNG;; paramAnonymousDialogInterface = Bitmap.CompressFormat.JPEG)
        {
          locala.bPR.bQJ = paramAnonymousDialogInterface;
          locala.bPR.bQK = 75;
          paramAnonymousDialogInterface = CropImageView.j.bSa;
          locala.bPR.bQi = paramAnonymousDialogInterface;
          locala.bPR.bQo = 0.0F;
          locala.bPR.bQz = -8355712;
          paramAnonymousInt = b.this.getResources().getColor(2131099755);
          locala.bPR.bQt = paramAnonymousInt;
          paramAnonymousInt = b.this.getResources().getColor(2131099768);
          locala.bPR.bQx = paramAnonymousInt;
          if (b.this.bQp)
          {
            paramAnonymousInt = Math.min(((BitmapFactory.Options)localObject).outWidth, ((BitmapFactory.Options)localObject).outHeight);
            i = (((BitmapFactory.Options)localObject).outWidth - paramAnonymousInt) / 2;
            int j = (((BitmapFactory.Options)localObject).outHeight - paramAnonymousInt) / 2;
            paramAnonymousDialogInterface = new Rect(i, j, i + paramAnonymousInt, paramAnonymousInt + j);
            locala.bPR.bQP = paramAnonymousDialogInterface;
          }
          paramAnonymousDialogInterface = b.this;
          locala.bPR.ak();
          locala.bPR.ak();
          localObject = new Intent();
          ((Intent)localObject).setClass(paramAnonymousDialogInterface, CropImageActivity.class);
          Bundle localBundle = new Bundle();
          localBundle.putParcelable("CROP_IMAGE_EXTRA_SOURCE", locala.bPQ);
          localBundle.putParcelable("CROP_IMAGE_EXTRA_OPTIONS", locala.bPR);
          ((Intent)localObject).putExtra("CROP_IMAGE_EXTRA_BUNDLE", localBundle);
          paramAnonymousDialogInterface.startActivityForResult((Intent)localObject, 203);
          return;
          if (!paramAnonymousDialogInterface.equals("image/png")) {
            break;
          }
          paramAnonymousInt = 0;
          break;
          if (!paramAnonymousDialogInterface.equals("image/gif")) {
            break;
          }
          paramAnonymousInt = 1;
          break;
          if (!paramAnonymousDialogInterface.equals("image/webp")) {
            break;
          }
          paramAnonymousInt = 2;
          break;
        }
      }
    }).show();
  }
  
  final boolean Bl()
  {
    return (Build.VERSION.SDK_INT < 16) || (android.support.v4.content.a.c(this, "android.permission.READ_EXTERNAL_STORAGE") == 0);
  }
  
  final void Bm()
  {
    Bo();
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    File localFile = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM);
    if (localFile == null) {
      com.vent.d.c.a(this, getString(2131689575), 0);
    }
    do
    {
      return;
      if (!localFile.exists()) {
        localFile.mkdirs();
      }
      localFile = new File(localFile, "Vent");
      if (!localFile.exists()) {
        localFile.mkdirs();
      }
      if (!localFile.exists())
      {
        com.vent.d.c.a(this, getString(2131689578), 0);
        return;
      }
      this.bUG = new File(localFile, "IMG_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.ENGLISH).format(new Date()) + ".jpg");
      f(localIntent);
      try
      {
        startActivityForResult(localIntent, 18);
        return;
      }
      catch (Exception localException) {}
    } while (!com.vent.d.c.bG(this));
    new c.a(this).setMessage(2131689670).setPositiveButton(17039370, null).create().show();
  }
  
  final void Bn()
  {
    Bo();
    Object localObject = getCacheDir();
    if (localObject != null) {
      ((File)localObject).mkdirs();
    }
    localObject = new File((File)localObject, "GalleryTemp");
    if (!((File)localObject).exists()) {
      ((File)localObject).mkdirs();
    }
    if (!((File)localObject).exists()) {
      com.vent.d.c.a(this, getString(2131689578), 0);
    }
    do
    {
      return;
      this.bUG = new File((File)localObject, "profilepic_gallery.tmp");
      this.bUG.delete();
      localObject = new Intent("android.intent.action.GET_CONTENT");
      ((Intent)localObject).addCategory("android.intent.category.OPENABLE");
      ((Intent)localObject).setType("image/*");
      f((Intent)localObject);
      try
      {
        startActivityForResult((Intent)localObject, 19);
        return;
      }
      catch (Exception localException) {}
    } while (!com.vent.d.c.bG(this));
    new c.a(this).setMessage(2131689673).setPositiveButton(17039370, null).create().show();
  }
  
  final void Bo()
  {
    if (this.bUG != null) {
      this.bUG = null;
    }
  }
  
  final void Bp()
  {
    com.vent.d.c.t(this);
    com.vent.d.c.b(new b(this, this.bUG));
  }
  
  final void aU(boolean paramBoolean)
  {
    this.bQp = paramBoolean;
    a.a(this);
  }
  
  void b(int paramInt1, int paramInt2, final Intent paramIntent)
  {
    int i = 1;
    super.b(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    label185:
    label323:
    label326:
    for (;;)
    {
      return;
      if (paramInt2 != -1)
      {
        Bo();
        return;
      }
      if (paramInt1 == 19)
      {
        com.vent.d.c.b(new AsyncTask()
        {
          String bUL = null;
          boolean done = false;
          
          private Void Bq()
          {
            if (b.this.bUG != null) {}
            for (;;)
            {
              Object localObject10;
              Object localObject4;
              try
              {
                if ((b.this.bUG.exists()) && (b.this.bUG.canRead()) && (b.this.bUG.length() > 0L))
                {
                  this.done = true;
                  localObject10 = b.this.getContentResolver();
                  if (paramIntent == null) {
                    continue;
                  }
                  localObject4 = paramIntent.getData();
                  if ((this.done) || (localObject4 == null) || (localObject10 == null)) {}
                }
                for (;;)
                {
                  try
                  {
                    Object localObject1 = ((ContentResolver)localObject10).query((Uri)localObject4, new String[] { "_data" }, null, null, null);
                    localObject6 = localObject1;
                    if (localObject1 != null) {
                      localObject6 = localObject1;
                    }
                    Object localObject7;
                    try
                    {
                      if (((Cursor)localObject1).moveToFirst())
                      {
                        localObject7 = ((Cursor)localObject1).getString(((Cursor)localObject1).getColumnIndexOrThrow("_data"));
                        localObject6 = localObject1;
                        if (!TextUtils.isEmpty((CharSequence)localObject7))
                        {
                          b.this.bUG = new File((String)localObject7);
                          localObject6 = localObject1;
                          if (b.this.bUG != null)
                          {
                            if ((!b.this.bUG.exists()) || (!b.this.bUG.canRead()) || (b.this.bUG.length() <= 0L)) {
                              continue;
                            }
                            this.done = true;
                            localObject6 = localObject1;
                          }
                        }
                      }
                      com.vent.d.c.w((Cursor)localObject6);
                      if ((this.done) || (localObject4 == null) || (localObject10 == null)) {}
                    }
                    catch (Exception localException8) {}
                  }
                  catch (Exception localException9)
                  {
                    Object localObject6;
                    Object localObject11;
                    Object localObject12;
                    Object localObject2;
                    Object localObject5;
                    Object localObject8;
                    Object localObject3 = null;
                    continue;
                    Object localObject9 = null;
                    continue;
                  }
                  try
                  {
                    localObject1 = b.this.getCacheDir();
                    ((File)localObject1).mkdirs();
                    b.this.bUG = new File((File)localObject1, "profilepic_download.tmp");
                    if (b.this.bUG == null) {
                      continue;
                    }
                    localObject7 = ((ContentResolver)localObject10).openFileDescriptor((Uri)localObject4, "r");
                    if (localObject7 == null) {}
                  }
                  catch (Exception localException5)
                  {
                    localObject3 = null;
                    localObject5 = null;
                    localObject8 = null;
                    continue;
                  }
                  try
                  {
                    localObject1 = ((ParcelFileDescriptor)localObject7).getFileDescriptor();
                    if (localObject1 != null) {
                      localObject4 = new FileInputStream((FileDescriptor)localObject1);
                    }
                  }
                  catch (Exception localException6)
                  {
                    localObject3 = null;
                    localObject5 = null;
                    continue;
                  }
                  try
                  {
                    localObject1 = new FileOutputStream(b.this.bUG);
                    localObject10 = localObject1;
                    localObject11 = localObject4;
                    try
                    {
                      if (com.vent.d.c.b((InputStream)localObject4, (OutputStream)localObject1))
                      {
                        localObject10 = localObject1;
                        localObject11 = localObject4;
                        localObject6 = ((FileOutputStream)localObject1).getChannel();
                        localObject10 = localObject1;
                        localObject11 = localObject4;
                        ((FileChannel)localObject6).truncate(((FileChannel)localObject6).position());
                        localObject10 = localObject1;
                        localObject11 = localObject4;
                        this.done = true;
                        localObject10 = localObject1;
                        localObject11 = localObject4;
                        ((ParcelFileDescriptor)localObject7).close();
                        localObject10 = null;
                        localObject12 = localObject4;
                        localObject11 = localObject1;
                        com.vent.d.c.c((Closeable)localObject11);
                        com.vent.d.c.c((Closeable)localObject12);
                        com.vent.d.c.b((ParcelFileDescriptor)localObject10);
                        if ((!this.done) && (paramIntent != null))
                        {
                          localObject1 = paramIntent.getExtras();
                          if (localObject1 != null)
                          {
                            localObject4 = (Bitmap)((Bundle)localObject1).getParcelable("data");
                            if (localObject4 != null)
                            {
                              localObject1 = b.this.getCacheDir();
                              ((File)localObject1).mkdirs();
                              b.this.bUG = new File((File)localObject1, "profilepic_download.tmp");
                              if (b.this.bUG == null) {}
                            }
                          }
                        }
                      }
                    }
                    catch (Exception localException4)
                    {
                      localObject4 = localObject11;
                      localObject2 = localObject10;
                    }
                  }
                  catch (Exception localException7)
                  {
                    localObject3 = null;
                    continue;
                  }
                  try
                  {
                    localObject1 = new FileOutputStream(b.this.bUG);
                  }
                  catch (Exception localException2)
                  {
                    localObject3 = null;
                    this.bUL = b.this.getString(2131689583);
                  }
                }
                try
                {
                  ((Bitmap)localObject4).compress(Bitmap.CompressFormat.PNG, 100, (OutputStream)localObject1);
                  ((FileOutputStream)localObject1).close();
                  this.done = true;
                  localObject1 = null;
                  com.vent.d.c.c((Closeable)localObject1);
                  return null;
                }
                catch (Exception localException3)
                {
                  break;
                }
                b.this.bUG = null;
                continue;
              }
              catch (Exception localException1)
              {
                b.this.bUG = null;
                continue;
                localObject4 = null;
                continue;
                b.this.bUG = null;
                this.bUL = String.format(b.this.getString(2131689505), new Object[] { localObject7 });
                localObject6 = localException1;
                continue;
              }
              this.bUL = localException8.getMessage();
              localObject6 = localException1;
              if (this.bUL == null)
              {
                this.bUL = localException8.toString();
                localObject6 = localException1;
                continue;
                localObject10 = localException1;
                localObject11 = localObject4;
                this.bUL = b.this.getString(2131689583);
                continue;
                this.bUL = localException4.getMessage();
                localObject10 = localException8;
                localObject11 = localObject2;
                localObject12 = localObject4;
                if (this.bUL == null)
                {
                  this.bUL = localException4.toString();
                  localObject10 = localException8;
                  localObject11 = localObject2;
                  localObject12 = localObject4;
                  continue;
                  this.bUL = b.this.getString(2131689582);
                  localObject2 = null;
                  localObject4 = null;
                  continue;
                  this.bUL = b.this.getString(2131689582);
                  localObject11 = null;
                  localObject12 = null;
                  localObject10 = localException8;
                }
              }
            }
          }
        });
        return;
      }
      if (paramInt1 == 18)
      {
        try
        {
          if ((!this.bUG.exists()) || (!this.bUG.canRead()) || (this.bUG.length() <= 0L)) {
            this.bUG = null;
          }
        }
        catch (Exception paramIntent)
        {
          for (;;)
          {
            this.bUG = null;
          }
        }
        if (this.bUG != null)
        {
          MediaScannerConnection.scanFile(this, new String[] { this.bUG.getPath() }, null, null);
          Bi();
          return;
          if (paramInt2 == -1)
          {
            if (paramIntent != null)
            {
              paramIntent = (d.b)paramIntent.getParcelableExtra("CROP_IMAGE_EXTRA_RESULT");
              if (paramIntent.bRI != null) {
                break label323;
              }
            }
            for (paramInt1 = i;; paramInt1 = 0)
            {
              if (paramInt1 == 0) {
                break label326;
              }
              paramIntent = paramIntent.DD;
              if (paramIntent == null) {
                break;
              }
              paramIntent = paramIntent.toString();
              if (!paramIntent.startsWith("file://")) {
                break;
              }
              File localFile = getCacheDir();
              localFile.mkdirs();
              this.bUG = new File(localFile, "profilepic_download.tmp");
              this.bUG.delete();
              new File(paramIntent.substring(7)).renameTo(this.bUG);
              if (this.bUF == null) {
                break;
              }
              this.bUF.setCachedImage(null);
              paramIntent = this.bUG.toURI().toString();
              ae.dW(paramIntent);
              this.bUF.setCachedImage(paramIntent);
              return;
              paramIntent = null;
              break label185;
            }
          }
        }
      }
    }
  }
  
  protected abstract void dS(String paramString);
  
  final void init()
  {
    this.bUF = ((CachedImageView)findViewById(2131296818));
    this.bUF.setDefaultImage(2131231019);
    this.bUF.aH(MyApplication.cgo, MyApplication.cgo);
    CachedImageView localCachedImageView;
    String str;
    if (this.bUG != null)
    {
      localCachedImageView = this.bUF;
      str = this.bUG.toURI().toString();
    }
    for (;;)
    {
      localCachedImageView.setCachedImage(str);
      this.bUF.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          b.this.aU(true);
        }
      });
      findViewById(2131296819).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          b.this.aU(true);
        }
      });
      return;
      localCachedImageView = this.bUF;
      if (bb.ceP == null) {
        str = null;
      } else {
        str = bb.ceP.eL(MyApplication.cgo);
      }
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      a(paramInt1, paramInt2, paramIntent);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (bUJ == null) {
      bUJ = new File(getCacheDir(), "profilepic_rescale.tmp");
    }
    if (paramBundle != null)
    {
      String str = paramBundle.getString("cameraFile");
      if (str != null) {
        this.bUG = new File(str);
      }
      this.bQp = paramBundle.getBoolean("fixAspectRatio");
    }
  }
  
  protected void onDestroy()
  {
    Bo();
    this.bUF = null;
    super.onDestroy();
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    switch (paramInt)
    {
    default: 
      switch (paramInt)
      {
      default: 
        return;
      }
      break;
    }
    int j = paramArrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      if (paramArrayOfInt[i] != 0)
      {
        com.vent.d.c.a(this, getString(2131689693), 0);
        return;
      }
      i += 1;
    }
    Bn();
    return;
    Bm();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (this.bUG != null) {}
    for (String str = this.bUG.getAbsolutePath();; str = null)
    {
      paramBundle.putString("cameraFile", str);
      paramBundle.putBoolean("fixAspectRatio", this.bQp);
      return;
    }
  }
  
  public static final class a
    extends h
    implements View.OnClickListener
  {
    static void a(d paramd)
    {
      if (com.vent.d.c.bG(paramd))
      {
        a locala = new a();
        locala.setArguments(new Bundle());
        locala.a(paramd.getSupportFragmentManager(), "");
      }
    }
    
    public final void onClick(View paramView)
    {
      switch (paramView.getId())
      {
      default: 
        return;
      case 2131296350: 
        com.vent.d.c.a(this);
        paramView = (b)getActivity();
        int i;
        if (paramView.Bl()) {
          if (android.support.v4.content.a.c(paramView, "android.permission.WRITE_EXTERNAL_STORAGE") == 0)
          {
            i = 1;
            if (i == 0) {
              break label101;
            }
            i = 1;
          }
        }
        for (;;)
        {
          if (i == 0)
          {
            if (Build.VERSION.SDK_INT < 16)
            {
              android.support.v4.app.a.a(paramView, new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" }, 2);
              return;
              i = 0;
              break;
              label101:
              i = 0;
              continue;
            }
            android.support.v4.app.a.a(paramView, new String[] { "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE" }, 2);
            return;
          }
        }
        paramView.Bm();
        return;
      }
      com.vent.d.c.a(this);
      paramView = (b)getActivity();
      if (!paramView.Bl())
      {
        android.support.v4.app.a.a(paramView, new String[] { "android.permission.READ_EXTERNAL_STORAGE" }, 1);
        return;
      }
      paramView.Bn();
    }
    
    public final void onCreate(Bundle paramBundle)
    {
      super.onCreate(paramBundle);
      X(2131755215);
    }
    
    public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
      paramLayoutInflater = paramLayoutInflater.inflate(2131427426, paramViewGroup, false);
      paramLayoutInflater.findViewById(2131296350).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296685).setOnClickListener(this);
      return paramLayoutInflater;
    }
  }
  
  static final class b
    extends AsyncTask<Void, Void, Void>
  {
    final WeakReference<b> bUM;
    File bUN;
    final android.support.v7.app.c bUO;
    Exception bUP;
    String url;
    
    b(b paramb, File paramFile)
    {
      this.bUM = new WeakReference(paramb);
      this.bUN = paramFile;
      this.bUO = com.vent.d.c.v(paramb, 2131689818);
      ae.a(true, "");
    }
    
    private Void Bq()
    {
      for (;;)
      {
        Object localObject4;
        Object localObject7;
        int j;
        int m;
        Object localObject8;
        try
        {
          localObject6 = new BitmapFactory.Options();
          ((BitmapFactory.Options)localObject6).inPreferredConfig = Bitmap.Config.ARGB_8888;
          ((BitmapFactory.Options)localObject6).inSampleSize = 1;
          ((BitmapFactory.Options)localObject6).inJustDecodeBounds = true;
          ((BitmapFactory.Options)localObject6).inScaled = false;
          BitmapFactory.decodeFile(this.bUN.getAbsolutePath(), (BitmapFactory.Options)localObject6);
          if (((BitmapFactory.Options)localObject6).outMimeType == null) {
            break label980;
          }
          localObject4 = ((BitmapFactory.Options)localObject6).outMimeType;
          if (this.bUN.length() <= 2097152L) {
            break label1038;
          }
          i = 1;
          k = new android.support.d.a(this.bUN.getAbsolutePath()).s("Orientation");
          localObject7 = new Matrix();
          switch (k)
          {
          case 4: 
          case 5: 
          case 7: 
            if (((BitmapFactory.Options)localObject6).outWidth <= 1600)
            {
              j = ((BitmapFactory.Options)localObject6).outHeight;
              if (j <= 1600) {}
            }
            else
            {
              j = 1;
              if (i == 0)
              {
                localObject1 = localObject4;
                if (j == 0) {
                  continue;
                }
              }
            }
            break;
          }
        }
        catch (Exception localException1)
        {
          int k;
          Object localObject1;
          boolean bool;
          label431:
          label435:
          this.bUP = localException1;
          return null;
        }
        for (;;)
        {
          try
          {
            i = ((BitmapFactory.Options)localObject6).outWidth / ((BitmapFactory.Options)localObject6).inSampleSize;
            j = ((BitmapFactory.Options)localObject6).outHeight / ((BitmapFactory.Options)localObject6).inSampleSize;
            if ((i > 1600) || (j > 1600))
            {
              m = ((BitmapFactory.Options)localObject6).inSampleSize * 2;
              int n = ((BitmapFactory.Options)localObject6).outWidth / m;
              int i1 = ((BitmapFactory.Options)localObject6).outHeight / m;
              if ((n > 1600) && (i1 > 1600)) {
                continue;
              }
              if (Math.abs(n * i1 - 2560000) < Math.abs(i * j - 2560000) / 2) {
                ((BitmapFactory.Options)localObject6).inSampleSize = m;
              }
            }
            ((BitmapFactory.Options)localObject6).inJustDecodeBounds = false;
            localObject6 = BitmapFactory.decodeFile(this.bUN.getAbsolutePath(), (BitmapFactory.Options)localObject6);
            if (localObject6 == null) {
              continue;
            }
            switch (k)
            {
            case 3: 
              localObject8 = Bitmap.CompressFormat.JPEG;
              localObject1 = "image/jpeg";
              if (!b.e((Bitmap)localObject6)) {
                continue;
              }
              localObject8 = Bitmap.CompressFormat.PNG;
              localObject1 = "image/png";
              localObject7 = new FileOutputStream(b.bUJ);
            }
          }
          catch (Exception localException3)
          {
            Bitmap localBitmap;
            Object localObject2;
            localObject6 = null;
            Object localObject3 = localObject5;
            break label435;
            Object localObject5 = ".jpg";
            break label496;
            localObject5 = ".png";
            break label496;
            localObject5 = ".gif";
            break label496;
            localObject5 = ".webp";
            break label496;
          }
          try
          {
            bool = ((Bitmap)localObject6).compress((Bitmap.CompressFormat)localObject8, 75, (OutputStream)localObject7);
            if (!bool) {
              continue;
            }
          }
          catch (Exception localException2)
          {
            localObject6 = localObject7;
            localObject2 = localObject4;
            break label435;
            localObject2 = localException4;
            localObject5 = localObject7;
            break label431;
          }
          try
          {
            this.bUN = b.bUJ;
            localObject4 = localObject7;
            localObject6 = localObject4;
          }
          catch (Exception localException4)
          {
            localObject6 = localObject7;
            break label435;
          }
        }
        com.vent.d.c.c((Closeable)localObject6);
        int i = -1;
        switch (((String)localObject1).hashCode())
        {
        case -1487394660: 
          localObject6 = new byte[16];
          new SecureRandom().nextBytes((byte[])localObject6);
          localObject7 = new StringBuilder("PCDS3Uploads/" + bb.chQ + "/");
          i = 0;
          if (i < 16)
          {
            ((StringBuilder)localObject7).append(e.eU(localObject6[i]));
            i += 1;
            continue;
            ((Matrix)localObject7).postRotate(90.0F);
            continue;
            ((Matrix)localObject7).postRotate(180.0F);
            continue;
            ((Matrix)localObject7).postRotate(270.0F);
            continue;
            j = 0;
            continue;
            ((BitmapFactory.Options)localObject6).inSampleSize = m;
            continue;
            localBitmap = Bitmap.createBitmap((Bitmap)localObject6, 0, 0, ((Bitmap)localObject6).getWidth(), ((Bitmap)localObject6).getHeight(), (Matrix)localObject7, true);
            if (localBitmap == null) {
              break label992;
            }
            ((Bitmap)localObject6).recycle();
            localObject6 = localBitmap;
            continue;
            if (!localBitmap.equals("image/jpeg")) {
              break label995;
            }
            i = 0;
          }
          break;
        case 1140778788: 
          if (localBitmap.equals("image/pjpeg")) {
            i = 1;
          }
          break;
        case -879258763: 
          if (localBitmap.equals("image/png")) {
            i = 2;
          }
          break;
        case -879267568: 
          if (localBitmap.equals("image/gif")) {
            i = 3;
          }
          break;
        case -1487018032: 
          if (localBitmap.equals("image/webp"))
          {
            i = 4;
            break label995;
            if (localObject4 != null) {
              ((StringBuilder)localObject7).append((String)localObject4);
            }
            localObject4 = ((StringBuilder)localObject7).toString();
            bb.Es();
            localObject6 = com.vent.d.c.eo("NXVNVRHOVIHIMIF57WDD");
            bb.Es();
            localObject6 = new BasicAWSCredentials((String)localObject6, com.vent.d.c.eo("nx02Wnc0DwAKiJ3Mz16pZZJSYxmmaE57RAnb3EQy"));
            localObject7 = new ClientConfiguration();
            ((ClientConfiguration)localObject7).ams = 60000;
            localObject6 = new AmazonS3Client((AWSCredentials)localObject6, (ClientConfiguration)localObject7);
            bb.Es();
            ((AmazonS3Client)localObject6).a(Region.a(b.bUD));
            bb.Es();
            localObject7 = new PutObjectRequest("api-vent-production", (String)localObject4, this.bUN);
            ((PutObjectRequest)localObject7).ass = CannedAccessControlList.arb;
            if (localBitmap != null)
            {
              localObject8 = new ObjectMetadata();
              ((ObjectMetadata)localObject8).setContentType(localBitmap);
              ((PutObjectRequest)localObject7).asr = ((ObjectMetadata)localObject8);
            }
            ((AmazonS3Client)localObject6).a((PutObjectRequest)localObject7);
            bb.Es();
            this.url = ((AmazonS3Client)localObject6).h("api-vent-production", (String)localObject4).toString();
            return null;
            continue;
            localObject6 = null;
            localObject2 = localObject5;
            localObject5 = localObject6;
            continue;
            localObject2 = null;
            localObject5 = null;
            continue;
            continue;
          }
          break;
        default: 
          label496:
          label980:
          label992:
          switch (i)
          {
          default: 
            label995:
            localObject5 = null;
            continue;
            label1038:
            i = 0;
          }
          break;
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */