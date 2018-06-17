package com.theartofdev.edmodo.cropper;

import android.content.res.Resources;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Color;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;

public final class f
  implements Parcelable
{
  public static final Parcelable.Creator<f> CREATOR = new Parcelable.Creator() {};
  public int bQA;
  public int bQB;
  public int bQC;
  public int bQD;
  public int bQE;
  public int bQF;
  public CharSequence bQG;
  public int bQH;
  public Uri bQI;
  public Bitmap.CompressFormat bQJ;
  public int bQK;
  public int bQL;
  public int bQM;
  public int bQN;
  public boolean bQO;
  public Rect bQP;
  public int bQQ;
  public boolean bQR;
  public boolean bQS;
  public boolean bQT;
  public int bQU;
  public boolean bQV;
  public boolean bQW;
  public CharSequence bQX;
  public int bQY;
  public CropImageView.b bQe;
  public float bQf;
  public float bQg;
  public CropImageView.c bQh;
  public CropImageView.j bQi;
  public boolean bQj;
  public boolean bQk;
  public boolean bQl;
  public boolean bQm;
  public int bQn;
  public float bQo;
  public boolean bQp;
  public int bQq;
  public int bQr;
  public float bQs;
  public int bQt;
  public float bQu;
  public float bQv;
  public float bQw;
  public int bQx;
  public float bQy;
  public int bQz;
  public int backgroundColor;
  
  public f()
  {
    DisplayMetrics localDisplayMetrics = Resources.getSystem().getDisplayMetrics();
    this.bQe = CropImageView.b.bRN;
    this.bQf = TypedValue.applyDimension(1, 3.0F, localDisplayMetrics);
    this.bQg = TypedValue.applyDimension(1, 24.0F, localDisplayMetrics);
    this.bQh = CropImageView.c.bRR;
    this.bQi = CropImageView.j.bSa;
    this.bQj = true;
    this.bQk = true;
    this.bQl = true;
    this.bQm = false;
    this.bQn = 4;
    this.bQo = 0.1F;
    this.bQp = false;
    this.bQq = 1;
    this.bQr = 1;
    this.bQs = TypedValue.applyDimension(1, 3.0F, localDisplayMetrics);
    this.bQt = Color.argb(170, 255, 255, 255);
    this.bQu = TypedValue.applyDimension(1, 2.0F, localDisplayMetrics);
    this.bQv = TypedValue.applyDimension(1, 5.0F, localDisplayMetrics);
    this.bQw = TypedValue.applyDimension(1, 14.0F, localDisplayMetrics);
    this.bQx = -1;
    this.bQy = TypedValue.applyDimension(1, 1.0F, localDisplayMetrics);
    this.bQz = Color.argb(170, 255, 255, 255);
    this.backgroundColor = Color.argb(119, 0, 0, 0);
    this.bQA = ((int)TypedValue.applyDimension(1, 42.0F, localDisplayMetrics));
    this.bQB = ((int)TypedValue.applyDimension(1, 42.0F, localDisplayMetrics));
    this.bQC = 40;
    this.bQD = 40;
    this.bQE = 99999;
    this.bQF = 99999;
    this.bQG = "";
    this.bQH = 0;
    this.bQI = Uri.EMPTY;
    this.bQJ = Bitmap.CompressFormat.JPEG;
    this.bQK = 90;
    this.bQL = 0;
    this.bQM = 0;
    this.bQN = CropImageView.i.bRU;
    this.bQO = false;
    this.bQP = null;
    this.bQQ = -1;
    this.bQR = true;
    this.bQS = true;
    this.bQT = false;
    this.bQU = 90;
    this.bQV = false;
    this.bQW = false;
    this.bQX = null;
    this.bQY = 0;
  }
  
  protected f(Parcel paramParcel)
  {
    this.bQe = CropImageView.b.values()[paramParcel.readInt()];
    this.bQf = paramParcel.readFloat();
    this.bQg = paramParcel.readFloat();
    this.bQh = CropImageView.c.values()[paramParcel.readInt()];
    this.bQi = CropImageView.j.values()[paramParcel.readInt()];
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      this.bQj = bool1;
      if (paramParcel.readByte() == 0) {
        break label514;
      }
      bool1 = true;
      label81:
      this.bQk = bool1;
      if (paramParcel.readByte() == 0) {
        break label519;
      }
      bool1 = true;
      label95:
      this.bQl = bool1;
      if (paramParcel.readByte() == 0) {
        break label524;
      }
      bool1 = true;
      label109:
      this.bQm = bool1;
      this.bQn = paramParcel.readInt();
      this.bQo = paramParcel.readFloat();
      if (paramParcel.readByte() == 0) {
        break label529;
      }
      bool1 = true;
      label139:
      this.bQp = bool1;
      this.bQq = paramParcel.readInt();
      this.bQr = paramParcel.readInt();
      this.bQs = paramParcel.readFloat();
      this.bQt = paramParcel.readInt();
      this.bQu = paramParcel.readFloat();
      this.bQv = paramParcel.readFloat();
      this.bQw = paramParcel.readFloat();
      this.bQx = paramParcel.readInt();
      this.bQy = paramParcel.readFloat();
      this.bQz = paramParcel.readInt();
      this.backgroundColor = paramParcel.readInt();
      this.bQA = paramParcel.readInt();
      this.bQB = paramParcel.readInt();
      this.bQC = paramParcel.readInt();
      this.bQD = paramParcel.readInt();
      this.bQE = paramParcel.readInt();
      this.bQF = paramParcel.readInt();
      this.bQG = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
      this.bQH = paramParcel.readInt();
      this.bQI = ((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
      this.bQJ = Bitmap.CompressFormat.valueOf(paramParcel.readString());
      this.bQK = paramParcel.readInt();
      this.bQL = paramParcel.readInt();
      this.bQM = paramParcel.readInt();
      this.bQN = CropImageView.i.AM()[paramParcel.readInt()];
      if (paramParcel.readByte() == 0) {
        break label534;
      }
      bool1 = true;
      label376:
      this.bQO = bool1;
      this.bQP = ((Rect)paramParcel.readParcelable(Rect.class.getClassLoader()));
      this.bQQ = paramParcel.readInt();
      if (paramParcel.readByte() == 0) {
        break label539;
      }
      bool1 = true;
      label415:
      this.bQR = bool1;
      if (paramParcel.readByte() == 0) {
        break label544;
      }
      bool1 = true;
      label429:
      this.bQS = bool1;
      if (paramParcel.readByte() == 0) {
        break label549;
      }
      bool1 = true;
      label443:
      this.bQT = bool1;
      this.bQU = paramParcel.readInt();
      if (paramParcel.readByte() == 0) {
        break label554;
      }
      bool1 = true;
      label465:
      this.bQV = bool1;
      if (paramParcel.readByte() == 0) {
        break label559;
      }
    }
    label514:
    label519:
    label524:
    label529:
    label534:
    label539:
    label544:
    label549:
    label554:
    label559:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.bQW = bool1;
      this.bQX = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
      this.bQY = paramParcel.readInt();
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label81;
      bool1 = false;
      break label95;
      bool1 = false;
      break label109;
      bool1 = false;
      break label139;
      bool1 = false;
      break label376;
      bool1 = false;
      break label415;
      bool1 = false;
      break label429;
      bool1 = false;
      break label443;
      bool1 = false;
      break label465;
    }
  }
  
  public final void ak()
  {
    if (this.bQn < 0) {
      throw new IllegalArgumentException("Cannot set max zoom to a number < 1");
    }
    if (this.bQg < 0.0F) {
      throw new IllegalArgumentException("Cannot set touch radius value to a number <= 0 ");
    }
    if ((this.bQo < 0.0F) || (this.bQo >= 0.5D)) {
      throw new IllegalArgumentException("Cannot set initial crop window padding value to a number < 0 or >= 0.5");
    }
    if (this.bQq <= 0) {
      throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
    }
    if (this.bQr <= 0) {
      throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
    }
    if (this.bQs < 0.0F) {
      throw new IllegalArgumentException("Cannot set line thickness value to a number less than 0.");
    }
    if (this.bQu < 0.0F) {
      throw new IllegalArgumentException("Cannot set corner thickness value to a number less than 0.");
    }
    if (this.bQy < 0.0F) {
      throw new IllegalArgumentException("Cannot set guidelines thickness value to a number less than 0.");
    }
    if (this.bQB < 0) {
      throw new IllegalArgumentException("Cannot set min crop window height value to a number < 0 ");
    }
    if (this.bQC < 0) {
      throw new IllegalArgumentException("Cannot set min crop result width value to a number < 0 ");
    }
    if (this.bQD < 0) {
      throw new IllegalArgumentException("Cannot set min crop result height value to a number < 0 ");
    }
    if (this.bQE < this.bQC) {
      throw new IllegalArgumentException("Cannot set max crop result width to smaller value than min crop result width");
    }
    if (this.bQF < this.bQD) {
      throw new IllegalArgumentException("Cannot set max crop result height to smaller value than min crop result height");
    }
    if (this.bQL < 0) {
      throw new IllegalArgumentException("Cannot set request width value to a number < 0 ");
    }
    if (this.bQM < 0) {
      throw new IllegalArgumentException("Cannot set request height value to a number < 0 ");
    }
    if ((this.bQU < 0) || (this.bQU > 360)) {
      throw new IllegalArgumentException("Cannot set rotation degrees value to a number < 0 or > 360");
    }
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int j = 1;
    paramParcel.writeInt(this.bQe.ordinal());
    paramParcel.writeFloat(this.bQf);
    paramParcel.writeFloat(this.bQg);
    paramParcel.writeInt(this.bQh.ordinal());
    paramParcel.writeInt(this.bQi.ordinal());
    if (this.bQj)
    {
      i = 1;
      paramParcel.writeByte((byte)i);
      if (!this.bQk) {
        break label488;
      }
      i = 1;
      label76:
      paramParcel.writeByte((byte)i);
      if (!this.bQl) {
        break label493;
      }
      i = 1;
      label91:
      paramParcel.writeByte((byte)i);
      if (!this.bQm) {
        break label498;
      }
      i = 1;
      label106:
      paramParcel.writeByte((byte)i);
      paramParcel.writeInt(this.bQn);
      paramParcel.writeFloat(this.bQo);
      if (!this.bQp) {
        break label503;
      }
      i = 1;
      label137:
      paramParcel.writeByte((byte)i);
      paramParcel.writeInt(this.bQq);
      paramParcel.writeInt(this.bQr);
      paramParcel.writeFloat(this.bQs);
      paramParcel.writeInt(this.bQt);
      paramParcel.writeFloat(this.bQu);
      paramParcel.writeFloat(this.bQv);
      paramParcel.writeFloat(this.bQw);
      paramParcel.writeInt(this.bQx);
      paramParcel.writeFloat(this.bQy);
      paramParcel.writeInt(this.bQz);
      paramParcel.writeInt(this.backgroundColor);
      paramParcel.writeInt(this.bQA);
      paramParcel.writeInt(this.bQB);
      paramParcel.writeInt(this.bQC);
      paramParcel.writeInt(this.bQD);
      paramParcel.writeInt(this.bQE);
      paramParcel.writeInt(this.bQF);
      TextUtils.writeToParcel(this.bQG, paramParcel, paramInt);
      paramParcel.writeInt(this.bQH);
      paramParcel.writeParcelable(this.bQI, paramInt);
      paramParcel.writeString(this.bQJ.name());
      paramParcel.writeInt(this.bQK);
      paramParcel.writeInt(this.bQL);
      paramParcel.writeInt(this.bQM);
      paramParcel.writeInt(this.bQN - 1);
      if (!this.bQO) {
        break label508;
      }
      i = 1;
      label359:
      paramParcel.writeInt(i);
      paramParcel.writeParcelable(this.bQP, paramInt);
      paramParcel.writeInt(this.bQQ);
      if (!this.bQR) {
        break label513;
      }
      i = 1;
      label390:
      paramParcel.writeByte((byte)i);
      if (!this.bQS) {
        break label518;
      }
      i = 1;
      label405:
      paramParcel.writeByte((byte)i);
      if (!this.bQT) {
        break label523;
      }
      i = 1;
      label420:
      paramParcel.writeByte((byte)i);
      paramParcel.writeInt(this.bQU);
      if (!this.bQV) {
        break label528;
      }
      i = 1;
      label443:
      paramParcel.writeByte((byte)i);
      if (!this.bQW) {
        break label533;
      }
    }
    label488:
    label493:
    label498:
    label503:
    label508:
    label513:
    label518:
    label523:
    label528:
    label533:
    for (int i = j;; i = 0)
    {
      paramParcel.writeByte((byte)i);
      TextUtils.writeToParcel(this.bQX, paramParcel, paramInt);
      paramParcel.writeInt(this.bQY);
      return;
      i = 0;
      break;
      i = 0;
      break label76;
      i = 0;
      break label91;
      i = 0;
      break label106;
      i = 0;
      break label137;
      i = 0;
      break label359;
      i = 0;
      break label390;
      i = 0;
      break label405;
      i = 0;
      break label420;
      i = 0;
      break label443;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/theartofdev/edmodo/cropper/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */