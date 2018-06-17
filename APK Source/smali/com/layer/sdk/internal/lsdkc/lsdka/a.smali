.class public abstract Lcom/layer/sdk/internal/lsdkc/lsdka/a;
.super Lcom/layer/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Targs:",
        "Ljava/lang/Object;",
        "Tresults:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/layer/a/c/c",
        "<TTargs;TTresults;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

.field private final c:Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;


# direct methods
.method public constructor <init>(Lcom/layer/a/a/a;Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;Ljava/lang/Object;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/a/a/a;",
            "Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;",
            "TTargs;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/layer/a/c/c;-><init>(Lcom/layer/a/a/a;Lcom/layer/a/c/c$a;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/a;->c:Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/layer/sdk/internal/lsdkd/lsdka/j;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    return-object v0
.end method

.method public b()Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/a;->c:Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;

    return-object v0
.end method
