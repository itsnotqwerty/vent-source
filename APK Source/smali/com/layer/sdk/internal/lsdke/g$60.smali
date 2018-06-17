.class final Lcom/layer/sdk/internal/lsdke/g$60;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;J)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdke/g$a",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic bqM:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

.field final synthetic c:J

.field final synthetic d:Lcom/layer/sdk/internal/lsdke/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$60;->d:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$60;->bqM:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/g$60;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/layer/sdk/internal/lsdke/g$60;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$60;->bqM:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdke/g$60;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/layer/sdk/internal/lsdke/g$60;->c:J

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
