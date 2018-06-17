.class public Lcom/layer/sdk/internal/lsdke/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/a;


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/c;->a:Ljava/util/UUID;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/c;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/c;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdke/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/c;->a(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/c;->c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/c;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/b;

    const/4 v1, 0x0

    new-instance v2, Lcom/layer/sdk/internal/lsdke/c$1;

    const-string v3, "20150311175200000_message_index_to_position.sql"

    invoke-direct {v2, p0, v3}, Lcom/layer/sdk/internal/lsdke/c$1;-><init>(Lcom/layer/sdk/internal/lsdke/c;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
