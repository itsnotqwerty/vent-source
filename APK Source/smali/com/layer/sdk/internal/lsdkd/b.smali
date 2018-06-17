.class public Lcom/layer/sdk/internal/lsdkd/b;
.super Lcom/layer/sdk/changes/LayerChange;


# instance fields
.field private final c:Lcom/layer/sdk/internal/lsdkd/e;

.field private d:Lcom/layer/sdk/internal/lsdkd/d;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/changes/LayerChange;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkd/b;->c:Lcom/layer/sdk/internal/lsdkd/e;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/b;->d:Lcom/layer/sdk/internal/lsdkd/d;

    return-void

    :cond_0
    invoke-interface {p3}, Lcom/layer/sdk/internal/lsdkd/e;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/layer/sdk/internal/lsdkd/f;)Lcom/layer/sdk/changes/LayerChange;
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/b$1;->bqe:[I

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v3

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/layer/sdk/changes/LayerChange;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/b;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/changes/LayerChange;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/e;->b()Lcom/layer/sdk/internal/lsdkd/a;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/b;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/layer/sdk/internal/lsdkd/a;->a(Lcom/layer/sdk/internal/lsdkd/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/b;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/layer/sdk/internal/lsdkd/a;->a(Lcom/layer/sdk/internal/lsdkd/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v0, Lcom/layer/sdk/changes/LayerChange;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/b;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v2

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/b;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/changes/LayerChange;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()Lcom/layer/sdk/internal/lsdkd/d;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/b;->d:Lcom/layer/sdk/internal/lsdkd/d;

    return-object v0
.end method

.method public b()Lcom/layer/sdk/internal/lsdkd/e;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/b;->c:Lcom/layer/sdk/internal/lsdkd/e;

    return-object v0
.end method
