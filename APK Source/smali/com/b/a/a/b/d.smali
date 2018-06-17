.class public final Lcom/b/a/a/b/d;
.super Ljava/lang/Object;


# static fields
.field public static final bKo:Lb/f;

.field public static final bKp:Lb/f;

.field public static final bKq:Lb/f;

.field public static final bKr:Lb/f;

.field public static final bKs:Lb/f;

.field public static final bKt:Lb/f;

.field public static final bKu:Lb/f;


# instance fields
.field public final bKv:Lb/f;

.field public final bKw:Lb/f;

.field final bKx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":status"

    invoke-static {v0}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/b/d;->bKo:Lb/f;

    const-string v0, ":method"

    invoke-static {v0}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/b/d;->bKp:Lb/f;

    const-string v0, ":path"

    invoke-static {v0}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/b/d;->bKq:Lb/f;

    const-string v0, ":scheme"

    invoke-static {v0}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/b/d;->bKr:Lb/f;

    const-string v0, ":authority"

    invoke-static {v0}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/b/d;->bKs:Lb/f;

    const-string v0, ":host"

    invoke-static {v0}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/b/d;->bKt:Lb/f;

    const-string v0, ":version"

    invoke-static {v0}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/b/d;->bKu:Lb/f;

    return-void
.end method

.method public constructor <init>(Lb/f;Lb/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/b/d;->bKv:Lb/f;

    iput-object p2, p0, Lcom/b/a/a/b/d;->bKw:Lb/f;

    iget-object v0, p1, Lb/f;->bMw:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    iget-object v1, p2, Lb/f;->bMw:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/a/b/d;->bKx:I

    return-void
.end method

.method public constructor <init>(Lb/f;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/b/a/a/b/d;-><init>(Lb/f;Lb/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v0

    invoke-static {p2}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/b/d;-><init>(Lb/f;Lb/f;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/b/a/a/b/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/b/a/a/b/d;

    iget-object v1, p0, Lcom/b/a/a/b/d;->bKv:Lb/f;

    iget-object v2, p1, Lcom/b/a/a/b/d;->bKv:Lb/f;

    invoke-virtual {v1, v2}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/b/d;->bKw:Lb/f;

    iget-object v2, p1, Lcom/b/a/a/b/d;->bKw:Lb/f;

    invoke-virtual {v1, v2}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/b/d;->bKv:Lb/f;

    invoke-virtual {v0}, Lb/f;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/a/b/d;->bKw:Lb/f;

    invoke-virtual {v1}, Lb/f;->hashCode()I

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

    iget-object v3, p0, Lcom/b/a/a/b/d;->bKv:Lb/f;

    invoke-virtual {v3}, Lb/f;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/b/a/a/b/d;->bKw:Lb/f;

    invoke-virtual {v3}, Lb/f;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
