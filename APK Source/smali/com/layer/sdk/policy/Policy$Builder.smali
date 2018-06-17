.class public Lcom/layer/sdk/policy/Policy$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/policy/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/layer/sdk/policy/Policy$PolicyType;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/policy/Policy$PolicyType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/policy/Policy$Builder;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/layer/sdk/policy/Policy$Builder;->b:Lcom/layer/sdk/policy/Policy$PolicyType;

    return-void
.end method


# virtual methods
.method public build()Lcom/layer/sdk/policy/Policy;
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdkf/b;

    iget-object v1, p0, Lcom/layer/sdk/policy/Policy$Builder;->b:Lcom/layer/sdk/policy/Policy$PolicyType;

    iget-object v2, p0, Lcom/layer/sdk/policy/Policy$Builder;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkf/b;-><init>(Lcom/layer/sdk/policy/Policy$PolicyType;Ljava/lang/String;)V

    return-object v0
.end method

.method public sentByUserId(Ljava/lang/String;)Lcom/layer/sdk/policy/Policy$Builder;
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/policy/Policy$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
