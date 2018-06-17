.class public final Lcom/google/ads/mediation/customevent/c;
.super Lcom/google/ads/mediation/e;


# instance fields
.field public ayT:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/e$b;
        lp = false
        name = "parameter"
    .end annotation
.end field

.field public className:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/e$b;
        lp = true
        name = "class_name"
    .end annotation
.end field

.field public label:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/e$b;
        lp = true
        name = "label"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/mediation/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/c;->ayT:Ljava/lang/String;

    return-void
.end method
