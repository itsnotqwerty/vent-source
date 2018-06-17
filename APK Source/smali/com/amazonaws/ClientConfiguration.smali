.class public Lcom/amazonaws/ClientConfiguration;
.super Ljava/lang/Object;


# static fields
.field public static final amf:Ljava/lang/String;

.field public static final amg:Lcom/amazonaws/retry/RetryPolicy;


# instance fields
.field public amh:Ljava/lang/String;

.field public ami:I

.field public amj:Lcom/amazonaws/retry/RetryPolicy;

.field public amk:Lcom/amazonaws/Protocol;

.field private aml:Ljava/lang/String;

.field private amm:I

.field private amn:Ljava/lang/String;

.field private amo:Ljava/lang/String;

.field private amp:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private amq:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private amr:I

.field public ams:I

.field private amt:I

.field private amu:I

.field private amv:Z

.field amw:Ljava/lang/String;

.field public amx:Ljavax/net/ssl/TrustManager;

.field public amy:Z

.field public connectionTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->kk()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/ClientConfiguration;->amf:Ljava/lang/String;

    sget-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->apq:Lcom/amazonaws/retry/RetryPolicy;

    sput-object v0, Lcom/amazonaws/ClientConfiguration;->amg:Lcom/amazonaws/retry/RetryPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x3a98

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/amazonaws/ClientConfiguration;->amf:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->amh:Ljava/lang/String;

    iput v3, p0, Lcom/amazonaws/ClientConfiguration;->ami:I

    sget-object v0, Lcom/amazonaws/ClientConfiguration;->amg:Lcom/amazonaws/retry/RetryPolicy;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->amj:Lcom/amazonaws/retry/RetryPolicy;

    sget-object v0, Lcom/amazonaws/Protocol;->amH:Lcom/amazonaws/Protocol;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->amk:Lcom/amazonaws/Protocol;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->aml:Ljava/lang/String;

    iput v3, p0, Lcom/amazonaws/ClientConfiguration;->amm:I

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->amn:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->amo:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->amp:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->amq:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->amr:I

    iput v4, p0, Lcom/amazonaws/ClientConfiguration;->ams:I

    iput v4, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    iput v2, p0, Lcom/amazonaws/ClientConfiguration;->amt:I

    iput v2, p0, Lcom/amazonaws/ClientConfiguration;->amu:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->amv:Z

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->amx:Ljavax/net/ssl/TrustManager;

    iput-boolean v2, p0, Lcom/amazonaws/ClientConfiguration;->amy:Z

    return-void
.end method
