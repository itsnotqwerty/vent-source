package com.layer.sdk.internal.lsdke.lsdkb;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.layer.sdk.internal.lsdke.lsdkb.lsdkb.d;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class a
{
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdke.lsdkb.lsdkb.b paramb)
    throws IOException
  {
    if ((paramb instanceof d))
    {
      a(paramSQLiteDatabase, ((d)paramb).c());
      return;
    }
    if ((paramb instanceof com.layer.sdk.internal.lsdke.lsdkb.lsdkb.a))
    {
      ((com.layer.sdk.internal.lsdke.lsdkb.lsdkb.a)paramb).a(paramSQLiteDatabase);
      return;
    }
    throw new IllegalArgumentException("Unknown migration type: " + paramb);
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdke.lsdkb.lsdkc.b paramb)
    throws IOException
  {
    a(paramSQLiteDatabase, paramb.a());
  }
  
  protected static void a(SQLiteDatabase paramSQLiteDatabase, InputStream paramInputStream)
    throws IOException, SQLException
  {
    try
    {
      a.a(paramSQLiteDatabase, b.a(paramInputStream));
      return;
    }
    finally
    {
      paramInputStream.close();
    }
  }
  
  protected static class a
  {
    private static final Set<String> a = new HashSet(Arrays.asList(new String[] { "--" }));
    private static final Set<String> b = new HashSet(Arrays.asList(new String[] { "ALTER", "ANALYZE", "CREATE", "DELETE", "DROP", "INSERT", "UPDATE" }));
    private static final Set<String> c = new HashSet(Arrays.asList(new String[] { "PRAGMA" }));
    
    public static void a(SQLiteDatabase paramSQLiteDatabase, List<String> paramList)
      throws IOException, SQLException
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Object localObject = ((String)paramList.next()).trim();
        if ((!((String)localObject).isEmpty()) && (!a(a, (String)localObject))) {
          if (a(b, (String)localObject))
          {
            paramSQLiteDatabase.execSQL((String)localObject);
          }
          else if (a(c, (String)localObject))
          {
            localObject = paramSQLiteDatabase.rawQuery((String)localObject, null);
            if (localObject != null) {
              ((Cursor)localObject).close();
            }
          }
          else
          {
            throw new IllegalArgumentException("Cannot parse statement: " + (String)localObject);
          }
        }
      }
    }
    
    private static boolean a(Set<String> paramSet, String paramString)
    {
      paramString = paramString.toUpperCase();
      paramSet = paramSet.iterator();
      while (paramSet.hasNext()) {
        if (paramString.startsWith((String)paramSet.next())) {
          return true;
        }
      }
      return false;
    }
  }
  
  public static class b
  {
    public static List<String> a(InputStream paramInputStream)
    {
      paramInputStream = new Scanner(paramInputStream, "UTF-8").useDelimiter("\\A").next();
      paramInputStream = Pattern.compile("/\\*.*?\\*/", 40).matcher(paramInputStream).replaceAll("");
      return Arrays.asList(Pattern.compile("^\\s*--.*?$", 40).matcher(paramInputStream).replaceAll("").split("(\\s*\\r?\\n\\s*){2,}"));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/lsdkb/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */