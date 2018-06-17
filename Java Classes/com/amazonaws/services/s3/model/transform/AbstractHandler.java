package com.amazonaws.services.s3.model.transform;

import java.util.Iterator;
import java.util.LinkedList;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

abstract class AbstractHandler
  extends DefaultHandler
{
  final StringBuilder asY = new StringBuilder();
  final LinkedList<String> asZ = new LinkedList();
  
  protected abstract void a(String paramString, Attributes paramAttributes);
  
  protected abstract void an(String paramString);
  
  public final void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    this.asY.append(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  protected final boolean d(String... paramVarArgs)
  {
    if (paramVarArgs.length != this.asZ.size()) {
      return false;
    }
    Iterator localIterator = this.asZ.iterator();
    int i = 0;
    for (;;)
    {
      if (!localIterator.hasNext()) {
        break label76;
      }
      String str1 = (String)localIterator.next();
      String str2 = paramVarArgs[i];
      if ((!str2.equals("*")) && (!str2.equals(str1))) {
        break;
      }
      i += 1;
    }
    label76:
    return true;
  }
  
  public final void endElement(String paramString1, String paramString2, String paramString3)
  {
    this.asZ.removeLast();
    an(paramString2);
  }
  
  public final void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    this.asY.setLength(0);
    a(paramString2, paramAttributes);
    this.asZ.add(paramString2);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/transform/AbstractHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */