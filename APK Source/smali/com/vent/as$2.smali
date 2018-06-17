.class final Lcom/vent/as$2;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/as;->h(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTq:Z

.field final synthetic ceL:Lcom/vent/as;

.field final synthetic ceM:Z


# direct methods
.method constructor <init>(Lcom/vent/as;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/as$2;->ceL:Lcom/vent/as;

    iput-boolean p5, p0, Lcom/vent/as$2;->ceM:Z

    iput-boolean p6, p0, Lcom/vent/as$2;->bTq:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    iget-boolean v0, p0, Lcom/vent/as$2;->ceM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/as$2;->ceL:Lcom/vent/as;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/vent/as$2;->bTq:Z

    invoke-virtual {v0, v1, v2}, Lcom/vent/as;->f(ZZ)V

    :cond_0
    return-void
.end method
