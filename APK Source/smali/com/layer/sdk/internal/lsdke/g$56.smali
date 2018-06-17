.class final Lcom/layer/sdk/internal/lsdke/g$56;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;JLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdke/g$b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lcom/layer/sdk/internal/lsdke/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;JLjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$56;->f:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$56;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/g$56;->b:Ljava/lang/Long;

    iput-wide p4, p0, Lcom/layer/sdk/internal/lsdke/g$56;->c:J

    iput-object p6, p0, Lcom/layer/sdk/internal/lsdke/g$56;->d:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/layer/sdk/internal/lsdke/g$56;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 8

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdke/g$56;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdke/g$56;->b:Ljava/lang/Long;

    iget-wide v4, p0, Lcom/layer/sdk/internal/lsdke/g$56;->c:J

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdke/g$56;->d:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/layer/sdk/internal/lsdke/g$56;->e:Z

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;JLjava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method
