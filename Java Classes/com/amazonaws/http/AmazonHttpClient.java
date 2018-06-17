package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonServiceException.ErrorType;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.handlers.CredentialsRequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.retry.RetryPolicy.BackoffStrategy;
import com.amazonaws.retry.RetryPolicy.RetryCondition;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSRequestMetrics.Field;
import com.amazonaws.util.TimingInfo;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class AmazonHttpClient
{
  static final Log alS = LogFactory.getLog(AmazonHttpClient.class);
  private static final Log anQ = LogFactory.getLog("com.amazonaws.request");
  public final RequestMetricCollector amb;
  final HttpClient anR;
  final ClientConfiguration anS;
  private final HttpRequestFactory anT = new HttpRequestFactory();
  
  public AmazonHttpClient(ClientConfiguration paramClientConfiguration, HttpClient paramHttpClient)
  {
    this.anS = paramClientConfiguration;
    this.anR = paramHttpClient;
    this.amb = null;
  }
  
  /* Error */
  private static int a(HttpResponse paramHttpResponse, AmazonServiceException paramAmazonServiceException)
  {
    // Byte code:
    //   0: new 54	java/util/Date
    //   3: dup
    //   4: invokespecial 55	java/util/Date:<init>	()V
    //   7: astore 6
    //   9: aconst_null
    //   10: astore 4
    //   12: aload_0
    //   13: getfield 61	com/amazonaws/http/HttpResponse:headers	Ljava/util/Map;
    //   16: ldc 63
    //   18: invokeinterface 69 2 0
    //   23: checkcast 71	java/lang/String
    //   26: astore 5
    //   28: aload 5
    //   30: ifnull +14 -> 44
    //   33: aload 4
    //   35: astore_0
    //   36: aload 5
    //   38: invokevirtual 75	java/lang/String:isEmpty	()Z
    //   41: ifeq +93 -> 134
    //   44: aload 4
    //   46: astore_0
    //   47: aload_1
    //   48: invokevirtual 81	com/amazonaws/AmazonServiceException:getMessage	()Ljava/lang/String;
    //   51: astore_1
    //   52: aload 4
    //   54: astore_0
    //   55: aload_1
    //   56: ldc 83
    //   58: invokevirtual 87	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   61: istore_3
    //   62: aload 4
    //   64: astore_0
    //   65: aload_1
    //   66: ldc 89
    //   68: invokevirtual 93	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   71: ifeq +50 -> 121
    //   74: aload 4
    //   76: astore_0
    //   77: aload_1
    //   78: ldc 89
    //   80: invokevirtual 87	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   83: istore_2
    //   84: aload 4
    //   86: astore_0
    //   87: aload_1
    //   88: iload_3
    //   89: iconst_1
    //   90: iadd
    //   91: iload_2
    //   92: invokevirtual 97	java/lang/String:substring	(II)Ljava/lang/String;
    //   95: astore_1
    //   96: aload_1
    //   97: astore_0
    //   98: aload_1
    //   99: invokestatic 103	com/amazonaws/util/DateUtils:az	(Ljava/lang/String;)Ljava/util/Date;
    //   102: astore_1
    //   103: aload_1
    //   104: astore_0
    //   105: aload 6
    //   107: invokevirtual 107	java/util/Date:getTime	()J
    //   110: aload_0
    //   111: invokevirtual 107	java/util/Date:getTime	()J
    //   114: lsub
    //   115: ldc2_w 108
    //   118: ldiv
    //   119: l2i
    //   120: ireturn
    //   121: aload 4
    //   123: astore_0
    //   124: aload_1
    //   125: ldc 111
    //   127: invokevirtual 87	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   130: istore_2
    //   131: goto -47 -> 84
    //   134: aload 5
    //   136: invokestatic 114	com/amazonaws/util/DateUtils:ay	(Ljava/lang/String;)Ljava/util/Date;
    //   139: astore_0
    //   140: goto -35 -> 105
    //   143: astore_1
    //   144: getstatic 32	com/amazonaws/http/AmazonHttpClient:alS	Lorg/apache/commons/logging/Log;
    //   147: new 116	java/lang/StringBuilder
    //   150: dup
    //   151: ldc 118
    //   153: invokespecial 121	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   156: aload_0
    //   157: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   163: aload_1
    //   164: invokeinterface 134 3 0
    //   169: iconst_0
    //   170: ireturn
    //   171: astore_1
    //   172: aload 5
    //   174: astore_0
    //   175: goto -31 -> 144
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	paramHttpResponse	HttpResponse
    //   0	178	1	paramAmazonServiceException	AmazonServiceException
    //   83	48	2	i	int
    //   61	30	3	j	int
    //   10	112	4	localObject	Object
    //   26	147	5	str	String
    //   7	99	6	localDate	java.util.Date
    // Exception table:
    //   from	to	target	type
    //   36	44	143	java/lang/RuntimeException
    //   47	52	143	java/lang/RuntimeException
    //   55	62	143	java/lang/RuntimeException
    //   65	74	143	java/lang/RuntimeException
    //   77	84	143	java/lang/RuntimeException
    //   87	96	143	java/lang/RuntimeException
    //   98	103	143	java/lang/RuntimeException
    //   124	131	143	java/lang/RuntimeException
    //   134	140	171	java/lang/RuntimeException
  }
  
  private static long a(int paramInt, RetryPolicy paramRetryPolicy)
  {
    paramInt = paramInt - 1 - 1;
    long l = paramRetryPolicy.apx.cq(paramInt);
    if (alS.isDebugEnabled()) {
      alS.debug("Retriable error detected, will retry in " + l + "ms, attempt number: " + paramInt);
    }
    try
    {
      Thread.sleep(l);
      return l;
    }
    catch (InterruptedException paramRetryPolicy)
    {
      Thread.currentThread().interrupt();
      throw new AmazonClientException(paramRetryPolicy.getMessage(), paramRetryPolicy);
    }
  }
  
  private static AmazonServiceException a(Request<?> paramRequest, HttpResponseHandler<AmazonServiceException> paramHttpResponseHandler, HttpResponse paramHttpResponse)
    throws IOException
  {
    int i = paramHttpResponse.statusCode;
    try
    {
      paramHttpResponseHandler = (AmazonServiceException)paramHttpResponseHandler.a(paramHttpResponse);
      anQ.debug("Received error response: " + paramHttpResponseHandler.toString());
      paramHttpResponseHandler.statusCode = i;
      paramHttpResponseHandler.alN = paramRequest.getServiceName();
      paramHttpResponseHandler.fillInStackTrace();
      return paramHttpResponseHandler;
    }
    catch (Exception paramHttpResponseHandler)
    {
      for (;;)
      {
        if (i == 413)
        {
          paramHttpResponseHandler = new AmazonServiceException("Request entity too large");
          paramHttpResponseHandler.alN = paramRequest.getServiceName();
          paramHttpResponseHandler.statusCode = 413;
          paramHttpResponseHandler.alL = AmazonServiceException.ErrorType.alO;
          paramHttpResponseHandler.alK = "Request entity too large";
        }
        else
        {
          if ((i != 503) || (!"Service Unavailable".equalsIgnoreCase(paramHttpResponse.aog))) {
            break;
          }
          paramHttpResponseHandler = new AmazonServiceException("Service unavailable");
          paramHttpResponseHandler.alN = paramRequest.getServiceName();
          paramHttpResponseHandler.statusCode = 503;
          paramHttpResponseHandler.alL = AmazonServiceException.ErrorType.alP;
          paramHttpResponseHandler.alK = "Service unavailable";
        }
      }
      if ((paramHttpResponseHandler instanceof IOException)) {
        throw ((IOException)paramHttpResponseHandler);
      }
      throw new AmazonClientException("Unable to unmarshall error response (" + paramHttpResponseHandler.getMessage() + "). Response Code: " + i + ", Response Text: " + paramHttpResponse.aog, paramHttpResponseHandler);
    }
  }
  
  /* Error */
  private static <T> T a(HttpResponseHandler<AmazonWebServiceResponse<T>> paramHttpResponseHandler, HttpResponse paramHttpResponse, ExecutionContext paramExecutionContext)
    throws IOException
  {
    // Byte code:
    //   0: aload_2
    //   1: getfield 264	com/amazonaws/http/ExecutionContext:anU	Lcom/amazonaws/util/AWSRequestMetrics;
    //   4: astore_2
    //   5: aload_2
    //   6: getstatic 270	com/amazonaws/util/AWSRequestMetrics$Field:aum	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   9: invokevirtual 275	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;)V
    //   12: aload_0
    //   13: aload_1
    //   14: invokeinterface 199 2 0
    //   19: checkcast 277	com/amazonaws/AmazonWebServiceResponse
    //   22: astore_0
    //   23: aload_2
    //   24: getstatic 270	com/amazonaws/util/AWSRequestMetrics$Field:aum	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   27: invokevirtual 280	com/amazonaws/util/AWSRequestMetrics:b	(Lcom/amazonaws/metrics/MetricType;)V
    //   30: aload_0
    //   31: ifnonnull +59 -> 90
    //   34: new 52	java/lang/RuntimeException
    //   37: dup
    //   38: new 116	java/lang/StringBuilder
    //   41: dup
    //   42: ldc_w 282
    //   45: invokespecial 121	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   48: aload_1
    //   49: getfield 194	com/amazonaws/http/HttpResponse:statusCode	I
    //   52: invokevirtual 162	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   55: ldc -4
    //   57: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload_1
    //   61: getfield 236	com/amazonaws/http/HttpResponse:aog	Ljava/lang/String;
    //   64: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokespecial 283	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   73: athrow
    //   74: astore_0
    //   75: aload_0
    //   76: athrow
    //   77: astore_0
    //   78: aload_2
    //   79: getstatic 270	com/amazonaws/util/AWSRequestMetrics$Field:aum	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   82: invokevirtual 280	com/amazonaws/util/AWSRequestMetrics:b	(Lcom/amazonaws/metrics/MetricType;)V
    //   85: aload_0
    //   86: athrow
    //   87: astore_0
    //   88: aload_0
    //   89: athrow
    //   90: getstatic 27	com/amazonaws/http/AmazonHttpClient:anQ	Lorg/apache/commons/logging/Log;
    //   93: invokeinterface 152 1 0
    //   98: ifeq +44 -> 142
    //   101: getstatic 27	com/amazonaws/http/AmazonHttpClient:anQ	Lorg/apache/commons/logging/Log;
    //   104: new 116	java/lang/StringBuilder
    //   107: dup
    //   108: ldc_w 285
    //   111: invokespecial 121	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   114: aload_1
    //   115: getfield 194	com/amazonaws/http/HttpResponse:statusCode	I
    //   118: invokevirtual 162	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   121: ldc_w 287
    //   124: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: aload_0
    //   128: invokevirtual 290	com/amazonaws/AmazonWebServiceResponse:jp	()Ljava/lang/String;
    //   131: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: invokeinterface 166 2 0
    //   142: aload_2
    //   143: getstatic 293	com/amazonaws/util/AWSRequestMetrics$Field:aud	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   146: aload_0
    //   147: invokevirtual 290	com/amazonaws/AmazonWebServiceResponse:jp	()Ljava/lang/String;
    //   150: invokevirtual 296	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    //   153: aload_0
    //   154: getfield 300	com/amazonaws/AmazonWebServiceResponse:result	Ljava/lang/Object;
    //   157: astore_0
    //   158: aload_0
    //   159: areturn
    //   160: astore_0
    //   161: new 181	com/amazonaws/AmazonClientException
    //   164: dup
    //   165: new 116	java/lang/StringBuilder
    //   168: dup
    //   169: ldc_w 302
    //   172: invokespecial 121	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   175: aload_0
    //   176: invokevirtual 248	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   179: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: ldc -6
    //   184: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: aload_1
    //   188: getfield 194	com/amazonaws/http/HttpResponse:statusCode	I
    //   191: invokevirtual 162	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   194: ldc -4
    //   196: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: aload_1
    //   200: getfield 236	com/amazonaws/http/HttpResponse:aog	Ljava/lang/String;
    //   203: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   209: aload_0
    //   210: invokespecial 185	com/amazonaws/AmazonClientException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   213: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	214	0	paramHttpResponseHandler	HttpResponseHandler<AmazonWebServiceResponse<T>>
    //   0	214	1	paramHttpResponse	HttpResponse
    //   0	214	2	paramExecutionContext	ExecutionContext
    // Exception table:
    //   from	to	target	type
    //   0	12	74	com/amazonaws/internal/CRC32MismatchException
    //   23	30	74	com/amazonaws/internal/CRC32MismatchException
    //   34	74	74	com/amazonaws/internal/CRC32MismatchException
    //   78	87	74	com/amazonaws/internal/CRC32MismatchException
    //   90	142	74	com/amazonaws/internal/CRC32MismatchException
    //   142	158	74	com/amazonaws/internal/CRC32MismatchException
    //   12	23	77	finally
    //   0	12	87	java/io/IOException
    //   23	30	87	java/io/IOException
    //   34	74	87	java/io/IOException
    //   78	87	87	java/io/IOException
    //   90	142	87	java/io/IOException
    //   142	158	87	java/io/IOException
    //   0	12	160	java/lang/Exception
    //   23	30	160	java/lang/Exception
    //   34	74	160	java/lang/Exception
    //   78	87	160	java/lang/Exception
    //   90	142	160	java/lang/Exception
    //   142	158	160	java/lang/Exception
  }
  
  private static <T extends Throwable> T a(T paramT, AWSRequestMetrics paramAWSRequestMetrics)
  {
    paramAWSRequestMetrics.c(AWSRequestMetrics.Field.auh);
    paramAWSRequestMetrics.a(AWSRequestMetrics.Field.auh, paramT);
    return paramT;
  }
  
  private static void a(Request<?> paramRequest, Exception paramException)
    throws AmazonClientException
  {
    if (paramRequest.getContent() == null) {
      return;
    }
    if (!paramRequest.getContent().markSupported()) {
      throw new AmazonClientException("Encountered an exception and stream is not resettable", paramException);
    }
    try
    {
      paramRequest.getContent().reset();
      return;
    }
    catch (IOException paramRequest)
    {
      throw new AmazonClientException("Encountered an exception and couldn't reset the stream to retry", paramException);
    }
  }
  
  private boolean a(InputStream paramInputStream, AmazonClientException paramAmazonClientException, int paramInt, RetryPolicy paramRetryPolicy)
  {
    int i = this.anS.ami;
    if ((i < 0) || (!paramRetryPolicy.apy)) {
      i = paramRetryPolicy.ami;
    }
    if (paramInt - 1 >= i) {}
    do
    {
      return false;
      if ((paramInputStream == null) || (paramInputStream.markSupported())) {
        break;
      }
    } while (!alS.isDebugEnabled());
    alS.debug("Content not repeatable");
    return false;
    return paramRetryPolicy.apw.a(paramAmazonClientException);
  }
  
  /* Error */
  private <T> Response<T> b(Request<?> paramRequest, HttpResponseHandler<AmazonWebServiceResponse<T>> paramHttpResponseHandler, HttpResponseHandler<AmazonServiceException> paramHttpResponseHandler1, ExecutionContext paramExecutionContext)
    throws AmazonClientException, AmazonServiceException
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 8
    //   3: aload 4
    //   5: getfield 264	com/amazonaws/http/ExecutionContext:anU	Lcom/amazonaws/util/AWSRequestMetrics;
    //   8: astore 31
    //   10: aload 31
    //   12: getstatic 357	com/amazonaws/util/AWSRequestMetrics$Field:aux	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   15: aload_1
    //   16: invokeinterface 208 1 0
    //   21: invokevirtual 296	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    //   24: aload 31
    //   26: getstatic 360	com/amazonaws/util/AWSRequestMetrics$Field:auw	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   29: aload_1
    //   30: invokeinterface 364 1 0
    //   35: invokevirtual 296	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    //   38: getstatic 367	com/amazonaws/ClientConfiguration:amf	Ljava/lang/String;
    //   41: astore 19
    //   43: aload_1
    //   44: invokeinterface 371 1 0
    //   49: astore 20
    //   51: aload 20
    //   53: ifnull +4159 -> 4212
    //   56: aload 20
    //   58: getfield 377	com/amazonaws/AmazonWebServiceRequest:ama	Lcom/amazonaws/RequestClientOptions;
    //   61: astore 20
    //   63: aload 20
    //   65: ifnull +4147 -> 4212
    //   68: getstatic 383	com/amazonaws/RequestClientOptions$Marker:amK	Lcom/amazonaws/RequestClientOptions$Marker;
    //   71: astore 21
    //   73: aload 20
    //   75: getfield 388	com/amazonaws/RequestClientOptions:amJ	Ljava/util/Map;
    //   78: aload 21
    //   80: invokeinterface 69 2 0
    //   85: checkcast 71	java/lang/String
    //   88: astore 20
    //   90: aload 20
    //   92: ifnull +4120 -> 4212
    //   95: aload 19
    //   97: aload 20
    //   99: invokestatic 392	com/amazonaws/http/AmazonHttpClient:g	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   102: astore 19
    //   104: aload 19
    //   106: astore 20
    //   108: getstatic 367	com/amazonaws/ClientConfiguration:amf	Ljava/lang/String;
    //   111: aload_0
    //   112: getfield 44	com/amazonaws/http/AmazonHttpClient:anS	Lcom/amazonaws/ClientConfiguration;
    //   115: getfield 395	com/amazonaws/ClientConfiguration:amh	Ljava/lang/String;
    //   118: invokevirtual 399	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   121: ifne +17 -> 138
    //   124: aload 19
    //   126: aload_0
    //   127: getfield 44	com/amazonaws/http/AmazonHttpClient:anS	Lcom/amazonaws/ClientConfiguration;
    //   130: getfield 395	com/amazonaws/ClientConfiguration:amh	Ljava/lang/String;
    //   133: invokestatic 392	com/amazonaws/http/AmazonHttpClient:g	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   136: astore 20
    //   138: aload_1
    //   139: ldc_w 401
    //   142: aload 20
    //   144: invokeinterface 405 3 0
    //   149: aload_1
    //   150: ldc_w 407
    //   153: invokestatic 413	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   156: invokevirtual 414	java/util/UUID:toString	()Ljava/lang/String;
    //   159: invokeinterface 405 3 0
    //   164: iconst_0
    //   165: istore 5
    //   167: lconst_0
    //   168: lstore 13
    //   170: aconst_null
    //   171: astore 22
    //   173: new 416	java/util/LinkedHashMap
    //   176: dup
    //   177: aload_1
    //   178: invokeinterface 420 1 0
    //   183: invokespecial 423	java/util/LinkedHashMap:<init>	(Ljava/util/Map;)V
    //   186: astore 32
    //   188: new 425	java/util/HashMap
    //   191: dup
    //   192: aload_1
    //   193: invokeinterface 428 1 0
    //   198: invokespecial 429	java/util/HashMap:<init>	(Ljava/util/Map;)V
    //   201: astore 33
    //   203: aload_1
    //   204: invokeinterface 316 1 0
    //   209: astore 34
    //   211: aload 34
    //   213: ifnull +17 -> 230
    //   216: aload 34
    //   218: invokevirtual 321	java/io/InputStream:markSupported	()Z
    //   221: ifeq +9 -> 230
    //   224: aload 34
    //   226: iconst_m1
    //   227: invokevirtual 433	java/io/InputStream:mark	(I)V
    //   230: aload 4
    //   232: getfield 437	com/amazonaws/http/ExecutionContext:amc	Lcom/amazonaws/auth/AWSCredentials;
    //   235: astore 35
    //   237: aconst_null
    //   238: astore 24
    //   240: aconst_null
    //   241: astore 21
    //   243: aconst_null
    //   244: astore 19
    //   246: iload 5
    //   248: iconst_1
    //   249: iadd
    //   250: istore 7
    //   252: aload 31
    //   254: getstatic 440	com/amazonaws/util/AWSRequestMetrics$Field:aun	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   257: iload 7
    //   259: i2l
    //   260: invokevirtual 443	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;J)V
    //   263: iload 7
    //   265: iconst_1
    //   266: if_icmple +27 -> 293
    //   269: aload_1
    //   270: aload 32
    //   272: invokeinterface 446 2 0
    //   277: aload_1
    //   278: aload 33
    //   280: invokeinterface 448 2 0
    //   285: aload_1
    //   286: aload 34
    //   288: invokeinterface 452 2 0
    //   293: aload 22
    //   295: ifnull +73 -> 368
    //   298: aload_1
    //   299: invokeinterface 364 1 0
    //   304: ifnonnull +64 -> 368
    //   307: aload_1
    //   308: invokeinterface 455 1 0
    //   313: ifnonnull +55 -> 368
    //   316: aload_1
    //   317: new 116	java/lang/StringBuilder
    //   320: dup
    //   321: invokespecial 456	java/lang/StringBuilder:<init>	()V
    //   324: aload 22
    //   326: invokevirtual 461	java/net/URI:getScheme	()Ljava/lang/String;
    //   329: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: ldc_w 463
    //   335: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: aload 22
    //   340: invokevirtual 466	java/net/URI:getAuthority	()Ljava/lang/String;
    //   343: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   349: invokestatic 470	java/net/URI:create	(Ljava/lang/String;)Ljava/net/URI;
    //   352: invokeinterface 473 2 0
    //   357: aload_1
    //   358: aload 22
    //   360: invokevirtual 476	java/net/URI:getPath	()Ljava/lang/String;
    //   363: invokeinterface 479 2 0
    //   368: lload 13
    //   370: lstore 15
    //   372: iload 7
    //   374: iconst_1
    //   375: if_icmple +235 -> 610
    //   378: aload 24
    //   380: astore 27
    //   382: lload 13
    //   384: lstore 17
    //   386: aload 19
    //   388: astore 20
    //   390: iload 8
    //   392: istore 9
    //   394: aload 19
    //   396: astore 25
    //   398: iload 8
    //   400: istore 10
    //   402: aload 19
    //   404: astore 26
    //   406: iload 8
    //   408: istore 12
    //   410: aload 31
    //   412: getstatic 482	com/amazonaws/util/AWSRequestMetrics$Field:auv	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   415: invokevirtual 275	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;)V
    //   418: iload 7
    //   420: aload_0
    //   421: getfield 44	com/amazonaws/http/AmazonHttpClient:anS	Lcom/amazonaws/ClientConfiguration;
    //   424: getfield 486	com/amazonaws/ClientConfiguration:amj	Lcom/amazonaws/retry/RetryPolicy;
    //   427: invokestatic 488	com/amazonaws/http/AmazonHttpClient:a	(ILcom/amazonaws/retry/RetryPolicy;)J
    //   430: lstore 15
    //   432: lload 15
    //   434: lstore 13
    //   436: aload 24
    //   438: astore 27
    //   440: lload 13
    //   442: lstore 17
    //   444: aload 19
    //   446: astore 20
    //   448: iload 8
    //   450: istore 9
    //   452: aload 19
    //   454: astore 25
    //   456: iload 8
    //   458: istore 10
    //   460: aload 19
    //   462: astore 26
    //   464: iload 8
    //   466: istore 12
    //   468: aload 31
    //   470: getstatic 482	com/amazonaws/util/AWSRequestMetrics$Field:auv	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   473: invokevirtual 280	com/amazonaws/util/AWSRequestMetrics:b	(Lcom/amazonaws/metrics/MetricType;)V
    //   476: aload 24
    //   478: astore 27
    //   480: lload 13
    //   482: lstore 17
    //   484: aload 19
    //   486: astore 20
    //   488: iload 8
    //   490: istore 9
    //   492: aload 19
    //   494: astore 25
    //   496: iload 8
    //   498: istore 10
    //   500: aload 19
    //   502: astore 26
    //   504: iload 8
    //   506: istore 12
    //   508: aload_1
    //   509: invokeinterface 316 1 0
    //   514: astore 23
    //   516: lload 13
    //   518: lstore 15
    //   520: aload 23
    //   522: ifnull +88 -> 610
    //   525: lload 13
    //   527: lstore 15
    //   529: aload 24
    //   531: astore 27
    //   533: lload 13
    //   535: lstore 17
    //   537: aload 19
    //   539: astore 20
    //   541: iload 8
    //   543: istore 9
    //   545: aload 19
    //   547: astore 25
    //   549: iload 8
    //   551: istore 10
    //   553: aload 19
    //   555: astore 26
    //   557: iload 8
    //   559: istore 12
    //   561: aload 23
    //   563: invokevirtual 321	java/io/InputStream:markSupported	()Z
    //   566: ifeq +44 -> 610
    //   569: aload 24
    //   571: astore 27
    //   573: lload 13
    //   575: lstore 17
    //   577: aload 19
    //   579: astore 20
    //   581: iload 8
    //   583: istore 9
    //   585: aload 19
    //   587: astore 25
    //   589: iload 8
    //   591: istore 10
    //   593: aload 19
    //   595: astore 26
    //   597: iload 8
    //   599: istore 12
    //   601: aload 23
    //   603: invokevirtual 326	java/io/InputStream:reset	()V
    //   606: lload 13
    //   608: lstore 15
    //   610: aload 24
    //   612: astore 27
    //   614: lload 15
    //   616: lstore 17
    //   618: aload 19
    //   620: astore 20
    //   622: iload 8
    //   624: istore 9
    //   626: aload 19
    //   628: astore 25
    //   630: iload 8
    //   632: istore 10
    //   634: aload 19
    //   636: astore 26
    //   638: iload 8
    //   640: istore 12
    //   642: aload_1
    //   643: ldc_w 490
    //   646: new 116	java/lang/StringBuilder
    //   649: dup
    //   650: invokespecial 456	java/lang/StringBuilder:<init>	()V
    //   653: iload 7
    //   655: iconst_1
    //   656: isub
    //   657: invokevirtual 162	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   660: ldc_w 492
    //   663: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   666: lload 15
    //   668: invokevirtual 157	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   671: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   674: invokeinterface 405 3 0
    //   679: aload 24
    //   681: astore 23
    //   683: aload 24
    //   685: ifnonnull +48 -> 733
    //   688: aload 24
    //   690: astore 27
    //   692: lload 15
    //   694: lstore 17
    //   696: aload 19
    //   698: astore 20
    //   700: iload 8
    //   702: istore 9
    //   704: aload 19
    //   706: astore 25
    //   708: iload 8
    //   710: istore 10
    //   712: aload 19
    //   714: astore 26
    //   716: iload 8
    //   718: istore 12
    //   720: aload 4
    //   722: aload_1
    //   723: invokeinterface 364 1 0
    //   728: invokevirtual 495	com/amazonaws/http/ExecutionContext:a	(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    //   731: astore 23
    //   733: aload 23
    //   735: ifnull +98 -> 833
    //   738: aload 35
    //   740: ifnull +93 -> 833
    //   743: aload 23
    //   745: astore 27
    //   747: lload 15
    //   749: lstore 17
    //   751: aload 19
    //   753: astore 20
    //   755: iload 8
    //   757: istore 9
    //   759: aload 19
    //   761: astore 25
    //   763: iload 8
    //   765: istore 10
    //   767: aload 19
    //   769: astore 26
    //   771: iload 8
    //   773: istore 12
    //   775: aload 31
    //   777: getstatic 498	com/amazonaws/util/AWSRequestMetrics$Field:aul	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   780: invokevirtual 275	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;)V
    //   783: aload 23
    //   785: aload_1
    //   786: aload 35
    //   788: invokeinterface 503 3 0
    //   793: aload 23
    //   795: astore 27
    //   797: lload 15
    //   799: lstore 17
    //   801: aload 19
    //   803: astore 20
    //   805: iload 8
    //   807: istore 9
    //   809: aload 19
    //   811: astore 25
    //   813: iload 8
    //   815: istore 10
    //   817: aload 19
    //   819: astore 26
    //   821: iload 8
    //   823: istore 12
    //   825: aload 31
    //   827: getstatic 498	com/amazonaws/util/AWSRequestMetrics$Field:aul	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   830: invokevirtual 280	com/amazonaws/util/AWSRequestMetrics:b	(Lcom/amazonaws/metrics/MetricType;)V
    //   833: aload 23
    //   835: astore 27
    //   837: lload 15
    //   839: lstore 17
    //   841: aload 19
    //   843: astore 20
    //   845: iload 8
    //   847: istore 9
    //   849: aload 19
    //   851: astore 25
    //   853: iload 8
    //   855: istore 10
    //   857: aload 19
    //   859: astore 26
    //   861: iload 8
    //   863: istore 12
    //   865: getstatic 27	com/amazonaws/http/AmazonHttpClient:anQ	Lorg/apache/commons/logging/Log;
    //   868: invokeinterface 152 1 0
    //   873: ifeq +63 -> 936
    //   876: aload 23
    //   878: astore 27
    //   880: lload 15
    //   882: lstore 17
    //   884: aload 19
    //   886: astore 20
    //   888: iload 8
    //   890: istore 9
    //   892: aload 19
    //   894: astore 25
    //   896: iload 8
    //   898: istore 10
    //   900: aload 19
    //   902: astore 26
    //   904: iload 8
    //   906: istore 12
    //   908: getstatic 27	com/amazonaws/http/AmazonHttpClient:anQ	Lorg/apache/commons/logging/Log;
    //   911: new 116	java/lang/StringBuilder
    //   914: dup
    //   915: ldc_w 505
    //   918: invokespecial 121	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   921: aload_1
    //   922: invokevirtual 506	java/lang/Object:toString	()Ljava/lang/String;
    //   925: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   928: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   931: invokeinterface 166 2 0
    //   936: aload 23
    //   938: astore 27
    //   940: lload 15
    //   942: lstore 17
    //   944: aload 19
    //   946: astore 20
    //   948: iload 8
    //   950: istore 9
    //   952: aload 19
    //   954: astore 25
    //   956: iload 8
    //   958: istore 10
    //   960: aload 19
    //   962: astore 26
    //   964: iload 8
    //   966: istore 12
    //   968: aload_0
    //   969: getfield 44	com/amazonaws/http/AmazonHttpClient:anS	Lcom/amazonaws/ClientConfiguration;
    //   972: astore 28
    //   974: aload 23
    //   976: astore 27
    //   978: lload 15
    //   980: lstore 17
    //   982: aload 19
    //   984: astore 20
    //   986: iload 8
    //   988: istore 9
    //   990: aload 19
    //   992: astore 25
    //   994: iload 8
    //   996: istore 10
    //   998: aload 19
    //   1000: astore 26
    //   1002: iload 8
    //   1004: istore 12
    //   1006: aload_1
    //   1007: invokeinterface 364 1 0
    //   1012: invokevirtual 507	java/net/URI:toString	()Ljava/lang/String;
    //   1015: aload_1
    //   1016: invokeinterface 455 1 0
    //   1021: iconst_1
    //   1022: invokestatic 512	com/amazonaws/util/HttpUtils:a	(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   1025: astore 24
    //   1027: aload 23
    //   1029: astore 27
    //   1031: lload 15
    //   1033: lstore 17
    //   1035: aload 19
    //   1037: astore 20
    //   1039: iload 8
    //   1041: istore 9
    //   1043: aload 19
    //   1045: astore 25
    //   1047: iload 8
    //   1049: istore 10
    //   1051: aload 19
    //   1053: astore 26
    //   1055: iload 8
    //   1057: istore 12
    //   1059: aload_1
    //   1060: invokestatic 516	com/amazonaws/util/HttpUtils:o	(Lcom/amazonaws/Request;)Ljava/lang/String;
    //   1063: astore 37
    //   1065: aload 23
    //   1067: astore 27
    //   1069: lload 15
    //   1071: lstore 17
    //   1073: aload 19
    //   1075: astore 20
    //   1077: iload 8
    //   1079: istore 9
    //   1081: aload 19
    //   1083: astore 25
    //   1085: iload 8
    //   1087: istore 10
    //   1089: aload 19
    //   1091: astore 26
    //   1093: iload 8
    //   1095: istore 12
    //   1097: aload_1
    //   1098: invokeinterface 520 1 0
    //   1103: astore 29
    //   1105: aload 23
    //   1107: astore 27
    //   1109: lload 15
    //   1111: lstore 17
    //   1113: aload 19
    //   1115: astore 20
    //   1117: iload 8
    //   1119: istore 9
    //   1121: aload 19
    //   1123: astore 25
    //   1125: iload 8
    //   1127: istore 10
    //   1129: aload 19
    //   1131: astore 26
    //   1133: iload 8
    //   1135: istore 12
    //   1137: aload_1
    //   1138: invokeinterface 316 1 0
    //   1143: ifnull +1555 -> 2698
    //   1146: iconst_1
    //   1147: istore 5
    //   1149: aload 23
    //   1151: astore 27
    //   1153: lload 15
    //   1155: lstore 17
    //   1157: aload 19
    //   1159: astore 20
    //   1161: iload 8
    //   1163: istore 9
    //   1165: aload 19
    //   1167: astore 25
    //   1169: iload 8
    //   1171: istore 10
    //   1173: aload 19
    //   1175: astore 26
    //   1177: iload 8
    //   1179: istore 12
    //   1181: aload 29
    //   1183: getstatic 526	com/amazonaws/http/HttpMethodName:anY	Lcom/amazonaws/http/HttpMethodName;
    //   1186: if_acmpne +1518 -> 2704
    //   1189: iconst_1
    //   1190: istore 6
    //   1192: goto +3023 -> 4215
    //   1195: aload 37
    //   1197: ifnull +2993 -> 4190
    //   1200: iload 5
    //   1202: ifeq +2988 -> 4190
    //   1205: aload 23
    //   1207: astore 27
    //   1209: lload 15
    //   1211: lstore 17
    //   1213: aload 19
    //   1215: astore 20
    //   1217: iload 8
    //   1219: istore 9
    //   1221: aload 19
    //   1223: astore 25
    //   1225: iload 8
    //   1227: istore 10
    //   1229: aload 19
    //   1231: astore 26
    //   1233: iload 8
    //   1235: istore 12
    //   1237: new 116	java/lang/StringBuilder
    //   1240: dup
    //   1241: invokespecial 456	java/lang/StringBuilder:<init>	()V
    //   1244: aload 24
    //   1246: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1249: ldc_w 528
    //   1252: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1255: aload 37
    //   1257: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1260: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1263: astore 24
    //   1265: aload 23
    //   1267: astore 27
    //   1269: lload 15
    //   1271: lstore 17
    //   1273: aload 19
    //   1275: astore 20
    //   1277: iload 8
    //   1279: istore 9
    //   1281: aload 19
    //   1283: astore 25
    //   1285: iload 8
    //   1287: istore 10
    //   1289: aload 19
    //   1291: astore 26
    //   1293: iload 8
    //   1295: istore 12
    //   1297: new 425	java/util/HashMap
    //   1300: dup
    //   1301: invokespecial 529	java/util/HashMap:<init>	()V
    //   1304: astore 36
    //   1306: aload 23
    //   1308: astore 27
    //   1310: lload 15
    //   1312: lstore 17
    //   1314: aload 19
    //   1316: astore 20
    //   1318: iload 8
    //   1320: istore 9
    //   1322: aload 19
    //   1324: astore 25
    //   1326: iload 8
    //   1328: istore 10
    //   1330: aload 19
    //   1332: astore 26
    //   1334: iload 8
    //   1336: istore 12
    //   1338: aload 36
    //   1340: aload_1
    //   1341: aload 4
    //   1343: aload 28
    //   1345: invokestatic 532	com/amazonaws/http/HttpRequestFactory:a	(Ljava/util/Map;Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;Lcom/amazonaws/ClientConfiguration;)V
    //   1348: aload 23
    //   1350: astore 27
    //   1352: lload 15
    //   1354: lstore 17
    //   1356: aload 19
    //   1358: astore 20
    //   1360: iload 8
    //   1362: istore 9
    //   1364: aload 19
    //   1366: astore 25
    //   1368: iload 8
    //   1370: istore 10
    //   1372: aload 19
    //   1374: astore 26
    //   1376: iload 8
    //   1378: istore 12
    //   1380: aload_1
    //   1381: invokeinterface 316 1 0
    //   1386: astore 30
    //   1388: aload 29
    //   1390: astore 28
    //   1392: aload 23
    //   1394: astore 27
    //   1396: lload 15
    //   1398: lstore 17
    //   1400: aload 19
    //   1402: astore 20
    //   1404: iload 8
    //   1406: istore 9
    //   1408: aload 19
    //   1410: astore 25
    //   1412: iload 8
    //   1414: istore 10
    //   1416: aload 19
    //   1418: astore 26
    //   1420: iload 8
    //   1422: istore 12
    //   1424: aload 29
    //   1426: getstatic 535	com/amazonaws/http/HttpMethodName:aoc	Lcom/amazonaws/http/HttpMethodName;
    //   1429: if_acmpne +89 -> 1518
    //   1432: aload 23
    //   1434: astore 27
    //   1436: lload 15
    //   1438: lstore 17
    //   1440: aload 19
    //   1442: astore 20
    //   1444: iload 8
    //   1446: istore 9
    //   1448: aload 19
    //   1450: astore 25
    //   1452: iload 8
    //   1454: istore 10
    //   1456: aload 19
    //   1458: astore 26
    //   1460: iload 8
    //   1462: istore 12
    //   1464: getstatic 526	com/amazonaws/http/HttpMethodName:anY	Lcom/amazonaws/http/HttpMethodName;
    //   1467: astore 28
    //   1469: aload 23
    //   1471: astore 27
    //   1473: lload 15
    //   1475: lstore 17
    //   1477: aload 19
    //   1479: astore 20
    //   1481: iload 8
    //   1483: istore 9
    //   1485: aload 19
    //   1487: astore 25
    //   1489: iload 8
    //   1491: istore 10
    //   1493: aload 19
    //   1495: astore 26
    //   1497: iload 8
    //   1499: istore 12
    //   1501: aload 36
    //   1503: ldc_w 537
    //   1506: getstatic 535	com/amazonaws/http/HttpMethodName:aoc	Lcom/amazonaws/http/HttpMethodName;
    //   1509: invokevirtual 538	com/amazonaws/http/HttpMethodName:toString	()Ljava/lang/String;
    //   1512: invokeinterface 542 3 0
    //   1517: pop
    //   1518: aload 23
    //   1520: astore 27
    //   1522: lload 15
    //   1524: lstore 17
    //   1526: aload 19
    //   1528: astore 20
    //   1530: iload 8
    //   1532: istore 9
    //   1534: aload 19
    //   1536: astore 25
    //   1538: iload 8
    //   1540: istore 10
    //   1542: aload 19
    //   1544: astore 26
    //   1546: iload 8
    //   1548: istore 12
    //   1550: aload 28
    //   1552: getstatic 526	com/amazonaws/http/HttpMethodName:anY	Lcom/amazonaws/http/HttpMethodName;
    //   1555: if_acmpne +2628 -> 4183
    //   1558: aload 23
    //   1560: astore 27
    //   1562: lload 15
    //   1564: lstore 17
    //   1566: aload 19
    //   1568: astore 20
    //   1570: iload 8
    //   1572: istore 9
    //   1574: aload 19
    //   1576: astore 25
    //   1578: iload 8
    //   1580: istore 10
    //   1582: aload 19
    //   1584: astore 26
    //   1586: iload 8
    //   1588: istore 12
    //   1590: aload_1
    //   1591: invokeinterface 316 1 0
    //   1596: ifnonnull +2587 -> 4183
    //   1599: aload 37
    //   1601: ifnull +2582 -> 4183
    //   1604: aload 23
    //   1606: astore 27
    //   1608: lload 15
    //   1610: lstore 17
    //   1612: aload 19
    //   1614: astore 20
    //   1616: iload 8
    //   1618: istore 9
    //   1620: aload 19
    //   1622: astore 25
    //   1624: iload 8
    //   1626: istore 10
    //   1628: aload 19
    //   1630: astore 26
    //   1632: iload 8
    //   1634: istore 12
    //   1636: aload 37
    //   1638: getstatic 548	com/amazonaws/util/StringUtils:avd	Ljava/nio/charset/Charset;
    //   1641: invokevirtual 552	java/lang/String:getBytes	(Ljava/nio/charset/Charset;)[B
    //   1644: astore 30
    //   1646: aload 23
    //   1648: astore 27
    //   1650: lload 15
    //   1652: lstore 17
    //   1654: aload 19
    //   1656: astore 20
    //   1658: iload 8
    //   1660: istore 9
    //   1662: aload 19
    //   1664: astore 25
    //   1666: iload 8
    //   1668: istore 10
    //   1670: aload 19
    //   1672: astore 26
    //   1674: iload 8
    //   1676: istore 12
    //   1678: new 554	java/io/ByteArrayInputStream
    //   1681: dup
    //   1682: aload 30
    //   1684: invokespecial 557	java/io/ByteArrayInputStream:<init>	([B)V
    //   1687: astore 29
    //   1689: aload 23
    //   1691: astore 27
    //   1693: lload 15
    //   1695: lstore 17
    //   1697: aload 19
    //   1699: astore 20
    //   1701: iload 8
    //   1703: istore 9
    //   1705: aload 19
    //   1707: astore 25
    //   1709: iload 8
    //   1711: istore 10
    //   1713: aload 19
    //   1715: astore 26
    //   1717: iload 8
    //   1719: istore 12
    //   1721: aload 36
    //   1723: ldc_w 559
    //   1726: aload 30
    //   1728: arraylength
    //   1729: invokestatic 563	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   1732: invokeinterface 542 3 0
    //   1737: pop
    //   1738: aload 23
    //   1740: astore 27
    //   1742: lload 15
    //   1744: lstore 17
    //   1746: aload 19
    //   1748: astore 20
    //   1750: iload 8
    //   1752: istore 9
    //   1754: aload 19
    //   1756: astore 25
    //   1758: iload 8
    //   1760: istore 10
    //   1762: aload 19
    //   1764: astore 26
    //   1766: iload 8
    //   1768: istore 12
    //   1770: aload 36
    //   1772: ldc_w 565
    //   1775: invokeinterface 69 2 0
    //   1780: ifnonnull +49 -> 1829
    //   1783: aload 23
    //   1785: astore 27
    //   1787: lload 15
    //   1789: lstore 17
    //   1791: aload 19
    //   1793: astore 20
    //   1795: iload 8
    //   1797: istore 9
    //   1799: aload 19
    //   1801: astore 25
    //   1803: iload 8
    //   1805: istore 10
    //   1807: aload 19
    //   1809: astore 26
    //   1811: iload 8
    //   1813: istore 12
    //   1815: aload 36
    //   1817: ldc_w 565
    //   1820: ldc_w 567
    //   1823: invokeinterface 542 3 0
    //   1828: pop
    //   1829: aload 23
    //   1831: astore 27
    //   1833: lload 15
    //   1835: lstore 17
    //   1837: aload 19
    //   1839: astore 20
    //   1841: iload 8
    //   1843: istore 9
    //   1845: aload 19
    //   1847: astore 25
    //   1849: iload 8
    //   1851: istore 10
    //   1853: aload 19
    //   1855: astore 26
    //   1857: iload 8
    //   1859: istore 12
    //   1861: new 569	com/amazonaws/http/HttpRequest
    //   1864: dup
    //   1865: aload 28
    //   1867: invokevirtual 538	com/amazonaws/http/HttpMethodName:toString	()Ljava/lang/String;
    //   1870: aload 24
    //   1872: invokestatic 470	java/net/URI:create	(Ljava/lang/String;)Ljava/net/URI;
    //   1875: aload 36
    //   1877: aload 29
    //   1879: invokespecial 572	com/amazonaws/http/HttpRequest:<init>	(Ljava/lang/String;Ljava/net/URI;Ljava/util/Map;Ljava/io/InputStream;)V
    //   1882: astore 24
    //   1884: aload 23
    //   1886: astore 27
    //   1888: lload 15
    //   1890: lstore 17
    //   1892: aload 19
    //   1894: astore 20
    //   1896: iload 8
    //   1898: istore 9
    //   1900: aload 19
    //   1902: astore 25
    //   1904: iload 8
    //   1906: istore 10
    //   1908: aload 19
    //   1910: astore 26
    //   1912: iload 8
    //   1914: istore 12
    //   1916: aload 24
    //   1918: aload_1
    //   1919: invokeinterface 575 1 0
    //   1924: putfield 578	com/amazonaws/http/HttpRequest:aof	Z
    //   1927: aload 19
    //   1929: astore 20
    //   1931: iload 8
    //   1933: istore 9
    //   1935: aload 19
    //   1937: astore 25
    //   1939: iload 8
    //   1941: istore 10
    //   1943: aload 19
    //   1945: astore 27
    //   1947: aload 22
    //   1949: astore 21
    //   1951: iload 8
    //   1953: istore 11
    //   1955: aload 19
    //   1957: astore 26
    //   1959: iload 8
    //   1961: istore 12
    //   1963: aload 31
    //   1965: getstatic 581	com/amazonaws/util/AWSRequestMetrics$Field:aui	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   1968: invokevirtual 275	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;)V
    //   1971: aload_0
    //   1972: getfield 46	com/amazonaws/http/AmazonHttpClient:anR	Lcom/amazonaws/http/HttpClient;
    //   1975: aload 24
    //   1977: invokeinterface 586 2 0
    //   1982: astore 20
    //   1984: aload 20
    //   1986: astore 19
    //   1988: aload 19
    //   1990: astore 20
    //   1992: iload 8
    //   1994: istore 9
    //   1996: aload 19
    //   1998: astore 25
    //   2000: iload 8
    //   2002: istore 10
    //   2004: aload 19
    //   2006: astore 27
    //   2008: aload 22
    //   2010: astore 21
    //   2012: iload 8
    //   2014: istore 11
    //   2016: aload 19
    //   2018: astore 26
    //   2020: iload 8
    //   2022: istore 12
    //   2024: aload 31
    //   2026: getstatic 581	com/amazonaws/util/AWSRequestMetrics$Field:aui	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   2029: invokevirtual 280	com/amazonaws/util/AWSRequestMetrics:b	(Lcom/amazonaws/metrics/MetricType;)V
    //   2032: aload 19
    //   2034: astore 20
    //   2036: iload 8
    //   2038: istore 9
    //   2040: aload 19
    //   2042: astore 25
    //   2044: iload 8
    //   2046: istore 10
    //   2048: aload 19
    //   2050: astore 27
    //   2052: aload 22
    //   2054: astore 21
    //   2056: iload 8
    //   2058: istore 11
    //   2060: aload 19
    //   2062: astore 26
    //   2064: iload 8
    //   2066: istore 12
    //   2068: aload 19
    //   2070: getfield 194	com/amazonaws/http/HttpResponse:statusCode	I
    //   2073: istore 5
    //   2075: iload 5
    //   2077: sipush 200
    //   2080: if_icmplt +738 -> 2818
    //   2083: iload 5
    //   2085: sipush 300
    //   2088: if_icmpge +730 -> 2818
    //   2091: iconst_1
    //   2092: istore 5
    //   2094: iload 5
    //   2096: ifeq +744 -> 2840
    //   2099: aload 19
    //   2101: astore 20
    //   2103: iload 8
    //   2105: istore 9
    //   2107: aload 19
    //   2109: astore 25
    //   2111: iload 8
    //   2113: istore 10
    //   2115: aload 19
    //   2117: astore 27
    //   2119: aload 22
    //   2121: astore 21
    //   2123: iload 8
    //   2125: istore 11
    //   2127: aload 19
    //   2129: astore 26
    //   2131: iload 8
    //   2133: istore 12
    //   2135: aload 31
    //   2137: getstatic 589	com/amazonaws/util/AWSRequestMetrics$Field:auy	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   2140: aload 19
    //   2142: getfield 194	com/amazonaws/http/HttpResponse:statusCode	I
    //   2145: invokestatic 594	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2148: invokevirtual 296	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    //   2151: aload 19
    //   2153: astore 20
    //   2155: iload 8
    //   2157: istore 9
    //   2159: aload 19
    //   2161: astore 25
    //   2163: iload 8
    //   2165: istore 10
    //   2167: aload 19
    //   2169: astore 27
    //   2171: aload 22
    //   2173: astore 21
    //   2175: iload 8
    //   2177: istore 11
    //   2179: aload 19
    //   2181: astore 26
    //   2183: iload 8
    //   2185: istore 12
    //   2187: aload_2
    //   2188: invokeinterface 597 1 0
    //   2193: istore 8
    //   2195: aload 19
    //   2197: astore 20
    //   2199: iload 8
    //   2201: istore 9
    //   2203: aload 19
    //   2205: astore 25
    //   2207: iload 8
    //   2209: istore 10
    //   2211: aload 19
    //   2213: astore 27
    //   2215: aload 22
    //   2217: astore 21
    //   2219: iload 8
    //   2221: istore 11
    //   2223: aload 19
    //   2225: astore 26
    //   2227: iload 8
    //   2229: istore 12
    //   2231: new 599	com/amazonaws/Response
    //   2234: dup
    //   2235: aload_2
    //   2236: aload 19
    //   2238: aload 4
    //   2240: invokestatic 601	com/amazonaws/http/AmazonHttpClient:a	(Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    //   2243: aload 19
    //   2245: invokespecial 604	com/amazonaws/Response:<init>	(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    //   2248: astore 22
    //   2250: iload 8
    //   2252: ifne +24 -> 2276
    //   2255: aload 19
    //   2257: ifnull +19 -> 2276
    //   2260: aload 19
    //   2262: getfield 608	com/amazonaws/http/HttpResponse:aoh	Ljava/io/InputStream;
    //   2265: ifnull +11 -> 2276
    //   2268: aload 19
    //   2270: getfield 608	com/amazonaws/http/HttpResponse:aoh	Ljava/io/InputStream;
    //   2273: invokevirtual 611	java/io/InputStream:close	()V
    //   2276: aload 22
    //   2278: areturn
    //   2279: astore 23
    //   2281: aload 24
    //   2283: astore 27
    //   2285: lload 13
    //   2287: lstore 17
    //   2289: aload 19
    //   2291: astore 20
    //   2293: iload 8
    //   2295: istore 9
    //   2297: aload 19
    //   2299: astore 25
    //   2301: iload 8
    //   2303: istore 10
    //   2305: aload 19
    //   2307: astore 26
    //   2309: iload 8
    //   2311: istore 12
    //   2313: aload 31
    //   2315: getstatic 482	com/amazonaws/util/AWSRequestMetrics$Field:auv	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   2318: invokevirtual 280	com/amazonaws/util/AWSRequestMetrics:b	(Lcom/amazonaws/metrics/MetricType;)V
    //   2321: aload 24
    //   2323: astore 27
    //   2325: lload 13
    //   2327: lstore 17
    //   2329: aload 19
    //   2331: astore 20
    //   2333: iload 8
    //   2335: istore 9
    //   2337: aload 19
    //   2339: astore 25
    //   2341: iload 8
    //   2343: istore 10
    //   2345: aload 19
    //   2347: astore 26
    //   2349: iload 8
    //   2351: istore 12
    //   2353: aload 23
    //   2355: athrow
    //   2356: astore 24
    //   2358: iload 8
    //   2360: istore 11
    //   2362: lload 17
    //   2364: lstore 15
    //   2366: aload 22
    //   2368: astore 26
    //   2370: aload 27
    //   2372: astore 23
    //   2374: aload 19
    //   2376: astore 27
    //   2378: aload 21
    //   2380: astore 25
    //   2382: aload 27
    //   2384: astore 20
    //   2386: iload 11
    //   2388: istore 9
    //   2390: getstatic 32	com/amazonaws/http/AmazonHttpClient:alS	Lorg/apache/commons/logging/Log;
    //   2393: invokeinterface 152 1 0
    //   2398: ifeq +42 -> 2440
    //   2401: aload 27
    //   2403: astore 20
    //   2405: iload 11
    //   2407: istore 9
    //   2409: getstatic 32	com/amazonaws/http/AmazonHttpClient:alS	Lorg/apache/commons/logging/Log;
    //   2412: new 116	java/lang/StringBuilder
    //   2415: dup
    //   2416: ldc_w 613
    //   2419: invokespecial 121	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2422: aload 24
    //   2424: invokevirtual 614	java/io/IOException:getMessage	()Ljava/lang/String;
    //   2427: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2430: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2433: aload 24
    //   2435: invokeinterface 616 3 0
    //   2440: aload 27
    //   2442: astore 20
    //   2444: iload 11
    //   2446: istore 9
    //   2448: aload 31
    //   2450: getstatic 307	com/amazonaws/util/AWSRequestMetrics$Field:auh	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   2453: invokevirtual 310	com/amazonaws/util/AWSRequestMetrics:c	(Lcom/amazonaws/metrics/MetricType;)V
    //   2456: aload 27
    //   2458: astore 20
    //   2460: iload 11
    //   2462: istore 9
    //   2464: aload 31
    //   2466: getstatic 307	com/amazonaws/util/AWSRequestMetrics$Field:auh	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   2469: aload 24
    //   2471: invokevirtual 296	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    //   2474: aload 27
    //   2476: astore 20
    //   2478: iload 11
    //   2480: istore 9
    //   2482: aload 31
    //   2484: getstatic 293	com/amazonaws/util/AWSRequestMetrics$Field:aud	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   2487: aconst_null
    //   2488: invokevirtual 296	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    //   2491: aload 27
    //   2493: astore 20
    //   2495: iload 11
    //   2497: istore 9
    //   2499: new 181	com/amazonaws/AmazonClientException
    //   2502: dup
    //   2503: new 116	java/lang/StringBuilder
    //   2506: dup
    //   2507: ldc_w 613
    //   2510: invokespecial 121	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2513: aload 24
    //   2515: invokevirtual 614	java/io/IOException:getMessage	()Ljava/lang/String;
    //   2518: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2521: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2524: aload 24
    //   2526: invokespecial 185	com/amazonaws/AmazonClientException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   2529: astore 19
    //   2531: aload 27
    //   2533: astore 20
    //   2535: iload 11
    //   2537: istore 9
    //   2539: aload_0
    //   2540: aload 25
    //   2542: getfield 619	com/amazonaws/http/HttpRequest:amE	Ljava/io/InputStream;
    //   2545: aload 19
    //   2547: iload 7
    //   2549: aload_0
    //   2550: getfield 44	com/amazonaws/http/AmazonHttpClient:anS	Lcom/amazonaws/ClientConfiguration;
    //   2553: getfield 486	com/amazonaws/ClientConfiguration:amj	Lcom/amazonaws/retry/RetryPolicy;
    //   2556: invokespecial 621	com/amazonaws/http/AmazonHttpClient:a	(Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z
    //   2559: ifne +1407 -> 3966
    //   2562: aload 27
    //   2564: astore 20
    //   2566: iload 11
    //   2568: istore 9
    //   2570: aload 19
    //   2572: athrow
    //   2573: astore_1
    //   2574: iload 9
    //   2576: ifne +24 -> 2600
    //   2579: aload 20
    //   2581: ifnull +19 -> 2600
    //   2584: aload 20
    //   2586: getfield 608	com/amazonaws/http/HttpResponse:aoh	Ljava/io/InputStream;
    //   2589: ifnull +11 -> 2600
    //   2592: aload 20
    //   2594: getfield 608	com/amazonaws/http/HttpResponse:aoh	Ljava/io/InputStream;
    //   2597: invokevirtual 611	java/io/InputStream:close	()V
    //   2600: aload_1
    //   2601: athrow
    //   2602: astore 24
    //   2604: aload 23
    //   2606: astore 27
    //   2608: lload 15
    //   2610: lstore 17
    //   2612: aload 19
    //   2614: astore 20
    //   2616: iload 8
    //   2618: istore 9
    //   2620: aload 19
    //   2622: astore 25
    //   2624: iload 8
    //   2626: istore 10
    //   2628: aload 19
    //   2630: astore 26
    //   2632: iload 8
    //   2634: istore 12
    //   2636: aload 31
    //   2638: getstatic 498	com/amazonaws/util/AWSRequestMetrics$Field:aul	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   2641: invokevirtual 280	com/amazonaws/util/AWSRequestMetrics:b	(Lcom/amazonaws/metrics/MetricType;)V
    //   2644: aload 23
    //   2646: astore 27
    //   2648: lload 15
    //   2650: lstore 17
    //   2652: aload 19
    //   2654: astore 20
    //   2656: iload 8
    //   2658: istore 9
    //   2660: aload 19
    //   2662: astore 25
    //   2664: iload 8
    //   2666: istore 10
    //   2668: aload 19
    //   2670: astore 26
    //   2672: iload 8
    //   2674: istore 12
    //   2676: aload 24
    //   2678: athrow
    //   2679: astore_1
    //   2680: aload 25
    //   2682: astore 20
    //   2684: iload 10
    //   2686: istore 9
    //   2688: aload_1
    //   2689: aload 31
    //   2691: invokestatic 623	com/amazonaws/http/AmazonHttpClient:a	(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;
    //   2694: checkcast 52	java/lang/RuntimeException
    //   2697: athrow
    //   2698: iconst_0
    //   2699: istore 5
    //   2701: goto -1552 -> 1149
    //   2704: iconst_0
    //   2705: istore 6
    //   2707: goto +1508 -> 4215
    //   2710: iconst_0
    //   2711: istore 5
    //   2713: goto -1518 -> 1195
    //   2716: astore 28
    //   2718: aload 19
    //   2720: astore 20
    //   2722: iload 8
    //   2724: istore 9
    //   2726: aload 19
    //   2728: astore 25
    //   2730: iload 8
    //   2732: istore 10
    //   2734: aload 19
    //   2736: astore 27
    //   2738: aload 22
    //   2740: astore 21
    //   2742: iload 8
    //   2744: istore 11
    //   2746: aload 19
    //   2748: astore 26
    //   2750: iload 8
    //   2752: istore 12
    //   2754: aload 31
    //   2756: getstatic 581	com/amazonaws/util/AWSRequestMetrics$Field:aui	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   2759: invokevirtual 280	com/amazonaws/util/AWSRequestMetrics:b	(Lcom/amazonaws/metrics/MetricType;)V
    //   2762: aload 19
    //   2764: astore 20
    //   2766: iload 8
    //   2768: istore 9
    //   2770: aload 19
    //   2772: astore 25
    //   2774: iload 8
    //   2776: istore 10
    //   2778: aload 19
    //   2780: astore 27
    //   2782: aload 22
    //   2784: astore 21
    //   2786: iload 8
    //   2788: istore 11
    //   2790: aload 19
    //   2792: astore 26
    //   2794: iload 8
    //   2796: istore 12
    //   2798: aload 28
    //   2800: athrow
    //   2801: astore 19
    //   2803: aload 24
    //   2805: astore 25
    //   2807: aload 21
    //   2809: astore 26
    //   2811: aload 19
    //   2813: astore 24
    //   2815: goto -433 -> 2382
    //   2818: iconst_0
    //   2819: istore 5
    //   2821: goto -727 -> 2094
    //   2824: astore_1
    //   2825: getstatic 32	com/amazonaws/http/AmazonHttpClient:alS	Lorg/apache/commons/logging/Log;
    //   2828: ldc_w 625
    //   2831: aload_1
    //   2832: invokeinterface 134 3 0
    //   2837: aload 22
    //   2839: areturn
    //   2840: aload 19
    //   2842: astore 20
    //   2844: iload 8
    //   2846: istore 9
    //   2848: aload 19
    //   2850: astore 25
    //   2852: iload 8
    //   2854: istore 10
    //   2856: aload 19
    //   2858: astore 27
    //   2860: aload 22
    //   2862: astore 21
    //   2864: iload 8
    //   2866: istore 11
    //   2868: aload 19
    //   2870: astore 26
    //   2872: iload 8
    //   2874: istore 12
    //   2876: aload 19
    //   2878: getfield 194	com/amazonaws/http/HttpResponse:statusCode	I
    //   2881: istore 5
    //   2883: aload 19
    //   2885: astore 20
    //   2887: iload 8
    //   2889: istore 9
    //   2891: aload 19
    //   2893: astore 25
    //   2895: iload 8
    //   2897: istore 10
    //   2899: aload 19
    //   2901: astore 27
    //   2903: aload 22
    //   2905: astore 21
    //   2907: iload 8
    //   2909: istore 11
    //   2911: aload 19
    //   2913: astore 26
    //   2915: iload 8
    //   2917: istore 12
    //   2919: aload 19
    //   2921: getfield 61	com/amazonaws/http/HttpResponse:headers	Ljava/util/Map;
    //   2924: ldc_w 627
    //   2927: invokeinterface 69 2 0
    //   2932: checkcast 71	java/lang/String
    //   2935: astore 28
    //   2937: iload 5
    //   2939: sipush 307
    //   2942: if_icmpne +493 -> 3435
    //   2945: aload 28
    //   2947: ifnull +488 -> 3435
    //   2950: aload 19
    //   2952: astore 20
    //   2954: iload 8
    //   2956: istore 9
    //   2958: aload 19
    //   2960: astore 25
    //   2962: iload 8
    //   2964: istore 10
    //   2966: aload 19
    //   2968: astore 27
    //   2970: aload 22
    //   2972: astore 21
    //   2974: iload 8
    //   2976: istore 11
    //   2978: aload 19
    //   2980: astore 26
    //   2982: iload 8
    //   2984: istore 12
    //   2986: aload 28
    //   2988: invokevirtual 75	java/lang/String:isEmpty	()Z
    //   2991: ifne +444 -> 3435
    //   2994: iconst_1
    //   2995: istore 5
    //   2997: iload 5
    //   2999: ifeq +442 -> 3441
    //   3002: aload 19
    //   3004: astore 20
    //   3006: iload 8
    //   3008: istore 9
    //   3010: aload 19
    //   3012: astore 25
    //   3014: iload 8
    //   3016: istore 10
    //   3018: aload 19
    //   3020: astore 27
    //   3022: aload 22
    //   3024: astore 21
    //   3026: iload 8
    //   3028: istore 11
    //   3030: aload 19
    //   3032: astore 26
    //   3034: iload 8
    //   3036: istore 12
    //   3038: aload 19
    //   3040: getfield 61	com/amazonaws/http/HttpResponse:headers	Ljava/util/Map;
    //   3043: ldc_w 627
    //   3046: invokeinterface 69 2 0
    //   3051: checkcast 71	java/lang/String
    //   3054: astore 28
    //   3056: aload 19
    //   3058: astore 20
    //   3060: iload 8
    //   3062: istore 9
    //   3064: aload 19
    //   3066: astore 25
    //   3068: iload 8
    //   3070: istore 10
    //   3072: aload 19
    //   3074: astore 27
    //   3076: aload 22
    //   3078: astore 21
    //   3080: iload 8
    //   3082: istore 11
    //   3084: aload 19
    //   3086: astore 26
    //   3088: iload 8
    //   3090: istore 12
    //   3092: getstatic 32	com/amazonaws/http/AmazonHttpClient:alS	Lorg/apache/commons/logging/Log;
    //   3095: new 116	java/lang/StringBuilder
    //   3098: dup
    //   3099: ldc_w 629
    //   3102: invokespecial 121	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   3105: aload 28
    //   3107: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3110: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   3113: invokeinterface 166 2 0
    //   3118: aload 19
    //   3120: astore 20
    //   3122: iload 8
    //   3124: istore 9
    //   3126: aload 19
    //   3128: astore 25
    //   3130: iload 8
    //   3132: istore 10
    //   3134: aload 19
    //   3136: astore 27
    //   3138: aload 22
    //   3140: astore 21
    //   3142: iload 8
    //   3144: istore 11
    //   3146: aload 19
    //   3148: astore 26
    //   3150: iload 8
    //   3152: istore 12
    //   3154: aload 28
    //   3156: invokestatic 470	java/net/URI:create	(Ljava/lang/String;)Ljava/net/URI;
    //   3159: astore 22
    //   3161: aload 19
    //   3163: astore 20
    //   3165: iload 8
    //   3167: istore 9
    //   3169: aload 19
    //   3171: astore 25
    //   3173: iload 8
    //   3175: istore 10
    //   3177: aload 19
    //   3179: astore 27
    //   3181: aload 22
    //   3183: astore 21
    //   3185: iload 8
    //   3187: istore 11
    //   3189: aload 19
    //   3191: astore 26
    //   3193: iload 8
    //   3195: istore 12
    //   3197: aload_1
    //   3198: aconst_null
    //   3199: invokeinterface 473 2 0
    //   3204: aload 19
    //   3206: astore 20
    //   3208: iload 8
    //   3210: istore 9
    //   3212: aload 19
    //   3214: astore 25
    //   3216: iload 8
    //   3218: istore 10
    //   3220: aload 19
    //   3222: astore 27
    //   3224: aload 22
    //   3226: astore 21
    //   3228: iload 8
    //   3230: istore 11
    //   3232: aload 19
    //   3234: astore 26
    //   3236: iload 8
    //   3238: istore 12
    //   3240: aload_1
    //   3241: aconst_null
    //   3242: invokeinterface 479 2 0
    //   3247: aload 19
    //   3249: astore 20
    //   3251: iload 8
    //   3253: istore 9
    //   3255: aload 19
    //   3257: astore 25
    //   3259: iload 8
    //   3261: istore 10
    //   3263: aload 19
    //   3265: astore 27
    //   3267: aload 22
    //   3269: astore 21
    //   3271: iload 8
    //   3273: istore 11
    //   3275: aload 19
    //   3277: astore 26
    //   3279: iload 8
    //   3281: istore 12
    //   3283: aload 31
    //   3285: getstatic 589	com/amazonaws/util/AWSRequestMetrics$Field:auy	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   3288: aload 19
    //   3290: getfield 194	com/amazonaws/http/HttpResponse:statusCode	I
    //   3293: invokestatic 594	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   3296: invokevirtual 296	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    //   3299: aload 19
    //   3301: astore 20
    //   3303: iload 8
    //   3305: istore 9
    //   3307: aload 19
    //   3309: astore 25
    //   3311: iload 8
    //   3313: istore 10
    //   3315: aload 19
    //   3317: astore 27
    //   3319: aload 22
    //   3321: astore 21
    //   3323: iload 8
    //   3325: istore 11
    //   3327: aload 19
    //   3329: astore 26
    //   3331: iload 8
    //   3333: istore 12
    //   3335: aload 31
    //   3337: getstatic 632	com/amazonaws/util/AWSRequestMetrics$Field:auj	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   3340: aload 28
    //   3342: invokevirtual 296	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    //   3345: aload 19
    //   3347: astore 20
    //   3349: iload 8
    //   3351: istore 9
    //   3353: aload 19
    //   3355: astore 25
    //   3357: iload 8
    //   3359: istore 10
    //   3361: aload 19
    //   3363: astore 27
    //   3365: aload 22
    //   3367: astore 21
    //   3369: iload 8
    //   3371: istore 11
    //   3373: aload 19
    //   3375: astore 26
    //   3377: iload 8
    //   3379: istore 12
    //   3381: aload 31
    //   3383: getstatic 293	com/amazonaws/util/AWSRequestMetrics$Field:aud	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   3386: aconst_null
    //   3387: invokevirtual 296	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    //   3390: iload 8
    //   3392: ifne +801 -> 4193
    //   3395: aload 19
    //   3397: ifnull +796 -> 4193
    //   3400: aload 19
    //   3402: getfield 608	com/amazonaws/http/HttpResponse:aoh	Ljava/io/InputStream;
    //   3405: ifnull +11 -> 3416
    //   3408: aload 19
    //   3410: getfield 608	com/amazonaws/http/HttpResponse:aoh	Ljava/io/InputStream;
    //   3413: invokevirtual 611	java/io/InputStream:close	()V
    //   3416: aload 24
    //   3418: astore 21
    //   3420: aload 23
    //   3422: astore 24
    //   3424: iload 7
    //   3426: istore 5
    //   3428: lload 15
    //   3430: lstore 13
    //   3432: goto -3186 -> 246
    //   3435: iconst_0
    //   3436: istore 5
    //   3438: goto -441 -> 2997
    //   3441: aload 19
    //   3443: astore 20
    //   3445: iload 8
    //   3447: istore 9
    //   3449: aload 19
    //   3451: astore 25
    //   3453: iload 8
    //   3455: istore 10
    //   3457: aload 19
    //   3459: astore 27
    //   3461: aload 22
    //   3463: astore 21
    //   3465: iload 8
    //   3467: istore 11
    //   3469: aload 19
    //   3471: astore 26
    //   3473: iload 8
    //   3475: istore 12
    //   3477: aload_3
    //   3478: invokeinterface 597 1 0
    //   3483: istore 8
    //   3485: aload 19
    //   3487: astore 20
    //   3489: iload 8
    //   3491: istore 9
    //   3493: aload 19
    //   3495: astore 25
    //   3497: iload 8
    //   3499: istore 10
    //   3501: aload 19
    //   3503: astore 27
    //   3505: aload 22
    //   3507: astore 21
    //   3509: iload 8
    //   3511: istore 11
    //   3513: aload 19
    //   3515: astore 26
    //   3517: iload 8
    //   3519: istore 12
    //   3521: aload_1
    //   3522: aload_3
    //   3523: aload 19
    //   3525: invokestatic 634	com/amazonaws/http/AmazonHttpClient:a	(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    //   3528: astore 28
    //   3530: aload 19
    //   3532: astore 20
    //   3534: iload 8
    //   3536: istore 9
    //   3538: aload 19
    //   3540: astore 25
    //   3542: iload 8
    //   3544: istore 10
    //   3546: aload 19
    //   3548: astore 27
    //   3550: aload 22
    //   3552: astore 21
    //   3554: iload 8
    //   3556: istore 11
    //   3558: aload 19
    //   3560: astore 26
    //   3562: iload 8
    //   3564: istore 12
    //   3566: aload 31
    //   3568: getstatic 293	com/amazonaws/util/AWSRequestMetrics$Field:aud	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   3571: aload 28
    //   3573: getfield 637	com/amazonaws/AmazonServiceException:alJ	Ljava/lang/String;
    //   3576: invokevirtual 296	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    //   3579: aload 19
    //   3581: astore 20
    //   3583: iload 8
    //   3585: istore 9
    //   3587: aload 19
    //   3589: astore 25
    //   3591: iload 8
    //   3593: istore 10
    //   3595: aload 19
    //   3597: astore 27
    //   3599: aload 22
    //   3601: astore 21
    //   3603: iload 8
    //   3605: istore 11
    //   3607: aload 19
    //   3609: astore 26
    //   3611: iload 8
    //   3613: istore 12
    //   3615: aload 31
    //   3617: getstatic 640	com/amazonaws/util/AWSRequestMetrics$Field:auc	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   3620: aload 28
    //   3622: getfield 231	com/amazonaws/AmazonServiceException:alK	Ljava/lang/String;
    //   3625: invokevirtual 296	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    //   3628: aload 19
    //   3630: astore 20
    //   3632: iload 8
    //   3634: istore 9
    //   3636: aload 19
    //   3638: astore 25
    //   3640: iload 8
    //   3642: istore 10
    //   3644: aload 19
    //   3646: astore 27
    //   3648: aload 22
    //   3650: astore 21
    //   3652: iload 8
    //   3654: istore 11
    //   3656: aload 19
    //   3658: astore 26
    //   3660: iload 8
    //   3662: istore 12
    //   3664: aload 31
    //   3666: getstatic 589	com/amazonaws/util/AWSRequestMetrics$Field:auy	Lcom/amazonaws/util/AWSRequestMetrics$Field;
    //   3669: aload 28
    //   3671: getfield 203	com/amazonaws/AmazonServiceException:statusCode	I
    //   3674: invokestatic 594	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   3677: invokevirtual 296	com/amazonaws/util/AWSRequestMetrics:a	(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    //   3680: aload 19
    //   3682: astore 20
    //   3684: iload 8
    //   3686: istore 9
    //   3688: aload 19
    //   3690: astore 25
    //   3692: iload 8
    //   3694: istore 10
    //   3696: aload 19
    //   3698: astore 27
    //   3700: aload 22
    //   3702: astore 21
    //   3704: iload 8
    //   3706: istore 11
    //   3708: aload 19
    //   3710: astore 26
    //   3712: iload 8
    //   3714: istore 12
    //   3716: aload_0
    //   3717: aload 24
    //   3719: getfield 619	com/amazonaws/http/HttpRequest:amE	Ljava/io/InputStream;
    //   3722: aload 28
    //   3724: iload 7
    //   3726: aload_0
    //   3727: getfield 44	com/amazonaws/http/AmazonHttpClient:anS	Lcom/amazonaws/ClientConfiguration;
    //   3730: getfield 486	com/amazonaws/ClientConfiguration:amj	Lcom/amazonaws/retry/RetryPolicy;
    //   3733: invokespecial 621	com/amazonaws/http/AmazonHttpClient:a	(Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z
    //   3736: ifne +61 -> 3797
    //   3739: aload 19
    //   3741: astore 20
    //   3743: iload 8
    //   3745: istore 9
    //   3747: aload 19
    //   3749: astore 25
    //   3751: iload 8
    //   3753: istore 10
    //   3755: aload 19
    //   3757: astore 27
    //   3759: aload 22
    //   3761: astore 21
    //   3763: iload 8
    //   3765: istore 11
    //   3767: aload 19
    //   3769: astore 26
    //   3771: iload 8
    //   3773: istore 12
    //   3775: aload 28
    //   3777: athrow
    //   3778: astore_1
    //   3779: aload 26
    //   3781: astore 20
    //   3783: iload 12
    //   3785: istore 9
    //   3787: aload_1
    //   3788: aload 31
    //   3790: invokestatic 623	com/amazonaws/http/AmazonHttpClient:a	(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;
    //   3793: checkcast 354	java/lang/Error
    //   3796: athrow
    //   3797: aload 19
    //   3799: astore 20
    //   3801: iload 8
    //   3803: istore 9
    //   3805: aload 19
    //   3807: astore 25
    //   3809: iload 8
    //   3811: istore 10
    //   3813: aload 19
    //   3815: astore 27
    //   3817: aload 22
    //   3819: astore 21
    //   3821: iload 8
    //   3823: istore 11
    //   3825: aload 19
    //   3827: astore 26
    //   3829: iload 8
    //   3831: istore 12
    //   3833: aload 28
    //   3835: invokestatic 645	com/amazonaws/retry/RetryUtils:b	(Lcom/amazonaws/AmazonServiceException;)Z
    //   3838: ifeq +49 -> 3887
    //   3841: aload 19
    //   3843: astore 20
    //   3845: iload 8
    //   3847: istore 9
    //   3849: aload 19
    //   3851: astore 25
    //   3853: iload 8
    //   3855: istore 10
    //   3857: aload 19
    //   3859: astore 27
    //   3861: aload 22
    //   3863: astore 21
    //   3865: iload 8
    //   3867: istore 11
    //   3869: aload 19
    //   3871: astore 26
    //   3873: iload 8
    //   3875: istore 12
    //   3877: aload 19
    //   3879: aload 28
    //   3881: invokestatic 647	com/amazonaws/http/AmazonHttpClient:a	(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I
    //   3884: invokestatic 652	com/amazonaws/SDKGlobalConfiguration:cm	(I)V
    //   3887: aload 19
    //   3889: astore 20
    //   3891: iload 8
    //   3893: istore 9
    //   3895: aload 19
    //   3897: astore 25
    //   3899: iload 8
    //   3901: istore 10
    //   3903: aload 19
    //   3905: astore 27
    //   3907: aload 22
    //   3909: astore 21
    //   3911: iload 8
    //   3913: istore 11
    //   3915: aload 19
    //   3917: astore 26
    //   3919: iload 8
    //   3921: istore 12
    //   3923: aload_1
    //   3924: aload 28
    //   3926: invokestatic 654	com/amazonaws/http/AmazonHttpClient:a	(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    //   3929: goto -539 -> 3390
    //   3932: astore 20
    //   3934: getstatic 32	com/amazonaws/http/AmazonHttpClient:alS	Lorg/apache/commons/logging/Log;
    //   3937: ldc_w 625
    //   3940: aload 20
    //   3942: invokeinterface 134 3 0
    //   3947: aload 24
    //   3949: astore 21
    //   3951: aload 23
    //   3953: astore 24
    //   3955: iload 7
    //   3957: istore 5
    //   3959: lload 15
    //   3961: lstore 13
    //   3963: goto -3717 -> 246
    //   3966: aload 27
    //   3968: astore 20
    //   3970: iload 11
    //   3972: istore 9
    //   3974: aload_1
    //   3975: aload 24
    //   3977: invokestatic 654	com/amazonaws/http/AmazonHttpClient:a	(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    //   3980: aload 25
    //   3982: astore 21
    //   3984: aload 27
    //   3986: astore 19
    //   3988: aload 23
    //   3990: astore 24
    //   3992: aload 26
    //   3994: astore 22
    //   3996: iload 7
    //   3998: istore 5
    //   4000: lload 15
    //   4002: lstore 13
    //   4004: iload 11
    //   4006: istore 8
    //   4008: iload 11
    //   4010: ifne -3764 -> 246
    //   4013: aload 25
    //   4015: astore 21
    //   4017: aload 27
    //   4019: astore 19
    //   4021: aload 23
    //   4023: astore 24
    //   4025: aload 26
    //   4027: astore 22
    //   4029: iload 7
    //   4031: istore 5
    //   4033: lload 15
    //   4035: lstore 13
    //   4037: iload 11
    //   4039: istore 8
    //   4041: aload 27
    //   4043: ifnull -3797 -> 246
    //   4046: aload 25
    //   4048: astore 21
    //   4050: aload 27
    //   4052: astore 19
    //   4054: aload 23
    //   4056: astore 24
    //   4058: aload 26
    //   4060: astore 22
    //   4062: iload 7
    //   4064: istore 5
    //   4066: lload 15
    //   4068: lstore 13
    //   4070: iload 11
    //   4072: istore 8
    //   4074: aload 27
    //   4076: getfield 608	com/amazonaws/http/HttpResponse:aoh	Ljava/io/InputStream;
    //   4079: ifnull -3833 -> 246
    //   4082: aload 27
    //   4084: getfield 608	com/amazonaws/http/HttpResponse:aoh	Ljava/io/InputStream;
    //   4087: invokevirtual 611	java/io/InputStream:close	()V
    //   4090: aload 25
    //   4092: astore 21
    //   4094: aload 27
    //   4096: astore 19
    //   4098: aload 23
    //   4100: astore 24
    //   4102: aload 26
    //   4104: astore 22
    //   4106: iload 7
    //   4108: istore 5
    //   4110: lload 15
    //   4112: lstore 13
    //   4114: iload 11
    //   4116: istore 8
    //   4118: goto -3872 -> 246
    //   4121: astore 19
    //   4123: getstatic 32	com/amazonaws/http/AmazonHttpClient:alS	Lorg/apache/commons/logging/Log;
    //   4126: ldc_w 625
    //   4129: aload 19
    //   4131: invokeinterface 134 3 0
    //   4136: aload 25
    //   4138: astore 21
    //   4140: aload 27
    //   4142: astore 19
    //   4144: aload 23
    //   4146: astore 24
    //   4148: aload 26
    //   4150: astore 22
    //   4152: iload 7
    //   4154: istore 5
    //   4156: lload 15
    //   4158: lstore 13
    //   4160: iload 11
    //   4162: istore 8
    //   4164: goto -3918 -> 246
    //   4167: astore_2
    //   4168: getstatic 32	com/amazonaws/http/AmazonHttpClient:alS	Lorg/apache/commons/logging/Log;
    //   4171: ldc_w 625
    //   4174: aload_2
    //   4175: invokeinterface 134 3 0
    //   4180: goto -1580 -> 2600
    //   4183: aload 30
    //   4185: astore 29
    //   4187: goto -2449 -> 1738
    //   4190: goto -2925 -> 1265
    //   4193: aload 24
    //   4195: astore 21
    //   4197: aload 23
    //   4199: astore 24
    //   4201: iload 7
    //   4203: istore 5
    //   4205: lload 15
    //   4207: lstore 13
    //   4209: goto -3963 -> 246
    //   4212: goto -4108 -> 104
    //   4215: iload 6
    //   4217: ifeq +8 -> 4225
    //   4220: iload 5
    //   4222: ifeq -1512 -> 2710
    //   4225: iconst_1
    //   4226: istore 5
    //   4228: goto -3033 -> 1195
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	4231	0	this	AmazonHttpClient
    //   0	4231	1	paramRequest	Request<?>
    //   0	4231	2	paramHttpResponseHandler	HttpResponseHandler<AmazonWebServiceResponse<T>>
    //   0	4231	3	paramHttpResponseHandler1	HttpResponseHandler<AmazonServiceException>
    //   0	4231	4	paramExecutionContext	ExecutionContext
    //   165	4062	5	i	int
    //   1190	3026	6	j	int
    //   250	3952	7	k	int
    //   1	4162	8	bool1	boolean
    //   392	3581	9	bool2	boolean
    //   400	3502	10	bool3	boolean
    //   1953	2208	11	bool4	boolean
    //   408	3514	12	bool5	boolean
    //   168	4040	13	l1	long
    //   370	3836	15	l2	long
    //   384	2267	17	l3	long
    //   41	2750	19	localObject1	Object
    //   2801	1115	19	localIOException1	IOException
    //   3986	111	19	localObject2	Object
    //   4121	9	19	localIOException2	IOException
    //   4142	1	19	localObject3	Object
    //   49	3841	20	localObject4	Object
    //   3932	9	20	localIOException3	IOException
    //   3968	1	20	localObject5	Object
    //   71	4125	21	localObject6	Object
    //   171	3980	22	localObject7	Object
    //   514	1371	23	localObject8	Object
    //   2279	75	23	localObject9	Object
    //   2372	1826	23	localObject10	Object
    //   238	2084	24	localObject11	Object
    //   2356	169	24	localIOException4	IOException
    //   2602	202	24	localObject12	Object
    //   2813	1387	24	localObject13	Object
    //   396	3741	25	localObject14	Object
    //   404	3745	26	localObject15	Object
    //   380	3761	27	localObject16	Object
    //   972	894	28	localObject17	Object
    //   2716	83	28	localObject18	Object
    //   2935	990	28	localObject19	Object
    //   1103	3083	29	localObject20	Object
    //   1386	2798	30	localObject21	Object
    //   8	3781	31	localAWSRequestMetrics	AWSRequestMetrics
    //   186	85	32	localLinkedHashMap	java.util.LinkedHashMap
    //   201	78	33	localHashMap1	java.util.HashMap
    //   209	78	34	localInputStream	InputStream
    //   235	552	35	localAWSCredentials	com.amazonaws.auth.AWSCredentials
    //   1304	572	36	localHashMap2	java.util.HashMap
    //   1063	574	37	str	String
    // Exception table:
    //   from	to	target	type
    //   418	432	2279	finally
    //   410	418	2356	java/io/IOException
    //   468	476	2356	java/io/IOException
    //   508	516	2356	java/io/IOException
    //   561	569	2356	java/io/IOException
    //   601	606	2356	java/io/IOException
    //   642	679	2356	java/io/IOException
    //   720	733	2356	java/io/IOException
    //   775	783	2356	java/io/IOException
    //   825	833	2356	java/io/IOException
    //   865	876	2356	java/io/IOException
    //   908	936	2356	java/io/IOException
    //   968	974	2356	java/io/IOException
    //   1006	1027	2356	java/io/IOException
    //   1059	1065	2356	java/io/IOException
    //   1097	1105	2356	java/io/IOException
    //   1137	1146	2356	java/io/IOException
    //   1181	1189	2356	java/io/IOException
    //   1237	1265	2356	java/io/IOException
    //   1297	1306	2356	java/io/IOException
    //   1338	1348	2356	java/io/IOException
    //   1380	1388	2356	java/io/IOException
    //   1424	1432	2356	java/io/IOException
    //   1464	1469	2356	java/io/IOException
    //   1501	1518	2356	java/io/IOException
    //   1550	1558	2356	java/io/IOException
    //   1590	1599	2356	java/io/IOException
    //   1636	1646	2356	java/io/IOException
    //   1678	1689	2356	java/io/IOException
    //   1721	1738	2356	java/io/IOException
    //   1770	1783	2356	java/io/IOException
    //   1815	1829	2356	java/io/IOException
    //   1861	1884	2356	java/io/IOException
    //   1916	1927	2356	java/io/IOException
    //   2313	2321	2356	java/io/IOException
    //   2353	2356	2356	java/io/IOException
    //   2636	2644	2356	java/io/IOException
    //   2676	2679	2356	java/io/IOException
    //   410	418	2573	finally
    //   468	476	2573	finally
    //   508	516	2573	finally
    //   561	569	2573	finally
    //   601	606	2573	finally
    //   642	679	2573	finally
    //   720	733	2573	finally
    //   775	783	2573	finally
    //   825	833	2573	finally
    //   865	876	2573	finally
    //   908	936	2573	finally
    //   968	974	2573	finally
    //   1006	1027	2573	finally
    //   1059	1065	2573	finally
    //   1097	1105	2573	finally
    //   1137	1146	2573	finally
    //   1181	1189	2573	finally
    //   1237	1265	2573	finally
    //   1297	1306	2573	finally
    //   1338	1348	2573	finally
    //   1380	1388	2573	finally
    //   1424	1432	2573	finally
    //   1464	1469	2573	finally
    //   1501	1518	2573	finally
    //   1550	1558	2573	finally
    //   1590	1599	2573	finally
    //   1636	1646	2573	finally
    //   1678	1689	2573	finally
    //   1721	1738	2573	finally
    //   1770	1783	2573	finally
    //   1815	1829	2573	finally
    //   1861	1884	2573	finally
    //   1916	1927	2573	finally
    //   1963	1971	2573	finally
    //   2024	2032	2573	finally
    //   2068	2075	2573	finally
    //   2135	2151	2573	finally
    //   2187	2195	2573	finally
    //   2231	2250	2573	finally
    //   2313	2321	2573	finally
    //   2353	2356	2573	finally
    //   2390	2401	2573	finally
    //   2409	2440	2573	finally
    //   2448	2456	2573	finally
    //   2464	2474	2573	finally
    //   2482	2491	2573	finally
    //   2499	2531	2573	finally
    //   2539	2562	2573	finally
    //   2570	2573	2573	finally
    //   2636	2644	2573	finally
    //   2676	2679	2573	finally
    //   2688	2698	2573	finally
    //   2754	2762	2573	finally
    //   2798	2801	2573	finally
    //   2876	2883	2573	finally
    //   2919	2937	2573	finally
    //   2986	2994	2573	finally
    //   3038	3056	2573	finally
    //   3092	3118	2573	finally
    //   3154	3161	2573	finally
    //   3197	3204	2573	finally
    //   3240	3247	2573	finally
    //   3283	3299	2573	finally
    //   3335	3345	2573	finally
    //   3381	3390	2573	finally
    //   3477	3485	2573	finally
    //   3521	3530	2573	finally
    //   3566	3579	2573	finally
    //   3615	3628	2573	finally
    //   3664	3680	2573	finally
    //   3716	3739	2573	finally
    //   3775	3778	2573	finally
    //   3787	3797	2573	finally
    //   3833	3841	2573	finally
    //   3877	3887	2573	finally
    //   3923	3929	2573	finally
    //   3974	3980	2573	finally
    //   783	793	2602	finally
    //   410	418	2679	java/lang/RuntimeException
    //   468	476	2679	java/lang/RuntimeException
    //   508	516	2679	java/lang/RuntimeException
    //   561	569	2679	java/lang/RuntimeException
    //   601	606	2679	java/lang/RuntimeException
    //   642	679	2679	java/lang/RuntimeException
    //   720	733	2679	java/lang/RuntimeException
    //   775	783	2679	java/lang/RuntimeException
    //   825	833	2679	java/lang/RuntimeException
    //   865	876	2679	java/lang/RuntimeException
    //   908	936	2679	java/lang/RuntimeException
    //   968	974	2679	java/lang/RuntimeException
    //   1006	1027	2679	java/lang/RuntimeException
    //   1059	1065	2679	java/lang/RuntimeException
    //   1097	1105	2679	java/lang/RuntimeException
    //   1137	1146	2679	java/lang/RuntimeException
    //   1181	1189	2679	java/lang/RuntimeException
    //   1237	1265	2679	java/lang/RuntimeException
    //   1297	1306	2679	java/lang/RuntimeException
    //   1338	1348	2679	java/lang/RuntimeException
    //   1380	1388	2679	java/lang/RuntimeException
    //   1424	1432	2679	java/lang/RuntimeException
    //   1464	1469	2679	java/lang/RuntimeException
    //   1501	1518	2679	java/lang/RuntimeException
    //   1550	1558	2679	java/lang/RuntimeException
    //   1590	1599	2679	java/lang/RuntimeException
    //   1636	1646	2679	java/lang/RuntimeException
    //   1678	1689	2679	java/lang/RuntimeException
    //   1721	1738	2679	java/lang/RuntimeException
    //   1770	1783	2679	java/lang/RuntimeException
    //   1815	1829	2679	java/lang/RuntimeException
    //   1861	1884	2679	java/lang/RuntimeException
    //   1916	1927	2679	java/lang/RuntimeException
    //   1963	1971	2679	java/lang/RuntimeException
    //   2024	2032	2679	java/lang/RuntimeException
    //   2068	2075	2679	java/lang/RuntimeException
    //   2135	2151	2679	java/lang/RuntimeException
    //   2187	2195	2679	java/lang/RuntimeException
    //   2231	2250	2679	java/lang/RuntimeException
    //   2313	2321	2679	java/lang/RuntimeException
    //   2353	2356	2679	java/lang/RuntimeException
    //   2636	2644	2679	java/lang/RuntimeException
    //   2676	2679	2679	java/lang/RuntimeException
    //   2754	2762	2679	java/lang/RuntimeException
    //   2798	2801	2679	java/lang/RuntimeException
    //   2876	2883	2679	java/lang/RuntimeException
    //   2919	2937	2679	java/lang/RuntimeException
    //   2986	2994	2679	java/lang/RuntimeException
    //   3038	3056	2679	java/lang/RuntimeException
    //   3092	3118	2679	java/lang/RuntimeException
    //   3154	3161	2679	java/lang/RuntimeException
    //   3197	3204	2679	java/lang/RuntimeException
    //   3240	3247	2679	java/lang/RuntimeException
    //   3283	3299	2679	java/lang/RuntimeException
    //   3335	3345	2679	java/lang/RuntimeException
    //   3381	3390	2679	java/lang/RuntimeException
    //   3477	3485	2679	java/lang/RuntimeException
    //   3521	3530	2679	java/lang/RuntimeException
    //   3566	3579	2679	java/lang/RuntimeException
    //   3615	3628	2679	java/lang/RuntimeException
    //   3664	3680	2679	java/lang/RuntimeException
    //   3716	3739	2679	java/lang/RuntimeException
    //   3775	3778	2679	java/lang/RuntimeException
    //   3833	3841	2679	java/lang/RuntimeException
    //   3877	3887	2679	java/lang/RuntimeException
    //   3923	3929	2679	java/lang/RuntimeException
    //   1971	1984	2716	finally
    //   1963	1971	2801	java/io/IOException
    //   2024	2032	2801	java/io/IOException
    //   2068	2075	2801	java/io/IOException
    //   2135	2151	2801	java/io/IOException
    //   2187	2195	2801	java/io/IOException
    //   2231	2250	2801	java/io/IOException
    //   2754	2762	2801	java/io/IOException
    //   2798	2801	2801	java/io/IOException
    //   2876	2883	2801	java/io/IOException
    //   2919	2937	2801	java/io/IOException
    //   2986	2994	2801	java/io/IOException
    //   3038	3056	2801	java/io/IOException
    //   3092	3118	2801	java/io/IOException
    //   3154	3161	2801	java/io/IOException
    //   3197	3204	2801	java/io/IOException
    //   3240	3247	2801	java/io/IOException
    //   3283	3299	2801	java/io/IOException
    //   3335	3345	2801	java/io/IOException
    //   3381	3390	2801	java/io/IOException
    //   3477	3485	2801	java/io/IOException
    //   3521	3530	2801	java/io/IOException
    //   3566	3579	2801	java/io/IOException
    //   3615	3628	2801	java/io/IOException
    //   3664	3680	2801	java/io/IOException
    //   3716	3739	2801	java/io/IOException
    //   3775	3778	2801	java/io/IOException
    //   3833	3841	2801	java/io/IOException
    //   3877	3887	2801	java/io/IOException
    //   3923	3929	2801	java/io/IOException
    //   2260	2276	2824	java/io/IOException
    //   410	418	3778	java/lang/Error
    //   468	476	3778	java/lang/Error
    //   508	516	3778	java/lang/Error
    //   561	569	3778	java/lang/Error
    //   601	606	3778	java/lang/Error
    //   642	679	3778	java/lang/Error
    //   720	733	3778	java/lang/Error
    //   775	783	3778	java/lang/Error
    //   825	833	3778	java/lang/Error
    //   865	876	3778	java/lang/Error
    //   908	936	3778	java/lang/Error
    //   968	974	3778	java/lang/Error
    //   1006	1027	3778	java/lang/Error
    //   1059	1065	3778	java/lang/Error
    //   1097	1105	3778	java/lang/Error
    //   1137	1146	3778	java/lang/Error
    //   1181	1189	3778	java/lang/Error
    //   1237	1265	3778	java/lang/Error
    //   1297	1306	3778	java/lang/Error
    //   1338	1348	3778	java/lang/Error
    //   1380	1388	3778	java/lang/Error
    //   1424	1432	3778	java/lang/Error
    //   1464	1469	3778	java/lang/Error
    //   1501	1518	3778	java/lang/Error
    //   1550	1558	3778	java/lang/Error
    //   1590	1599	3778	java/lang/Error
    //   1636	1646	3778	java/lang/Error
    //   1678	1689	3778	java/lang/Error
    //   1721	1738	3778	java/lang/Error
    //   1770	1783	3778	java/lang/Error
    //   1815	1829	3778	java/lang/Error
    //   1861	1884	3778	java/lang/Error
    //   1916	1927	3778	java/lang/Error
    //   1963	1971	3778	java/lang/Error
    //   2024	2032	3778	java/lang/Error
    //   2068	2075	3778	java/lang/Error
    //   2135	2151	3778	java/lang/Error
    //   2187	2195	3778	java/lang/Error
    //   2231	2250	3778	java/lang/Error
    //   2313	2321	3778	java/lang/Error
    //   2353	2356	3778	java/lang/Error
    //   2636	2644	3778	java/lang/Error
    //   2676	2679	3778	java/lang/Error
    //   2754	2762	3778	java/lang/Error
    //   2798	2801	3778	java/lang/Error
    //   2876	2883	3778	java/lang/Error
    //   2919	2937	3778	java/lang/Error
    //   2986	2994	3778	java/lang/Error
    //   3038	3056	3778	java/lang/Error
    //   3092	3118	3778	java/lang/Error
    //   3154	3161	3778	java/lang/Error
    //   3197	3204	3778	java/lang/Error
    //   3240	3247	3778	java/lang/Error
    //   3283	3299	3778	java/lang/Error
    //   3335	3345	3778	java/lang/Error
    //   3381	3390	3778	java/lang/Error
    //   3477	3485	3778	java/lang/Error
    //   3521	3530	3778	java/lang/Error
    //   3566	3579	3778	java/lang/Error
    //   3615	3628	3778	java/lang/Error
    //   3664	3680	3778	java/lang/Error
    //   3716	3739	3778	java/lang/Error
    //   3775	3778	3778	java/lang/Error
    //   3833	3841	3778	java/lang/Error
    //   3877	3887	3778	java/lang/Error
    //   3923	3929	3778	java/lang/Error
    //   3400	3416	3932	java/io/IOException
    //   4074	4090	4121	java/io/IOException
    //   2584	2600	4167	java/io/IOException
  }
  
  private static String g(String paramString1, String paramString2)
  {
    if (paramString1.contains(paramString2)) {
      return paramString1;
    }
    return paramString1.trim() + " " + paramString2.trim();
  }
  
  public final <T> Response<T> a(Request<?> paramRequest, HttpResponseHandler<AmazonWebServiceResponse<T>> paramHttpResponseHandler, HttpResponseHandler<AmazonServiceException> paramHttpResponseHandler1, ExecutionContext paramExecutionContext)
    throws AmazonClientException, AmazonServiceException
  {
    List localList = paramExecutionContext.alX;
    if (localList == null) {
      localList = Collections.emptyList();
    }
    for (;;)
    {
      Object localObject = paramExecutionContext.anU;
      try
      {
        paramRequest = b(paramRequest, paramHttpResponseHandler, paramHttpResponseHandler1, paramExecutionContext);
        ((AWSRequestMetrics)localObject).kd().kj();
        paramHttpResponseHandler = localList.iterator();
        while (paramHttpResponseHandler.hasNext()) {
          paramHttpResponseHandler.next();
        }
        if (!paramHttpResponseHandler.hasNext()) {
          break;
        }
      }
      catch (AmazonClientException paramRequest)
      {
        paramHttpResponseHandler = localList.iterator();
      }
      for (;;)
      {
        paramHttpResponseHandler.next();
      }
      localObject = localList.iterator();
      while (((Iterator)localObject).hasNext())
      {
        RequestHandler2 localRequestHandler2 = (RequestHandler2)((Iterator)localObject).next();
        if ((localRequestHandler2 instanceof CredentialsRequestHandler)) {
          ((CredentialsRequestHandler)localRequestHandler2).b(paramExecutionContext.amc);
        }
      }
    }
    throw paramRequest;
    return paramRequest;
  }
  
  protected void finalize()
    throws Throwable
  {
    super.finalize();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/http/AmazonHttpClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */