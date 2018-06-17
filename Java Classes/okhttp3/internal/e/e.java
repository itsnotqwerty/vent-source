package okhttp3.internal.e;

import d.f;
import java.io.IOException;
import okhttp3.internal.c;

public final class e
{
  static final String[] BINARY;
  static final String[] FLAGS;
  private static final String[] FRAME_NAMES;
  static final f daL;
  
  static
  {
    int k = 0;
    daL = f.fG("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    FRAME_NAMES = new String[] { "DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION" };
    FLAGS = new String[64];
    BINARY = new String['Ā'];
    int i = 0;
    while (i < BINARY.length)
    {
      BINARY[i] = c.format("%8s", new Object[] { Integer.toBinaryString(i) }).replace(' ', '0');
      i += 1;
    }
    FLAGS[0] = "";
    FLAGS[1] = "END_STREAM";
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = 1;
    FLAGS[8] = "PADDED";
    i = 0;
    int j;
    while (i <= 0)
    {
      j = arrayOfInt[i];
      FLAGS[(j | 0x8)] = (FLAGS[j] + "|PADDED");
      i += 1;
    }
    FLAGS[4] = "END_HEADERS";
    FLAGS[32] = "PRIORITY";
    FLAGS[36] = "END_HEADERS|PRIORITY";
    i = 0;
    for (;;)
    {
      j = k;
      if (i >= 3) {
        break;
      }
      int m = new int[] { 4, 32, 36 }[i];
      j = 0;
      while (j <= 0)
      {
        int n = arrayOfInt[j];
        FLAGS[(n | m)] = (FLAGS[n] + '|' + FLAGS[m]);
        FLAGS[(n | m | 0x8)] = (FLAGS[n] + '|' + FLAGS[m] + "|PADDED");
        j += 1;
      }
      i += 1;
    }
    while (j < FLAGS.length)
    {
      if (FLAGS[j] == null) {
        FLAGS[j] = BINARY[j];
      }
      j += 1;
    }
  }
  
  static String frameLog(boolean paramBoolean, int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
  {
    String str2;
    Object localObject;
    if (paramByte1 < FRAME_NAMES.length)
    {
      str2 = FRAME_NAMES[paramByte1];
      if (paramByte2 != 0) {
        break label92;
      }
      localObject = "";
      label24:
      if (!paramBoolean) {
        break label259;
      }
    }
    label92:
    label225:
    label259:
    for (String str1 = "<<";; str1 = ">>")
    {
      return c.format("%s 0x%08x %5d %-13s %s", new Object[] { str1, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), str2, localObject });
      str2 = c.format("0x%02x", new Object[] { Byte.valueOf(paramByte1) });
      break;
      switch (paramByte1)
      {
      case 5: 
      default: 
        if (paramByte2 >= FLAGS.length) {
          break;
        }
      }
      for (str1 = FLAGS[paramByte2];; str1 = BINARY[paramByte2])
      {
        if ((paramByte1 != 5) || ((paramByte2 & 0x4) == 0)) {
          break label225;
        }
        localObject = str1.replace("HEADERS", "PUSH_PROMISE");
        break;
        if (paramByte2 == 1)
        {
          localObject = "ACK";
          break;
        }
        localObject = BINARY[paramByte2];
        break;
        localObject = BINARY[paramByte2];
        break;
      }
      localObject = str1;
      if (paramByte1 != 0) {
        break label24;
      }
      localObject = str1;
      if ((paramByte2 & 0x20) == 0) {
        break label24;
      }
      localObject = str1.replace("PRIORITY", "COMPRESSED");
      break label24;
    }
  }
  
  static IllegalArgumentException illegalArgument(String paramString, Object... paramVarArgs)
  {
    throw new IllegalArgumentException(c.format(paramString, paramVarArgs));
  }
  
  static IOException ioException(String paramString, Object... paramVarArgs)
    throws IOException
  {
    throw new IOException(c.format(paramString, paramVarArgs));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/e/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */