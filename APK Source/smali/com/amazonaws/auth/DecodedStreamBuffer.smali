.class Lcom/amazonaws/auth/DecodedStreamBuffer;
.super Ljava/lang/Object;


# static fields
.field static final alS:Lorg/apache/commons/logging/Log;


# instance fields
.field anf:I

.field anv:[B

.field anw:I

.field anx:Z

.field pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/auth/DecodedStreamBuffer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/DecodedStreamBuffer;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->anv:[B

    iput p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->anf:I

    return-void
.end method
