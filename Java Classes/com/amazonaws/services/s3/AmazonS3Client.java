package com.amazonaws.services.s3;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.auth.Signer;
import com.amazonaws.auth.SignerFactory;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListenerCallbackExecutor;
import com.amazonaws.handlers.HandlerChainFactory;
import com.amazonaws.handlers.RequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.AmazonHttpClient;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.HttpClient;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.internal.StaticCredentialsProvider;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.regions.Region;
import com.amazonaws.services.s3.internal.AWSS3V4Signer;
import com.amazonaws.services.s3.internal.BucketNameUtils;
import com.amazonaws.services.s3.internal.Constants;
import com.amazonaws.services.s3.internal.S3ErrorResponseHandler;
import com.amazonaws.services.s3.internal.S3ExecutionContext;
import com.amazonaws.services.s3.internal.S3Signer;
import com.amazonaws.services.s3.internal.S3XmlResponseHandler;
import com.amazonaws.services.s3.internal.ServiceUtils;
import com.amazonaws.services.s3.metrics.S3ServiceMetric;
import com.amazonaws.services.s3.model.AccessControlList;
import com.amazonaws.services.s3.model.Grant;
import com.amazonaws.services.s3.model.Grantee;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.Permission;
import com.amazonaws.services.s3.model.S3AccelerateUnsupported;
import com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory;
import com.amazonaws.services.s3.model.transform.RequestPaymentConfigurationXmlFactory;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSRequestMetrics.Field;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.DateUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class AmazonS3Client
  extends AmazonWebServiceClient
{
  private static Log alS = LogFactory.getLog(AmazonS3Client.class);
  private static final BucketConfigurationXmlFactory apD = new BucketConfigurationXmlFactory();
  private static final RequestPaymentConfigurationXmlFactory apE = new RequestPaymentConfigurationXmlFactory();
  private final S3ErrorResponseHandler apB = new S3ErrorResponseHandler();
  private final S3XmlResponseHandler<Void> apC = new S3XmlResponseHandler();
  private S3ClientOptions apF = new S3ClientOptions();
  private final AWSCredentialsProvider apG;
  volatile String apH;
  
  static
  {
    AwsSdkMetrics.addAll(Arrays.asList(S3ServiceMetric.jQ()));
    SignerFactory.a("S3SignerType", S3Signer.class);
    SignerFactory.a("AWSS3V4SignerType", AWSS3V4Signer.class);
  }
  
  @Deprecated
  public AmazonS3Client()
  {
    this(new DefaultAWSCredentialsProviderChain());
  }
  
  public AmazonS3Client(AWSCredentials paramAWSCredentials, ClientConfiguration paramClientConfiguration)
  {
    this(new StaticCredentialsProvider(paramAWSCredentials), paramClientConfiguration);
  }
  
  private AmazonS3Client(AWSCredentialsProvider paramAWSCredentialsProvider)
  {
    this(paramAWSCredentialsProvider, new ClientConfiguration());
  }
  
  private AmazonS3Client(AWSCredentialsProvider paramAWSCredentialsProvider, ClientConfiguration paramClientConfiguration)
  {
    this(paramAWSCredentialsProvider, paramClientConfiguration, new UrlHttpClient(paramClientConfiguration));
  }
  
  private AmazonS3Client(AWSCredentialsProvider paramAWSCredentialsProvider, ClientConfiguration paramClientConfiguration, HttpClient paramHttpClient)
  {
    super(paramClientConfiguration, paramHttpClient);
    this.apG = paramAWSCredentialsProvider;
    J(Constants.apM);
    paramAWSCredentialsProvider = new HandlerChainFactory();
    this.alX.addAll(paramAWSCredentialsProvider.b("/com/amazonaws/services/s3/request.handlers", RequestHandler.class));
    this.alX.addAll(paramAWSCredentialsProvider.b("/com/amazonaws/services/s3/request.handler2s", RequestHandler2.class));
  }
  
  private URI V(String paramString)
  {
    try
    {
      URI localURI = new URI(this.alT.getScheme() + "://" + paramString + "." + this.alT.getAuthority());
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      throw new IllegalArgumentException("Invalid bucket name: " + paramString, localURISyntaxException);
    }
  }
  
  private static boolean W(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      paramString = paramString.split("\\.");
      int i;
      String str;
      if (paramString.length == 4)
      {
        int j = paramString.length;
        i = 0;
        if (i < j) {
          str = paramString[i];
        }
      }
      try
      {
        int k = Integer.parseInt(str);
        if ((k >= 0) && (k <= 255)) {
          i += 1;
        }
      }
      catch (NumberFormatException paramString) {}
    }
    return true;
    return false;
  }
  
  private <X, Y extends AmazonWebServiceRequest> X a(Request<Y> paramRequest, HttpResponseHandler<AmazonWebServiceResponse<X>> paramHttpResponseHandler, String paramString1, String paramString2)
  {
    int j = 1;
    Object localObject = paramRequest.jq();
    int i;
    boolean bool;
    label39:
    S3ExecutionContext localS3ExecutionContext;
    AWSRequestMetrics localAWSRequestMetrics;
    if (!a((AmazonWebServiceRequest)localObject))
    {
      if (System.getProperty("com.amazonaws.sdk.enableRuntimeProfiling") != null)
      {
        i = 1;
        if (i == 0) {
          break label243;
        }
      }
    }
    else
    {
      bool = true;
      localS3ExecutionContext = new S3ExecutionContext(this.alX, bool, this);
      localAWSRequestMetrics = localS3ExecutionContext.anU;
      paramRequest.a(localAWSRequestMetrics);
      localAWSRequestMetrics.a(AWSRequestMetrics.Field.auf);
    }
    AWSCredentials localAWSCredentials;
    Signer localSigner;
    for (;;)
    {
      try
      {
        paramRequest.cl(this.alY);
        if (!paramRequest.getHeaders().containsKey("Content-Type")) {
          paramRequest.addHeader("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
        }
        localAWSCredentials = this.apG.jy();
        if (((AmazonWebServiceRequest)localObject).amc == null) {
          break label424;
        }
        localAWSCredentials = ((AmazonWebServiceRequest)localObject).amc;
        localSigner = this.alZ;
        if (System.getProperty("com.amazonaws.services.s3.enforceV4") == null) {
          break label249;
        }
        i = j;
        if ((i == 0) || ((localSigner instanceof AWSS3V4Signer))) {
          break label323;
        }
        localObject = new AWSS3V4Signer();
        ((AWSS3V4Signer)localObject).setServiceName(jn());
        paramString2 = this.alU;
        paramString1 = paramString2;
        if (paramString2 == null) {
          paramString1 = this.apH;
        }
        if (paramString1 != null) {
          break label275;
        }
        throw new AmazonClientException("Signature Version 4 requires knowing the region of the bucket you're trying to access. You can configure a region by calling AmazonS3Client.setRegion(Region) or AmazonS3Client.setEndpoint(String) with a region-specific endpoint such as \"s3-us-west-2.amazonaws.com\".");
      }
      finally
      {
        a(localAWSRequestMetrics, paramRequest);
      }
      i = 0;
      break;
      label243:
      bool = false;
      break label39;
      label249:
      i = j;
      if (this.alT.getHost().endsWith(Constants.apM)) {
        i = 0;
      }
    }
    label275:
    ((AWSS3V4Signer)localObject).N(paramString1);
    label323:
    do
    {
      localS3ExecutionContext.a((Signer)localObject);
      localS3ExecutionContext.amc = localAWSCredentials;
      paramHttpResponseHandler = this.alW.a(paramRequest, paramHttpResponseHandler, this.apB, localS3ExecutionContext).amM;
      a(localAWSRequestMetrics, paramRequest);
      return paramHttpResponseHandler;
      localObject = localSigner;
    } while (!(localSigner instanceof S3Signer));
    localObject = new StringBuilder("/");
    if (paramString1 != null) {}
    for (paramString1 = paramString1 + "/";; paramString1 = "")
    {
      paramString1 = ((StringBuilder)localObject).append(paramString1);
      if (paramString2 != null) {}
      for (;;)
      {
        paramString1 = paramString2;
        localObject = new S3Signer(paramRequest.js().toString(), paramString1);
        break;
        paramString2 = "";
      }
      label424:
      break;
    }
  }
  
  private static void a(Request<? extends AmazonWebServiceRequest> paramRequest, AccessControlList paramAccessControlList)
  {
    Object localObject1 = paramAccessControlList.aqm;
    paramAccessControlList = new HashMap();
    localObject1 = ((Set)localObject1).iterator();
    Grant localGrant;
    while (((Iterator)localObject1).hasNext())
    {
      localGrant = (Grant)((Iterator)localObject1).next();
      if (!paramAccessControlList.containsKey(localGrant.arx)) {
        paramAccessControlList.put(localGrant.arx, new LinkedList());
      }
      ((Collection)paramAccessControlList.get(localGrant.arx)).add(localGrant.arw);
    }
    localObject1 = Permission.values();
    int k = localObject1.length;
    int i = 0;
    while (i < k)
    {
      localGrant = localObject1[i];
      if (paramAccessControlList.containsKey(localGrant))
      {
        Object localObject2 = (Collection)paramAccessControlList.get(localGrant);
        StringBuilder localStringBuilder = new StringBuilder();
        localObject2 = ((Collection)localObject2).iterator();
        int j = 0;
        if (((Iterator)localObject2).hasNext())
        {
          Grantee localGrantee = (Grantee)((Iterator)localObject2).next();
          if (j == 0) {
            j = 1;
          }
          for (;;)
          {
            localStringBuilder.append(localGrantee.jR()).append("=\"").append(localGrantee.jS()).append("\"");
            break;
            localStringBuilder.append(", ");
          }
        }
        paramRequest.addHeader(localGrant.headerName, localStringBuilder.toString());
      }
      i += 1;
    }
  }
  
  private static void a(Request<?> paramRequest, ObjectMetadata paramObjectMetadata)
  {
    Object localObject1 = Collections.unmodifiableMap(new HashMap(paramObjectMetadata.metadata));
    if ((((Map)localObject1).get("x-amz-server-side-encryption-aws-kms-key-id") != null) && (!"aws:kms".equals(((Map)localObject1).get("x-amz-server-side-encryption")))) {
      throw new IllegalArgumentException("If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION");
    }
    Object localObject2;
    if (localObject1 != null)
    {
      localObject1 = ((Map)localObject1).entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        paramRequest.addHeader((String)((Map.Entry)localObject2).getKey(), ((Map.Entry)localObject2).getValue().toString());
      }
    }
    localObject1 = paramObjectMetadata.asc;
    if (localObject1 != null) {
      paramRequest.addHeader("Expires", DateUtils.i((Date)localObject1));
    }
    paramObjectMetadata = paramObjectMetadata.asb;
    if (paramObjectMetadata != null)
    {
      Iterator localIterator = paramObjectMetadata.entrySet().iterator();
      while (localIterator.hasNext())
      {
        paramObjectMetadata = (Map.Entry)localIterator.next();
        localObject1 = (String)paramObjectMetadata.getKey();
        localObject2 = (String)paramObjectMetadata.getValue();
        paramObjectMetadata = (ObjectMetadata)localObject1;
        if (localObject1 != null) {
          paramObjectMetadata = ((String)localObject1).trim();
        }
        localObject1 = localObject2;
        if (localObject2 != null) {
          localObject1 = ((String)localObject2).trim();
        }
        paramRequest.addHeader("x-amz-meta-" + paramObjectMetadata, (String)localObject1);
      }
    }
  }
  
  private static void a(Request<?> paramRequest, String paramString1, String paramString2)
  {
    if (paramString2 != null) {
      paramRequest.addHeader(paramString1, paramString2);
    }
  }
  
  private static void a(ProgressListenerCallbackExecutor paramProgressListenerCallbackExecutor, int paramInt)
  {
    if (paramProgressListenerCallbackExecutor == null) {
      return;
    }
    ProgressEvent localProgressEvent = new ProgressEvent(0L);
    localProgressEvent.co(paramInt);
    paramProgressListenerCallbackExecutor.a(localProgressEvent);
  }
  
  private void b(Request<?> paramRequest, String paramString1, String paramString2)
  {
    if ((this.apF.apJ) && (!(paramRequest.jq() instanceof S3AccelerateUnsupported)) && (BucketNameUtils.X(paramString1)))
    {
      paramRequest.b(URI.create(this.alV.amk + "://" + paramString1 + ".s3-accelerate.amazonaws.com"));
      paramString1 = paramString2;
      if (paramString2 != null)
      {
        paramString1 = paramString2;
        if (paramString2.startsWith("/")) {
          paramString1 = "/" + paramString2;
        }
      }
      paramRequest.L(paramString1);
    }
    do
    {
      return;
      if ((!this.apF.apI) && (BucketNameUtils.X(paramString1)) && (!W(this.alT.getHost())))
      {
        paramRequest.b(V(paramString1));
        paramString1 = paramString2;
        if (paramString2 != null)
        {
          paramString1 = paramString2;
          if (paramString2.startsWith("/")) {
            paramString1 = "/" + paramString2;
          }
        }
        paramRequest.L(paramString1);
        return;
      }
      paramRequest.b(this.alT);
    } while (paramString1 == null);
    paramString1 = new StringBuilder().append(paramString1).append("/");
    if (paramString2 != null) {}
    for (;;)
    {
      paramRequest.L(paramString2);
      return;
      paramString2 = "";
    }
  }
  
  private static void f(Object paramObject, String paramString)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException(paramString);
    }
  }
  
  private static long g(InputStream paramInputStream)
  {
    long l = 0L;
    byte[] arrayOfByte = new byte[' '];
    paramInputStream.mark(-1);
    try
    {
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        l += i;
      }
      paramInputStream.reset();
      return l;
    }
    catch (IOException paramInputStream)
    {
      throw new AmazonClientException("Could not calculate content length.", paramInputStream);
    }
  }
  
  private static ByteArrayInputStream h(InputStream paramInputStream)
  {
    int i = 262144;
    byte[] arrayOfByte = new byte[262144];
    int j = 0;
    for (;;)
    {
      if (i > 0) {}
      try
      {
        int k = paramInputStream.read(arrayOfByte, j, i);
        if (k != -1)
        {
          j += k;
          i -= k;
        }
        else if (paramInputStream.read() != -1)
        {
          throw new AmazonClientException("Input stream exceeds 256k buffer.");
        }
      }
      catch (IOException paramInputStream)
      {
        throw new AmazonClientException("Failed to read from inputstream", paramInputStream);
      }
    }
    paramInputStream.close();
    return new ByteArrayInputStream(arrayOfByte, 0, j);
  }
  
  public final void J(String paramString)
  {
    if (paramString.endsWith("s3-accelerate.amazonaws.com")) {
      throw new IllegalStateException("To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());");
    }
    super.J(paramString);
    if (!paramString.endsWith(Constants.apM)) {
      this.apH = AwsHostNameUtils.i(this.alT.getHost(), "s3");
    }
  }
  
  /* Error */
  public final com.amazonaws.services.s3.model.PutObjectResult a(com.amazonaws.services.s3.model.PutObjectRequest paramPutObjectRequest)
    throws AmazonClientException, com.amazonaws.AmazonServiceException
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc_w 632
    //   4: invokestatic 634	com/amazonaws/services/s3/AmazonS3Client:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   7: aload_1
    //   8: getfield 639	com/amazonaws/services/s3/model/PutObjectRequest:ark	Ljava/lang/String;
    //   11: astore 11
    //   13: aload_1
    //   14: getfield 642	com/amazonaws/services/s3/model/PutObjectRequest:key	Ljava/lang/String;
    //   17: astore 12
    //   19: aload_1
    //   20: getfield 646	com/amazonaws/services/s3/model/PutObjectRequest:asr	Lcom/amazonaws/services/s3/model/ObjectMetadata;
    //   23: astore 8
    //   25: aload_1
    //   26: getfield 650	com/amazonaws/services/s3/model/PutObjectRequest:asq	Ljava/io/InputStream;
    //   29: astore 7
    //   31: aload_1
    //   32: getfield 654	com/amazonaws/services/s3/model/PutObjectRequest:asu	Lcom/amazonaws/event/ProgressListener;
    //   35: invokestatic 657	com/amazonaws/event/ProgressListenerCallbackExecutor:a	(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
    //   38: astore 10
    //   40: aload 8
    //   42: ifnonnull +1274 -> 1316
    //   45: new 444	com/amazonaws/services/s3/model/ObjectMetadata
    //   48: dup
    //   49: invokespecial 658	com/amazonaws/services/s3/model/ObjectMetadata:<init>	()V
    //   52: astore 8
    //   54: aload 11
    //   56: ldc_w 660
    //   59: invokestatic 634	com/amazonaws/services/s3/AmazonS3Client:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   62: aload 12
    //   64: ldc_w 662
    //   67: invokestatic 634	com/amazonaws/services/s3/AmazonS3Client:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   70: aload_1
    //   71: invokestatic 666	com/amazonaws/services/s3/internal/ServiceUtils:b	(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    //   74: istore 4
    //   76: aload_1
    //   77: getfield 670	com/amazonaws/services/s3/model/PutObjectRequest:file	Ljava/io/File;
    //   80: ifnull +1233 -> 1313
    //   83: aload_1
    //   84: getfield 670	com/amazonaws/services/s3/model/PutObjectRequest:file	Ljava/io/File;
    //   87: astore 13
    //   89: aload 13
    //   91: invokevirtual 676	java/io/File:length	()J
    //   94: lstore 5
    //   96: aload 8
    //   98: getfield 448	com/amazonaws/services/s3/model/ObjectMetadata:metadata	Ljava/util/Map;
    //   101: ldc_w 678
    //   104: lload 5
    //   106: invokestatic 684	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   109: invokeinterface 403 3 0
    //   114: pop
    //   115: aload 8
    //   117: invokevirtual 687	com/amazonaws/services/s3/model/ObjectMetadata:jU	()Ljava/lang/String;
    //   120: ifnonnull +668 -> 788
    //   123: iconst_1
    //   124: istore_2
    //   125: aload 8
    //   127: invokevirtual 690	com/amazonaws/services/s3/model/ObjectMetadata:getContentType	()Ljava/lang/String;
    //   130: ifnonnull +148 -> 278
    //   133: invokestatic 696	com/amazonaws/services/s3/util/Mimetypes:kb	()Lcom/amazonaws/services/s3/util/Mimetypes;
    //   136: astore 7
    //   138: aload 13
    //   140: invokevirtual 699	java/io/File:getName	()Ljava/lang/String;
    //   143: astore 9
    //   145: aload 9
    //   147: ldc -76
    //   149: invokevirtual 702	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   152: istore_3
    //   153: iload_3
    //   154: ifle +690 -> 844
    //   157: iload_3
    //   158: iconst_1
    //   159: iadd
    //   160: aload 9
    //   162: invokevirtual 704	java/lang/String:length	()I
    //   165: if_icmpge +679 -> 844
    //   168: aload 9
    //   170: iload_3
    //   171: iconst_1
    //   172: iadd
    //   173: invokevirtual 708	java/lang/String:substring	(I)Ljava/lang/String;
    //   176: invokestatic 713	com/amazonaws/util/StringUtils:aC	(Ljava/lang/String;)Ljava/lang/String;
    //   179: astore 14
    //   181: aload 7
    //   183: getfield 717	com/amazonaws/services/s3/util/Mimetypes:aua	Ljava/util/HashMap;
    //   186: aload 14
    //   188: invokevirtual 718	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   191: ifeq +602 -> 793
    //   194: aload 7
    //   196: getfield 717	com/amazonaws/services/s3/util/Mimetypes:aua	Ljava/util/HashMap;
    //   199: aload 14
    //   201: invokevirtual 719	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   204: checkcast 204	java/lang/String
    //   207: astore 9
    //   209: aload 9
    //   211: astore 7
    //   213: getstatic 720	com/amazonaws/services/s3/util/Mimetypes:alS	Lorg/apache/commons/logging/Log;
    //   216: invokeinterface 725 1 0
    //   221: ifeq +50 -> 271
    //   224: getstatic 720	com/amazonaws/services/s3/util/Mimetypes:alS	Lorg/apache/commons/logging/Log;
    //   227: new 163	java/lang/StringBuilder
    //   230: dup
    //   231: ldc_w 727
    //   234: invokespecial 193	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   237: aload 14
    //   239: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: ldc_w 729
    //   245: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   248: aload 9
    //   250: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: ldc_w 731
    //   256: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: invokeinterface 735 2 0
    //   267: aload 9
    //   269: astore 7
    //   271: aload 8
    //   273: aload 7
    //   275: invokevirtual 738	com/amazonaws/services/s3/model/ObjectMetadata:setContentType	(Ljava/lang/String;)V
    //   278: iload_2
    //   279: ifeq +34 -> 313
    //   282: iload 4
    //   284: ifne +29 -> 313
    //   287: aload 13
    //   289: invokestatic 744	com/amazonaws/util/Md5Utils:e	(Ljava/io/File;)Ljava/lang/String;
    //   292: astore 7
    //   294: aload 7
    //   296: ifnonnull +588 -> 884
    //   299: aload 8
    //   301: getfield 448	com/amazonaws/services/s3/model/ObjectMetadata:metadata	Ljava/util/Map;
    //   304: ldc_w 746
    //   307: invokeinterface 749 2 0
    //   312: pop
    //   313: new 751	com/amazonaws/services/s3/internal/RepeatableFileInputStream
    //   316: dup
    //   317: aload 13
    //   319: invokespecial 754	com/amazonaws/services/s3/internal/RepeatableFileInputStream:<init>	(Ljava/io/File;)V
    //   322: astore 7
    //   324: getstatic 758	com/amazonaws/http/HttpMethodName:anZ	Lcom/amazonaws/http/HttpMethodName;
    //   327: astore 9
    //   329: new 760	com/amazonaws/DefaultRequest
    //   332: dup
    //   333: aload_1
    //   334: getstatic 763	com/amazonaws/services/s3/internal/Constants:apN	Ljava/lang/String;
    //   337: invokespecial 766	com/amazonaws/DefaultRequest:<init>	(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V
    //   340: astore 13
    //   342: aload 13
    //   344: aload 9
    //   346: invokeinterface 769 2 0
    //   351: aload_0
    //   352: aload 13
    //   354: aload 11
    //   356: aload 12
    //   358: invokespecial 771	com/amazonaws/services/s3/AmazonS3Client:b	(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    //   361: aload_1
    //   362: getfield 775	com/amazonaws/services/s3/model/PutObjectRequest:ast	Lcom/amazonaws/services/s3/model/AccessControlList;
    //   365: ifnull +581 -> 946
    //   368: aload 13
    //   370: aload_1
    //   371: getfield 775	com/amazonaws/services/s3/model/PutObjectRequest:ast	Lcom/amazonaws/services/s3/model/AccessControlList;
    //   374: invokestatic 777	com/amazonaws/services/s3/AmazonS3Client:a	(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    //   377: aload_1
    //   378: getfield 780	com/amazonaws/services/s3/model/PutObjectRequest:arR	Ljava/lang/String;
    //   381: ifnull +17 -> 398
    //   384: aload 13
    //   386: ldc_w 782
    //   389: aload_1
    //   390: getfield 780	com/amazonaws/services/s3/model/PutObjectRequest:arR	Ljava/lang/String;
    //   393: invokeinterface 283 3 0
    //   398: aload_1
    //   399: getfield 785	com/amazonaws/services/s3/model/PutObjectRequest:asv	Ljava/lang/String;
    //   402: ifnull +908 -> 1310
    //   405: aload 13
    //   407: ldc_w 787
    //   410: aload_1
    //   411: getfield 785	com/amazonaws/services/s3/model/PutObjectRequest:asv	Ljava/lang/String;
    //   414: invokeinterface 283 3 0
    //   419: aload 7
    //   421: ifnonnull +889 -> 1310
    //   424: aload 13
    //   426: ldc_w 678
    //   429: ldc_w 789
    //   432: invokeinterface 283 3 0
    //   437: new 603	java/io/ByteArrayInputStream
    //   440: dup
    //   441: iconst_0
    //   442: newarray <illegal type>
    //   444: invokespecial 792	java/io/ByteArrayInputStream:<init>	([B)V
    //   447: astore 7
    //   449: aload_1
    //   450: getfield 796	com/amazonaws/services/s3/model/PutObjectRequest:arv	Lcom/amazonaws/services/s3/model/SSECustomerKey;
    //   453: astore_1
    //   454: aload_1
    //   455: ifnull +73 -> 528
    //   458: aload 13
    //   460: ldc_w 798
    //   463: aload_1
    //   464: getfield 803	com/amazonaws/services/s3/model/SSECustomerKey:asO	Ljava/lang/String;
    //   467: invokestatic 805	com/amazonaws/services/s3/AmazonS3Client:a	(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    //   470: aload 13
    //   472: ldc_w 807
    //   475: aload_1
    //   476: getfield 810	com/amazonaws/services/s3/model/SSECustomerKey:asM	Ljava/lang/String;
    //   479: invokestatic 805	com/amazonaws/services/s3/AmazonS3Client:a	(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    //   482: aload 13
    //   484: ldc_w 812
    //   487: aload_1
    //   488: getfield 815	com/amazonaws/services/s3/model/SSECustomerKey:asN	Ljava/lang/String;
    //   491: invokestatic 805	com/amazonaws/services/s3/AmazonS3Client:a	(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    //   494: aload_1
    //   495: getfield 810	com/amazonaws/services/s3/model/SSECustomerKey:asM	Ljava/lang/String;
    //   498: ifnull +30 -> 528
    //   501: aload_1
    //   502: getfield 815	com/amazonaws/services/s3/model/SSECustomerKey:asN	Ljava/lang/String;
    //   505: ifnonnull +23 -> 528
    //   508: aload 13
    //   510: ldc_w 812
    //   513: aload_1
    //   514: getfield 810	com/amazonaws/services/s3/model/SSECustomerKey:asM	Ljava/lang/String;
    //   517: invokestatic 821	com/amazonaws/util/Base64:decode	(Ljava/lang/String;)[B
    //   520: invokestatic 825	com/amazonaws/util/Md5Utils:l	([B)Ljava/lang/String;
    //   523: invokeinterface 283 3 0
    //   528: aload 8
    //   530: getfield 448	com/amazonaws/services/s3/model/ObjectMetadata:metadata	Ljava/util/Map;
    //   533: ldc_w 678
    //   536: invokeinterface 407 2 0
    //   541: checkcast 680	java/lang/Long
    //   544: astore 9
    //   546: aload 9
    //   548: ifnonnull +449 -> 997
    //   551: aload 7
    //   553: invokevirtual 828	java/io/InputStream:markSupported	()Z
    //   556: ifne +417 -> 973
    //   559: getstatic 31	com/amazonaws/services/s3/AmazonS3Client:alS	Lorg/apache/commons/logging/Log;
    //   562: ldc_w 830
    //   565: invokeinterface 833 2 0
    //   570: aload 7
    //   572: invokestatic 835	com/amazonaws/services/s3/AmazonS3Client:h	(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    //   575: astore_1
    //   576: aload 13
    //   578: ldc_w 678
    //   581: aload_1
    //   582: invokevirtual 838	java/io/ByteArrayInputStream:available	()I
    //   585: invokestatic 840	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   588: invokeinterface 283 3 0
    //   593: aload 10
    //   595: ifnull +712 -> 1307
    //   598: new 842	com/amazonaws/event/ProgressReportingInputStream
    //   601: dup
    //   602: aload_1
    //   603: aload 10
    //   605: invokespecial 845	com/amazonaws/event/ProgressReportingInputStream:<init>	(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V
    //   608: astore_1
    //   609: aload 10
    //   611: iconst_2
    //   612: invokestatic 847	com/amazonaws/services/s3/AmazonS3Client:a	(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V
    //   615: aconst_null
    //   616: astore 9
    //   618: aload 8
    //   620: invokevirtual 687	com/amazonaws/services/s3/model/ObjectMetadata:jU	()Ljava/lang/String;
    //   623: ifnonnull +675 -> 1298
    //   626: iload 4
    //   628: ifne +670 -> 1298
    //   631: new 849	com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream
    //   634: dup
    //   635: aload_1
    //   636: invokespecial 852	com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream:<init>	(Ljava/io/InputStream;)V
    //   639: astore 7
    //   641: aload 7
    //   643: astore_1
    //   644: aload 8
    //   646: invokevirtual 690	com/amazonaws/services/s3/model/ObjectMetadata:getContentType	()Ljava/lang/String;
    //   649: ifnonnull +11 -> 660
    //   652: aload 8
    //   654: ldc_w 854
    //   657: invokevirtual 738	com/amazonaws/services/s3/model/ObjectMetadata:setContentType	(Ljava/lang/String;)V
    //   660: aload 13
    //   662: aload 8
    //   664: invokestatic 856	com/amazonaws/services/s3/AmazonS3Client:a	(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    //   667: aload 13
    //   669: aload 7
    //   671: invokeinterface 859 2 0
    //   676: aload 13
    //   678: ldc_w 861
    //   681: ldc_w 863
    //   684: invokeinterface 283 3 0
    //   689: aload_0
    //   690: aload 13
    //   692: new 865	com/amazonaws/services/s3/internal/S3MetadataResponseHandler
    //   695: dup
    //   696: invokespecial 866	com/amazonaws/services/s3/internal/S3MetadataResponseHandler:<init>	()V
    //   699: aload 11
    //   701: aload 12
    //   703: invokespecial 868	com/amazonaws/services/s3/AmazonS3Client:a	(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    //   706: checkcast 444	com/amazonaws/services/s3/model/ObjectMetadata
    //   709: astore 9
    //   711: aload 7
    //   713: invokevirtual 601	java/io/InputStream:close	()V
    //   716: aload 8
    //   718: invokevirtual 687	com/amazonaws/services/s3/model/ObjectMetadata:jU	()Ljava/lang/String;
    //   721: astore 7
    //   723: aload_1
    //   724: ifnull +568 -> 1292
    //   727: aload_1
    //   728: getfield 872	com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream:digest	Ljava/security/MessageDigest;
    //   731: invokevirtual 877	java/security/MessageDigest:digest	()[B
    //   734: invokestatic 881	com/amazonaws/util/BinaryUtils:i	([B)Ljava/lang/String;
    //   737: astore_1
    //   738: aload 9
    //   740: ifnull +394 -> 1134
    //   743: aload_1
    //   744: ifnull +390 -> 1134
    //   747: iload 4
    //   749: ifne +385 -> 1134
    //   752: aload_1
    //   753: invokestatic 884	com/amazonaws/util/BinaryUtils:at	(Ljava/lang/String;)[B
    //   756: aload 9
    //   758: invokevirtual 887	com/amazonaws/services/s3/model/ObjectMetadata:jV	()Ljava/lang/String;
    //   761: invokestatic 890	com/amazonaws/util/BinaryUtils:as	(Ljava/lang/String;)[B
    //   764: invokestatic 893	java/util/Arrays:equals	([B[B)Z
    //   767: ifne +367 -> 1134
    //   770: aload 10
    //   772: bipush 8
    //   774: invokestatic 847	com/amazonaws/services/s3/AmazonS3Client:a	(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V
    //   777: new 315	com/amazonaws/AmazonClientException
    //   780: dup
    //   781: ldc_w 895
    //   784: invokespecial 318	com/amazonaws/AmazonClientException:<init>	(Ljava/lang/String;)V
    //   787: athrow
    //   788: iconst_0
    //   789: istore_2
    //   790: goto -665 -> 125
    //   793: getstatic 720	com/amazonaws/services/s3/util/Mimetypes:alS	Lorg/apache/commons/logging/Log;
    //   796: invokeinterface 725 1 0
    //   801: ifeq +35 -> 836
    //   804: getstatic 720	com/amazonaws/services/s3/util/Mimetypes:alS	Lorg/apache/commons/logging/Log;
    //   807: new 163	java/lang/StringBuilder
    //   810: dup
    //   811: ldc_w 897
    //   814: invokespecial 193	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   817: aload 14
    //   819: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   822: ldc_w 899
    //   825: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   828: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   831: invokeinterface 735 2 0
    //   836: ldc_w 854
    //   839: astore 7
    //   841: goto -570 -> 271
    //   844: getstatic 720	com/amazonaws/services/s3/util/Mimetypes:alS	Lorg/apache/commons/logging/Log;
    //   847: invokeinterface 725 1 0
    //   852: ifeq -16 -> 836
    //   855: getstatic 720	com/amazonaws/services/s3/util/Mimetypes:alS	Lorg/apache/commons/logging/Log;
    //   858: new 163	java/lang/StringBuilder
    //   861: dup
    //   862: ldc_w 901
    //   865: invokespecial 193	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   868: aload 9
    //   870: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   873: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   876: invokeinterface 735 2 0
    //   881: goto -45 -> 836
    //   884: aload 8
    //   886: getfield 448	com/amazonaws/services/s3/model/ObjectMetadata:metadata	Ljava/util/Map;
    //   889: ldc_w 746
    //   892: aload 7
    //   894: invokeinterface 403 3 0
    //   899: pop
    //   900: goto -587 -> 313
    //   903: astore_1
    //   904: new 315	com/amazonaws/AmazonClientException
    //   907: dup
    //   908: new 163	java/lang/StringBuilder
    //   911: dup
    //   912: ldc_w 903
    //   915: invokespecial 193	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   918: aload_1
    //   919: invokevirtual 906	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   922: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   925: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   928: aload_1
    //   929: invokespecial 585	com/amazonaws/AmazonClientException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   932: athrow
    //   933: astore_1
    //   934: new 315	com/amazonaws/AmazonClientException
    //   937: dup
    //   938: ldc_w 908
    //   941: aload_1
    //   942: invokespecial 585	com/amazonaws/AmazonClientException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   945: athrow
    //   946: aload_1
    //   947: getfield 912	com/amazonaws/services/s3/model/PutObjectRequest:ass	Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    //   950: ifnull -573 -> 377
    //   953: aload 13
    //   955: ldc_w 914
    //   958: aload_1
    //   959: getfield 912	com/amazonaws/services/s3/model/PutObjectRequest:ass	Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    //   962: invokevirtual 917	com/amazonaws/services/s3/model/CannedAccessControlList:toString	()Ljava/lang/String;
    //   965: invokeinterface 283 3 0
    //   970: goto -593 -> 377
    //   973: aload 13
    //   975: ldc_w 678
    //   978: aload 7
    //   980: invokestatic 919	com/amazonaws/services/s3/AmazonS3Client:g	(Ljava/io/InputStream;)J
    //   983: invokestatic 922	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   986: invokeinterface 283 3 0
    //   991: aload 7
    //   993: astore_1
    //   994: goto -401 -> 593
    //   997: aload 9
    //   999: invokevirtual 925	java/lang/Long:longValue	()J
    //   1002: lstore 5
    //   1004: aload 7
    //   1006: astore_1
    //   1007: lload 5
    //   1009: lconst_0
    //   1010: lcmp
    //   1011: iflt -418 -> 593
    //   1014: new 927	com/amazonaws/util/LengthCheckInputStream
    //   1017: dup
    //   1018: aload 7
    //   1020: lload 5
    //   1022: invokespecial 930	com/amazonaws/util/LengthCheckInputStream:<init>	(Ljava/io/InputStream;J)V
    //   1025: astore_1
    //   1026: aload 13
    //   1028: ldc_w 678
    //   1031: aload 9
    //   1033: invokevirtual 931	java/lang/Long:toString	()Ljava/lang/String;
    //   1036: invokeinterface 283 3 0
    //   1041: goto -448 -> 593
    //   1044: astore 7
    //   1046: getstatic 31	com/amazonaws/services/s3/AmazonS3Client:alS	Lorg/apache/commons/logging/Log;
    //   1049: new 163	java/lang/StringBuilder
    //   1052: dup
    //   1053: ldc_w 933
    //   1056: invokespecial 193	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1059: aload 7
    //   1061: invokevirtual 906	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1064: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1067: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1070: aload 7
    //   1072: invokeinterface 936 3 0
    //   1077: goto -361 -> 716
    //   1080: astore_1
    //   1081: aload 10
    //   1083: bipush 8
    //   1085: invokestatic 847	com/amazonaws/services/s3/AmazonS3Client:a	(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V
    //   1088: aload_1
    //   1089: athrow
    //   1090: astore_1
    //   1091: aload 7
    //   1093: invokevirtual 601	java/io/InputStream:close	()V
    //   1096: aload_1
    //   1097: athrow
    //   1098: astore 7
    //   1100: getstatic 31	com/amazonaws/services/s3/AmazonS3Client:alS	Lorg/apache/commons/logging/Log;
    //   1103: new 163	java/lang/StringBuilder
    //   1106: dup
    //   1107: ldc_w 933
    //   1110: invokespecial 193	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1113: aload 7
    //   1115: invokevirtual 906	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1118: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1121: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1124: aload 7
    //   1126: invokeinterface 936 3 0
    //   1131: goto -35 -> 1096
    //   1134: aload 10
    //   1136: iconst_4
    //   1137: invokestatic 847	com/amazonaws/services/s3/AmazonS3Client:a	(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V
    //   1140: new 938	com/amazonaws/services/s3/model/PutObjectResult
    //   1143: dup
    //   1144: invokespecial 939	com/amazonaws/services/s3/model/PutObjectResult:<init>	()V
    //   1147: astore 7
    //   1149: aload 7
    //   1151: aload 9
    //   1153: invokevirtual 887	com/amazonaws/services/s3/model/ObjectMetadata:jV	()Ljava/lang/String;
    //   1156: putfield 942	com/amazonaws/services/s3/model/PutObjectResult:arm	Ljava/lang/String;
    //   1159: aload 7
    //   1161: aload 9
    //   1163: getfield 448	com/amazonaws/services/s3/model/ObjectMetadata:metadata	Ljava/util/Map;
    //   1166: ldc_w 944
    //   1169: invokeinterface 407 2 0
    //   1174: checkcast 204	java/lang/String
    //   1177: putfield 947	com/amazonaws/services/s3/model/PutObjectResult:arq	Ljava/lang/String;
    //   1180: aload 7
    //   1182: aload 9
    //   1184: invokevirtual 950	com/amazonaws/services/s3/model/ObjectMetadata:jW	()Ljava/lang/String;
    //   1187: putfield 955	com/amazonaws/services/s3/internal/SSEResultBase:aqc	Ljava/lang/String;
    //   1190: aload 7
    //   1192: aload 9
    //   1194: getfield 448	com/amazonaws/services/s3/model/ObjectMetadata:metadata	Ljava/util/Map;
    //   1197: ldc_w 459
    //   1200: invokeinterface 407 2 0
    //   1205: checkcast 204	java/lang/String
    //   1208: putfield 958	com/amazonaws/services/s3/internal/SSEResultBase:aqf	Ljava/lang/String;
    //   1211: aload 7
    //   1213: aload 9
    //   1215: getfield 448	com/amazonaws/services/s3/model/ObjectMetadata:metadata	Ljava/util/Map;
    //   1218: ldc_w 798
    //   1221: invokeinterface 407 2 0
    //   1226: checkcast 204	java/lang/String
    //   1229: putfield 961	com/amazonaws/services/s3/internal/SSEResultBase:aqd	Ljava/lang/String;
    //   1232: aload 7
    //   1234: aload 9
    //   1236: getfield 448	com/amazonaws/services/s3/model/ObjectMetadata:metadata	Ljava/util/Map;
    //   1239: ldc_w 812
    //   1242: invokeinterface 407 2 0
    //   1247: checkcast 204	java/lang/String
    //   1250: putfield 964	com/amazonaws/services/s3/internal/SSEResultBase:aqe	Ljava/lang/String;
    //   1253: aload 7
    //   1255: aload 9
    //   1257: getfield 967	com/amazonaws/services/s3/model/ObjectMetadata:arn	Ljava/util/Date;
    //   1260: putfield 968	com/amazonaws/services/s3/model/PutObjectResult:arn	Ljava/util/Date;
    //   1263: aload 7
    //   1265: aload 9
    //   1267: getfield 971	com/amazonaws/services/s3/model/ObjectMetadata:aro	Ljava/lang/String;
    //   1270: putfield 972	com/amazonaws/services/s3/model/PutObjectResult:aro	Ljava/lang/String;
    //   1273: aload 7
    //   1275: aload_1
    //   1276: putfield 975	com/amazonaws/services/s3/model/PutObjectResult:asw	Ljava/lang/String;
    //   1279: aload 7
    //   1281: areturn
    //   1282: astore 7
    //   1284: goto -568 -> 716
    //   1287: astore 7
    //   1289: goto -193 -> 1096
    //   1292: aload 7
    //   1294: astore_1
    //   1295: goto -557 -> 738
    //   1298: aload_1
    //   1299: astore 7
    //   1301: aload 9
    //   1303: astore_1
    //   1304: goto -660 -> 644
    //   1307: goto -692 -> 615
    //   1310: goto -861 -> 449
    //   1313: goto -989 -> 324
    //   1316: goto -1262 -> 54
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1319	0	this	AmazonS3Client
    //   0	1319	1	paramPutObjectRequest	com.amazonaws.services.s3.model.PutObjectRequest
    //   124	666	2	i	int
    //   152	21	3	j	int
    //   74	674	4	bool	boolean
    //   94	927	5	l	long
    //   29	990	7	localObject1	Object
    //   1044	48	7	localException1	Exception
    //   1098	27	7	localException2	Exception
    //   1147	133	7	localPutObjectResult	com.amazonaws.services.s3.model.PutObjectResult
    //   1282	1	7	localAbortedException1	com.amazonaws.AbortedException
    //   1287	6	7	localAbortedException2	com.amazonaws.AbortedException
    //   1299	1	7	localPutObjectRequest	com.amazonaws.services.s3.model.PutObjectRequest
    //   23	862	8	localObjectMetadata	ObjectMetadata
    //   143	1159	9	localObject2	Object
    //   38	1097	10	localProgressListenerCallbackExecutor	ProgressListenerCallbackExecutor
    //   11	689	11	str1	String
    //   17	685	12	str2	String
    //   87	940	13	localObject3	Object
    //   179	639	14	str3	String
    // Exception table:
    //   from	to	target	type
    //   287	294	903	java/lang/Exception
    //   299	313	903	java/lang/Exception
    //   884	900	903	java/lang/Exception
    //   313	324	933	java/io/FileNotFoundException
    //   711	716	1044	java/lang/Exception
    //   689	711	1080	com/amazonaws/AmazonClientException
    //   689	711	1090	finally
    //   1081	1090	1090	finally
    //   1091	1096	1098	java/lang/Exception
    //   711	716	1282	com/amazonaws/AbortedException
    //   1091	1096	1287	com/amazonaws/AbortedException
  }
  
  public final void a(Region paramRegion)
  {
    super.a(paramRegion);
    this.apH = paramRegion.name;
  }
  
  public final URL h(String paramString1, String paramString2)
  {
    DefaultRequest localDefaultRequest = new DefaultRequest(Constants.apN);
    b(localDefaultRequest, paramString1, paramString2);
    return ServiceUtils.l(localDefaultRequest);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/AmazonS3Client.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */