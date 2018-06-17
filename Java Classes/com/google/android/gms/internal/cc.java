package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

class cc<T extends cb>
  extends ba
{
  private cd<T> aNA;
  
  public cc(bd parambd, cd<T> paramcd)
  {
    super(parambd);
    this.aNA = paramcd;
  }
  
  private final T a(XmlResourceParser paramXmlResourceParser)
  {
    for (;;)
    {
      try
      {
        paramXmlResourceParser.next();
        i = paramXmlResourceParser.getEventType();
        if (i == 1) {
          continue;
        }
        if (paramXmlResourceParser.getEventType() == 2)
        {
          str1 = paramXmlResourceParser.getName().toLowerCase();
          if (!str1.equals("screenname")) {
            continue;
          }
          str1 = paramXmlResourceParser.getAttributeValue(null, "name");
          str2 = paramXmlResourceParser.nextText().trim();
          if (!TextUtils.isEmpty(str1)) {
            TextUtils.isEmpty(str2);
          }
        }
      }
      catch (XmlPullParserException paramXmlResourceParser)
      {
        int i;
        h("Error parsing tracker configuration file", paramXmlResourceParser);
        return this.aNA.pJ();
        if (!str1.equals("bool")) {
          continue;
        }
        String str2 = paramXmlResourceParser.getAttributeValue(null, "name");
        String str1 = paramXmlResourceParser.nextText().trim();
        if (TextUtils.isEmpty(str2)) {
          continue;
        }
        boolean bool = TextUtils.isEmpty(str1);
        if (bool) {
          continue;
        }
        try
        {
          bool = Boolean.parseBoolean(str1);
          this.aNA.d(str2, bool);
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          c("Error parsing bool configuration value", str1, localNumberFormatException1);
        }
        continue;
        if (!str1.equals("integer")) {
          continue;
        }
        String str3 = paramXmlResourceParser.getAttributeValue(null, "name");
        str1 = paramXmlResourceParser.nextText().trim();
        if (TextUtils.isEmpty(str3)) {
          continue;
        }
        bool = TextUtils.isEmpty(str1);
        if (bool) {
          continue;
        }
        try
        {
          i = Integer.parseInt(str1);
          this.aNA.c(str3, i);
        }
        catch (NumberFormatException localNumberFormatException2)
        {
          c("Error parsing int configuration value", str1, localNumberFormatException2);
        }
        continue;
      }
      catch (IOException paramXmlResourceParser)
      {
        continue;
      }
      i = paramXmlResourceParser.next();
      continue;
      if (!str1.equals("string")) {
        continue;
      }
      str1 = paramXmlResourceParser.getAttributeValue(null, "name");
      str2 = paramXmlResourceParser.nextText().trim();
      if ((!TextUtils.isEmpty(str1)) && (str2 != null)) {
        this.aNA.q(str1, str2);
      }
    }
  }
  
  public final T cR(int paramInt)
  {
    try
    {
      cb localcb = a(this.aMq.aMt.getResources().getXml(paramInt));
      return localcb;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      g("inflate() called with unknown resourceId", localNotFoundException);
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */