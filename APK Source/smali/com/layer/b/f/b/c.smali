.class public Lcom/layer/b/f/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/b/c$d;,
        Lcom/layer/b/f/b/c$e;,
        Lcom/layer/b/f/b/c$b;,
        Lcom/layer/b/f/b/c$c;,
        Lcom/layer/b/f/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/b/c;",
        "Lcom/layer/b/f/b/c$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/b/c;",
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
            "Lcom/layer/b/f/b/c$a;",
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
.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private bAA:[Lcom/layer/b/f/b/c$a;

.field public bAz:Lcom/layer/b/f/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x2

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "Response"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/b/c;->bzF:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "error"

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/b/c;->bzG:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "user_ids_with_timestamps"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v8}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/b/c;->bxz:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/b/c;->g:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/b/c$c;

    invoke-direct {v2, v4}, Lcom/layer/b/f/b/c$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/b/c;->g:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/b/c$e;

    invoke-direct {v2, v4}, Lcom/layer/b/f/b/c$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/b/c$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/b/c$a;->bAB:Lcom/layer/b/f/b/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "error"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/b/a;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/b/c$a;->bAC:Lcom/layer/b/f/b/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "user_ids_with_timestamps"

    new-instance v4, Lc/a/a/a/e;

    new-instance v5, Lc/a/a/a/c;

    const-string v6, "ProviderUserId"

    invoke-direct {v5, v6}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    new-instance v6, Lc/a/a/a/c;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5, v6}, Lc/a/a/a/e;-><init>(Lc/a/a/a/c;Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/b/c;->c:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/b/c;

    sget-object v1, Lcom/layer/b/f/b/c;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/layer/b/f/b/c$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/layer/b/f/b/c$a;->bAB:Lcom/layer/b/f/b/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/b/c$a;->bAC:Lcom/layer/b/f/b/c$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/b/c;->bAA:[Lcom/layer/b/f/b/c$a;

    return-void
.end method

.method static synthetic xU()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/b/c;->bxz:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xY()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/b/c;->bzG:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic ye()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/b/c;->bzF:Lc/a/a/b/m;

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

    sget-object v0, Lcom/layer/b/f/b/c;->g:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

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

    sget-object v0, Lcom/layer/b/f/b/c;->g:Ljava/util/Map;

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

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/layer/b/f/b/c;

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
    invoke-virtual {p0}, Lcom/layer/b/f/b/c;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/b/c;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    iget-object v1, p1, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/b/c;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/b/c;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/d;->e(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/b/f/b/a;->g()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/layer/b/f/b/c;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/b/c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/b/c;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/b/c;->a()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    iget-object v2, p1, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/b/a;->a(Lcom/layer/b/f/b/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/b/c;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/b/c;->c()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

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

    const-string v0, "Response("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/layer/b/f/b/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "error:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/b/f/b/c;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "user_ids_with_timestamps:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    if-nez v0, :cond_4

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
