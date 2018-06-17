package com.amazonaws.services.s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.services.s3.internal.DeleteObjectsResponse;
import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.ServiceUtils;
import com.amazonaws.services.s3.model.AccessControlList;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.services.s3.model.Bucket;
import com.amazonaws.services.s3.model.BucketAccelerateConfiguration;
import com.amazonaws.services.s3.model.BucketCrossOriginConfiguration;
import com.amazonaws.services.s3.model.BucketLifecycleConfiguration;
import com.amazonaws.services.s3.model.BucketLifecycleConfiguration.NoncurrentVersionTransition;
import com.amazonaws.services.s3.model.BucketLifecycleConfiguration.Rule;
import com.amazonaws.services.s3.model.BucketLifecycleConfiguration.Transition;
import com.amazonaws.services.s3.model.BucketLoggingConfiguration;
import com.amazonaws.services.s3.model.BucketNotificationConfiguration;
import com.amazonaws.services.s3.model.BucketNotificationConfiguration.TopicConfiguration;
import com.amazonaws.services.s3.model.BucketReplicationConfiguration;
import com.amazonaws.services.s3.model.BucketTaggingConfiguration;
import com.amazonaws.services.s3.model.BucketVersioningConfiguration;
import com.amazonaws.services.s3.model.BucketWebsiteConfiguration;
import com.amazonaws.services.s3.model.CORSRule;
import com.amazonaws.services.s3.model.CORSRule.AllowedMethods;
import com.amazonaws.services.s3.model.CanonicalGrantee;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.CopyObjectResult;
import com.amazonaws.services.s3.model.DeleteObjectsResult.DeletedObject;
import com.amazonaws.services.s3.model.EmailAddressGrantee;
import com.amazonaws.services.s3.model.Grant;
import com.amazonaws.services.s3.model.Grantee;
import com.amazonaws.services.s3.model.GroupGrantee;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.ListObjectsV2Result;
import com.amazonaws.services.s3.model.MultiObjectDeleteException.DeleteError;
import com.amazonaws.services.s3.model.MultipartUpload;
import com.amazonaws.services.s3.model.MultipartUploadListing;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.Owner;
import com.amazonaws.services.s3.model.PartListing;
import com.amazonaws.services.s3.model.PartSummary;
import com.amazonaws.services.s3.model.Permission;
import com.amazonaws.services.s3.model.RedirectRule;
import com.amazonaws.services.s3.model.ReplicationDestinationConfig;
import com.amazonaws.services.s3.model.ReplicationRule;
import com.amazonaws.services.s3.model.RoutingRule;
import com.amazonaws.services.s3.model.RoutingRuleCondition;
import com.amazonaws.services.s3.model.S3ObjectSummary;
import com.amazonaws.services.s3.model.S3VersionSummary;
import com.amazonaws.services.s3.model.StorageClass;
import com.amazonaws.services.s3.model.TagSet;
import com.amazonaws.services.s3.model.VersionListing;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.StringUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

public class XmlResponsesSaxParser
{
  private static final Log alS = LogFactory.getLog(XmlResponsesSaxParser.class);
  private XMLReader ata = null;
  private final boolean atb = true;
  
  public XmlResponsesSaxParser()
    throws AmazonClientException
  {
    try
    {
      this.ata = XMLReaderFactory.createXMLReader();
      return;
    }
    catch (SAXException localSAXException1)
    {
      System.setProperty("org.xml.sax.driver", "org.xmlpull.v1.sax2.Driver");
      try
      {
        this.ata = XMLReaderFactory.createXMLReader();
        return;
      }
      catch (SAXException localSAXException2)
      {
        throw new AmazonClientException("Couldn't initialize a sax driver for the XMLReader", localSAXException1);
      }
    }
  }
  
  private static int parseInt(String paramString)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      alS.error("Unable to parse integer value '" + paramString + "'", localNumberFormatException);
    }
    return -1;
  }
  
  private static long parseLong(String paramString)
  {
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      alS.error("Unable to parse long value '" + paramString + "'", localNumberFormatException);
    }
    return -1L;
  }
  
  public static class AccessControlListHandler
    extends AbstractHandler
  {
    private final AccessControlList ast = new AccessControlList();
    private Grantee atc = null;
    private Permission atd = null;
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (d(new String[] { "AccessControlPolicy" })) {
        if (paramString.equals("Owner")) {
          this.ast.aqn = new Owner();
        }
      }
      while ((!d(new String[] { "AccessControlPolicy", "AccessControlList", "Grant" })) || (!paramString.equals("Grantee"))) {
        return;
      }
      paramString = XmlResponsesSaxParser.b("xsi:type", paramAttributes);
      if ("AmazonCustomerByEmail".equals(paramString))
      {
        this.atc = new EmailAddressGrantee();
        return;
      }
      if ("CanonicalUser".equals(paramString))
      {
        this.atc = new CanonicalGrantee();
        return;
      }
      "Group".equals(paramString);
    }
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "AccessControlPolicy", "Owner" })) {
        if (paramString.equals("ID")) {
          this.ast.aqn.id = this.asY.toString();
        }
      }
      label47:
      do
      {
        do
        {
          do
          {
            do
            {
              break label47;
              break label47;
              do
              {
                return;
              } while (!paramString.equals("DisplayName"));
              this.ast.aqn.arj = this.asY.toString();
              return;
              if (!d(new String[] { "AccessControlPolicy", "AccessControlList" })) {
                break;
              }
            } while (!paramString.equals("Grant"));
            paramString = this.ast;
            Grantee localGrantee = this.atc;
            Permission localPermission = this.atd;
            paramString.aqm.add(new Grant(localGrantee, localPermission));
            this.atc = null;
            this.atd = null;
            return;
            if (!d(new String[] { "AccessControlPolicy", "AccessControlList", "Grant" })) {
              break;
            }
          } while (!paramString.equals("Permission"));
          this.atd = Permission.ai(this.asY.toString());
          return;
        } while (!d(new String[] { "AccessControlPolicy", "AccessControlList", "Grant", "Grantee" }));
        if (paramString.equals("ID"))
        {
          this.atc.ag(this.asY.toString());
          return;
        }
        if (paramString.equals("EmailAddress"))
        {
          this.atc.ag(this.asY.toString());
          return;
        }
        if (paramString.equals("URI"))
        {
          this.atc = GroupGrantee.ah(this.asY.toString());
          return;
        }
      } while (!paramString.equals("DisplayName"));
      ((CanonicalGrantee)this.atc).arj = this.asY.toString();
    }
  }
  
  public static class BucketAccelerateConfigurationHandler
    extends AbstractHandler
  {
    private final BucketAccelerateConfiguration ate = new BucketAccelerateConfiguration();
    
    protected final void a(String paramString, Attributes paramAttributes) {}
    
    protected final void an(String paramString)
    {
      if ((d(new String[] { "AccelerateConfiguration" })) && (paramString.equals("Status"))) {
        this.ate.aqr = this.asY.toString();
      }
    }
  }
  
  public static class BucketCrossOriginConfigurationHandler
    extends AbstractHandler
  {
    private List<CORSRule.AllowedMethods> aqP = null;
    private List<String> aqQ = null;
    private List<String> aqR = null;
    private List<String> aqS = null;
    private final BucketCrossOriginConfiguration atf = new BucketCrossOriginConfiguration(new ArrayList());
    private CORSRule atg;
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (d(new String[] { "CORSConfiguration" })) {
        if (paramString.equals("CORSRule")) {
          this.atg = new CORSRule();
        }
      }
      label36:
      do
      {
        do
        {
          do
          {
            do
            {
              break label36;
              break label36;
              do
              {
                return;
              } while (!d(new String[] { "CORSConfiguration", "CORSRule" }));
              if (!paramString.equals("AllowedOrigin")) {
                break;
              }
            } while (this.aqQ != null);
            this.aqQ = new ArrayList();
            return;
            if (!paramString.equals("AllowedMethod")) {
              break;
            }
          } while (this.aqP != null);
          this.aqP = new ArrayList();
          return;
          if (!paramString.equals("ExposeHeader")) {
            break;
          }
        } while (this.aqR != null);
        this.aqR = new ArrayList();
        return;
      } while ((!paramString.equals("AllowedHeader")) || (this.aqS != null));
      this.aqS = new LinkedList();
    }
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "CORSConfiguration" })) {
        if (paramString.equals("CORSRule"))
        {
          this.atg.aqS = this.aqS;
          this.atg.aqP = this.aqP;
          this.atg.aqQ = this.aqQ;
          this.atg.aqR = this.aqR;
          this.aqS = null;
          this.aqP = null;
          this.aqQ = null;
          this.aqR = null;
          this.atf.aqs.add(this.atg);
          this.atg = null;
        }
      }
      do
      {
        do
        {
          return;
        } while (!d(new String[] { "CORSConfiguration", "CORSRule" }));
        if (paramString.equals("ID"))
        {
          this.atg.id = this.asY.toString();
          return;
        }
        if (paramString.equals("AllowedOrigin"))
        {
          this.aqQ.add(this.asY.toString());
          return;
        }
        if (paramString.equals("AllowedMethod"))
        {
          this.aqP.add(CORSRule.AllowedMethods.af(this.asY.toString()));
          return;
        }
        if (paramString.equals("MaxAgeSeconds"))
        {
          this.atg.maxAgeSeconds = Integer.parseInt(this.asY.toString());
          return;
        }
        if (paramString.equals("ExposeHeader"))
        {
          this.aqR.add(this.asY.toString());
          return;
        }
      } while (!paramString.equals("AllowedHeader"));
      this.aqS.add(this.asY.toString());
    }
  }
  
  public static class BucketLifecycleConfigurationHandler
    extends AbstractHandler
  {
    private final BucketLifecycleConfiguration ath = new BucketLifecycleConfiguration(new ArrayList());
    private BucketLifecycleConfiguration.Rule ati;
    private BucketLifecycleConfiguration.Transition atj;
    private BucketLifecycleConfiguration.NoncurrentVersionTransition atk;
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (d(new String[] { "LifecycleConfiguration" })) {
        if (paramString.equals("Rule")) {
          this.ati = new BucketLifecycleConfiguration.Rule();
        }
      }
      do
      {
        do
        {
          return;
        } while (!d(new String[] { "LifecycleConfiguration", "Rule" }));
        if (paramString.equals("Transition"))
        {
          this.atj = new BucketLifecycleConfiguration.Transition();
          return;
        }
      } while (!paramString.equals("NoncurrentVersionTransition"));
      this.atk = new BucketLifecycleConfiguration.NoncurrentVersionTransition();
    }
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "LifecycleConfiguration" })) {
        if (paramString.equals("Rule"))
        {
          this.ath.aqs.add(this.ati);
          this.ati = null;
        }
      }
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return;
                  if (!d(new String[] { "LifecycleConfiguration", "Rule" })) {
                    break;
                  }
                  if (paramString.equals("ID"))
                  {
                    this.ati.id = this.asY.toString();
                    return;
                  }
                  if (paramString.equals("Prefix"))
                  {
                    this.ati.aqv = this.asY.toString();
                    return;
                  }
                  if (paramString.equals("Status"))
                  {
                    this.ati.aqr = this.asY.toString();
                    return;
                  }
                  if (paramString.equals("Transition"))
                  {
                    this.ati.aqz = this.atj;
                    this.atj = null;
                    return;
                  }
                } while (!paramString.equals("NoncurrentVersionTransition"));
                this.ati.aqA = this.atk;
                this.atk = null;
                return;
                if (!d(new String[] { "LifecycleConfiguration", "Rule", "Expiration" })) {
                  break;
                }
                if (paramString.equals("Date"))
                {
                  this.ati.aqy = ServiceUtils.ab(this.asY.toString());
                  return;
                }
              } while (!paramString.equals("Days"));
              this.ati.aqw = Integer.parseInt(this.asY.toString());
              return;
              if (!d(new String[] { "LifecycleConfiguration", "Rule", "Transition" })) {
                break;
              }
              if (paramString.equals("StorageClass"))
              {
                this.atj.aqu = StorageClass.am(this.asY.toString());
                return;
              }
              if (paramString.equals("Date"))
              {
                this.atj.aqB = ServiceUtils.ab(this.asY.toString());
                return;
              }
            } while (!paramString.equals("Days"));
            this.atj.aqt = Integer.parseInt(this.asY.toString());
            return;
            if (!d(new String[] { "LifecycleConfiguration", "Rule", "NoncurrentVersionExpiration" })) {
              break;
            }
          } while (!paramString.equals("NoncurrentDays"));
          this.ati.aqx = Integer.parseInt(this.asY.toString());
          return;
        } while (!d(new String[] { "LifecycleConfiguration", "Rule", "NoncurrentVersionTransition" }));
        if (paramString.equals("StorageClass"))
        {
          this.atk.aqu = StorageClass.am(this.asY.toString());
          return;
        }
      } while (!paramString.equals("NoncurrentDays"));
      this.atk.aqt = Integer.parseInt(this.asY.toString());
    }
  }
  
  public static class BucketLocationHandler
    extends AbstractHandler
  {
    private String arl = null;
    
    protected final void a(String paramString, Attributes paramAttributes) {}
    
    protected final void an(String paramString)
    {
      if ((this.asZ.isEmpty()) && (paramString.equals("LocationConstraint")))
      {
        paramString = this.asY.toString();
        if (paramString.length() == 0) {
          this.arl = null;
        }
      }
      else
      {
        return;
      }
      this.arl = paramString;
    }
  }
  
  public static class BucketLoggingConfigurationHandler
    extends AbstractHandler
  {
    private final BucketLoggingConfiguration atl = new BucketLoggingConfiguration();
    
    protected final void a(String paramString, Attributes paramAttributes) {}
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "BucketLoggingStatus", "LoggingEnabled" }))
      {
        if (!paramString.equals("TargetBucket")) {
          break label45;
        }
        this.atl.aqC = this.asY.toString();
      }
      label45:
      while (!paramString.equals("TargetPrefix")) {
        return;
      }
      BucketLoggingConfiguration localBucketLoggingConfiguration = this.atl;
      String str = this.asY.toString();
      paramString = str;
      if (str == null) {
        paramString = "";
      }
      localBucketLoggingConfiguration.aqD = paramString;
    }
  }
  
  public static class BucketNotificationConfigurationHandler
    extends AbstractHandler
  {
    private String aqF;
    private String aqG;
    private final BucketNotificationConfiguration atm = new BucketNotificationConfiguration();
    
    protected final void a(String paramString, Attributes paramAttributes) {}
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "NotificationConfiguration", "TopicConfiguration" })) {
        if (paramString.equals("Topic")) {
          this.aqF = this.asY.toString();
        }
      }
      while ((!d(new String[] { "NotificationConfiguration" })) || (!paramString.equals("TopicConfiguration")))
      {
        do
        {
          return;
        } while (!paramString.equals("Event"));
        this.aqG = this.asY.toString();
        return;
      }
      if ((this.aqF != null) && (this.aqG != null)) {
        this.atm.aqE.add(new BucketNotificationConfiguration.TopicConfiguration(this.aqF, this.aqG));
      }
      this.aqF = null;
      this.aqG = null;
    }
  }
  
  public static class BucketReplicationConfigurationHandler
    extends AbstractHandler
  {
    private ReplicationDestinationConfig asC;
    private final BucketReplicationConfiguration atn = new BucketReplicationConfiguration();
    private String ato;
    private ReplicationRule atp;
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (d(new String[] { "ReplicationConfiguration" })) {
        if (paramString.equals("Rule")) {
          this.atp = new ReplicationRule();
        }
      }
      while ((!d(new String[] { "ReplicationConfiguration", "Rule" })) || (!paramString.equals("Destination"))) {
        return;
      }
      this.asC = new ReplicationDestinationConfig();
    }
    
    protected final void an(String paramString)
    {
      Object localObject;
      if (d(new String[] { "ReplicationConfiguration" })) {
        if (paramString.equals("Rule"))
        {
          paramString = this.atn;
          localObject = this.ato;
          ReplicationRule localReplicationRule = this.atp;
          if ((localObject == null) || (((String)localObject).trim().isEmpty())) {
            throw new IllegalArgumentException("Rule id cannot be null or empty.");
          }
          if (localReplicationRule == null) {
            throw new IllegalArgumentException("Replication rule cannot be null");
          }
          paramString.aqI.put(localObject, localReplicationRule);
          this.atp = null;
          this.ato = null;
          this.asC = null;
        }
      }
      label105:
      do
      {
        do
        {
          do
          {
            break label105;
            do
            {
              return;
            } while (!paramString.equals("Role"));
            this.atn.aqH = this.asY.toString();
            return;
            if (!d(new String[] { "ReplicationConfiguration", "Rule" })) {
              break;
            }
            if (paramString.equals("ID"))
            {
              this.ato = this.asY.toString();
              return;
            }
            if (paramString.equals("Prefix"))
            {
              paramString = this.atp;
              localObject = this.asY.toString();
              if (localObject == null) {
                throw new IllegalArgumentException("Prefix cannot be null for a replication rule");
              }
              paramString.aqv = ((String)localObject);
              return;
            }
            if (paramString.equals("Status"))
            {
              this.atp.aqr = this.asY.toString();
              return;
            }
          } while (!paramString.equals("Destination"));
          paramString = this.atp;
          localObject = this.asC;
          if (localObject == null) {
            throw new IllegalArgumentException("Destination cannot be null in the replication rule");
          }
          paramString.asC = ((ReplicationDestinationConfig)localObject);
          return;
        } while (!d(new String[] { "ReplicationConfiguration", "Rule", "Destination" }));
        if (paramString.equals("Bucket"))
        {
          paramString = this.asC;
          localObject = this.asY.toString();
          if (localObject == null) {
            throw new IllegalArgumentException("Bucket name cannot be null");
          }
          paramString.asB = ((String)localObject);
          return;
        }
      } while (!paramString.equals("StorageClass"));
      this.asC.arR = this.asY.toString();
    }
  }
  
  public static class BucketTaggingConfigurationHandler
    extends AbstractHandler
  {
    private final BucketTaggingConfiguration atq = new BucketTaggingConfiguration();
    private Map<String, String> atr;
    private String ats;
    private String att;
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if ((d(new String[] { "Tagging" })) && (paramString.equals("TagSet"))) {
        this.atr = new HashMap();
      }
    }
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "Tagging" })) {
        if (paramString.equals("TagSet"))
        {
          this.atq.aqJ.add(new TagSet(this.atr));
          this.atr = null;
        }
      }
      do
      {
        do
        {
          do
          {
            return;
            if (!d(new String[] { "Tagging", "TagSet" })) {
              break;
            }
          } while (!paramString.equals("Tag"));
          if ((this.ats != null) && (this.att != null)) {
            this.atr.put(this.ats, this.att);
          }
          this.ats = null;
          this.att = null;
          return;
        } while (!d(new String[] { "Tagging", "TagSet", "Tag" }));
        if (paramString.equals("Key"))
        {
          this.ats = this.asY.toString();
          return;
        }
      } while (!paramString.equals("Value"));
      this.att = this.asY.toString();
    }
  }
  
  public static class BucketVersioningConfigurationHandler
    extends AbstractHandler
  {
    private final BucketVersioningConfiguration atu = new BucketVersioningConfiguration();
    
    protected final void a(String paramString, Attributes paramAttributes) {}
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "VersioningConfiguration" }))
      {
        if (!paramString.equals("Status")) {
          break label40;
        }
        this.atu.aqr = this.asY.toString();
      }
      label40:
      while (!paramString.equals("MfaDelete")) {
        return;
      }
      paramString = this.asY.toString();
      if (paramString.equals("Disabled"))
      {
        this.atu.aqK = Boolean.valueOf(false);
        return;
      }
      if (paramString.equals("Enabled"))
      {
        this.atu.aqK = Boolean.valueOf(true);
        return;
      }
      this.atu.aqK = null;
    }
  }
  
  public static class BucketWebsiteConfigurationHandler
    extends AbstractHandler
  {
    private final BucketWebsiteConfiguration atv = new BucketWebsiteConfiguration((byte)0);
    private RoutingRuleCondition atw = null;
    private RedirectRule atx = null;
    private RoutingRule aty = null;
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (d(new String[] { "WebsiteConfiguration" })) {
        if (paramString.equals("RedirectAllRequestsTo")) {
          this.atx = new RedirectRule();
        }
      }
      do
      {
        do
        {
          do
          {
            return;
            if (!d(new String[] { "WebsiteConfiguration", "RoutingRules" })) {
              break;
            }
          } while (!paramString.equals("RoutingRule"));
          this.aty = new RoutingRule();
          return;
        } while (!d(new String[] { "WebsiteConfiguration", "RoutingRules", "RoutingRule" }));
        if (paramString.equals("Condition"))
        {
          this.atw = new RoutingRuleCondition();
          return;
        }
      } while (!paramString.equals("Redirect"));
      this.atx = new RedirectRule();
    }
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "WebsiteConfiguration" })) {
        if (paramString.equals("RedirectAllRequestsTo"))
        {
          this.atv.aqN = this.atx;
          this.atx = null;
        }
      }
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    return;
                    if (!d(new String[] { "WebsiteConfiguration", "IndexDocument" })) {
                      break;
                    }
                  } while (!paramString.equals("Suffix"));
                  this.atv.aqL = this.asY.toString();
                  return;
                  if (!d(new String[] { "WebsiteConfiguration", "ErrorDocument" })) {
                    break;
                  }
                } while (!paramString.equals("Key"));
                this.atv.aqM = this.asY.toString();
                return;
                if (!d(new String[] { "WebsiteConfiguration", "RoutingRules" })) {
                  break;
                }
              } while (!paramString.equals("RoutingRule"));
              this.atv.aqO.add(this.aty);
              this.aty = null;
              return;
              if (!d(new String[] { "WebsiteConfiguration", "RoutingRules", "RoutingRule" })) {
                break;
              }
              if (paramString.equals("Condition"))
              {
                this.aty.asD = this.atw;
                this.atw = null;
                return;
              }
            } while (!paramString.equals("Redirect"));
            this.aty.asE = this.atx;
            this.atx = null;
            return;
            if (!d(new String[] { "WebsiteConfiguration", "RoutingRules", "RoutingRule", "Condition" })) {
              break;
            }
            if (paramString.equals("KeyPrefixEquals"))
            {
              this.atw.asF = this.asY.toString();
              return;
            }
          } while (!paramString.equals("HttpErrorCodeReturnedEquals"));
          this.atw.asG = this.asY.toString();
          return;
          if (d(new String[] { "WebsiteConfiguration", "RedirectAllRequestsTo" })) {
            break;
          }
        } while (!d(new String[] { "WebsiteConfiguration", "RoutingRules", "RoutingRule", "Redirect" }));
        if (paramString.equals("Protocol"))
        {
          this.atx.protocol = this.asY.toString();
          return;
        }
        if (paramString.equals("HostName"))
        {
          this.atx.asx = this.asY.toString();
          return;
        }
        if (paramString.equals("ReplaceKeyPrefixWith"))
        {
          this.atx.asy = this.asY.toString();
          return;
        }
        if (paramString.equals("ReplaceKeyWith"))
        {
          this.atx.asz = this.asY.toString();
          return;
        }
      } while (!paramString.equals("HttpRedirectCode"));
      this.atx.asA = this.asY.toString();
    }
  }
  
  public static class CompleteMultipartUploadHandler
    extends AbstractSSEHandler
    implements ObjectExpirationResult
  {
    private String alJ;
    private String alK;
    private AmazonS3Exception atA;
    private String atB;
    private CompleteMultipartUploadResult atz;
    
    public final void Z(String paramString)
    {
      if (this.atz != null) {
        this.atz.aro = paramString;
      }
    }
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if ((this.asZ.isEmpty()) && (paramString.equals("CompleteMultipartUploadResult"))) {
        this.atz = new CompleteMultipartUploadResult();
      }
    }
    
    protected final void an(String paramString)
    {
      if (this.asZ.isEmpty()) {
        if ((paramString.equals("Error")) && (this.atA != null))
        {
          this.atA.alK = this.alK;
          this.atA.alJ = this.alJ;
          this.atA.aqo = this.atB;
        }
      }
      do
      {
        do
        {
          do
          {
            return;
            if (!d(new String[] { "CompleteMultipartUploadResult" })) {
              break;
            }
            if (paramString.equals("Location"))
            {
              this.atz.arl = this.asY.toString();
              return;
            }
            if (paramString.equals("Bucket"))
            {
              this.atz.ark = this.asY.toString();
              return;
            }
            if (paramString.equals("Key"))
            {
              this.atz.key = this.asY.toString();
              return;
            }
          } while (!paramString.equals("ETag"));
          this.atz.arm = ServiceUtils.ad(this.asY.toString());
          return;
        } while (!d(new String[] { "Error" }));
        if (paramString.equals("Code"))
        {
          this.alK = this.asY.toString();
          return;
        }
        if (paramString.equals("Message"))
        {
          this.atA = new AmazonS3Exception(this.asY.toString());
          return;
        }
        if (paramString.equals("RequestId"))
        {
          this.alJ = this.asY.toString();
          return;
        }
      } while (!paramString.equals("HostId"));
      this.atB = this.asY.toString();
    }
    
    public final void e(Date paramDate)
    {
      if (this.atz != null) {
        this.atz.arn = paramDate;
      }
    }
  }
  
  public static class CopyObjectResultHandler
    extends AbstractSSEHandler
    implements ObjectExpirationResult
  {
    private String alK = null;
    private String alM = null;
    private final CopyObjectResult atC = new CopyObjectResult();
    private String atD = null;
    private String atE = null;
    private boolean atF = false;
    
    public final void Z(String paramString)
    {
      this.atC.aro = paramString;
    }
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (this.asZ.isEmpty())
      {
        if ((!paramString.equals("CopyObjectResult")) && (!paramString.equals("CopyPartResult"))) {
          break label34;
        }
        this.atF = false;
      }
      label34:
      while (!paramString.equals("Error")) {
        return;
      }
      this.atF = true;
    }
    
    protected final void an(String paramString)
    {
      if (!d(new String[] { "CopyObjectResult" }))
      {
        if (!d(new String[] { "CopyPartResult" })) {}
      }
      else if (paramString.equals("LastModified")) {
        this.atC.arp = ServiceUtils.ab(this.asY.toString());
      }
      do
      {
        do
        {
          do
          {
            return;
          } while (!paramString.equals("ETag"));
          this.atC.etag = ServiceUtils.ad(this.asY.toString());
          return;
        } while (!d(new String[] { "Error" }));
        if (paramString.equals("Code"))
        {
          this.alK = this.asY.toString();
          return;
        }
        if (paramString.equals("Message"))
        {
          this.alM = this.asY.toString();
          return;
        }
        if (paramString.equals("RequestId"))
        {
          this.atD = this.asY.toString();
          return;
        }
      } while (!paramString.equals("HostId"));
      this.atE = this.asY.toString();
    }
    
    public final void e(Date paramDate)
    {
      this.atC.arn = paramDate;
    }
  }
  
  public static class DeleteObjectsHandler
    extends AbstractHandler
  {
    private final DeleteObjectsResponse atG = new DeleteObjectsResponse();
    private DeleteObjectsResult.DeletedObject atH = null;
    private MultiObjectDeleteException.DeleteError atI = null;
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (d(new String[] { "DeleteResult" }))
      {
        if (!paramString.equals("Deleted")) {
          break label37;
        }
        this.atH = new DeleteObjectsResult.DeletedObject();
      }
      label37:
      while (!paramString.equals("Error")) {
        return;
      }
      this.atI = new MultiObjectDeleteException.DeleteError();
    }
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "DeleteResult" })) {
        if (paramString.equals("Deleted"))
        {
          this.atG.apP.add(this.atH);
          this.atH = null;
        }
      }
      label47:
      do
      {
        do
        {
          do
          {
            break label47;
            do
            {
              return;
            } while (!paramString.equals("Error"));
            this.atG.apQ.add(this.atI);
            this.atI = null;
            return;
            if (!d(new String[] { "DeleteResult", "Deleted" })) {
              break;
            }
            if (paramString.equals("Key"))
            {
              this.atH.key = this.asY.toString();
              return;
            }
            if (paramString.equals("VersionId"))
            {
              this.atH.arq = this.asY.toString();
              return;
            }
            if (paramString.equals("DeleteMarker"))
            {
              this.atH.arr = this.asY.toString().equals("true");
              return;
            }
          } while (!paramString.equals("DeleteMarkerVersionId"));
          this.atH.ars = this.asY.toString();
          return;
        } while (!d(new String[] { "DeleteResult", "Error" }));
        if (paramString.equals("Key"))
        {
          this.atI.key = this.asY.toString();
          return;
        }
        if (paramString.equals("VersionId"))
        {
          this.atI.arq = this.asY.toString();
          return;
        }
        if (paramString.equals("Code"))
        {
          this.atI.arP = this.asY.toString();
          return;
        }
      } while (!paramString.equals("Message"));
      this.atI.message = this.asY.toString();
    }
  }
  
  public static class InitiateMultipartUploadHandler
    extends AbstractHandler
  {
    private final InitiateMultipartUploadResult atJ = new InitiateMultipartUploadResult();
    
    protected final void a(String paramString, Attributes paramAttributes) {}
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "InitiateMultipartUploadResult" }))
      {
        if (!paramString.equals("Bucket")) {
          break label40;
        }
        this.atJ.ark = this.asY.toString();
      }
      label40:
      do
      {
        return;
        if (paramString.equals("Key"))
        {
          this.atJ.key = this.asY.toString();
          return;
        }
      } while (!paramString.equals("UploadId"));
      this.atJ.arE = this.asY.toString();
    }
  }
  
  public static class ListAllMyBucketsHandler
    extends AbstractHandler
  {
    private final List<Bucket> atK = new ArrayList();
    private Owner atL = null;
    private Bucket atM = null;
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (d(new String[] { "ListAllMyBucketsResult" })) {
        if (paramString.equals("Owner")) {
          this.atL = new Owner();
        }
      }
      while ((!d(new String[] { "ListAllMyBucketsResult", "Buckets" })) || (!paramString.equals("Bucket"))) {
        return;
      }
      this.atM = new Bucket();
      this.atM.aqn = this.atL;
    }
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "ListAllMyBucketsResult", "Owner" })) {
        if (paramString.equals("ID")) {
          this.atL.id = this.asY.toString();
        }
      }
      label44:
      do
      {
        do
        {
          do
          {
            break label44;
            do
            {
              return;
            } while (!paramString.equals("DisplayName"));
            this.atL.arj = this.asY.toString();
            return;
            if (!d(new String[] { "ListAllMyBucketsResult", "Buckets" })) {
              break;
            }
          } while (!paramString.equals("Bucket"));
          this.atK.add(this.atM);
          this.atM = null;
          return;
        } while (!d(new String[] { "ListAllMyBucketsResult", "Buckets", "Bucket" }));
        if (paramString.equals("Name"))
        {
          this.atM.name = this.asY.toString();
          return;
        }
      } while (!paramString.equals("CreationDate"));
      paramString = DateUtils.ax(this.asY.toString());
      this.atM.aqq = paramString;
    }
  }
  
  public static class ListBucketHandler
    extends AbstractHandler
  {
    private final ObjectListing atN = new ObjectListing();
    private S3ObjectSummary atO = null;
    private Owner atP = null;
    private String atQ = null;
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (d(new String[] { "ListBucketResult" })) {
        if (paramString.equals("Contents"))
        {
          this.atO = new S3ObjectSummary();
          this.atO.aj(this.atN.ark);
        }
      }
      while ((!d(new String[] { "ListBucketResult", "Contents" })) || (!paramString.equals("Owner"))) {
        return;
      }
      this.atP = new Owner();
    }
    
    protected final void an(String paramString)
    {
      Object localObject = null;
      if (this.asZ.isEmpty()) {
        if ((paramString.equals("ListBucketResult")) && (this.atN.arH) && (this.atN.arZ == null))
        {
          if (this.atN.arF.isEmpty()) {
            break label98;
          }
          paramString = ((S3ObjectSummary)this.atN.arF.get(this.atN.arF.size() - 1)).getKey();
          this.atN.arZ = paramString;
        }
      }
      label98:
      label242:
      label513:
      label697:
      label771:
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return;
                if (!this.atN.arG.isEmpty())
                {
                  paramString = (String)this.atN.arG.get(this.atN.arG.size() - 1);
                  break;
                }
                XmlResponsesSaxParser.jZ().error("S3 response indicates truncated results, but contains no object summaries or common prefixes.");
                paramString = (String)localObject;
                break;
                if (!d(new String[] { "ListBucketResult" })) {
                  break label513;
                }
                if (!paramString.equals("Name")) {
                  break label242;
                }
                this.atN.ark = this.asY.toString();
              } while (!XmlResponsesSaxParser.jZ().isDebugEnabled());
              XmlResponsesSaxParser.jZ().debug("Examining listing for bucket: " + this.atN.ark);
              return;
              if (paramString.equals("Prefix"))
              {
                this.atN.aqv = XmlResponsesSaxParser.ao(this.asY.toString());
                return;
              }
              if (paramString.equals("Marker"))
              {
                this.atN.asa = XmlResponsesSaxParser.ao(this.asY.toString());
                return;
              }
              if (paramString.equals("NextMarker"))
              {
                this.atN.arZ = this.asY.toString();
                return;
              }
              if (paramString.equals("MaxKeys"))
              {
                this.atN.arL = XmlResponsesSaxParser.ap(this.asY.toString());
                return;
              }
              if (paramString.equals("Delimiter"))
              {
                this.atN.arK = XmlResponsesSaxParser.ao(this.asY.toString());
                return;
              }
              if (paramString.equals("EncodingType"))
              {
                this.atN.arM = XmlResponsesSaxParser.ao(this.asY.toString());
                return;
              }
              if (paramString.equals("IsTruncated"))
              {
                paramString = StringUtils.aC(this.asY.toString());
                if (paramString.startsWith("false"))
                {
                  this.atN.arH = false;
                  return;
                }
                if (paramString.startsWith("true"))
                {
                  this.atN.arH = true;
                  return;
                }
                throw new IllegalStateException("Invalid value for IsTruncated field: " + paramString);
              }
            } while (!paramString.equals("Contents"));
            this.atN.arF.add(this.atO);
            this.atO = null;
            return;
            if (!d(new String[] { "ListBucketResult", "Contents" })) {
              break label697;
            }
            if (paramString.equals("Key"))
            {
              this.atQ = this.asY.toString();
              this.atO.setKey(this.atQ);
              return;
            }
            if (paramString.equals("LastModified"))
            {
              this.atO.h(ServiceUtils.ab(this.asY.toString()));
              return;
            }
            if (paramString.equals("ETag"))
            {
              this.atO.ak(ServiceUtils.ad(this.asY.toString()));
              return;
            }
            if (paramString.equals("Size"))
            {
              this.atO.setSize(XmlResponsesSaxParser.aq(this.asY.toString()));
              return;
            }
            if (paramString.equals("StorageClass"))
            {
              this.atO.al(this.asY.toString());
              return;
            }
          } while (!paramString.equals("Owner"));
          this.atO.a(this.atP);
          this.atP = null;
          return;
          if (!d(new String[] { "ListBucketResult", "Contents", "Owner" })) {
            break label771;
          }
          if (paramString.equals("ID"))
          {
            this.atP.id = this.asY.toString();
            return;
          }
        } while (!paramString.equals("DisplayName"));
        this.atP.arj = this.asY.toString();
        return;
      } while ((!d(new String[] { "ListBucketResult", "CommonPrefixes" })) || (!paramString.equals("Prefix")));
      this.atN.arG.add(this.asY.toString());
    }
  }
  
  public static class ListMultipartUploadsHandler
    extends AbstractHandler
  {
    private Owner atP;
    private final MultipartUploadListing atR = new MultipartUploadListing();
    private MultipartUpload atS;
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (d(new String[] { "ListMultipartUploadsResult" })) {
        if (paramString.equals("Upload")) {
          this.atS = new MultipartUpload();
        }
      }
      while ((!d(new String[] { "ListMultipartUploadsResult", "Upload" })) || ((!paramString.equals("Owner")) && (!paramString.equals("Initiator")))) {
        return;
      }
      this.atP = new Owner();
    }
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "ListMultipartUploadsResult" })) {
        if (paramString.equals("Bucket")) {
          this.atR.ark = this.asY.toString();
        }
      }
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return;
                if (paramString.equals("KeyMarker"))
                {
                  this.atR.arT = XmlResponsesSaxParser.ao(this.asY.toString());
                  return;
                }
                if (paramString.equals("Delimiter"))
                {
                  this.atR.arK = XmlResponsesSaxParser.ao(this.asY.toString());
                  return;
                }
                if (paramString.equals("Prefix"))
                {
                  this.atR.aqv = XmlResponsesSaxParser.ao(this.asY.toString());
                  return;
                }
                if (paramString.equals("UploadIdMarker"))
                {
                  this.atR.arU = XmlResponsesSaxParser.ao(this.asY.toString());
                  return;
                }
                if (paramString.equals("NextKeyMarker"))
                {
                  this.atR.arW = XmlResponsesSaxParser.ao(this.asY.toString());
                  return;
                }
                if (paramString.equals("NextUploadIdMarker"))
                {
                  this.atR.arX = XmlResponsesSaxParser.ao(this.asY.toString());
                  return;
                }
                if (paramString.equals("MaxUploads"))
                {
                  this.atR.arV = Integer.parseInt(this.asY.toString());
                  return;
                }
                if (paramString.equals("EncodingType"))
                {
                  this.atR.arM = XmlResponsesSaxParser.ao(this.asY.toString());
                  return;
                }
                if (paramString.equals("IsTruncated"))
                {
                  this.atR.arH = Boolean.parseBoolean(this.asY.toString());
                  return;
                }
              } while (!paramString.equals("Upload"));
              paramString = this.atR;
              if (paramString.arY == null) {
                paramString.arY = new ArrayList();
              }
              paramString.arY.add(this.atS);
              this.atS = null;
              return;
              if (!d(new String[] { "ListMultipartUploadsResult", "CommonPrefixes" })) {
                break;
              }
            } while (!paramString.equals("Prefix"));
            this.atR.arG.add(this.asY.toString());
            return;
            if (!d(new String[] { "ListMultipartUploadsResult", "Upload" })) {
              break;
            }
            if (paramString.equals("Key"))
            {
              this.atS.key = this.asY.toString();
              return;
            }
            if (paramString.equals("UploadId"))
            {
              this.atS.arE = this.asY.toString();
              return;
            }
            if (paramString.equals("Owner"))
            {
              this.atS.aqn = this.atP;
              this.atP = null;
              return;
            }
            if (paramString.equals("Initiator"))
            {
              this.atS.arQ = this.atP;
              this.atP = null;
              return;
            }
            if (paramString.equals("StorageClass"))
            {
              this.atS.arR = this.asY.toString();
              return;
            }
          } while (!paramString.equals("Initiated"));
          this.atS.arS = ServiceUtils.ab(this.asY.toString());
          return;
          if (d(new String[] { "ListMultipartUploadsResult", "Upload", "Owner" })) {
            break;
          }
        } while (!d(new String[] { "ListMultipartUploadsResult", "Upload", "Initiator" }));
        if (paramString.equals("ID"))
        {
          this.atP.id = XmlResponsesSaxParser.ao(this.asY.toString());
          return;
        }
      } while (!paramString.equals("DisplayName"));
      this.atP.arj = XmlResponsesSaxParser.ao(this.asY.toString());
    }
  }
  
  public static class ListObjectsV2Handler
    extends AbstractHandler
  {
    private S3ObjectSummary atO = null;
    private Owner atP = null;
    private String atQ = null;
    private final ListObjectsV2Result atT = new ListObjectsV2Result();
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (d(new String[] { "ListBucketResult" })) {
        if (paramString.equals("Contents"))
        {
          this.atO = new S3ObjectSummary();
          this.atO.aj(this.atT.ark);
        }
      }
      while ((!d(new String[] { "ListBucketResult", "Contents" })) || (!paramString.equals("Owner"))) {
        return;
      }
      this.atP = new Owner();
    }
    
    protected final void an(String paramString)
    {
      Object localObject = null;
      if (this.asZ.isEmpty()) {
        if ((paramString.equals("ListBucketResult")) && (this.atT.arH) && (this.atT.arJ == null))
        {
          if (this.atT.arF.isEmpty()) {
            break label98;
          }
          paramString = ((S3ObjectSummary)this.atT.arF.get(this.atT.arF.size() - 1)).getKey();
          this.atT.arJ = paramString;
        }
      }
      label98:
      label194:
      label513:
      label697:
      label771:
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return;
                XmlResponsesSaxParser.jZ().error("S3 response indicates truncated results, but contains no object summaries.");
                paramString = (String)localObject;
                break;
                if (!d(new String[] { "ListBucketResult" })) {
                  break label513;
                }
                if (!paramString.equals("Name")) {
                  break label194;
                }
                this.atT.ark = this.asY.toString();
              } while (!XmlResponsesSaxParser.jZ().isDebugEnabled());
              XmlResponsesSaxParser.jZ().debug("Examining listing for bucket: " + this.atT.ark);
              return;
              if (paramString.equals("Prefix"))
              {
                this.atT.aqv = XmlResponsesSaxParser.ao(this.asY.toString());
                return;
              }
              if (paramString.equals("MaxKeys"))
              {
                this.atT.arL = XmlResponsesSaxParser.ap(this.asY.toString());
                return;
              }
              if (paramString.equals("NextContinuationToken"))
              {
                this.atT.arJ = this.asY.toString();
                return;
              }
              if (paramString.equals("ContinuationToken"))
              {
                this.atT.arN = this.asY.toString();
                return;
              }
              if (paramString.equals("StartAfter"))
              {
                this.atT.arO = this.asY.toString();
                return;
              }
              if (paramString.equals("KeyCount"))
              {
                this.atT.arI = XmlResponsesSaxParser.ap(this.asY.toString());
                return;
              }
              if (paramString.equals("Delimiter"))
              {
                this.atT.arK = XmlResponsesSaxParser.ao(this.asY.toString());
                return;
              }
              if (paramString.equals("EncodingType"))
              {
                this.atT.arM = XmlResponsesSaxParser.ao(this.asY.toString());
                return;
              }
              if (paramString.equals("IsTruncated"))
              {
                paramString = StringUtils.aC(this.asY.toString());
                if (paramString.startsWith("false"))
                {
                  this.atT.arH = false;
                  return;
                }
                if (paramString.startsWith("true"))
                {
                  this.atT.arH = true;
                  return;
                }
                throw new IllegalStateException("Invalid value for IsTruncated field: " + paramString);
              }
            } while (!paramString.equals("Contents"));
            this.atT.arF.add(this.atO);
            this.atO = null;
            return;
            if (!d(new String[] { "ListBucketResult", "Contents" })) {
              break label697;
            }
            if (paramString.equals("Key"))
            {
              this.atQ = this.asY.toString();
              this.atO.setKey(this.atQ);
              return;
            }
            if (paramString.equals("LastModified"))
            {
              this.atO.h(ServiceUtils.ab(this.asY.toString()));
              return;
            }
            if (paramString.equals("ETag"))
            {
              this.atO.ak(ServiceUtils.ad(this.asY.toString()));
              return;
            }
            if (paramString.equals("Size"))
            {
              this.atO.setSize(XmlResponsesSaxParser.aq(this.asY.toString()));
              return;
            }
            if (paramString.equals("StorageClass"))
            {
              this.atO.al(this.asY.toString());
              return;
            }
          } while (!paramString.equals("Owner"));
          this.atO.a(this.atP);
          this.atP = null;
          return;
          if (!d(new String[] { "ListBucketResult", "Contents", "Owner" })) {
            break label771;
          }
          if (paramString.equals("ID"))
          {
            this.atP.id = this.asY.toString();
            return;
          }
        } while (!paramString.equals("DisplayName"));
        this.atP.arj = this.asY.toString();
        return;
      } while ((!d(new String[] { "ListBucketResult", "CommonPrefixes" })) || (!paramString.equals("Prefix")));
      this.atT.arG.add(this.asY.toString());
    }
  }
  
  public static class ListPartsHandler
    extends AbstractHandler
  {
    private Owner atP;
    private final PartListing atU = new PartListing();
    private PartSummary atV;
    
    private Integer ka()
    {
      String str = XmlResponsesSaxParser.ao(this.asY.toString());
      if (str == null) {
        return null;
      }
      return Integer.valueOf(Integer.parseInt(str));
    }
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (d(new String[] { "ListPartsResult" }))
      {
        if (!paramString.equals("Part")) {
          break label37;
        }
        this.atV = new PartSummary();
      }
      label37:
      while ((!paramString.equals("Owner")) && (!paramString.equals("Initiator"))) {
        return;
      }
      this.atP = new Owner();
    }
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "ListPartsResult" })) {
        if (paramString.equals("Bucket")) {
          this.atU.ark = this.asY.toString();
        }
      }
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if (paramString.equals("Key"))
              {
                this.atU.key = this.asY.toString();
                return;
              }
              if (paramString.equals("UploadId"))
              {
                this.atU.arE = this.asY.toString();
                return;
              }
              if (paramString.equals("Owner"))
              {
                this.atU.aqn = this.atP;
                this.atP = null;
                return;
              }
              if (paramString.equals("Initiator"))
              {
                this.atU.arQ = this.atP;
                this.atP = null;
                return;
              }
              if (paramString.equals("StorageClass"))
              {
                this.atU.arR = this.asY.toString();
                return;
              }
              if (paramString.equals("PartNumberMarker"))
              {
                this.atU.asg = Integer.valueOf(ka().intValue());
                return;
              }
              if (paramString.equals("NextPartNumberMarker"))
              {
                this.atU.ash = Integer.valueOf(ka().intValue());
                return;
              }
              if (paramString.equals("MaxParts"))
              {
                this.atU.asf = Integer.valueOf(ka().intValue());
                return;
              }
              if (paramString.equals("EncodingType"))
              {
                this.atU.arM = XmlResponsesSaxParser.ao(this.asY.toString());
                return;
              }
              if (paramString.equals("IsTruncated"))
              {
                this.atU.arH = Boolean.parseBoolean(this.asY.toString());
                return;
              }
            } while (!paramString.equals("Part"));
            paramString = this.atU;
            if (paramString.parts == null) {
              paramString.parts = new ArrayList();
            }
            paramString.parts.add(this.atV);
            this.atV = null;
            return;
            if (!d(new String[] { "ListPartsResult", "Part" })) {
              break;
            }
            if (paramString.equals("PartNumber"))
            {
              this.atV.asi = Integer.parseInt(this.asY.toString());
              return;
            }
            if (paramString.equals("LastModified"))
            {
              this.atV.lastModified = ServiceUtils.ab(this.asY.toString());
              return;
            }
            if (paramString.equals("ETag"))
            {
              this.atV.arm = ServiceUtils.ad(this.asY.toString());
              return;
            }
          } while (!paramString.equals("Size"));
          this.atV.size = Long.parseLong(this.asY.toString());
          return;
          if (d(new String[] { "ListPartsResult", "Owner" })) {
            break;
          }
        } while (!d(new String[] { "ListPartsResult", "Initiator" }));
        if (paramString.equals("ID"))
        {
          this.atP.id = XmlResponsesSaxParser.ao(this.asY.toString());
          return;
        }
      } while (!paramString.equals("DisplayName"));
      this.atP.arj = XmlResponsesSaxParser.ao(this.asY.toString());
    }
  }
  
  public static class ListVersionsHandler
    extends AbstractHandler
  {
    private Owner atP;
    private final VersionListing atW = new VersionListing();
    private S3VersionSummary atX;
    
    protected final void a(String paramString, Attributes paramAttributes)
    {
      if (d(new String[] { "ListVersionsResult" })) {
        if (paramString.equals("Version"))
        {
          this.atX = new S3VersionSummary();
          this.atX.aj(this.atW.ark);
        }
      }
      do
      {
        do
        {
          do
          {
            return;
          } while (!paramString.equals("DeleteMarker"));
          this.atX = new S3VersionSummary();
          this.atX.aj(this.atW.ark);
          this.atX.asL = true;
          return;
          if (d(new String[] { "ListVersionsResult", "Version" })) {
            break;
          }
        } while (!d(new String[] { "ListVersionsResult", "DeleteMarker" }));
      } while (!paramString.equals("Owner"));
      this.atP = new Owner();
    }
    
    protected final void an(String paramString)
    {
      if (d(new String[] { "ListVersionsResult" })) {
        if (paramString.equals("Name")) {
          this.atW.ark = this.asY.toString();
        }
      }
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return;
                if (paramString.equals("Prefix"))
                {
                  this.atW.aqv = XmlResponsesSaxParser.ao(this.asY.toString());
                  return;
                }
                if (paramString.equals("KeyMarker"))
                {
                  this.atW.arT = XmlResponsesSaxParser.ao(this.asY.toString());
                  return;
                }
                if (paramString.equals("VersionIdMarker"))
                {
                  this.atW.asX = XmlResponsesSaxParser.ao(this.asY.toString());
                  return;
                }
                if (paramString.equals("MaxKeys"))
                {
                  this.atW.arL = Integer.parseInt(this.asY.toString());
                  return;
                }
                if (paramString.equals("Delimiter"))
                {
                  this.atW.arK = XmlResponsesSaxParser.ao(this.asY.toString());
                  return;
                }
                if (paramString.equals("EncodingType"))
                {
                  this.atW.arM = XmlResponsesSaxParser.ao(this.asY.toString());
                  return;
                }
                if (paramString.equals("NextKeyMarker"))
                {
                  this.atW.arW = this.asY.toString();
                  return;
                }
                if (paramString.equals("NextVersionIdMarker"))
                {
                  this.atW.asW = this.asY.toString();
                  return;
                }
                if (paramString.equals("IsTruncated"))
                {
                  this.atW.arH = "true".equals(this.asY.toString());
                  return;
                }
              } while ((!paramString.equals("Version")) && (!paramString.equals("DeleteMarker")));
              this.atW.asV.add(this.atX);
              this.atX = null;
              return;
              if (!d(new String[] { "ListVersionsResult", "CommonPrefixes" })) {
                break;
              }
            } while (!paramString.equals("Prefix"));
            this.atW.arG.add(XmlResponsesSaxParser.ao(this.asY.toString()));
            return;
            if (!d(new String[] { "ListVersionsResult", "Version" })) {
              if (!d(new String[] { "ListVersionsResult", "DeleteMarker" })) {
                break;
              }
            }
            if (paramString.equals("Key"))
            {
              this.atX.key = this.asY.toString();
              return;
            }
            if (paramString.equals("VersionId"))
            {
              this.atX.arq = this.asY.toString();
              return;
            }
            if (paramString.equals("IsLatest"))
            {
              this.atX.asK = "true".equals(this.asY.toString());
              return;
            }
            if (paramString.equals("LastModified"))
            {
              this.atX.lastModified = ServiceUtils.ab(this.asY.toString());
              return;
            }
            if (paramString.equals("ETag"))
            {
              this.atX.arm = ServiceUtils.ad(this.asY.toString());
              return;
            }
            if (paramString.equals("Size"))
            {
              this.atX.size = Long.parseLong(this.asY.toString());
              return;
            }
            if (paramString.equals("Owner"))
            {
              this.atX.aqn = this.atP;
              this.atP = null;
              return;
            }
          } while (!paramString.equals("StorageClass"));
          this.atX.arR = this.asY.toString();
          return;
          if (d(new String[] { "ListVersionsResult", "Version", "Owner" })) {
            break;
          }
        } while (!d(new String[] { "ListVersionsResult", "DeleteMarker", "Owner" }));
        if (paramString.equals("ID"))
        {
          this.atP.id = this.asY.toString();
          return;
        }
      } while (!paramString.equals("DisplayName"));
      this.atP.arj = this.asY.toString();
    }
  }
  
  public static class RequestPaymentConfigurationHandler
    extends AbstractHandler
  {
    private String atY = null;
    
    protected final void a(String paramString, Attributes paramAttributes) {}
    
    protected final void an(String paramString)
    {
      if ((d(new String[] { "RequestPaymentConfiguration" })) && (paramString.equals("Payer"))) {
        this.atY = this.asY.toString();
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */