package io.intercom.retrofit2.converter.gson;

import io.intercom.a.b.a.c.a;
import io.intercom.a.b.a.e;
import io.intercom.okhttp3.RequestBody;
import io.intercom.okhttp3.ResponseBody;
import io.intercom.retrofit2.Converter;
import io.intercom.retrofit2.Converter.Factory;
import io.intercom.retrofit2.Retrofit;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

public final class GsonConverterFactory
  extends Converter.Factory
{
  private final e gson;
  
  private GsonConverterFactory(e parame)
  {
    this.gson = parame;
  }
  
  public static GsonConverterFactory create()
  {
    return create(new e());
  }
  
  public static GsonConverterFactory create(e parame)
  {
    if (parame == null) {
      throw new NullPointerException("gson == null");
    }
    return new GsonConverterFactory(parame);
  }
  
  public final Converter<?, RequestBody> requestBodyConverter(Type paramType, Annotation[] paramArrayOfAnnotation1, Annotation[] paramArrayOfAnnotation2, Retrofit paramRetrofit)
  {
    paramType = this.gson.a(a.f(paramType));
    return new GsonRequestBodyConverter(this.gson, paramType);
  }
  
  public final Converter<ResponseBody, ?> responseBodyConverter(Type paramType, Annotation[] paramArrayOfAnnotation, Retrofit paramRetrofit)
  {
    paramType = this.gson.a(a.f(paramType));
    return new GsonResponseBodyConverter(this.gson, paramType);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/retrofit2/converter/gson/GsonConverterFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */