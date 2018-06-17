.class public Lcom/layer/sdk/internal/lsdkh/g$b;
.super Lcom/layer/sdk/query/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkh/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/layer/sdk/query/Predicate;-><init>(Lcom/layer/sdk/query/Queryable$Property;Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/g$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/g$b;->a:Ljava/lang/String;

    return-object v0
.end method
