.class public Lcom/layer/b/f/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/c/a$d;,
        Lcom/layer/b/f/c/a$e;,
        Lcom/layer/b/f/c/a$b;,
        Lcom/layer/b/f/c/a$c;,
        Lcom/layer/b/f/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/c/a;",
        "Lcom/layer/b/f/c/a$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/c/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final bAE:Lc/a/a/b/m;

.field private static final bAF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lc/a/a/c/a;",
            ">;",
            "Lc/a/a/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final bAI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/b/f/c/a$a;",
            "Lc/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final bxB:Lc/a/a/b/d;

.field private static final byB:Lc/a/a/b/d;

.field private static final byC:Lc/a/a/b/d;

.field private static final byD:Lc/a/a/b/d;

.field private static final bzj:Lc/a/a/b/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field private bAG:B

.field private bAH:[Lcom/layer/b/f/c/a$a;

.field public bzk:Ljava/nio/ByteBuffer;

.field public d:Ljava/lang/String;

.field public e:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/16 v6, 0xb

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "Content"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/a;->bAE:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "media_type"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/a;->bxB:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "size"

    invoke-direct {v0, v1, v8, v7}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/a;->bzj:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "body"

    invoke-direct {v0, v1, v6, v5}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/a;->byB:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "external_url"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/a;->byC:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "external_access_expiration"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/a;->byD:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/c/a;->bAF:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/c/a$c;

    invoke-direct {v2, v3}, Lcom/layer/b/f/c/a$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/c/a;->bAF:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/c/a$e;

    invoke-direct {v2, v3}, Lcom/layer/b/f/c/a$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/c/a$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/c/a$a;->bAJ:Lcom/layer/b/f/c/a$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "media_type"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v6}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/a$a;->bAK:Lcom/layer/b/f/c/a$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "size"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v8}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/a$a;->bAL:Lcom/layer/b/f/c/a$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "body"

    new-instance v4, Lc/a/a/a/c;

    const/4 v5, 0x1

    invoke-direct {v4, v6, v5}, Lc/a/a/a/c;-><init>(BZ)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/a$a;->bAM:Lcom/layer/b/f/c/a$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "external_url"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v6}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/a$a;->bAN:Lcom/layer/b/f/c/a$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "external_access_expiration"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v8}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/c/a;->bAI:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/c/a;

    sget-object v1, Lcom/layer/b/f/c/a;->bAI:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/c/a;->bAG:B

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/b/f/c/a$a;

    sget-object v1, Lcom/layer/b/f/c/a$a;->bAL:Lcom/layer/b/f/c/a$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/c/a$a;->bAM:Lcom/layer/b/f/c/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/c/a$a;->bAN:Lcom/layer/b/f/c/a$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/c/a;->bAH:[Lcom/layer/b/f/c/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/f/c/a;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/c/a;->bAG:B

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/b/f/c/a$a;

    sget-object v1, Lcom/layer/b/f/c/a$a;->bAL:Lcom/layer/b/f/c/a$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/c/a$a;->bAM:Lcom/layer/b/f/c/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/c/a$a;->bAN:Lcom/layer/b/f/c/a$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/c/a;->bAH:[Lcom/layer/b/f/c/a$a;

    iget-byte v0, p1, Lcom/layer/b/f/c/a;->bAG:B

    iput-byte v0, p0, Lcom/layer/b/f/c/a;->bAG:B

    invoke-virtual {p1}, Lcom/layer/b/f/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    :cond_0
    iget-wide v0, p1, Lcom/layer/b/f/c/a;->b:J

    iput-wide v0, p0, Lcom/layer/b/f/c/a;->b:J

    invoke-virtual {p1}, Lcom/layer/b/f/c/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lc/a/a/d;->g(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    :cond_1
    invoke-virtual {p1}, Lcom/layer/b/f/c/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    :cond_2
    iget-wide v0, p1, Lcom/layer/b/f/c/a;->e:J

    iput-wide v0, p0, Lcom/layer/b/f/c/a;->e:J

    return-void
.end method

.method public static k()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    return-void
.end method

.method static synthetic xI()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/a;->byD:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic ya()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/a;->byB:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yb()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/a;->byC:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yh()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/a;->bAE:Lc/a/a/b/m;

    return-object v0
.end method

.method static synthetic yi()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/a;->bxB:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yj()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/a;->bzj:Lc/a/a/b/d;

    return-object v0
.end method


# virtual methods
.method public final L(J)Lcom/layer/b/f/c/a;
    .locals 1

    iput-wide p1, p0, Lcom/layer/b/f/c/a;->b:J

    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->xV()V

    return-object p0
.end method

.method public final a(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/c/a;->bAF:Ljava/util/Map;

    invoke-virtual {p1}, Lc/a/a/b/h;->LS()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/c/b;

    invoke-interface {v0}, Lc/a/a/c/b;->xh()Lc/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lc/a/a/c/a;->b(Lc/a/a/b/h;Lc/a/a/c;)V

    return-void
.end method

.method public final b(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/c/a;->bAF:Ljava/util/Map;

    invoke-virtual {p1}, Lc/a/a/b/h;->LS()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/c/b;

    invoke-interface {v0}, Lc/a/a/c/b;->xh()Lc/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lc/a/a/c/a;->a(Lc/a/a/b/h;Lc/a/a/c;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/layer/b/f/c/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/a;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/a;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/layer/b/f/c/a;->b:J

    iget-wide v2, p1, Lcom/layer/b/f/c/a;->b:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/a;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/a;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/a;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/layer/b/f/c/a;->e:J

    iget-wide v2, p1, Lcom/layer/b/f/c/a;->e:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final d()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/a;->bAG:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/layer/b/f/c/a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/c/a;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/a;->b()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-wide v2, p0, Lcom/layer/b/f/c/a;->b:J

    iget-wide v4, p1, Lcom/layer/b/f/c/a;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/a;->f()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/a;->h()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/a;->j()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/layer/b/f/c/a;->e:J

    iget-wide v4, p1, Lcom/layer/b/f/c/a;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/a;->bAG:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final t([B)Lcom/layer/b/f/c/a;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "media_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/layer/b/f/c/a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "body:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "external_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/layer/b/f/c/a;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "external_access_expiration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/layer/b/f/c/a;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lc/a/a/d;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public final xV()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/c/a;->bAG:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/a;->bAG:B

    return-void
.end method

.method public final yf()[B
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lc/a/a/d;->f(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/b/f/c/a;->bzk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final yg()V
    .locals 2

    const/4 v1, 0x1

    iget-byte v0, p0, Lcom/layer/b/f/c/a;->bAG:B

    invoke-static {v0, v1, v1}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/a;->bAG:B

    return-void
.end method
