.class public final Lokhttp3/internal/e/c;
.super Ljava/lang/Object;


# static fields
.field public static final daA:Ld/f;

.field public static final daB:Ld/f;

.field public static final daC:Ld/f;

.field public static final daD:Ld/f;

.field public static final daE:Ld/f;

.field public static final daF:Ld/f;


# instance fields
.field public final daG:Ld/f;

.field public final daH:Ld/f;

.field final hpackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/c;->daA:Ld/f;

    const-string v0, ":status"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/c;->daB:Ld/f;

    const-string v0, ":method"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/c;->daC:Ld/f;

    const-string v0, ":path"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/c;->daD:Ld/f;

    const-string v0, ":scheme"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/c;->daE:Ld/f;

    const-string v0, ":authority"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/c;->daF:Ld/f;

    return-void
.end method

.method public constructor <init>(Ld/f;Ld/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/e/c;->daG:Ld/f;

    iput-object p2, p0, Lokhttp3/internal/e/c;->daH:Ld/f;

    invoke-virtual {p1}, Ld/f;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Ld/f;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/e/c;->hpackSize:I

    return-void
.end method

.method public constructor <init>(Ld/f;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/e/c;-><init>(Ld/f;Ld/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    invoke-static {p2}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/e/c;-><init>(Ld/f;Ld/f;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lokhttp3/internal/e/c;

    if-eqz v1, :cond_0

    check-cast p1, Lokhttp3/internal/e/c;

    iget-object v1, p0, Lokhttp3/internal/e/c;->daG:Ld/f;

    iget-object v2, p1, Lokhttp3/internal/e/c;->daG:Ld/f;

    invoke-virtual {v1, v2}, Ld/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/internal/e/c;->daH:Ld/f;

    iget-object v2, p1, Lokhttp3/internal/e/c;->daH:Ld/f;

    invoke-virtual {v1, v2}, Ld/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/e/c;->daG:Ld/f;

    invoke-virtual {v0}, Ld/f;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/internal/e/c;->daH:Ld/f;

    invoke-virtual {v1}, Ld/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lokhttp3/internal/e/c;->daG:Ld/f;

    invoke-virtual {v3}, Ld/f;->KE()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lokhttp3/internal/e/c;->daH:Ld/f;

    invoke-virtual {v3}, Ld/f;->KE()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/c;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
