package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonServiceException.ErrorType;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class S3ErrorResponseHandler
  implements HttpResponseHandler<AmazonServiceException>
{
  private static final Log alS = LogFactory.getLog(S3ErrorResponseHandler.class);
  
  private static AmazonS3Exception a(String paramString, HttpResponse paramHttpResponse)
  {
    paramString = new AmazonS3Exception(paramString);
    int i = paramHttpResponse.statusCode;
    paramString.alK = (i + " " + paramHttpResponse.aog);
    paramString.statusCode = i;
    paramString.alL = cr(i);
    paramHttpResponse = paramHttpResponse.headers;
    paramString.alJ = ((String)paramHttpResponse.get("x-amz-request-id"));
    paramString.aqo = ((String)paramHttpResponse.get("x-amz-id-2"));
    paramString.aqp = ((String)paramHttpResponse.get("X-Amz-Cf-Id"));
    return paramString;
  }
  
  /* Error */
  private static AmazonServiceException c(HttpResponse paramHttpResponse)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 107	com/amazonaws/http/HttpResponse:getContent	()Ljava/io/InputStream;
    //   4: astore_2
    //   5: aload_2
    //   6: ifnonnull +12 -> 18
    //   9: aload_0
    //   10: getfield 52	com/amazonaws/http/HttpResponse:aog	Ljava/lang/String;
    //   13: aload_0
    //   14: invokestatic 109	com/amazonaws/services/s3/internal/S3ErrorResponseHandler:a	(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    //   17: areturn
    //   18: aload_2
    //   19: invokestatic 115	com/amazonaws/util/IOUtils:j	(Ljava/io/InputStream;)Ljava/lang/String;
    //   22: astore_2
    //   23: aload_2
    //   24: invokestatic 121	com/amazonaws/util/XpathUtils:aG	(Ljava/lang/String;)Lorg/w3c/dom/Document;
    //   27: astore 6
    //   29: ldc 123
    //   31: aload 6
    //   33: invokestatic 126	com/amazonaws/util/XpathUtils:a	(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    //   36: astore 5
    //   38: ldc -128
    //   40: aload 6
    //   42: invokestatic 126	com/amazonaws/util/XpathUtils:a	(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    //   45: astore_3
    //   46: ldc -126
    //   48: aload 6
    //   50: invokestatic 126	com/amazonaws/util/XpathUtils:a	(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    //   53: astore 4
    //   55: ldc -124
    //   57: aload 6
    //   59: invokestatic 126	com/amazonaws/util/XpathUtils:a	(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    //   62: astore 6
    //   64: new 27	com/amazonaws/services/s3/model/AmazonS3Exception
    //   67: dup
    //   68: aload 5
    //   70: invokespecial 30	com/amazonaws/services/s3/model/AmazonS3Exception:<init>	(Ljava/lang/String;)V
    //   73: astore 5
    //   75: aload_0
    //   76: getfield 36	com/amazonaws/http/HttpResponse:statusCode	I
    //   79: istore_1
    //   80: aload 5
    //   82: iload_1
    //   83: putfield 62	com/amazonaws/AmazonServiceException:statusCode	I
    //   86: aload 5
    //   88: iload_1
    //   89: invokestatic 66	com/amazonaws/services/s3/internal/S3ErrorResponseHandler:cr	(I)Lcom/amazonaws/AmazonServiceException$ErrorType;
    //   92: putfield 70	com/amazonaws/AmazonServiceException:alL	Lcom/amazonaws/AmazonServiceException$ErrorType;
    //   95: aload 5
    //   97: aload_3
    //   98: putfield 61	com/amazonaws/AmazonServiceException:alK	Ljava/lang/String;
    //   101: aload 5
    //   103: aload 4
    //   105: putfield 87	com/amazonaws/AmazonServiceException:alJ	Ljava/lang/String;
    //   108: aload 5
    //   110: aload 6
    //   112: putfield 92	com/amazonaws/services/s3/model/AmazonS3Exception:aqo	Ljava/lang/String;
    //   115: aload 5
    //   117: aload_0
    //   118: getfield 74	com/amazonaws/http/HttpResponse:headers	Ljava/util/Map;
    //   121: ldc 94
    //   123: invokeinterface 82 2 0
    //   128: checkcast 84	java/lang/String
    //   131: putfield 97	com/amazonaws/services/s3/model/AmazonS3Exception:aqp	Ljava/lang/String;
    //   134: aload 5
    //   136: areturn
    //   137: astore_2
    //   138: getstatic 19	com/amazonaws/services/s3/internal/S3ErrorResponseHandler:alS	Lorg/apache/commons/logging/Log;
    //   141: invokeinterface 138 1 0
    //   146: ifeq +14 -> 160
    //   149: getstatic 19	com/amazonaws/services/s3/internal/S3ErrorResponseHandler:alS	Lorg/apache/commons/logging/Log;
    //   152: ldc -116
    //   154: aload_2
    //   155: invokeinterface 144 3 0
    //   160: aload_0
    //   161: getfield 52	com/amazonaws/http/HttpResponse:aog	Ljava/lang/String;
    //   164: aload_0
    //   165: invokestatic 109	com/amazonaws/services/s3/internal/S3ErrorResponseHandler:a	(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    //   168: areturn
    //   169: astore_3
    //   170: getstatic 19	com/amazonaws/services/s3/internal/S3ErrorResponseHandler:alS	Lorg/apache/commons/logging/Log;
    //   173: invokeinterface 138 1 0
    //   178: ifeq +28 -> 206
    //   181: getstatic 19	com/amazonaws/services/s3/internal/S3ErrorResponseHandler:alS	Lorg/apache/commons/logging/Log;
    //   184: new 38	java/lang/StringBuilder
    //   187: dup
    //   188: ldc -110
    //   190: invokespecial 147	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   193: aload_2
    //   194: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: aload_3
    //   201: invokeinterface 144 3 0
    //   206: aload_2
    //   207: aload_0
    //   208: invokestatic 109	com/amazonaws/services/s3/internal/S3ErrorResponseHandler:a	(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    //   211: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	212	0	paramHttpResponse	HttpResponse
    //   79	10	1	i	int
    //   4	20	2	localObject1	Object
    //   137	70	2	localIOException	java.io.IOException
    //   45	53	3	str1	String
    //   169	32	3	localException	Exception
    //   53	51	4	str2	String
    //   36	99	5	localObject2	Object
    //   27	84	6	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   18	23	137	java/io/IOException
    //   23	134	169	java/lang/Exception
  }
  
  private static AmazonServiceException.ErrorType cr(int paramInt)
  {
    if (paramInt >= 500) {
      return AmazonServiceException.ErrorType.alP;
    }
    return AmazonServiceException.ErrorType.alO;
  }
  
  public final boolean jF()
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/S3ErrorResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */