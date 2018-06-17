.class public Lcom/layer/sdk/internal/lsdkh/i$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkh/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkh/i$b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkh/i$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Long;

.field private final g:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/layer/sdk/internal/lsdkh/i$c;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->a:Ljava/util/Set;

    if-nez p2, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->b:Ljava/util/Set;

    if-nez p3, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->c:Ljava/util/Set;

    if-nez p4, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->d:Ljava/util/Set;

    if-nez p5, :cond_4

    :goto_4
    iput-object v1, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->e:Ljava/util/Set;

    iput-object p6, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->f:Ljava/lang/Long;

    iput-object p7, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->g:Ljava/lang/Long;

    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, p5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_4
.end method

.method private static a(Ljava/util/Collection;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->b:Ljava/util/Set;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SELECT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->a:Ljava/util/Set;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FROM "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->b:Ljava/util/Set;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->d:Ljava/util/Set;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->d:Ljava/util/Set;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->c:Ljava/util/Set;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->b:Ljava/util/Set;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " WHERE "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkh/i$c;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkh/i$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkh/i$c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->e:Ljava/util/Set;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " ORDER BY "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->e:Ljava/util/Set;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    const-string v0, " LIMIT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->f:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    const-string v0, " OFFSET "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->g:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b;->a:Ljava/util/Set;

    return-object v0
.end method
