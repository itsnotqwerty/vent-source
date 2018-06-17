.class public Lcom/layer/b/f/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/c/h$d;,
        Lcom/layer/b/f/c/h$e;,
        Lcom/layer/b/f/c/h$b;,
        Lcom/layer/b/f/c/h$c;,
        Lcom/layer/b/f/c/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/c/h;",
        "Lcom/layer/b/f/c/h$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/c/h;",
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
            "Lcom/layer/b/f/c/h$a;",
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
.field public a:I

.field public b:I

.field private bAG:B

.field private bDN:[Lcom/layer/b/f/c/h$a;

.field public bpD:I

.field public c:I

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xa

    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x8

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "PartialSyncHints"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/h;->bAE:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "total_message_count"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/h;->bxB:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "unread_message_count"

    invoke-direct {v0, v1, v5, v6}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/h;->bzj:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "oldest_unread_message_seq"

    invoke-direct {v0, v1, v5, v7}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/h;->byB:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "last_message_received_at"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/h;->byC:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "last_message_seq"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/h;->byD:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/c/h;->bAF:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/c/h$c;

    invoke-direct {v2, v3}, Lcom/layer/b/f/c/h$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/c/h;->bAF:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/c/h$e;

    invoke-direct {v2, v3}, Lcom/layer/b/f/c/h$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/c/h$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/c/h$a;->bDO:Lcom/layer/b/f/c/h$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "total_message_count"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/h$a;->bDP:Lcom/layer/b/f/c/h$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "unread_message_count"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/h$a;->bDQ:Lcom/layer/b/f/c/h$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "oldest_unread_message_seq"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/h$a;->bDR:Lcom/layer/b/f/c/h$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "last_message_received_at"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v8}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/h$a;->bDS:Lcom/layer/b/f/c/h$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "last_message_seq"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/c/h;->bAI:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/c/h;

    sget-object v1, Lcom/layer/b/f/c/h;->bAI:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/c/h;->bAG:B

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/b/f/c/h$a;

    sget-object v1, Lcom/layer/b/f/c/h$a;->bDQ:Lcom/layer/b/f/c/h$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/c/h$a;->bDR:Lcom/layer/b/f/c/h$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/c/h$a;->bDS:Lcom/layer/b/f/c/h$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/c/h;->bDN:[Lcom/layer/b/f/c/h$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/f/c/h;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/c/h;->bAG:B

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/b/f/c/h$a;

    sget-object v1, Lcom/layer/b/f/c/h$a;->bDQ:Lcom/layer/b/f/c/h$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/c/h$a;->bDR:Lcom/layer/b/f/c/h$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/c/h$a;->bDS:Lcom/layer/b/f/c/h$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/c/h;->bDN:[Lcom/layer/b/f/c/h$a;

    iget-byte v0, p1, Lcom/layer/b/f/c/h;->bAG:B

    iput-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    iget v0, p1, Lcom/layer/b/f/c/h;->a:I

    iput v0, p0, Lcom/layer/b/f/c/h;->a:I

    iget v0, p1, Lcom/layer/b/f/c/h;->b:I

    iput v0, p0, Lcom/layer/b/f/c/h;->b:I

    iget v0, p1, Lcom/layer/b/f/c/h;->c:I

    iput v0, p0, Lcom/layer/b/f/c/h;->c:I

    iget-wide v0, p1, Lcom/layer/b/f/c/h;->d:J

    iput-wide v0, p0, Lcom/layer/b/f/c/h;->d:J

    iget v0, p1, Lcom/layer/b/f/c/h;->bpD:I

    iput v0, p0, Lcom/layer/b/f/c/h;->bpD:I

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

    sget-object v0, Lcom/layer/b/f/c/h;->byD:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic ya()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/h;->byB:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yb()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/h;->byC:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yh()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/h;->bAE:Lc/a/a/b/m;

    return-object v0
.end method

.method static synthetic yi()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/h;->bxB:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yj()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/h;->bzj:Lc/a/a/b/d;

    return-object v0
.end method


# virtual methods
.method public final a(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/c/h;->bAF:Ljava/util/Map;

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

.method public final a(Lcom/layer/b/f/c/h;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/layer/b/f/c/h;->a:I

    iget v2, p1, Lcom/layer/b/f/c/h;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/c/h;->b:I

    iget v2, p1, Lcom/layer/b/f/c/h;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/h;->f()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/c/h;->c:I

    iget v2, p1, Lcom/layer/b/f/c/h;->c:I

    if-ne v1, v2, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/h;->h()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/layer/b/f/c/h;->d:J

    iget-wide v4, p1, Lcom/layer/b/f/c/h;->d:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/h;->j()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/c/h;->bpD:I

    iget v2, p1, Lcom/layer/b/f/c/h;->bpD:I

    if-ne v1, v2, :cond_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/layer/b/f/c/h;)I
    .locals 4

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
    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/h;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/layer/b/f/c/h;->a:I

    iget v1, p1, Lcom/layer/b/f/c/h;->a:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/h;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/layer/b/f/c/h;->b:I

    iget v1, p1, Lcom/layer/b/f/c/h;->b:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/h;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/layer/b/f/c/h;->c:I

    iget v1, p1, Lcom/layer/b/f/c/h;->c:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/h;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/layer/b/f/c/h;->d:J

    iget-wide v2, p1, Lcom/layer/b/f/c/h;->d:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/h;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/layer/b/f/c/h;->bpD:I

    iget v1, p1, Lcom/layer/b/f/c/h;->bpD:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final b(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/c/h;->bAF:Ljava/util/Map;

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
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/layer/b/f/c/h;

    invoke-virtual {p0, p1}, Lcom/layer/b/f/c/h;->b(Lcom/layer/b/f/c/h;)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final e(Z)V
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/layer/b/f/c/h;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/c/h;

    invoke-virtual {p0, p1}, Lcom/layer/b/f/c/h;->a(Lcom/layer/b/f/c/h;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PartialSyncHints("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "total_message_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/layer/b/f/c/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "unread_message_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/layer/b/f/c/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "oldest_unread_message_seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/layer/b/f/c/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "last_message_received_at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/layer/b/f/c/h;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/layer/b/f/c/h;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "last_message_seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/layer/b/f/c/h;->bpD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final xP()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    return-void
.end method

.method public final xQ()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    return-void
.end method

.method public final xV()V
    .locals 2

    const/4 v1, 0x1

    iget-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    invoke-static {v0, v1, v1}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    return-void
.end method

.method public final yX()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/h;->bAG:B

    return-void
.end method
