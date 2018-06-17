.class public Lcom/layer/sdk/internal/lsdke/lsdkc/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdke/lsdkc/b$a;,
        Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;,
        Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;,
        Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;I)Lcom/layer/b/d/c;
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$5;

    invoke-direct {v0, p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$5;-><init>(Ljava/lang/Long;I)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " events found with stream DB ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and serverSeq "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;
    .locals 2

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$52;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$52;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Lcom/layer/b/d/h;
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$43;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$43;-><init>(Ljava/util/UUID;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than one stream found with that ID!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;I)Lcom/layer/b/d/i;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$1;

    invoke-direct {v0, p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$1;-><init>(Ljava/util/UUID;I)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/i;

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$25;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$25;-><init>(Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than one conversation found with that ID!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$31;

    invoke-direct {v0, p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$31;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than one stream found with that ID!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;
    .locals 2

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$46;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$46;-><init>(Landroid/database/Cursor;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;
    .locals 1

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/f;)Ljava/lang/Integer;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$44;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$44;-><init>(Lcom/layer/sdk/internal/lsdke/f;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/sdk/internal/lsdke/lsdkc/b$d",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, p0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;->u(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;->d(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Read operation failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;JI)Ljava/util/LinkedHashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JI)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$9;

    invoke-direct {v0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$9;-><init>(JI)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$2;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$2;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$10;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$10;-><init>(I)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;)Ljava/util/List;
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

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$12;

    invoke-direct {v0, p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$12;-><init>(Lcom/layer/b/f/c/f;Ljava/util/UUID;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;Ljava/lang/Integer;)Ljava/util/List;
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

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$23;

    invoke-direct {v0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$23;-><init>(Lcom/layer/b/f/c/f;Ljava/util/UUID;Ljava/lang/Integer;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;",
            "Ljava/lang/Long;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$40;

    invoke-direct {v0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$40;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;",
            "Ljava/lang/Long;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$41;

    invoke-direct {v0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$41;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$a;)Ljava/util/List;
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

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$16;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$16;-><init>(Lcom/layer/sdk/internal/lsdki/d$a;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 2
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

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$8;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$8;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/List;
    .locals 5
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

    const/16 v4, 0xbb8

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v4, :cond_0

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static varargs a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Lcom/layer/sdk/messaging/MessagePart$TransferStatus;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$33;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$33;-><init>([Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Lcom/layer/b/d/c;
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$6;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$6;-><init>(Ljava/util/UUID;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " events found with client ID \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    goto :goto_0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;I)Lcom/layer/b/d/c;
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$4;

    invoke-direct {v0, p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$4;-><init>(Ljava/util/UUID;I)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than one event found with that stream and serverSeq!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    goto :goto_0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/i;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$53;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$53;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/i;

    return-object v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/i;
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$32;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$32;-><init>(Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than one message found with that ID!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    goto :goto_0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/n;
    .locals 2

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/LinkedHashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    goto :goto_0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$21;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$21;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
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

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$15;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$15;-><init>(I)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$47;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$47;-><init>(Landroid/database/Cursor;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/List;
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

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;
    .locals 2

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$55;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$55;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    goto :goto_0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$26;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$26;-><init>(Ljava/util/UUID;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than one conversation found with that ID!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    goto :goto_0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/j;
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$35;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$35;-><init>(Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than one message part found with that ID!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    goto :goto_0
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/n;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$48;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$48;-><init>(Landroid/database/Cursor;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/LinkedHashSet;
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

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$30;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$30;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;
    .locals 1

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->h(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/LinkedHashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/n;",
            ">;"
        }
    .end annotation

    const/16 v4, 0xbb8

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v4, :cond_0

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/LinkedHashSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/LinkedHashSet;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/LinkedHashSet;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$34;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$34;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$56;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$56;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static e(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$45;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$45;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    invoke-static {p0, v0, p1, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$57;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$57;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static f(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$54;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$54;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/c;
    .locals 2

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$7;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$7;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    goto :goto_0
.end method

.method public static g(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$3;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$3;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$13;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$13;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/f/c/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$11;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$11;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;
    .locals 6

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-static {p0, v0, p1, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/layer/sdk/internal/lsdkk/m$g;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdkk/m$g;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->h()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/layer/sdk/internal/lsdkk/m$h;-><init>(Ljava/lang/CharSequence;Ljava/lang/Long;)V

    invoke-virtual {v1, v3, v4}, Lcom/layer/sdk/internal/lsdkk/m$g;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring null metadata value. keyedValue: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". ConversationDbId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/m;->a(Lcom/layer/sdk/internal/lsdkk/m$g;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
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

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$14;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$14;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static j(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
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

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$17;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$17;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-static {p0, v0, p1, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static k(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
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

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$18;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$18;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static k(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$27;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$27;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static l(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;
    .locals 2

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$28;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$28;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    goto :goto_0
.end method

.method public static l(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
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

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$19;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$19;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$29;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$29;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than one stream found with that ID!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    goto :goto_0
.end method

.method public static m(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
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

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$20;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$20;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static n(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/l;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$37;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$37;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/l;

    return-object v0
.end method

.method public static n(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
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

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$22;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$22;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static o(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$24;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$24;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static o(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/l;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$38;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$38;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static p(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/h;
    .locals 2

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$39;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$39;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    goto :goto_0
.end method

.method public static p(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$36;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$36;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static q(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/o;
    .locals 2

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$42;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$42;-><init>(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    goto :goto_0
.end method

.method public static q(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$49;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$49;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;
    .locals 6

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-static {p0, v0, p1, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/layer/sdk/internal/lsdkk/m$g;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdkk/m$g;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->h()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/layer/sdk/internal/lsdkk/m$h;-><init>(Ljava/lang/CharSequence;Ljava/lang/Long;)V

    invoke-virtual {v1, v3, v4}, Lcom/layer/sdk/internal/lsdkk/m$g;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring null metadata value. keyedValue: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". IdentityDbId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/m;->a(Lcom/layer/sdk/internal/lsdkk/m$g;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    move-result-object v0

    goto :goto_0
.end method

.method public static r(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/n;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$50;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$50;-><init>()V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic wq()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method
