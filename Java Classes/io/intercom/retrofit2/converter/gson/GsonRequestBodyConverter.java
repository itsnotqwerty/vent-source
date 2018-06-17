package io.intercom.retrofit2.converter.gson;

import io.intercom.a.b.a.e;
import io.intercom.a.b.a.r;
import io.intercom.b.c.1;
import io.intercom.okhttp3.MediaType;
import io.intercom.okhttp3.RequestBody;
import io.intercom.retrofit2.Converter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;

final class GsonRequestBodyConverter<T>
  implements Converter<T, RequestBody>
{
  private static final MediaType MEDIA_TYPE = MediaType.parse("application/json; charset=UTF-8");
  private static final Charset UTF_8 = Charset.forName("UTF-8");
  private final r<T> adapter;
  private final e gson;
  
  GsonRequestBodyConverter(e parame, r<T> paramr)
  {
    this.gson = parame;
    this.adapter = paramr;
  }
  
  public final RequestBody convert(T paramT)
    throws IOException
  {
    io.intercom.b.c localc = new io.intercom.b.c();
    Object localObject = new OutputStreamWriter(new c.1(localc), UTF_8);
    localObject = this.gson.b((Writer)localObject);
    this.adapter.a((io.intercom.a.b.a.d.c)localObject, paramT);
    ((io.intercom.a.b.a.d.c)localObject).close();
    return RequestBody.create(MEDIA_TYPE, localc.readByteString());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/retrofit2/converter/gson/GsonRequestBodyConverter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */