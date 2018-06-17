package okhttp3.internal.c;

public final class f
{
  public static boolean invalidatesCache(String paramString)
  {
    return (paramString.equals("POST")) || (paramString.equals("PATCH")) || (paramString.equals("PUT")) || (paramString.equals("DELETE")) || (paramString.equals("MOVE"));
  }
  
  public static boolean permitsRequestBody(String paramString)
  {
    return (!paramString.equals("GET")) && (!paramString.equals("HEAD"));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/c/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */