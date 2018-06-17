package com.theartofdev.edmodo.cropper;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.Toast;
import java.io.File;
import java.io.IOException;

public class CropImageActivity
  extends android.support.v7.app.d
  implements CropImageView.d, CropImageView.h
{
  private f bPR;
  private CropImageView bPS;
  private Uri bPT;
  
  private Uri AG()
  {
    Object localObject = this.bPR.bQI;
    if ((localObject == null) || (((Uri)localObject).equals(Uri.EMPTY))) {
      try
      {
        if (this.bPR.bQJ == Bitmap.CompressFormat.JPEG) {
          localObject = ".jpg";
        }
        for (;;)
        {
          return Uri.fromFile(File.createTempFile("cropped", (String)localObject, getCacheDir()));
          if (this.bPR.bQJ == Bitmap.CompressFormat.PNG) {
            localObject = ".png";
          } else {
            localObject = ".webp";
          }
        }
        return localIOException;
      }
      catch (IOException localIOException)
      {
        throw new RuntimeException("Failed to create temp file for output image", localIOException);
      }
    }
  }
  
  private void AH()
  {
    setResult(0);
    finish();
  }
  
  private void a(Uri paramUri, Exception paramException, int paramInt)
  {
    if (paramException == null) {}
    for (int i = -1;; i = 204)
    {
      paramUri = new d.b(this.bPS.getImageUri(), paramUri, paramException, this.bPS.getCropPoints(), this.bPS.getCropRect(), this.bPS.getRotatedDegrees(), this.bPS.getWholeImageRect(), paramInt);
      paramException = new Intent();
      paramException.putExtras(getIntent());
      paramException.putExtra("CROP_IMAGE_EXTRA_RESULT", paramUri);
      setResult(i, paramException);
      finish();
      return;
    }
  }
  
  private static void a(Menu paramMenu, int paramInt1, int paramInt2)
  {
    paramMenu = paramMenu.findItem(paramInt1);
    Drawable localDrawable;
    if (paramMenu != null)
    {
      localDrawable = paramMenu.getIcon();
      if (localDrawable == null) {}
    }
    try
    {
      localDrawable.mutate();
      localDrawable.setColorFilter(paramInt2, PorterDuff.Mode.SRC_ATOP);
      paramMenu.setIcon(localDrawable);
      return;
    }
    catch (Exception paramMenu)
    {
      Log.w("AIC", "Failed to update menu item color", paramMenu);
    }
  }
  
  private void ef(int paramInt)
  {
    this.bPS.ef(paramInt);
  }
  
  public final void a(CropImageView.a parama)
  {
    a(parama.DD, parama.bRI, parama.bRM);
  }
  
  public final void g(Exception paramException)
  {
    if (paramException == null)
    {
      if (this.bPR.bQP != null) {
        this.bPS.setCropRect(this.bPR.bQP);
      }
      if (this.bPR.bQQ >= 0) {
        this.bPS.setRotatedDegrees(this.bPR.bQQ);
      }
      return;
    }
    a(null, paramException, 1);
  }
  
  @SuppressLint({"NewApi"})
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 200)
    {
      if (paramInt2 == 0) {
        AH();
      }
      if (paramInt2 == -1)
      {
        if ((paramIntent == null) || (paramIntent.getData() == null)) {
          break label128;
        }
        String str = paramIntent.getAction();
        if ((str == null) || (!str.equals("android.media.action.IMAGE_CAPTURE"))) {
          break label103;
        }
        paramInt1 = 1;
      }
    }
    for (;;)
    {
      if ((paramInt1 != 0) || (paramIntent.getData() == null)) {}
      for (paramIntent = d.aD(this);; paramIntent = paramIntent.getData())
      {
        this.bPT = paramIntent;
        if (!d.e(this, this.bPT)) {
          break label116;
        }
        requestPermissions(new String[] { "android.permission.READ_EXTERNAL_STORAGE" }, 201);
        return;
        label103:
        paramInt1 = 0;
        break;
      }
      label116:
      this.bPS.setImageUriAsync(this.bPT);
      return;
      label128:
      paramInt1 = 1;
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    AH();
  }
  
  @SuppressLint({"NewApi"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(i.b.crop_image_activity);
    this.bPS = ((CropImageView)findViewById(i.a.cropImageView));
    Object localObject = getIntent().getBundleExtra("CROP_IMAGE_EXTRA_BUNDLE");
    this.bPT = ((Uri)((Bundle)localObject).getParcelable("CROP_IMAGE_EXTRA_SOURCE"));
    this.bPR = ((f)((Bundle)localObject).getParcelable("CROP_IMAGE_EXTRA_OPTIONS"));
    if (paramBundle == null)
    {
      if ((this.bPT != null) && (!this.bPT.equals(Uri.EMPTY))) {
        break label173;
      }
      if (d.aC(this)) {
        requestPermissions(new String[] { "android.permission.CAMERA" }, 2011);
      }
    }
    else
    {
      localObject = getSupportActionBar();
      if (localObject != null) {
        if ((this.bPR.bQG == null) || (this.bPR.bQG.length() <= 0)) {
          break label217;
        }
      }
    }
    label173:
    label217:
    for (paramBundle = this.bPR.bQG;; paramBundle = getResources().getString(i.d.crop_image_activity_title))
    {
      ((android.support.v7.app.a)localObject).setTitle(paramBundle);
      ((android.support.v7.app.a)localObject).setDisplayHomeAsUpEnabled(true);
      return;
      d.k(this);
      break;
      if (d.e(this, this.bPT))
      {
        requestPermissions(new String[] { "android.permission.READ_EXTERNAL_STORAGE" }, 201);
        break;
      }
      this.bPS.setImageUriAsync(this.bPT);
      break;
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(i.c.crop_image_menu, paramMenu);
    if (!this.bPR.bQR)
    {
      paramMenu.removeItem(i.a.crop_image_menu_rotate_left);
      paramMenu.removeItem(i.a.crop_image_menu_rotate_right);
    }
    for (;;)
    {
      if (!this.bPR.bQS) {
        paramMenu.removeItem(i.a.crop_image_menu_flip);
      }
      if (this.bPR.bQX != null) {
        paramMenu.findItem(i.a.crop_image_menu_crop).setTitle(this.bPR.bQX);
      }
      Object localObject3 = null;
      Drawable localDrawable = null;
      localObject1 = localObject3;
      try
      {
        if (this.bPR.bQY != 0)
        {
          localObject1 = localObject3;
          localDrawable = android.support.v4.content.a.a(this, this.bPR.bQY);
          localObject1 = localDrawable;
          paramMenu.findItem(i.a.crop_image_menu_crop).setIcon(localDrawable);
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Log.w("AIC", "Failed to read menu crop drawable", localException);
          Object localObject2 = localObject1;
        }
      }
      if (this.bPR.bQH != 0)
      {
        a(paramMenu, i.a.crop_image_menu_rotate_left, this.bPR.bQH);
        a(paramMenu, i.a.crop_image_menu_rotate_right, this.bPR.bQH);
        a(paramMenu, i.a.crop_image_menu_flip, this.bPR.bQH);
        if (localDrawable != null) {
          a(paramMenu, i.a.crop_image_menu_crop, this.bPR.bQH);
        }
      }
      return true;
      if (this.bPR.bQT) {
        paramMenu.findItem(i.a.crop_image_menu_rotate_left).setVisible(true);
      }
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == i.a.crop_image_menu_crop)
    {
      if (this.bPR.bQO)
      {
        a(null, null, 1);
        return true;
      }
      paramMenuItem = AG();
      CropImageView localCropImageView = this.bPS;
      Bitmap.CompressFormat localCompressFormat = this.bPR.bQJ;
      int i = this.bPR.bQK;
      int j = this.bPR.bQL;
      int k = this.bPR.bQM;
      int m = this.bPR.bQN;
      if (localCropImageView.bRt == null) {
        throw new IllegalArgumentException("mOnCropImageCompleteListener is not set");
      }
      localCropImageView.a(j, k, m, paramMenuItem, localCompressFormat, i);
      return true;
    }
    if (paramMenuItem.getItemId() == i.a.crop_image_menu_rotate_left)
    {
      ef(-this.bPR.bQU);
      return true;
    }
    if (paramMenuItem.getItemId() == i.a.crop_image_menu_rotate_right)
    {
      ef(this.bPR.bQU);
      return true;
    }
    boolean bool;
    if (paramMenuItem.getItemId() == i.a.crop_image_menu_flip_horizontally)
    {
      paramMenuItem = this.bPS;
      if (!paramMenuItem.bPy) {}
      for (bool = true;; bool = false)
      {
        paramMenuItem.bPy = bool;
        paramMenuItem.a(paramMenuItem.getWidth(), paramMenuItem.getHeight(), true, false);
        return true;
      }
    }
    if (paramMenuItem.getItemId() == i.a.crop_image_menu_flip_vertically)
    {
      paramMenuItem = this.bPS;
      if (!paramMenuItem.bPz) {}
      for (bool = true;; bool = false)
      {
        paramMenuItem.bPz = bool;
        paramMenuItem.a(paramMenuItem.getWidth(), paramMenuItem.getHeight(), true, false);
        return true;
      }
    }
    if (paramMenuItem.getItemId() == 16908332)
    {
      AH();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (paramInt == 201)
    {
      if ((this.bPT == null) || (paramArrayOfInt.length <= 0) || (paramArrayOfInt[0] != 0)) {
        break label48;
      }
      this.bPS.setImageUriAsync(this.bPT);
    }
    for (;;)
    {
      if (paramInt == 2011) {
        d.k(this);
      }
      return;
      label48:
      Toast.makeText(this, i.d.crop_image_activity_no_permissions, 1).show();
      AH();
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    this.bPS.setOnSetImageUriCompleteListener(this);
    this.bPS.setOnCropImageCompleteListener(this);
  }
  
  protected void onStop()
  {
    super.onStop();
    this.bPS.setOnSetImageUriCompleteListener(null);
    this.bPS.setOnCropImageCompleteListener(null);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/theartofdev/edmodo/cropper/CropImageActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */