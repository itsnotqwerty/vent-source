package com.amazonaws.services.s3.internal;

public enum BucketNameUtils
{
  public static boolean X(String paramString)
  {
    if (paramString == null) {}
    int j;
    do
    {
      int i;
      char c;
      do
      {
        do
        {
          do
          {
            do
            {
              return false;
            } while ((paramString.length() < 3) || (paramString.length() > 63));
            i = 0;
            j = 0;
            if (i >= paramString.length()) {
              break;
            }
            c = paramString.charAt(i);
          } while (((c >= 'A') && (c <= 'Z')) || (c == ' ') || (c == '\t') || (c == '\r') || (c == '\n'));
          if (c != '.') {
            break;
          }
        } while ((j == 46) || (j != 45));
        return false;
        if (c != '-') {
          break;
        }
      } while (j == 46);
      while ((c >= '0') && ((c <= '9') || (c >= 'a')) && (c <= 'z'))
      {
        i += 1;
        j = c;
        break;
      }
      new StringBuilder("Bucket name should not contain '").append(c).append("'");
      return false;
    } while ((j == 46) || (j == 45));
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/BucketNameUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */