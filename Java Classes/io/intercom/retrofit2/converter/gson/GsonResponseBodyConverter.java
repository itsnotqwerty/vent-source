package io.intercom.retrofit2.converter.gson;

import io.intercom.a.b.a.d.a;
import io.intercom.a.b.a.e;
import io.intercom.a.b.a.r;
import io.intercom.okhttp3.ResponseBody;
import io.intercom.retrofit2.Converter;
import java.io.IOException;

final class GsonResponseBodyConverter<T>
  implements Converter<ResponseBody, T>
{
  private final r<T> adapter;
  private final e gson;
  
  GsonResponseBodyConverter(e parame, r<T> paramr)
  {
    this.gson = parame;
    this.adapter = paramr;
  }
  
  public final T convert(ResponseBody paramResponseBody)
    throws IOException
  {
    Object localObject1 = this.gson.a(paramResponseBody.charStream());
    try
    {
      localObject1 = this.adapter.a((a)localObject1);
      return (T)localObject1;
    }
    finally
    {
      paramResponseBody.close();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/retrofit2/converter/gson/GsonResponseBodyConverter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */