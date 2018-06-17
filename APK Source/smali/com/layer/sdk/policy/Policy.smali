.class public abstract Lcom/layer/sdk/policy/Policy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/policy/Policy$Builder;,
        Lcom/layer/sdk/policy/Policy$PolicyType;
    }
.end annotation


# instance fields
.field protected a:Lcom/layer/sdk/policy/Policy$PolicyType;

.field protected b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/layer/sdk/policy/Policy$PolicyType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/policy/Policy;->a:Lcom/layer/sdk/policy/Policy$PolicyType;

    iput-object p2, p0, Lcom/layer/sdk/policy/Policy;->b:Ljava/lang/String;

    return-void
.end method

.method public static builder(Lcom/layer/sdk/policy/Policy$PolicyType;)Lcom/layer/sdk/policy/Policy$Builder;
    .locals 1

    new-instance v0, Lcom/layer/sdk/policy/Policy$Builder;

    invoke-direct {v0, p0}, Lcom/layer/sdk/policy/Policy$Builder;-><init>(Lcom/layer/sdk/policy/Policy$PolicyType;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/layer/sdk/policy/Policy;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/layer/sdk/policy/Policy;

    iget-object v2, p0, Lcom/layer/sdk/policy/Policy;->a:Lcom/layer/sdk/policy/Policy$PolicyType;

    iget-object v3, p1, Lcom/layer/sdk/policy/Policy;->a:Lcom/layer/sdk/policy/Policy$PolicyType;

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/layer/sdk/policy/Policy;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/layer/sdk/policy/Policy;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/layer/sdk/policy/Policy;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/layer/sdk/policy/Policy;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getPolicyType()Lcom/layer/sdk/policy/Policy$PolicyType;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/policy/Policy;->a:Lcom/layer/sdk/policy/Policy$PolicyType;

    return-object v0
.end method

.method public getSentByUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/policy/Policy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/policy/Policy;->a:Lcom/layer/sdk/policy/Policy$PolicyType;

    invoke-virtual {v0}, Lcom/layer/sdk/policy/Policy$PolicyType;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/layer/sdk/policy/Policy;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/policy/Policy;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
