.class public Lcom/layer/sdk/query/Query$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/query/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tbuild::",
        "Lcom/layer/sdk/query/Queryable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/layer/sdk/query/Predicate;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/query/SortDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTbuild;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TTbuild;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/layer/sdk/query/Query$Builder;->a:Lcom/layer/sdk/query/Predicate;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/query/Query$Builder;->b:Ljava/lang/Long;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/query/Query$Builder;->c:Ljava/lang/Long;

    iput-object v2, p0, Lcom/layer/sdk/query/Query$Builder;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/layer/sdk/query/Query$Builder;->e:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/sdk/query/Query$Builder;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/layer/sdk/query/Query;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/layer/sdk/query/Query",
            "<TTbuild;>;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/query/Query;

    iget-object v1, p0, Lcom/layer/sdk/query/Query$Builder;->e:Ljava/lang/Class;

    iget-object v2, p0, Lcom/layer/sdk/query/Query$Builder;->a:Lcom/layer/sdk/query/Predicate;

    iget-object v3, p0, Lcom/layer/sdk/query/Query$Builder;->c:Ljava/lang/Long;

    iget-object v4, p0, Lcom/layer/sdk/query/Query$Builder;->b:Ljava/lang/Long;

    iget-object v5, p0, Lcom/layer/sdk/query/Query$Builder;->d:Ljava/util/List;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/layer/sdk/query/Query;-><init>(Ljava/lang/Class;Lcom/layer/sdk/query/Predicate;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;B)V

    return-object v0
.end method

.method public limit(J)Lcom/layer/sdk/query/Query$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/layer/sdk/query/Query$Builder",
            "<TTbuild;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/query/Query$Builder;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public offset(J)Lcom/layer/sdk/query/Query$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/layer/sdk/query/Query$Builder",
            "<TTbuild;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/query/Query$Builder;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public predicate(Lcom/layer/sdk/query/Predicate;)Lcom/layer/sdk/query/Query$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Predicate;",
            ")",
            "Lcom/layer/sdk/query/Query$Builder",
            "<TTbuild;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/layer/sdk/query/Query$Builder;->a:Lcom/layer/sdk/query/Predicate;

    return-object p0
.end method

.method public varargs sortDescriptor([Lcom/layer/sdk/query/SortDescriptor;)Lcom/layer/sdk/query/Query$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/layer/sdk/query/SortDescriptor;",
            ")",
            "Lcom/layer/sdk/query/Query$Builder",
            "<TTbuild;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/query/Query$Builder;->d:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/layer/sdk/query/Query$Builder;->d:Ljava/util/List;

    :cond_2
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/layer/sdk/query/Query$Builder;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
