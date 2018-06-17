.class public Lcom/layer/sdk/query/Query;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/query/Query$Builder;,
        Lcom/layer/sdk/query/Query$ResultType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tquery::",
        "Lcom/layer/sdk/query/Queryable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/layer/sdk/query/Predicate;

.field private final b:Ljava/lang/Long;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/query/SortDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTquery;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/layer/sdk/query/Predicate;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TTquery;>;",
            "Lcom/layer/sdk/query/Predicate;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/query/SortDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/query/Query;->e:Ljava/lang/Class;

    iput-object p2, p0, Lcom/layer/sdk/query/Query;->a:Lcom/layer/sdk/query/Predicate;

    iput-object p3, p0, Lcom/layer/sdk/query/Query;->b:Ljava/lang/Long;

    iput-object p4, p0, Lcom/layer/sdk/query/Query;->c:Ljava/lang/Long;

    iput-object p5, p0, Lcom/layer/sdk/query/Query;->d:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/layer/sdk/query/Predicate;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/layer/sdk/query/Query;-><init>(Ljava/lang/Class;Lcom/layer/sdk/query/Predicate;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;)V

    return-void
.end method

.method public static builder(Ljava/lang/Class;)Lcom/layer/sdk/query/Query$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/layer/sdk/query/Queryable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/layer/sdk/query/Query$Builder",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/query/Query$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layer/sdk/query/Query$Builder;-><init>(Ljava/lang/Class;B)V

    return-object v0
.end method


# virtual methods
.method public getLimit()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/query/Query;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public getOffset()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/query/Query;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public getPredicate()Lcom/layer/sdk/query/Predicate;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/query/Query;->a:Lcom/layer/sdk/query/Predicate;

    return-object v0
.end method

.method public getQueryClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TTquery;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/query/Query;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public getSortDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/query/SortDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/query/Query;->d:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Query{Predicate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/query/Query;->a:Lcom/layer/sdk/query/Predicate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/query/Query;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/query/Query;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SortDescriptors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/layer/sdk/query/Query;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/query/Query;->e:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    iget-object v3, p0, Lcom/layer/sdk/query/Query;->d:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
