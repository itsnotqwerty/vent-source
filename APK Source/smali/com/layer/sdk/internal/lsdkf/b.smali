.class public Lcom/layer/sdk/internal/lsdkf/b;
.super Lcom/layer/sdk/policy/Policy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkf/b$a;
    }
.end annotation


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/layer/sdk/policy/Policy$PolicyType;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/layer/sdk/policy/Policy$PolicyType;->BLOCK:Lcom/layer/sdk/policy/Policy$PolicyType;

    invoke-direct {p0, v0, p2}, Lcom/layer/sdk/policy/Policy;-><init>(Lcom/layer/sdk/policy/Policy$PolicyType;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkf/b;->c:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkf/b$a;

    invoke-direct {v0, p0, p0}, Lcom/layer/sdk/internal/lsdkf/b$a;-><init>(Lcom/layer/sdk/internal/lsdkf/b;Lcom/layer/sdk/internal/lsdkf/b;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/layer/sdk/internal/lsdkf/b$1;->bqe:[I

    invoke-virtual {p1}, Lcom/layer/sdk/policy/Policy$PolicyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t know how to handle type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/policy/Policy$PolicyType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPolicyType()Lcom/layer/sdk/policy/Policy$PolicyType;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/b;->a:Lcom/layer/sdk/policy/Policy$PolicyType;

    return-object v0
.end method
