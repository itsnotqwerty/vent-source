package android.support.d;

import android.content.res.AssetManager.AssetInputStream;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.TimeZone;
import java.util.regex.Pattern;

public final class a
{
  private static final List<Integer> rX = Arrays.asList(new Integer[] { Integer.valueOf(1), Integer.valueOf(6), Integer.valueOf(3), Integer.valueOf(8) });
  private static final List<Integer> rY = Arrays.asList(new Integer[] { Integer.valueOf(2), Integer.valueOf(7), Integer.valueOf(4), Integer.valueOf(5) });
  public static final int[] rZ = { 8, 8, 8 };
  private static final HashMap<Integer, Integer> sA;
  private static final Charset sB;
  static final byte[] sC;
  private static final Pattern sT = Pattern.compile(".*[1-9].*");
  private static final Pattern sU = Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
  public static final int[] sa = { 4 };
  public static final int[] sb = { 8 };
  static final byte[] sc = { -1, -40, -1 };
  private static final byte[] sd = { 79, 76, 89, 77, 80, 0 };
  private static final byte[] se = { 79, 76, 89, 77, 80, 85, 83, 0, 73, 73 };
  private static SimpleDateFormat sf;
  static final String[] sg = { "", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE" };
  static final int[] sh = { 0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1 };
  private static final byte[] si = { 65, 83, 67, 73, 73, 0, 0, 0 };
  private static final c[] sj = { new c("NewSubfileType", 254, 4, 0), new c("SubfileType", 255, 4, 0), new c("ImageWidth", 256, 0), new c("ImageLength", 257, 0), new c("BitsPerSample", 258, 3, 0), new c("Compression", 259, 3, 0), new c("PhotometricInterpretation", 262, 3, 0), new c("ImageDescription", 270, 2, 0), new c("Make", 271, 2, 0), new c("Model", 272, 2, 0), new c("StripOffsets", 273, 0), new c("Orientation", 274, 3, 0), new c("SamplesPerPixel", 277, 3, 0), new c("RowsPerStrip", 278, 0), new c("StripByteCounts", 279, 0), new c("XResolution", 282, 5, 0), new c("YResolution", 283, 5, 0), new c("PlanarConfiguration", 284, 3, 0), new c("ResolutionUnit", 296, 3, 0), new c("TransferFunction", 301, 3, 0), new c("Software", 305, 2, 0), new c("DateTime", 306, 2, 0), new c("Artist", 315, 2, 0), new c("WhitePoint", 318, 5, 0), new c("PrimaryChromaticities", 319, 5, 0), new c("SubIFDPointer", 330, 4, 0), new c("JPEGInterchangeFormat", 513, 4, 0), new c("JPEGInterchangeFormatLength", 514, 4, 0), new c("YCbCrCoefficients", 529, 5, 0), new c("YCbCrSubSampling", 530, 3, 0), new c("YCbCrPositioning", 531, 3, 0), new c("ReferenceBlackWhite", 532, 5, 0), new c("Copyright", 33432, 2, 0), new c("ExifIFDPointer", 34665, 4, 0), new c("GPSInfoIFDPointer", 34853, 4, 0), new c("SensorTopBorder", 4, 4, 0), new c("SensorLeftBorder", 5, 4, 0), new c("SensorBottomBorder", 6, 4, 0), new c("SensorRightBorder", 7, 4, 0), new c("ISO", 23, 3, 0), new c("JpgFromRaw", 46, 7, 0) };
  private static final c[] sk = { new c("ExposureTime", 33434, 5, 0), new c("FNumber", 33437, 5, 0), new c("ExposureProgram", 34850, 3, 0), new c("SpectralSensitivity", 34852, 2, 0), new c("PhotographicSensitivity", 34855, 3, 0), new c("OECF", 34856, 7, 0), new c("ExifVersion", 36864, 2, 0), new c("DateTimeOriginal", 36867, 2, 0), new c("DateTimeDigitized", 36868, 2, 0), new c("ComponentsConfiguration", 37121, 7, 0), new c("CompressedBitsPerPixel", 37122, 5, 0), new c("ShutterSpeedValue", 37377, 10, 0), new c("ApertureValue", 37378, 5, 0), new c("BrightnessValue", 37379, 10, 0), new c("ExposureBiasValue", 37380, 10, 0), new c("MaxApertureValue", 37381, 5, 0), new c("SubjectDistance", 37382, 5, 0), new c("MeteringMode", 37383, 3, 0), new c("LightSource", 37384, 3, 0), new c("Flash", 37385, 3, 0), new c("FocalLength", 37386, 5, 0), new c("SubjectArea", 37396, 3, 0), new c("MakerNote", 37500, 7, 0), new c("UserComment", 37510, 7, 0), new c("SubSecTime", 37520, 2, 0), new c("SubSecTimeOriginal", 37521, 2, 0), new c("SubSecTimeDigitized", 37522, 2, 0), new c("FlashpixVersion", 40960, 7, 0), new c("ColorSpace", 40961, 3, 0), new c("PixelXDimension", 40962, 0), new c("PixelYDimension", 40963, 0), new c("RelatedSoundFile", 40964, 2, 0), new c("InteroperabilityIFDPointer", 40965, 4, 0), new c("FlashEnergy", 41483, 5, 0), new c("SpatialFrequencyResponse", 41484, 7, 0), new c("FocalPlaneXResolution", 41486, 5, 0), new c("FocalPlaneYResolution", 41487, 5, 0), new c("FocalPlaneResolutionUnit", 41488, 3, 0), new c("SubjectLocation", 41492, 3, 0), new c("ExposureIndex", 41493, 5, 0), new c("SensingMethod", 41495, 3, 0), new c("FileSource", 41728, 7, 0), new c("SceneType", 41729, 7, 0), new c("CFAPattern", 41730, 7, 0), new c("CustomRendered", 41985, 3, 0), new c("ExposureMode", 41986, 3, 0), new c("WhiteBalance", 41987, 3, 0), new c("DigitalZoomRatio", 41988, 5, 0), new c("FocalLengthIn35mmFilm", 41989, 3, 0), new c("SceneCaptureType", 41990, 3, 0), new c("GainControl", 41991, 3, 0), new c("Contrast", 41992, 3, 0), new c("Saturation", 41993, 3, 0), new c("Sharpness", 41994, 3, 0), new c("DeviceSettingDescription", 41995, 7, 0), new c("SubjectDistanceRange", 41996, 3, 0), new c("ImageUniqueID", 42016, 2, 0), new c("DNGVersion", 50706, 1, 0), new c("DefaultCropSize", 50720, 0) };
  private static final c[] sl = { new c("GPSVersionID", 0, 1, 0), new c("GPSLatitudeRef", 1, 2, 0), new c("GPSLatitude", 2, 5, 0), new c("GPSLongitudeRef", 3, 2, 0), new c("GPSLongitude", 4, 5, 0), new c("GPSAltitudeRef", 5, 1, 0), new c("GPSAltitude", 6, 5, 0), new c("GPSTimeStamp", 7, 5, 0), new c("GPSSatellites", 8, 2, 0), new c("GPSStatus", 9, 2, 0), new c("GPSMeasureMode", 10, 2, 0), new c("GPSDOP", 11, 5, 0), new c("GPSSpeedRef", 12, 2, 0), new c("GPSSpeed", 13, 5, 0), new c("GPSTrackRef", 14, 2, 0), new c("GPSTrack", 15, 5, 0), new c("GPSImgDirectionRef", 16, 2, 0), new c("GPSImgDirection", 17, 5, 0), new c("GPSMapDatum", 18, 2, 0), new c("GPSDestLatitudeRef", 19, 2, 0), new c("GPSDestLatitude", 20, 5, 0), new c("GPSDestLongitudeRef", 21, 2, 0), new c("GPSDestLongitude", 22, 5, 0), new c("GPSDestBearingRef", 23, 2, 0), new c("GPSDestBearing", 24, 5, 0), new c("GPSDestDistanceRef", 25, 2, 0), new c("GPSDestDistance", 26, 5, 0), new c("GPSProcessingMethod", 27, 7, 0), new c("GPSAreaInformation", 28, 7, 0), new c("GPSDateStamp", 29, 2, 0), new c("GPSDifferential", 30, 3, 0) };
  private static final c[] sm = { new c("InteroperabilityIndex", 1, 2, 0) };
  private static final c[] sn = { new c("NewSubfileType", 254, 4, 0), new c("SubfileType", 255, 4, 0), new c("ThumbnailImageWidth", 256, 0), new c("ThumbnailImageLength", 257, 0), new c("BitsPerSample", 258, 3, 0), new c("Compression", 259, 3, 0), new c("PhotometricInterpretation", 262, 3, 0), new c("ImageDescription", 270, 2, 0), new c("Make", 271, 2, 0), new c("Model", 272, 2, 0), new c("StripOffsets", 273, 0), new c("Orientation", 274, 3, 0), new c("SamplesPerPixel", 277, 3, 0), new c("RowsPerStrip", 278, 0), new c("StripByteCounts", 279, 0), new c("XResolution", 282, 5, 0), new c("YResolution", 283, 5, 0), new c("PlanarConfiguration", 284, 3, 0), new c("ResolutionUnit", 296, 3, 0), new c("TransferFunction", 301, 3, 0), new c("Software", 305, 2, 0), new c("DateTime", 306, 2, 0), new c("Artist", 315, 2, 0), new c("WhitePoint", 318, 5, 0), new c("PrimaryChromaticities", 319, 5, 0), new c("SubIFDPointer", 330, 4, 0), new c("JPEGInterchangeFormat", 513, 4, 0), new c("JPEGInterchangeFormatLength", 514, 4, 0), new c("YCbCrCoefficients", 529, 5, 0), new c("YCbCrSubSampling", 530, 3, 0), new c("YCbCrPositioning", 531, 3, 0), new c("ReferenceBlackWhite", 532, 5, 0), new c("Copyright", 33432, 2, 0), new c("ExifIFDPointer", 34665, 4, 0), new c("GPSInfoIFDPointer", 34853, 4, 0), new c("DNGVersion", 50706, 1, 0), new c("DefaultCropSize", 50720, 0) };
  private static final c so = new c("StripOffsets", 273, 3, (byte)0);
  private static final c[] sp = { new c("ThumbnailImage", 256, 7, 0), new c("CameraSettingsIFDPointer", 8224, 4, 0), new c("ImageProcessingIFDPointer", 8256, 4, 0) };
  private static final c[] sq = { new c("PreviewImageStart", 257, 4, 0), new c("PreviewImageLength", 258, 4, 0) };
  private static final c[] sr = { new c("AspectFrame", 4371, 3, 0) };
  private static final c[] ss = { new c("ColorSpace", 55, 3, 0) };
  static final c[][] st = { sj, sk, sl, sm, sn, sj, sp, sq, sr, ss };
  private static final c[] su = { new c("SubIFDPointer", 330, 4, 0), new c("ExifIFDPointer", 34665, 4, 0), new c("GPSInfoIFDPointer", 34853, 4, 0), new c("InteroperabilityIFDPointer", 40965, 4, 0), new c("CameraSettingsIFDPointer", 8224, 1, 0), new c("ImageProcessingIFDPointer", 8256, 1, 0) };
  private static final c sv = new c("JPEGInterchangeFormat", 513, 4, (byte)0);
  private static final c sw = new c("JPEGInterchangeFormatLength", 514, 4, (byte)0);
  private static final HashMap<Integer, c>[] sx = new HashMap[st.length];
  private static final HashMap<String, c>[] sy = new HashMap[st.length];
  private static final HashSet<String> sz = new HashSet(Arrays.asList(new String[] { "FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp" }));
  private final String sD;
  private final AssetManager.AssetInputStream sE;
  private int sF;
  private final HashMap<String, b>[] sG = new HashMap[st.length];
  private ByteOrder sH = ByteOrder.BIG_ENDIAN;
  private boolean sI;
  private int sJ;
  private int sK;
  private byte[] sL;
  private int sM;
  private int sN;
  private int sO;
  private int sP;
  private int sQ;
  private int sR;
  private boolean sS;
  
  static
  {
    sA = new HashMap();
    sB = Charset.forName("US-ASCII");
    sC = "Exif\000\000".getBytes(sB);
    Object localObject1 = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
    sf = (SimpleDateFormat)localObject1;
    ((SimpleDateFormat)localObject1).setTimeZone(TimeZone.getTimeZone("UTC"));
    int i = 0;
    while (i < st.length)
    {
      sx[i] = new HashMap();
      sy[i] = new HashMap();
      localObject1 = st[i];
      int k = localObject1.length;
      int j = 0;
      while (j < k)
      {
        Object localObject2 = localObject1[j];
        sx[i].put(Integer.valueOf(((c)localObject2).number), localObject2);
        sy[i].put(((c)localObject2).name, localObject2);
        j += 1;
      }
      i += 1;
    }
    sA.put(Integer.valueOf(su[0].number), Integer.valueOf(5));
    sA.put(Integer.valueOf(su[1].number), Integer.valueOf(1));
    sA.put(Integer.valueOf(su[2].number), Integer.valueOf(2));
    sA.put(Integer.valueOf(su[3].number), Integer.valueOf(3));
    sA.put(Integer.valueOf(su[4].number), Integer.valueOf(7));
    sA.put(Integer.valueOf(su[5].number), Integer.valueOf(8));
  }
  
  public a(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("inputStream cannot be null");
    }
    this.sD = null;
    if ((paramInputStream instanceof AssetManager.AssetInputStream)) {}
    for (this.sE = ((AssetManager.AssetInputStream)paramInputStream);; this.sE = null)
    {
      c(paramInputStream);
      return;
    }
  }
  
  public a(String paramString)
    throws IOException
  {
    if (paramString == null) {
      throw new IllegalArgumentException("filename cannot be null");
    }
    this.sE = null;
    this.sD = paramString;
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramString);
      closeQuietly(localFileInputStream);
    }
    finally
    {
      try
      {
        c(localFileInputStream);
        closeQuietly(localFileInputStream);
        return;
      }
      finally {}
      paramString = finally;
      localFileInputStream = null;
    }
    throw paramString;
  }
  
  private void a(a parama)
    throws IOException
  {
    a(parama, parama.available());
    b(parama, 0);
    d(parama, 0);
    d(parama, 5);
    d(parama, 4);
    k(0, 5);
    k(0, 4);
    k(5, 4);
    parama = (b)this.sG[1].get("PixelXDimension");
    b localb = (b)this.sG[1].get("PixelYDimension");
    if ((parama != null) && (localb != null))
    {
      this.sG[0].put("ImageWidth", parama);
      this.sG[0].put("ImageLength", localb);
    }
    if ((this.sG[4].isEmpty()) && (c(this.sG[5])))
    {
      this.sG[4] = this.sG[5];
      this.sG[5] = new HashMap();
    }
    if (!c(this.sG[4])) {
      Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
    }
    if (this.sF == 8)
    {
      parama = (b)this.sG[1].get("MakerNote");
      if (parama != null)
      {
        parama = new a(parama.sY);
        parama.sW = this.sH;
        parama.seek(6L);
        b(parama, 9);
        parama = (b)this.sG[9].get("ColorSpace");
        if (parama != null) {
          this.sG[1].put("ColorSpace", parama);
        }
      }
    }
  }
  
  private void a(a parama, int paramInt)
    throws IOException
  {
    this.sH = c(parama);
    parama.sW = this.sH;
    int i = parama.readUnsignedShort();
    if ((this.sF != 7) && (this.sF != 10) && (i != 42)) {
      throw new IOException("Invalid start code: " + Integer.toHexString(i));
    }
    i = parama.readInt();
    if ((i < 8) || (i >= paramInt)) {
      throw new IOException("Invalid first Ifd offset: " + i);
    }
    paramInt = i - 8;
    if ((paramInt > 0) && (parama.skipBytes(paramInt) != paramInt)) {
      throw new IOException("Couldn't jump to first Ifd: " + paramInt);
    }
  }
  
  private void a(a parama, int paramInt1, int paramInt2)
    throws IOException
  {
    parama.sW = ByteOrder.BIG_ENDIAN;
    parama.seek(paramInt1);
    int i = parama.readByte();
    if (i != -1) {
      throw new IOException("Invalid marker: " + Integer.toHexString(i & 0xFF));
    }
    if (parama.readByte() != -40) {
      throw new IOException("Invalid marker: " + Integer.toHexString(i & 0xFF));
    }
    paramInt1 = paramInt1 + 1 + 1;
    i = parama.readByte();
    if (i != -1) {
      throw new IOException("Invalid marker:" + Integer.toHexString(i & 0xFF));
    }
    i = parama.readByte();
    int k;
    int j;
    if ((i != -39) && (i != -38))
    {
      k = parama.readUnsignedShort() - 2;
      j = paramInt1 + 1 + 1 + 2;
      if (k < 0) {
        throw new IOException("Invalid length");
      }
      switch (i)
      {
      default: 
        i = j;
        paramInt1 = k;
      }
    }
    for (;;)
    {
      if (paramInt1 < 0)
      {
        throw new IOException("Invalid length");
        paramInt1 = k;
        i = j;
        if (k < 6) {
          continue;
        }
        byte[] arrayOfByte = new byte[6];
        if (parama.read(arrayOfByte) != 6) {
          throw new IOException("Invalid exif");
        }
        j += 6;
        k -= 6;
        paramInt1 = k;
        i = j;
        if (!Arrays.equals(arrayOfByte, sC)) {
          continue;
        }
        if (k <= 0) {
          throw new IOException("Invalid exif");
        }
        this.sN = j;
        arrayOfByte = new byte[k];
        if (parama.read(arrayOfByte) != k) {
          throw new IOException("Invalid exif");
        }
        i = j + k;
        a locala = new a(arrayOfByte);
        a(locala, arrayOfByte.length);
        b(locala, paramInt2);
        paramInt1 = 0;
        continue;
        arrayOfByte = new byte[k];
        if (parama.read(arrayOfByte) != k) {
          throw new IOException("Invalid exif");
        }
        if (getAttribute("UserComment") == null)
        {
          this.sG[1].put("UserComment", b.t(new String(arrayOfByte, sB)));
          paramInt1 = 0;
          i = j;
          continue;
          if (parama.skipBytes(1) != 1) {
            throw new IOException("Invalid SOFx");
          }
          this.sG[paramInt2].put("ImageLength", b.a(parama.readUnsignedShort(), this.sH));
          this.sG[paramInt2].put("ImageWidth", b.a(parama.readUnsignedShort(), this.sH));
          paramInt1 = k - 5;
          i = j;
        }
      }
      else
      {
        if (parama.skipBytes(paramInt1) != paramInt1) {
          throw new IOException("Invalid JPEG segment");
        }
        paramInt1 += i;
        break;
        parama.sW = this.sH;
        return;
      }
      paramInt1 = 0;
      i = j;
    }
  }
  
  private void a(a parama, HashMap paramHashMap)
    throws IOException
  {
    b localb = (b)paramHashMap.get("JPEGInterchangeFormat");
    paramHashMap = (b)paramHashMap.get("JPEGInterchangeFormatLength");
    int j;
    int k;
    int i;
    if ((localb != null) && (paramHashMap != null))
    {
      j = localb.b(this.sH);
      k = Math.min(paramHashMap.b(this.sH), parama.available() - j);
      if ((this.sF != 4) && (this.sF != 9) && (this.sF != 10)) {
        break label156;
      }
      i = j + this.sN;
    }
    for (;;)
    {
      if ((i > 0) && (k > 0))
      {
        this.sI = true;
        this.sJ = i;
        this.sK = k;
        if ((this.sD == null) && (this.sE == null))
        {
          paramHashMap = new byte[k];
          parama.seek(i);
          parama.readFully(paramHashMap);
          this.sL = paramHashMap;
        }
      }
      return;
      label156:
      i = j;
      if (this.sF == 7) {
        i = j + this.sO;
      }
    }
  }
  
  private void b(a parama)
    throws IOException
  {
    parama.skipBytes(84);
    Object localObject = new byte[4];
    byte[] arrayOfByte = new byte[4];
    parama.read((byte[])localObject);
    parama.skipBytes(4);
    parama.read(arrayOfByte);
    int i = ByteBuffer.wrap((byte[])localObject).getInt();
    int j = ByteBuffer.wrap(arrayOfByte).getInt();
    a(parama, i, 5);
    parama.seek(j);
    parama.sW = ByteOrder.BIG_ENDIAN;
    j = parama.readInt();
    i = 0;
    for (;;)
    {
      int m;
      if (i < j)
      {
        int k = parama.readUnsignedShort();
        m = parama.readUnsignedShort();
        if (k == so.number)
        {
          i = parama.readShort();
          j = parama.readShort();
          parama = b.a(i, this.sH);
          localObject = b.a(j, this.sH);
          this.sG[0].put("ImageLength", parama);
          this.sG[0].put("ImageWidth", localObject);
        }
      }
      else
      {
        return;
      }
      parama.skipBytes(m);
      i += 1;
    }
  }
  
  private void b(a parama, int paramInt)
    throws IOException
  {
    int j = paramInt;
    for (;;)
    {
      if (a.d(parama) + 2 > a.e(parama)) {}
      label138:
      label392:
      label470:
      label512:
      label624:
      label783:
      label814:
      label914:
      do
      {
        do
        {
          do
          {
            int n;
            do
            {
              return;
              n = parama.readShort();
            } while (a.d(parama) + n * 12 > a.e(parama));
            int k = 0;
            if (k < n)
            {
              int i1 = parama.readUnsignedShort();
              int i = parama.readUnsignedShort();
              int i2 = parama.readInt();
              long l3 = parama.mPosition + 4L;
              c localc = (c)sx[j].get(Integer.valueOf(i1));
              long l1 = 0L;
              int m = 0;
              if (localc == null)
              {
                Log.w("ExifInterface", "Skip the tag entry since tag number is not defined: " + i1);
                paramInt = i;
                i = m;
                if (i != 0) {
                  break label470;
                }
                parama.seek(l3);
              }
              for (;;)
              {
                k = (short)(k + 1);
                break;
                if ((i <= 0) || (i >= sh.length))
                {
                  Log.w("ExifInterface", "Skip the tag entry since data format is invalid: " + i);
                  paramInt = i;
                  i = m;
                  break label138;
                }
                if ((localc.sZ == 7) || (i == 7)) {
                  paramInt = 1;
                }
                for (;;)
                {
                  if (paramInt != 0) {
                    break label392;
                  }
                  Log.w("ExifInterface", "Skip the tag entry since data format (" + sg[i] + ") is unexpected for tag: " + localc.name);
                  paramInt = i;
                  i = m;
                  break;
                  if ((localc.sZ == i) || (localc.ta == i)) {
                    paramInt = 1;
                  } else if (((localc.sZ == 4) || (localc.ta == 4)) && (i == 3)) {
                    paramInt = 1;
                  } else if (((localc.sZ == 9) || (localc.ta == 9)) && (i == 8)) {
                    paramInt = 1;
                  } else if (((localc.sZ == 12) || (localc.ta == 12)) && (i == 11)) {
                    paramInt = 1;
                  } else {
                    paramInt = 0;
                  }
                }
                paramInt = i;
                if (i == 7) {
                  paramInt = localc.sZ;
                }
                l1 = i2 * sh[paramInt];
                if ((l1 < 0L) || (l1 > 2147483647L))
                {
                  Log.w("ExifInterface", "Skip the tag entry since the number of components is invalid: " + i2);
                  i = m;
                  break label138;
                }
                i = 1;
                break label138;
                if (l1 > 4L)
                {
                  i = parama.readInt();
                  if (this.sF != 7) {
                    break label783;
                  }
                  if ("MakerNote".equals(localc.name))
                  {
                    this.sO = i;
                    if (i + l1 > a.e(parama)) {
                      break label814;
                    }
                    parama.seek(i);
                  }
                }
                else
                {
                  localObject = (Integer)sA.get(Integer.valueOf(i1));
                  if (localObject == null) {
                    break label914;
                  }
                  long l2 = -1L;
                  l1 = l2;
                  switch (paramInt)
                  {
                  default: 
                    l1 = l2;
                  case 5: 
                  case 6: 
                  case 7: 
                  case 10: 
                  case 11: 
                  case 12: 
                    if ((l1 > 0L) && (l1 < a.e(parama)))
                    {
                      parama.seek(l1);
                      b(parama, ((Integer)localObject).intValue());
                    }
                    break;
                  }
                }
                for (;;)
                {
                  parama.seek(l3);
                  break;
                  if ((j != 6) || (!"ThumbnailImage".equals(localc.name))) {
                    break label512;
                  }
                  this.sP = i;
                  this.sQ = i2;
                  localObject = b.a(6, this.sH);
                  b localb1 = b.a(this.sP, this.sH);
                  b localb2 = b.a(this.sQ, this.sH);
                  this.sG[4].put("Compression", localObject);
                  this.sG[4].put("JPEGInterchangeFormat", localb1);
                  this.sG[4].put("JPEGInterchangeFormatLength", localb2);
                  break label512;
                  if ((this.sF != 10) || (!"JpgFromRaw".equals(localc.name))) {
                    break label512;
                  }
                  this.sR = i;
                  break label512;
                  Log.w("ExifInterface", "Skip the tag entry since data offset is invalid: " + i);
                  parama.seek(l3);
                  break;
                  l1 = parama.readUnsignedShort();
                  break label624;
                  l1 = parama.readShort();
                  break label624;
                  l1 = parama.ck();
                  break label624;
                  l1 = parama.readInt();
                  break label624;
                  Log.w("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + l1);
                }
                Object localObject = new byte[(int)l1];
                parama.readFully((byte[])localObject);
                localObject = new b(paramInt, i2, (byte[])localObject, (byte)0);
                this.sG[j].put(localc.name, localObject);
                if ("DNGVersion".equals(localc.name)) {
                  this.sF = 3;
                }
                if (((!"Make".equals(localc.name)) && (!"Model".equals(localc.name))) || ((((b)localObject).c(this.sH).contains("PENTAX")) || (("Compression".equals(localc.name)) && (((b)localObject).b(this.sH) == 65535)))) {
                  this.sF = 8;
                }
                if (parama.mPosition != l3) {
                  parama.seek(l3);
                }
              }
            }
          } while (parama.mPosition + 4 > a.e(parama));
          paramInt = parama.readInt();
        } while ((paramInt <= 8) || (paramInt >= a.e(parama)));
        parama.seek(paramInt);
        if (this.sG[4].isEmpty())
        {
          j = 4;
          break;
        }
      } while (!this.sG[5].isEmpty());
      j = 5;
    }
  }
  
  private void b(a parama, HashMap paramHashMap)
    throws IOException
  {
    Object localObject1 = (b)paramHashMap.get("StripOffsets");
    Object localObject2 = (b)paramHashMap.get("StripByteCounts");
    if ((localObject1 != null) && (localObject2 != null))
    {
      paramHashMap = k(((b)localObject1).a(this.sH));
      localObject1 = k(((b)localObject2).a(this.sH));
      if (paramHashMap == null) {
        Log.w("ExifInterface", "stripOffsets should not be null.");
      }
    }
    else
    {
      return;
    }
    if (localObject1 == null)
    {
      Log.w("ExifInterface", "stripByteCounts should not be null.");
      return;
    }
    long l = 0L;
    int j = localObject1.length;
    int i = 0;
    while (i < j)
    {
      l += localObject1[i];
      i += 1;
    }
    localObject2 = new byte[(int)l];
    i = 0;
    j = 0;
    int k = 0;
    while (i < paramHashMap.length)
    {
      int n = (int)paramHashMap[i];
      int m = (int)localObject1[i];
      n -= k;
      if (n < 0) {
        Log.d("ExifInterface", "Invalid strip offset value");
      }
      parama.seek(n);
      byte[] arrayOfByte = new byte[m];
      parama.read(arrayOfByte);
      k = k + n + m;
      System.arraycopy(arrayOfByte, 0, localObject2, j, arrayOfByte.length);
      j += arrayOfByte.length;
      i += 1;
    }
    this.sI = true;
    this.sL = ((byte[])localObject2);
    this.sK = localObject2.length;
  }
  
  private static ByteOrder c(a parama)
    throws IOException
  {
    int i = parama.readShort();
    switch (i)
    {
    default: 
      throw new IOException("Invalid byte order: " + Integer.toHexString(i));
    case 18761: 
      return ByteOrder.LITTLE_ENDIAN;
    }
    return ByteOrder.BIG_ENDIAN;
  }
  
  private void c(a parama, int paramInt)
    throws IOException
  {
    b localb1 = (b)this.sG[paramInt].get("ImageLength");
    b localb2 = (b)this.sG[paramInt].get("ImageWidth");
    if ((localb1 == null) || (localb2 == null))
    {
      localb1 = (b)this.sG[paramInt].get("JPEGInterchangeFormat");
      if (localb1 != null) {
        a(parama, localb1.b(this.sH), paramInt);
      }
    }
  }
  
  private void c(InputStream paramInputStream)
    throws IOException
  {
    int i = 0;
    try
    {
      while (i < st.length)
      {
        this.sG[i] = new HashMap();
        i += 1;
      }
      paramInputStream = new BufferedInputStream(paramInputStream, 5000);
      localObject2 = (BufferedInputStream)paramInputStream;
      ((BufferedInputStream)localObject2).mark(5000);
      localObject1 = new byte['ᎈ'];
      ((BufferedInputStream)localObject2).read((byte[])localObject1);
      ((BufferedInputStream)localObject2).reset();
      if (!c((byte[])localObject1)) {
        break label254;
      }
      i = 4;
      this.sF = i;
      paramInputStream = new a(paramInputStream);
      switch (this.sF)
      {
      }
    }
    catch (IOException paramInputStream)
    {
      for (;;)
      {
        label168:
        this.sS = false;
        return;
        b(paramInputStream);
      }
    }
    finally
    {
      ch();
    }
    Object localObject1 = this.sG[4];
    Object localObject2 = (b)((HashMap)localObject1).get("Compression");
    label244:
    label254:
    label325:
    Object localObject3;
    label704:
    int j;
    if (localObject2 != null)
    {
      this.sM = ((b)localObject2).b(this.sH);
      switch (this.sM)
      {
      case 6: 
        for (;;)
        {
          this.sS = true;
          ch();
          return;
          if (d((byte[])localObject1))
          {
            i = 9;
            break;
          }
          localObject2 = new a((byte[])localObject1);
          this.sH = c((a)localObject2);
          ((a)localObject2).sW = this.sH;
          i = ((a)localObject2).readShort();
          ((a)localObject2).close();
          if (i == 20306) {
            break label1022;
          }
          if (i != 21330) {
            break label1034;
          }
          break label1022;
          localObject1 = new a((byte[])localObject1);
          this.sH = c((a)localObject1);
          ((a)localObject1).sW = this.sH;
          i = ((a)localObject1).readShort();
          ((a)localObject1).close();
          if (i != 85) {
            break label1049;
          }
          i = 1;
          break label1039;
          a(paramInputStream, 0, 0);
          break label168;
          a(paramInputStream);
          localObject1 = (b)this.sG[1].get("MakerNote");
          if (localObject1 == null) {
            break label168;
          }
          localObject1 = new a(((b)localObject1).sY);
          ((a)localObject1).sW = this.sH;
          localObject2 = new byte[sd.length];
          ((a)localObject1).readFully((byte[])localObject2);
          ((a)localObject1).seek(0L);
          localObject3 = new byte[se.length];
          ((a)localObject1).readFully((byte[])localObject3);
          if (Arrays.equals((byte[])localObject2, sd)) {
            ((a)localObject1).seek(8L);
          }
          for (;;)
          {
            b((a)localObject1, 6);
            localObject1 = (b)this.sG[7].get("PreviewImageStart");
            localObject2 = (b)this.sG[7].get("PreviewImageLength");
            if ((localObject1 != null) && (localObject2 != null))
            {
              this.sG[5].put("JPEGInterchangeFormat", localObject1);
              this.sG[5].put("JPEGInterchangeFormatLength", localObject2);
            }
            localObject1 = (b)this.sG[8].get("AspectFrame");
            if (localObject1 == null) {
              break;
            }
            localObject1 = (int[])((b)localObject1).a(this.sH);
            if ((localObject1 != null) && (localObject1.length == 4)) {
              break label1059;
            }
            Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString((int[])localObject1));
            break;
            if (Arrays.equals((byte[])localObject3, se)) {
              ((a)localObject1).seek(12L);
            }
          }
          localObject1 = b.a(j, this.sH);
          localObject2 = b.a(i, this.sH);
          this.sG[0].put("ImageWidth", localObject1);
          this.sG[0].put("ImageLength", localObject2);
          break label168;
          a(paramInputStream);
          if ((b)this.sG[0].get("JpgFromRaw") != null) {
            a(paramInputStream, this.sR, 5);
          }
          localObject1 = (b)this.sG[0].get("ISO");
          localObject2 = (b)this.sG[1].get("PhotographicSensitivity");
          if ((localObject1 == null) || (localObject2 != null)) {
            break label168;
          }
          this.sG[1].put("PhotographicSensitivity", localObject1);
          break label168;
          a(paramInputStream);
          break label168;
          a(paramInputStream, (HashMap)localObject1);
        }
      case 1: 
      case 7: 
        localObject2 = (b)((HashMap)localObject1).get("BitsPerSample");
        if (localObject2 != null)
        {
          localObject2 = (int[])((b)localObject2).a(this.sH);
          if (Arrays.equals(rZ, (int[])localObject2)) {
            i = 1;
          }
        }
        break;
      }
    }
    for (;;)
    {
      if (i == 0) {
        break label244;
      }
      b(paramInputStream, (HashMap)localObject1);
      break label244;
      if (this.sF == 3)
      {
        localObject3 = (b)((HashMap)localObject1).get("PhotometricInterpretation");
        if (localObject3 != null)
        {
          i = ((b)localObject3).b(this.sH);
          if ((i != 1) || (!Arrays.equals((int[])localObject2, sb)))
          {
            if ((i != 6) || (!Arrays.equals((int[])localObject2, rZ))) {
              break label1143;
            }
            break label1138;
            this.sM = 6;
            a(paramInputStream, (HashMap)localObject1);
            break label244;
            break label168;
            break label244;
            label1022:
            label1034:
            for (i = 1;; i = 0)
            {
              if (i == 0) {
                break label1037;
              }
              i = 7;
              break;
            }
            label1037:
            break label325;
            for (;;)
            {
              label1039:
              if (i == 0) {
                break label1054;
              }
              i = 10;
              break;
              label1049:
              i = 0;
            }
            label1054:
            i = 0;
            break;
            label1059:
            if ((localObject1[2] <= localObject1[0]) || (localObject1[3] <= localObject1[1])) {
              break label168;
            }
            int m = localObject1[2] - localObject1[0] + 1;
            int k = localObject1[3] - localObject1[1] + 1;
            i = k;
            j = m;
            if (m >= k) {
              break label704;
            }
            j = m + k;
            i = j - k;
            j -= i;
            break label704;
          }
          label1138:
          i = 1;
          continue;
        }
      }
      label1143:
      i = 0;
    }
  }
  
  private boolean c(HashMap paramHashMap)
    throws IOException
  {
    b localb = (b)paramHashMap.get("ImageLength");
    paramHashMap = (b)paramHashMap.get("ImageWidth");
    if ((localb != null) && (paramHashMap != null))
    {
      int i = localb.b(this.sH);
      int j = paramHashMap.b(this.sH);
      if ((i <= 512) && (j <= 512)) {
        return true;
      }
    }
    return false;
  }
  
  private static boolean c(byte[] paramArrayOfByte)
    throws IOException
  {
    int i = 0;
    while (i < sc.length)
    {
      if (paramArrayOfByte[i] != sc[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private void ch()
  {
    String str = getAttribute("DateTimeOriginal");
    if ((str != null) && (getAttribute("DateTime") == null)) {
      this.sG[0].put("DateTime", b.t(str));
    }
    if (getAttribute("ImageWidth") == null) {
      this.sG[0].put("ImageWidth", b.a(0L, this.sH));
    }
    if (getAttribute("ImageLength") == null) {
      this.sG[0].put("ImageLength", b.a(0L, this.sH));
    }
    if (getAttribute("Orientation") == null) {
      this.sG[0].put("Orientation", b.a(0L, this.sH));
    }
    if (getAttribute("LightSource") == null) {
      this.sG[1].put("LightSource", b.a(0L, this.sH));
    }
  }
  
  private static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (RuntimeException paramCloseable)
    {
      throw paramCloseable;
    }
    catch (Exception paramCloseable) {}
  }
  
  private void d(a parama, int paramInt)
    throws IOException
  {
    b localb1 = (b)this.sG[paramInt].get("DefaultCropSize");
    b localb2 = (b)this.sG[paramInt].get("SensorTopBorder");
    b localb3 = (b)this.sG[paramInt].get("SensorLeftBorder");
    b localb4 = (b)this.sG[paramInt].get("SensorBottomBorder");
    b localb5 = (b)this.sG[paramInt].get("SensorRightBorder");
    if (localb1 != null) {
      if (localb1.format == 5)
      {
        parama = (d[])localb1.a(this.sH);
        if ((parama == null) || (parama.length != 2)) {
          Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(parama));
        }
      }
    }
    int i;
    int j;
    int k;
    int m;
    do
    {
      return;
      localb1 = b.a(parama[0], this.sH);
      for (parama = b.a(parama[1], this.sH);; parama = b.a(parama[1], this.sH))
      {
        this.sG[paramInt].put("ImageWidth", localb1);
        this.sG[paramInt].put("ImageLength", parama);
        return;
        parama = (int[])localb1.a(this.sH);
        if ((parama == null) || (parama.length != 2))
        {
          Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(parama));
          return;
        }
        localb1 = b.a(parama[0], this.sH);
      }
      if ((localb2 == null) || (localb3 == null) || (localb4 == null) || (localb5 == null)) {
        break;
      }
      i = localb2.b(this.sH);
      j = localb4.b(this.sH);
      k = localb5.b(this.sH);
      m = localb3.b(this.sH);
    } while ((j <= i) || (k <= m));
    parama = b.a(j - i, this.sH);
    localb1 = b.a(k - m, this.sH);
    this.sG[paramInt].put("ImageLength", parama);
    this.sG[paramInt].put("ImageWidth", localb1);
    return;
    c(parama, paramInt);
  }
  
  private static boolean d(byte[] paramArrayOfByte)
    throws IOException
  {
    byte[] arrayOfByte = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
    int i = 0;
    while (i < arrayOfByte.length)
    {
      if (paramArrayOfByte[i] != arrayOfByte[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private String getAttribute(String paramString)
  {
    b localb = r(paramString);
    if (localb != null)
    {
      if (!sz.contains(paramString)) {
        return localb.c(this.sH);
      }
      if (paramString.equals("GPSTimeStamp"))
      {
        if ((localb.format != 5) && (localb.format != 10))
        {
          Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + localb.format);
          return null;
        }
        paramString = (d[])localb.a(this.sH);
        if ((paramString == null) || (paramString.length != 3))
        {
          Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(paramString));
          return null;
        }
        return String.format("%02d:%02d:%02d", new Object[] { Integer.valueOf((int)((float)paramString[0].tb / (float)paramString[0].tc)), Integer.valueOf((int)((float)paramString[1].tb / (float)paramString[1].tc)), Integer.valueOf((int)((float)paramString[2].tb / (float)paramString[2].tc)) });
      }
    }
    try
    {
      paramString = localb.a(this.sH);
      if (paramString == null) {
        throw new NumberFormatException("NULL can't be converted to a double value");
      }
      double d;
      if ((paramString instanceof String)) {
        d = Double.parseDouble((String)paramString);
      }
      for (;;)
      {
        return Double.toString(d);
        if ((paramString instanceof long[]))
        {
          paramString = (long[])paramString;
          if (paramString.length == 1) {
            d = paramString[0];
          } else {
            throw new NumberFormatException("There are more than one component");
          }
        }
        else if ((paramString instanceof int[]))
        {
          paramString = (int[])paramString;
          if (paramString.length == 1) {
            d = paramString[0];
          } else {
            throw new NumberFormatException("There are more than one component");
          }
        }
        else if ((paramString instanceof double[]))
        {
          paramString = (double[])paramString;
          if (paramString.length == 1) {
            d = paramString[0];
          } else {
            throw new NumberFormatException("There are more than one component");
          }
        }
        else
        {
          if (!(paramString instanceof d[])) {
            break label438;
          }
          paramString = (d[])paramString;
          if (paramString.length != 1) {
            break;
          }
          paramString = paramString[0];
          d = paramString.tb / paramString.tc;
        }
      }
      throw new NumberFormatException("There are more than one component");
      label438:
      throw new NumberFormatException("Couldn't find a double value");
    }
    catch (NumberFormatException paramString) {}
    return null;
    return null;
  }
  
  private void k(int paramInt1, int paramInt2)
    throws IOException
  {
    if ((this.sG[paramInt1].isEmpty()) || (this.sG[paramInt2].isEmpty())) {}
    int i;
    int j;
    int k;
    int m;
    do
    {
      b localb1;
      b localb2;
      b localb3;
      do
      {
        return;
        localObject = (b)this.sG[paramInt1].get("ImageLength");
        localb1 = (b)this.sG[paramInt1].get("ImageWidth");
        localb2 = (b)this.sG[paramInt2].get("ImageLength");
        localb3 = (b)this.sG[paramInt2].get("ImageWidth");
      } while ((localObject == null) || (localb1 == null) || (localb2 == null) || (localb3 == null));
      i = ((b)localObject).b(this.sH);
      j = localb1.b(this.sH);
      k = localb2.b(this.sH);
      m = localb3.b(this.sH);
    } while ((i >= k) || (j >= m));
    Object localObject = this.sG[paramInt1];
    this.sG[paramInt1] = this.sG[paramInt2];
    this.sG[paramInt2] = localObject;
  }
  
  private static long[] k(Object paramObject)
  {
    if ((paramObject instanceof int[]))
    {
      paramObject = (int[])paramObject;
      long[] arrayOfLong = new long[paramObject.length];
      int i = 0;
      while (i < paramObject.length)
      {
        arrayOfLong[i] = paramObject[i];
        i += 1;
      }
      return arrayOfLong;
    }
    if ((paramObject instanceof long[])) {
      return (long[])paramObject;
    }
    return null;
  }
  
  private b r(String paramString)
  {
    String str = paramString;
    if ("ISOSpeedRatings".equals(paramString)) {
      str = "PhotographicSensitivity";
    }
    int i = 0;
    while (i < st.length)
    {
      paramString = (b)this.sG[i].get(str);
      if (paramString != null) {
        return paramString;
      }
      i += 1;
    }
    return null;
  }
  
  public final int s(String paramString)
  {
    paramString = r(paramString);
    if (paramString == null) {
      return 1;
    }
    try
    {
      int i = paramString.b(this.sH);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return 1;
  }
  
  private static final class a
    extends InputStream
    implements DataInput
  {
    private static final ByteOrder BIG_ENDIAN = ByteOrder.BIG_ENDIAN;
    private static final ByteOrder LITTLE_ENDIAN = ByteOrder.LITTLE_ENDIAN;
    private final int mLength;
    int mPosition;
    private DataInputStream sV;
    ByteOrder sW = ByteOrder.BIG_ENDIAN;
    
    public a(InputStream paramInputStream)
      throws IOException
    {
      this.sV = new DataInputStream(paramInputStream);
      this.mLength = this.sV.available();
      this.mPosition = 0;
      this.sV.mark(this.mLength);
    }
    
    public a(byte[] paramArrayOfByte)
      throws IOException
    {
      this(new ByteArrayInputStream(paramArrayOfByte));
    }
    
    public final int available()
      throws IOException
    {
      return this.sV.available();
    }
    
    public final long ck()
      throws IOException
    {
      return readInt() & 0xFFFFFFFF;
    }
    
    public final int read()
      throws IOException
    {
      this.mPosition += 1;
      return this.sV.read();
    }
    
    public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      paramInt1 = this.sV.read(paramArrayOfByte, paramInt1, paramInt2);
      this.mPosition += paramInt1;
      return paramInt1;
    }
    
    public final boolean readBoolean()
      throws IOException
    {
      this.mPosition += 1;
      return this.sV.readBoolean();
    }
    
    public final byte readByte()
      throws IOException
    {
      this.mPosition += 1;
      if (this.mPosition > this.mLength) {
        throw new EOFException();
      }
      int i = this.sV.read();
      if (i < 0) {
        throw new EOFException();
      }
      return (byte)i;
    }
    
    public final char readChar()
      throws IOException
    {
      this.mPosition += 2;
      return this.sV.readChar();
    }
    
    public final double readDouble()
      throws IOException
    {
      return Double.longBitsToDouble(readLong());
    }
    
    public final float readFloat()
      throws IOException
    {
      return Float.intBitsToFloat(readInt());
    }
    
    public final void readFully(byte[] paramArrayOfByte)
      throws IOException
    {
      this.mPosition += paramArrayOfByte.length;
      if (this.mPosition > this.mLength) {
        throw new EOFException();
      }
      if (this.sV.read(paramArrayOfByte, 0, paramArrayOfByte.length) != paramArrayOfByte.length) {
        throw new IOException("Couldn't read up to the length of buffer");
      }
    }
    
    public final void readFully(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      this.mPosition += paramInt2;
      if (this.mPosition > this.mLength) {
        throw new EOFException();
      }
      if (this.sV.read(paramArrayOfByte, paramInt1, paramInt2) != paramInt2) {
        throw new IOException("Couldn't read up to the length of buffer");
      }
    }
    
    public final int readInt()
      throws IOException
    {
      this.mPosition += 4;
      if (this.mPosition > this.mLength) {
        throw new EOFException();
      }
      int i = this.sV.read();
      int j = this.sV.read();
      int k = this.sV.read();
      int m = this.sV.read();
      if ((i | j | k | m) < 0) {
        throw new EOFException();
      }
      if (this.sW == LITTLE_ENDIAN) {
        return i + ((j << 8) + ((k << 16) + (m << 24)));
      }
      if (this.sW == BIG_ENDIAN) {
        return (i << 24) + (j << 16) + (k << 8) + m;
      }
      throw new IOException("Invalid byte order: " + this.sW);
    }
    
    public final String readLine()
      throws IOException
    {
      Log.d("ExifInterface", "Currently unsupported");
      return null;
    }
    
    public final long readLong()
      throws IOException
    {
      this.mPosition += 8;
      if (this.mPosition > this.mLength) {
        throw new EOFException();
      }
      int i = this.sV.read();
      int j = this.sV.read();
      int k = this.sV.read();
      int m = this.sV.read();
      int n = this.sV.read();
      int i1 = this.sV.read();
      int i2 = this.sV.read();
      int i3 = this.sV.read();
      if ((i | j | k | m | n | i1 | i2 | i3) < 0) {
        throw new EOFException();
      }
      long l1;
      if (this.sW == LITTLE_ENDIAN)
      {
        l1 = i3;
        long l2 = i2;
        long l3 = i1;
        long l4 = n;
        long l5 = m;
        long l6 = k;
        long l7 = j;
        return i + ((l6 << 16) + ((l4 << 32) + ((l2 << 48) + (l1 << 56) + (l3 << 40)) + (l5 << 24)) + (l7 << 8));
      }
      if (this.sW == BIG_ENDIAN)
      {
        l1 = i;
        return (j << 48) + (l1 << 56) + (k << 40) + (m << 32) + (n << 24) + (i1 << 16) + (i2 << 8) + i3;
      }
      throw new IOException("Invalid byte order: " + this.sW);
    }
    
    public final short readShort()
      throws IOException
    {
      this.mPosition += 2;
      if (this.mPosition > this.mLength) {
        throw new EOFException();
      }
      int i = this.sV.read();
      int j = this.sV.read();
      if ((i | j) < 0) {
        throw new EOFException();
      }
      if (this.sW == LITTLE_ENDIAN) {
        return (short)(i + (j << 8));
      }
      if (this.sW == BIG_ENDIAN) {
        return (short)((i << 8) + j);
      }
      throw new IOException("Invalid byte order: " + this.sW);
    }
    
    public final String readUTF()
      throws IOException
    {
      this.mPosition += 2;
      return this.sV.readUTF();
    }
    
    public final int readUnsignedByte()
      throws IOException
    {
      this.mPosition += 1;
      return this.sV.readUnsignedByte();
    }
    
    public final int readUnsignedShort()
      throws IOException
    {
      this.mPosition += 2;
      if (this.mPosition > this.mLength) {
        throw new EOFException();
      }
      int i = this.sV.read();
      int j = this.sV.read();
      if ((i | j) < 0) {
        throw new EOFException();
      }
      if (this.sW == LITTLE_ENDIAN) {
        return i + (j << 8);
      }
      if (this.sW == BIG_ENDIAN) {
        return (i << 8) + j;
      }
      throw new IOException("Invalid byte order: " + this.sW);
    }
    
    public final void seek(long paramLong)
      throws IOException
    {
      if (this.mPosition > paramLong)
      {
        this.mPosition = 0;
        this.sV.reset();
        this.sV.mark(this.mLength);
      }
      while (skipBytes((int)paramLong) != (int)paramLong)
      {
        throw new IOException("Couldn't seek up to the byteCount");
        paramLong -= this.mPosition;
      }
    }
    
    public final int skipBytes(int paramInt)
      throws IOException
    {
      int i = Math.min(paramInt, this.mLength - this.mPosition);
      paramInt = 0;
      while (paramInt < i) {
        paramInt += this.sV.skipBytes(i - paramInt);
      }
      this.mPosition += paramInt;
      return paramInt;
    }
  }
  
  private static final class b
  {
    public final int format;
    public final int sX;
    public final byte[] sY;
    
    private b(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
    {
      this.format = paramInt1;
      this.sX = paramInt2;
      this.sY = paramArrayOfByte;
    }
    
    public static b a(int paramInt, ByteOrder paramByteOrder)
    {
      ByteBuffer localByteBuffer = ByteBuffer.wrap(new byte[a.sh[3] * 1]);
      localByteBuffer.order(paramByteOrder);
      int i = 0;
      while (i <= 0)
      {
        localByteBuffer.putShort((short)new int[] { paramInt }[0]);
        i += 1;
      }
      return new b(3, 1, localByteBuffer.array());
    }
    
    public static b a(long paramLong, ByteOrder paramByteOrder)
    {
      ByteBuffer localByteBuffer = ByteBuffer.wrap(new byte[a.sh[4] * 1]);
      localByteBuffer.order(paramByteOrder);
      int i = 0;
      while (i <= 0)
      {
        localByteBuffer.putInt((int)new long[] { paramLong }[0]);
        i += 1;
      }
      return new b(4, 1, localByteBuffer.array());
    }
    
    public static b a(a.d paramd, ByteOrder paramByteOrder)
    {
      ByteBuffer localByteBuffer = ByteBuffer.wrap(new byte[a.sh[5] * 1]);
      localByteBuffer.order(paramByteOrder);
      int i = 0;
      while (i <= 0)
      {
        paramByteOrder = new a.d[] { paramd }[0];
        localByteBuffer.putInt((int)paramByteOrder.tb);
        localByteBuffer.putInt((int)paramByteOrder.tc);
        i += 1;
      }
      return new b(5, 1, localByteBuffer.array());
    }
    
    public static b t(String paramString)
    {
      paramString = (paramString + '\000').getBytes(a.ci());
      return new b(2, paramString.length, paramString);
    }
    
    /* Error */
    final Object a(ByteOrder paramByteOrder)
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore 4
      //   3: iconst_0
      //   4: istore_3
      //   5: iconst_0
      //   6: istore 5
      //   8: iconst_0
      //   9: istore 6
      //   11: iconst_0
      //   12: istore 7
      //   14: iconst_0
      //   15: istore 8
      //   17: iconst_0
      //   18: istore_2
      //   19: new 97	android/support/d/a$a
      //   22: dup
      //   23: aload_0
      //   24: getfield 23	android/support/d/a$b:sY	[B
      //   27: invokespecial 100	android/support/d/a$a:<init>	([B)V
      //   30: astore 10
      //   32: aload 10
      //   34: aload_1
      //   35: putfield 104	android/support/d/a$a:sW	Ljava/nio/ByteOrder;
      //   38: aload_0
      //   39: getfield 19	android/support/d/a$b:format	I
      //   42: istore 9
      //   44: iload 9
      //   46: tableswitch	default:+62->108, 1:+69->115, 2:+178->224, 3:+335->381, 4:+386->432, 5:+439->485, 6:+69->115, 7:+178->224, 8:+506->552, 9:+560->606, 10:+614->660, 11:+683->729, 12:+738->784
      //   108: aload 10
      //   110: invokevirtual 107	android/support/d/a$a:close	()V
      //   113: aconst_null
      //   114: areturn
      //   115: aload_0
      //   116: getfield 23	android/support/d/a$b:sY	[B
      //   119: arraylength
      //   120: iconst_1
      //   121: if_icmpne +67 -> 188
      //   124: aload_0
      //   125: getfield 23	android/support/d/a$b:sY	[B
      //   128: iconst_0
      //   129: baload
      //   130: iflt +58 -> 188
      //   133: aload_0
      //   134: getfield 23	android/support/d/a$b:sY	[B
      //   137: iconst_0
      //   138: baload
      //   139: iconst_1
      //   140: if_icmpgt +48 -> 188
      //   143: new 88	java/lang/String
      //   146: dup
      //   147: iconst_1
      //   148: newarray <illegal type>
      //   150: dup
      //   151: iconst_0
      //   152: aload_0
      //   153: getfield 23	android/support/d/a$b:sY	[B
      //   156: iconst_0
      //   157: baload
      //   158: bipush 48
      //   160: iadd
      //   161: i2c
      //   162: castore
      //   163: invokespecial 110	java/lang/String:<init>	([C)V
      //   166: astore_1
      //   167: aload 10
      //   169: invokevirtual 107	android/support/d/a$a:close	()V
      //   172: aload_1
      //   173: areturn
      //   174: astore 10
      //   176: ldc 112
      //   178: ldc 114
      //   180: aload 10
      //   182: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   185: pop
      //   186: aload_1
      //   187: areturn
      //   188: new 88	java/lang/String
      //   191: dup
      //   192: aload_0
      //   193: getfield 23	android/support/d/a$b:sY	[B
      //   196: invokestatic 86	android/support/d/a:ci	()Ljava/nio/charset/Charset;
      //   199: invokespecial 123	java/lang/String:<init>	([BLjava/nio/charset/Charset;)V
      //   202: astore_1
      //   203: aload 10
      //   205: invokevirtual 107	android/support/d/a$a:close	()V
      //   208: aload_1
      //   209: areturn
      //   210: astore 10
      //   212: ldc 112
      //   214: ldc 114
      //   216: aload 10
      //   218: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   221: pop
      //   222: aload_1
      //   223: areturn
      //   224: aload_0
      //   225: getfield 21	android/support/d/a$b:sX	I
      //   228: invokestatic 126	android/support/d/a:cj	()[B
      //   231: arraylength
      //   232: if_icmplt +685 -> 917
      //   235: iconst_0
      //   236: istore_2
      //   237: iload 4
      //   239: istore_3
      //   240: iload_2
      //   241: invokestatic 126	android/support/d/a:cj	()[B
      //   244: arraylength
      //   245: if_icmpge +19 -> 264
      //   248: aload_0
      //   249: getfield 23	android/support/d/a$b:sY	[B
      //   252: iload_2
      //   253: baload
      //   254: invokestatic 126	android/support/d/a:cj	()[B
      //   257: iload_2
      //   258: baload
      //   259: if_icmpeq +670 -> 929
      //   262: iconst_0
      //   263: istore_3
      //   264: iload_3
      //   265: ifeq +652 -> 917
      //   268: invokestatic 126	android/support/d/a:cj	()[B
      //   271: arraylength
      //   272: istore_2
      //   273: new 70	java/lang/StringBuilder
      //   276: dup
      //   277: invokespecial 71	java/lang/StringBuilder:<init>	()V
      //   280: astore_1
      //   281: iload_2
      //   282: aload_0
      //   283: getfield 21	android/support/d/a$b:sX	I
      //   286: if_icmpge +69 -> 355
      //   289: aload_0
      //   290: getfield 23	android/support/d/a$b:sY	[B
      //   293: iload_2
      //   294: baload
      //   295: istore_3
      //   296: iload_3
      //   297: ifeq +58 -> 355
      //   300: iload_3
      //   301: bipush 32
      //   303: if_icmplt +13 -> 316
      //   306: aload_1
      //   307: iload_3
      //   308: i2c
      //   309: invokevirtual 78	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
      //   312: pop
      //   313: goto +609 -> 922
      //   316: aload_1
      //   317: bipush 63
      //   319: invokevirtual 78	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
      //   322: pop
      //   323: goto +599 -> 922
      //   326: astore 11
      //   328: aload 10
      //   330: astore_1
      //   331: aload 11
      //   333: astore 10
      //   335: ldc 112
      //   337: ldc -128
      //   339: aload 10
      //   341: invokestatic 131	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   344: pop
      //   345: aload_1
      //   346: ifnull +7 -> 353
      //   349: aload_1
      //   350: invokevirtual 107	android/support/d/a$a:close	()V
      //   353: aconst_null
      //   354: areturn
      //   355: aload_1
      //   356: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   359: astore_1
      //   360: aload 10
      //   362: invokevirtual 107	android/support/d/a$a:close	()V
      //   365: aload_1
      //   366: areturn
      //   367: astore 10
      //   369: ldc 112
      //   371: ldc 114
      //   373: aload 10
      //   375: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   378: pop
      //   379: aload_1
      //   380: areturn
      //   381: aload_0
      //   382: getfield 21	android/support/d/a$b:sX	I
      //   385: newarray <illegal type>
      //   387: astore_1
      //   388: iload_2
      //   389: aload_0
      //   390: getfield 21	android/support/d/a$b:sX	I
      //   393: if_icmpge +18 -> 411
      //   396: aload_1
      //   397: iload_2
      //   398: aload 10
      //   400: invokevirtual 135	android/support/d/a$a:readUnsignedShort	()I
      //   403: iastore
      //   404: iload_2
      //   405: iconst_1
      //   406: iadd
      //   407: istore_2
      //   408: goto -20 -> 388
      //   411: aload 10
      //   413: invokevirtual 107	android/support/d/a$a:close	()V
      //   416: aload_1
      //   417: areturn
      //   418: astore 10
      //   420: ldc 112
      //   422: ldc 114
      //   424: aload 10
      //   426: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   429: pop
      //   430: aload_1
      //   431: areturn
      //   432: aload_0
      //   433: getfield 21	android/support/d/a$b:sX	I
      //   436: newarray <illegal type>
      //   438: astore_1
      //   439: iload_3
      //   440: istore_2
      //   441: iload_2
      //   442: aload_0
      //   443: getfield 21	android/support/d/a$b:sX	I
      //   446: if_icmpge +18 -> 464
      //   449: aload_1
      //   450: iload_2
      //   451: aload 10
      //   453: invokevirtual 139	android/support/d/a$a:ck	()J
      //   456: lastore
      //   457: iload_2
      //   458: iconst_1
      //   459: iadd
      //   460: istore_2
      //   461: goto -20 -> 441
      //   464: aload 10
      //   466: invokevirtual 107	android/support/d/a$a:close	()V
      //   469: aload_1
      //   470: areturn
      //   471: astore 10
      //   473: ldc 112
      //   475: ldc 114
      //   477: aload 10
      //   479: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   482: pop
      //   483: aload_1
      //   484: areturn
      //   485: aload_0
      //   486: getfield 21	android/support/d/a$b:sX	I
      //   489: anewarray 59	android/support/d/a$d
      //   492: astore_1
      //   493: iconst_0
      //   494: istore_2
      //   495: iload_2
      //   496: aload_0
      //   497: getfield 21	android/support/d/a$b:sX	I
      //   500: if_icmpge +31 -> 531
      //   503: aload_1
      //   504: iload_2
      //   505: new 59	android/support/d/a$d
      //   508: dup
      //   509: aload 10
      //   511: invokevirtual 139	android/support/d/a$a:ck	()J
      //   514: aload 10
      //   516: invokevirtual 139	android/support/d/a$a:ck	()J
      //   519: iconst_0
      //   520: invokespecial 142	android/support/d/a$d:<init>	(JJB)V
      //   523: aastore
      //   524: iload_2
      //   525: iconst_1
      //   526: iadd
      //   527: istore_2
      //   528: goto -33 -> 495
      //   531: aload 10
      //   533: invokevirtual 107	android/support/d/a$a:close	()V
      //   536: aload_1
      //   537: areturn
      //   538: astore 10
      //   540: ldc 112
      //   542: ldc 114
      //   544: aload 10
      //   546: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   549: pop
      //   550: aload_1
      //   551: areturn
      //   552: aload_0
      //   553: getfield 21	android/support/d/a$b:sX	I
      //   556: newarray <illegal type>
      //   558: astore_1
      //   559: iload 5
      //   561: istore_2
      //   562: iload_2
      //   563: aload_0
      //   564: getfield 21	android/support/d/a$b:sX	I
      //   567: if_icmpge +18 -> 585
      //   570: aload_1
      //   571: iload_2
      //   572: aload 10
      //   574: invokevirtual 146	android/support/d/a$a:readShort	()S
      //   577: iastore
      //   578: iload_2
      //   579: iconst_1
      //   580: iadd
      //   581: istore_2
      //   582: goto -20 -> 562
      //   585: aload 10
      //   587: invokevirtual 107	android/support/d/a$a:close	()V
      //   590: aload_1
      //   591: areturn
      //   592: astore 10
      //   594: ldc 112
      //   596: ldc 114
      //   598: aload 10
      //   600: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   603: pop
      //   604: aload_1
      //   605: areturn
      //   606: aload_0
      //   607: getfield 21	android/support/d/a$b:sX	I
      //   610: newarray <illegal type>
      //   612: astore_1
      //   613: iload 6
      //   615: istore_2
      //   616: iload_2
      //   617: aload_0
      //   618: getfield 21	android/support/d/a$b:sX	I
      //   621: if_icmpge +18 -> 639
      //   624: aload_1
      //   625: iload_2
      //   626: aload 10
      //   628: invokevirtual 149	android/support/d/a$a:readInt	()I
      //   631: iastore
      //   632: iload_2
      //   633: iconst_1
      //   634: iadd
      //   635: istore_2
      //   636: goto -20 -> 616
      //   639: aload 10
      //   641: invokevirtual 107	android/support/d/a$a:close	()V
      //   644: aload_1
      //   645: areturn
      //   646: astore 10
      //   648: ldc 112
      //   650: ldc 114
      //   652: aload 10
      //   654: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   657: pop
      //   658: aload_1
      //   659: areturn
      //   660: aload_0
      //   661: getfield 21	android/support/d/a$b:sX	I
      //   664: anewarray 59	android/support/d/a$d
      //   667: astore_1
      //   668: iconst_0
      //   669: istore_2
      //   670: iload_2
      //   671: aload_0
      //   672: getfield 21	android/support/d/a$b:sX	I
      //   675: if_icmpge +33 -> 708
      //   678: aload_1
      //   679: iload_2
      //   680: new 59	android/support/d/a$d
      //   683: dup
      //   684: aload 10
      //   686: invokevirtual 149	android/support/d/a$a:readInt	()I
      //   689: i2l
      //   690: aload 10
      //   692: invokevirtual 149	android/support/d/a$a:readInt	()I
      //   695: i2l
      //   696: iconst_0
      //   697: invokespecial 142	android/support/d/a$d:<init>	(JJB)V
      //   700: aastore
      //   701: iload_2
      //   702: iconst_1
      //   703: iadd
      //   704: istore_2
      //   705: goto -35 -> 670
      //   708: aload 10
      //   710: invokevirtual 107	android/support/d/a$a:close	()V
      //   713: aload_1
      //   714: areturn
      //   715: astore 10
      //   717: ldc 112
      //   719: ldc 114
      //   721: aload 10
      //   723: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   726: pop
      //   727: aload_1
      //   728: areturn
      //   729: aload_0
      //   730: getfield 21	android/support/d/a$b:sX	I
      //   733: newarray <illegal type>
      //   735: astore_1
      //   736: iload 7
      //   738: istore_2
      //   739: iload_2
      //   740: aload_0
      //   741: getfield 21	android/support/d/a$b:sX	I
      //   744: if_icmpge +19 -> 763
      //   747: aload_1
      //   748: iload_2
      //   749: aload 10
      //   751: invokevirtual 153	android/support/d/a$a:readFloat	()F
      //   754: f2d
      //   755: dastore
      //   756: iload_2
      //   757: iconst_1
      //   758: iadd
      //   759: istore_2
      //   760: goto -21 -> 739
      //   763: aload 10
      //   765: invokevirtual 107	android/support/d/a$a:close	()V
      //   768: aload_1
      //   769: areturn
      //   770: astore 10
      //   772: ldc 112
      //   774: ldc 114
      //   776: aload 10
      //   778: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   781: pop
      //   782: aload_1
      //   783: areturn
      //   784: aload_0
      //   785: getfield 21	android/support/d/a$b:sX	I
      //   788: newarray <illegal type>
      //   790: astore_1
      //   791: iload 8
      //   793: istore_2
      //   794: iload_2
      //   795: aload_0
      //   796: getfield 21	android/support/d/a$b:sX	I
      //   799: if_icmpge +18 -> 817
      //   802: aload_1
      //   803: iload_2
      //   804: aload 10
      //   806: invokevirtual 157	android/support/d/a$a:readDouble	()D
      //   809: dastore
      //   810: iload_2
      //   811: iconst_1
      //   812: iadd
      //   813: istore_2
      //   814: goto -20 -> 794
      //   817: aload 10
      //   819: invokevirtual 107	android/support/d/a$a:close	()V
      //   822: aload_1
      //   823: areturn
      //   824: astore 10
      //   826: ldc 112
      //   828: ldc 114
      //   830: aload 10
      //   832: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   835: pop
      //   836: aload_1
      //   837: areturn
      //   838: astore_1
      //   839: ldc 112
      //   841: ldc 114
      //   843: aload_1
      //   844: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   847: pop
      //   848: goto -735 -> 113
      //   851: astore_1
      //   852: ldc 112
      //   854: ldc 114
      //   856: aload_1
      //   857: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   860: pop
      //   861: goto -508 -> 353
      //   864: astore_1
      //   865: aconst_null
      //   866: astore 10
      //   868: aload 10
      //   870: ifnull +8 -> 878
      //   873: aload 10
      //   875: invokevirtual 107	android/support/d/a$a:close	()V
      //   878: aload_1
      //   879: athrow
      //   880: astore 10
      //   882: ldc 112
      //   884: ldc 114
      //   886: aload 10
      //   888: invokestatic 120	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   891: pop
      //   892: goto -14 -> 878
      //   895: astore_1
      //   896: goto -28 -> 868
      //   899: astore 11
      //   901: aload_1
      //   902: astore 10
      //   904: aload 11
      //   906: astore_1
      //   907: goto -39 -> 868
      //   910: astore 10
      //   912: aconst_null
      //   913: astore_1
      //   914: goto -579 -> 335
      //   917: iconst_0
      //   918: istore_2
      //   919: goto -646 -> 273
      //   922: iload_2
      //   923: iconst_1
      //   924: iadd
      //   925: istore_2
      //   926: goto -645 -> 281
      //   929: iload_2
      //   930: iconst_1
      //   931: iadd
      //   932: istore_2
      //   933: goto -696 -> 237
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	936	0	this	b
      //   0	936	1	paramByteOrder	ByteOrder
      //   18	915	2	i	int
      //   4	436	3	j	int
      //   1	237	4	k	int
      //   6	554	5	m	int
      //   9	605	6	n	int
      //   12	725	7	i1	int
      //   15	777	8	i2	int
      //   42	3	9	i3	int
      //   30	138	10	locala	a.a
      //   174	30	10	localIOException1	IOException
      //   210	119	10	localIOException2	IOException
      //   333	28	10	localObject1	Object
      //   367	45	10	localIOException3	IOException
      //   418	47	10	localIOException4	IOException
      //   471	61	10	localIOException5	IOException
      //   538	48	10	localIOException6	IOException
      //   592	48	10	localIOException7	IOException
      //   646	63	10	localIOException8	IOException
      //   715	49	10	localIOException9	IOException
      //   770	48	10	localIOException10	IOException
      //   824	7	10	localIOException11	IOException
      //   866	8	10	localObject2	Object
      //   880	7	10	localIOException12	IOException
      //   902	1	10	localByteOrder	ByteOrder
      //   910	1	10	localIOException13	IOException
      //   326	6	11	localIOException14	IOException
      //   899	6	11	localObject3	Object
      // Exception table:
      //   from	to	target	type
      //   167	172	174	java/io/IOException
      //   203	208	210	java/io/IOException
      //   32	44	326	java/io/IOException
      //   115	167	326	java/io/IOException
      //   188	203	326	java/io/IOException
      //   224	235	326	java/io/IOException
      //   240	262	326	java/io/IOException
      //   268	273	326	java/io/IOException
      //   273	281	326	java/io/IOException
      //   281	296	326	java/io/IOException
      //   306	313	326	java/io/IOException
      //   316	323	326	java/io/IOException
      //   355	360	326	java/io/IOException
      //   381	388	326	java/io/IOException
      //   388	404	326	java/io/IOException
      //   432	439	326	java/io/IOException
      //   441	457	326	java/io/IOException
      //   485	493	326	java/io/IOException
      //   495	524	326	java/io/IOException
      //   552	559	326	java/io/IOException
      //   562	578	326	java/io/IOException
      //   606	613	326	java/io/IOException
      //   616	632	326	java/io/IOException
      //   660	668	326	java/io/IOException
      //   670	701	326	java/io/IOException
      //   729	736	326	java/io/IOException
      //   739	756	326	java/io/IOException
      //   784	791	326	java/io/IOException
      //   794	810	326	java/io/IOException
      //   360	365	367	java/io/IOException
      //   411	416	418	java/io/IOException
      //   464	469	471	java/io/IOException
      //   531	536	538	java/io/IOException
      //   585	590	592	java/io/IOException
      //   639	644	646	java/io/IOException
      //   708	713	715	java/io/IOException
      //   763	768	770	java/io/IOException
      //   817	822	824	java/io/IOException
      //   108	113	838	java/io/IOException
      //   349	353	851	java/io/IOException
      //   19	32	864	finally
      //   873	878	880	java/io/IOException
      //   32	44	895	finally
      //   115	167	895	finally
      //   188	203	895	finally
      //   224	235	895	finally
      //   240	262	895	finally
      //   268	273	895	finally
      //   273	281	895	finally
      //   281	296	895	finally
      //   306	313	895	finally
      //   316	323	895	finally
      //   355	360	895	finally
      //   381	388	895	finally
      //   388	404	895	finally
      //   432	439	895	finally
      //   441	457	895	finally
      //   485	493	895	finally
      //   495	524	895	finally
      //   552	559	895	finally
      //   562	578	895	finally
      //   606	613	895	finally
      //   616	632	895	finally
      //   660	668	895	finally
      //   670	701	895	finally
      //   729	736	895	finally
      //   739	756	895	finally
      //   784	791	895	finally
      //   794	810	895	finally
      //   335	345	899	finally
      //   19	32	910	java/io/IOException
    }
    
    public final int b(ByteOrder paramByteOrder)
    {
      paramByteOrder = a(paramByteOrder);
      if (paramByteOrder == null) {
        throw new NumberFormatException("NULL can't be converted to a integer value");
      }
      if ((paramByteOrder instanceof String)) {
        return Integer.parseInt((String)paramByteOrder);
      }
      if ((paramByteOrder instanceof long[]))
      {
        paramByteOrder = (long[])paramByteOrder;
        if (paramByteOrder.length == 1) {
          return (int)paramByteOrder[0];
        }
        throw new NumberFormatException("There are more than one component");
      }
      if ((paramByteOrder instanceof int[]))
      {
        paramByteOrder = (int[])paramByteOrder;
        if (paramByteOrder.length == 1) {
          return paramByteOrder[0];
        }
        throw new NumberFormatException("There are more than one component");
      }
      throw new NumberFormatException("Couldn't find a integer value");
    }
    
    public final String c(ByteOrder paramByteOrder)
    {
      int j = 0;
      int k = 0;
      int m = 0;
      int i = 0;
      Object localObject = a(paramByteOrder);
      if (localObject == null) {
        return null;
      }
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      paramByteOrder = new StringBuilder();
      if ((localObject instanceof long[]))
      {
        localObject = (long[])localObject;
        while (i < localObject.length)
        {
          paramByteOrder.append(localObject[i]);
          if (i + 1 != localObject.length) {
            paramByteOrder.append(",");
          }
          i += 1;
        }
        return paramByteOrder.toString();
      }
      if ((localObject instanceof int[]))
      {
        localObject = (int[])localObject;
        i = j;
        while (i < localObject.length)
        {
          paramByteOrder.append(localObject[i]);
          if (i + 1 != localObject.length) {
            paramByteOrder.append(",");
          }
          i += 1;
        }
        return paramByteOrder.toString();
      }
      if ((localObject instanceof double[]))
      {
        localObject = (double[])localObject;
        i = k;
        while (i < localObject.length)
        {
          paramByteOrder.append(localObject[i]);
          if (i + 1 != localObject.length) {
            paramByteOrder.append(",");
          }
          i += 1;
        }
        return paramByteOrder.toString();
      }
      if ((localObject instanceof a.d[]))
      {
        localObject = (a.d[])localObject;
        i = m;
        while (i < localObject.length)
        {
          paramByteOrder.append(localObject[i].tb);
          paramByteOrder.append('/');
          paramByteOrder.append(localObject[i].tc);
          if (i + 1 != localObject.length) {
            paramByteOrder.append(",");
          }
          i += 1;
        }
        return paramByteOrder.toString();
      }
      return null;
    }
    
    public final String toString()
    {
      return "(" + a.sg[this.format] + ", data length:" + this.sY.length + ")";
    }
  }
  
  static final class c
  {
    public final String name;
    public final int number;
    public final int sZ;
    public final int ta;
    
    private c(String paramString, int paramInt)
    {
      this.name = paramString;
      this.number = paramInt;
      this.sZ = 3;
      this.ta = 4;
    }
    
    private c(String paramString, int paramInt1, int paramInt2)
    {
      this.name = paramString;
      this.number = paramInt1;
      this.sZ = paramInt2;
      this.ta = -1;
    }
  }
  
  private static final class d
  {
    public final long tb;
    public final long tc;
    
    private d(long paramLong1, long paramLong2)
    {
      if (paramLong2 == 0L)
      {
        this.tb = 0L;
        this.tc = 1L;
        return;
      }
      this.tb = paramLong1;
      this.tc = paramLong2;
    }
    
    public final String toString()
    {
      return this.tb + "/" + this.tc;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/d/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */