.class public Lcom/layer/b/f/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/a/k$d;,
        Lcom/layer/b/f/a/k$e;,
        Lcom/layer/b/f/a/k$b;,
        Lcom/layer/b/f/a/k$c;,
        Lcom/layer/b/f/a/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/a/k;",
        "Lcom/layer/b/f/a/k$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/a/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final bxz:Lc/a/a/b/d;

.field private static final bzF:Lc/a/a/b/m;

.field private static final bzG:Lc/a/a/b/d;

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/b/f/a/k$a;",
            "Lc/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Map;
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


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field private bzH:B

.field private bzI:[Lcom/layer/b/f/a/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x8

    const/4 v4, 0x0

    const/4 v7, 0x2

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "PresenceSync"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/k;->bzF:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "ids"

    const/16 v2, 0xf

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/k;->bzG:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "page_size"

    invoke-direct {v0, v1, v8, v7}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/k;->bxz:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/a/k;->g:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/a/k$c;

    invoke-direct {v2, v4}, Lcom/layer/b/f/a/k$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/a/k;->g:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/a/k$e;

    invoke-direct {v2, v4}, Lcom/layer/b/f/a/k$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/a/k$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/a/k$a;->bzJ:Lcom/layer/b/f/a/k$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "ids"

    new-instance v4, Lc/a/a/a/d;

    new-instance v5, Lc/a/a/a/c;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5}, Lc/a/a/a/d;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/k$a;->bzK:Lcom/layer/b/f/a/k$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "page_size"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v8}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/a/k;->c:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/a/k;

    sget-object v1, Lcom/layer/b/f/a/k;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/a/k;->bzH:B

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/layer/b/f/a/k$a;

    sget-object v1, Lcom/layer/b/f/a/k$a;->bzJ:Lcom/layer/b/f/a/k$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/a/k$a;->bzK:Lcom/layer/b/f/a/k$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/a/k;->bzI:[Lcom/layer/b/f/a/k$a;

    return-void
.end method

.method public static c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    return-void
.end method

.method static synthetic xW()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/k;->bzF:Lc/a/a/b/m;

    return-object v0
.end method

.method static synthetic xX()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/k;->bzG:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xY()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/k;->bxz:Lc/a/a/b/d;

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

    sget-object v0, Lcom/layer/b/f/a/k;->g:Ljava/util/Map;

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

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/k;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/a/k;->g:Ljava/util/Map;

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

    iget-byte v0, p0, Lcom/layer/b/f/a/k;->bzH:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/layer/b/f/a/k;

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
    invoke-virtual {p0}, Lcom/layer/b/f/a/k;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/k;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/a/k;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/layer/b/f/a/k;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lc/a/a/d;->f(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/a/k;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/k;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/layer/b/f/a/k;->b:I

    iget v1, p1, Lcom/layer/b/f/a/k;->b:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/layer/b/f/a/k;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/a/k;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/k;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/k;->a()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/k;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/layer/b/f/a/k;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/a/k;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/k;->b()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/a/k;->b:I

    iget v2, p1, Lcom/layer/b/f/a/k;->b:I

    if-ne v1, v2, :cond_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PresenceSync("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/layer/b/f/a/k;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "ids:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/a/k;->a:Ljava/util/List;

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/b/f/a/k;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "page_size:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/layer/b/f/a/k;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/layer/b/f/a/k;->a:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final xV()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/a/k;->bzH:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/a/k;->bzH:B

    return-void
.end method
