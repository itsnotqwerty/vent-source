.class public Lcom/layer/sdk/internal/lsdke/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdki/lsdka/a$b;


# static fields
.field private static b:I


# instance fields
.field private final a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

.field private final c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/util/UUID;",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/layer/b/d/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1e

    sput v0, Lcom/layer/sdk/internal/lsdke/a;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/lsdki/lsdka/a$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/layer/sdk/internal/lsdke/a;->b:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->c:Landroid/util/LruCache;

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/layer/sdk/internal/lsdke/a;->b:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->d:Landroid/util/LruCache;

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/layer/sdk/internal/lsdke/a;->b:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->e:Landroid/util/LruCache;

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/layer/sdk/internal/lsdke/a;->b:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->f:Landroid/util/LruCache;

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/layer/sdk/internal/lsdke/a;->b:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->g:Landroid/util/LruCache;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    return-void
.end method

.method private a(Lcom/layer/b/d/c;)Lcom/layer/b/d/c;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->e:Landroid/util/LruCache;

    iget-object v1, p1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->f:Landroid/util/LruCache;

    iget-object v1, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->f:Landroid/util/LruCache;

    iget-object v1, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->f:Landroid/util/LruCache;

    iget-object v1, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v1, p1, Lcom/layer/b/f/c/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method private a(Lcom/layer/b/d/h;)Lcom/layer/b/d/h;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->c:Landroid/util/LruCache;

    iget-object v1, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->d:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;Ljava/lang/Integer;)Lcom/layer/b/d/c;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->f:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;Ljava/lang/Integer;)Lcom/layer/b/d/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/a;->a(Lcom/layer/b/d/c;)Lcom/layer/b/d/c;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->f:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;Ljava/lang/Integer;)Lcom/layer/b/d/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/a;->a(Lcom/layer/b/d/c;)Lcom/layer/b/d/c;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Lcom/layer/b/d/h;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Lcom/layer/b/d/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/a;->a(Lcom/layer/b/d/h;)Lcom/layer/b/d/h;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;I)Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Long;",
            "I)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/b/f/c/f;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/b/f/c/f;",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/sdk/internal/lsdki/d$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)V

    return-void
.end method

.method public e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->e(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "eventDbId cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->g:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/a;->g:Landroid/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public g(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->g(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/i;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/i;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/o;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->c:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/a;->a:Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    invoke-interface {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/a;->a(Lcom/layer/b/d/h;)Lcom/layer/b/d/h;

    move-result-object v0

    goto :goto_0
.end method
