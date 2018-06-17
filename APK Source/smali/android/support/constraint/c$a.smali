.class final Landroid/support/constraint/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public alpha:F

.field public bM:I

.field public bN:I

.field public bO:F

.field public bP:I

.field public bQ:I

.field public bR:I

.field public bS:I

.field public bT:I

.field public bU:I

.field public bV:I

.field public bW:I

.field public bX:I

.field public bY:I

.field public bZ:I

.field public bottomMargin:I

.field public cA:I

.field public cB:I

.field public cC:Z

.field public cD:Z

.field public ca:F

.field public cb:I

.field public cc:I

.field public cd:I

.field public ce:I

.field public cf:I

.field public cg:I

.field public ch:I

.field public ci:I

.field public cj:I

.field public ck:I

.field public cl:F

.field public cm:F

.field public cn:Ljava/lang/String;

.field public cq:I

.field public cr:I

.field public dA:F

.field public dB:I

.field public dC:I

.field public dD:[I

.field da:Z

.field public db:I

.field public dc:I

.field dd:I

.field public de:I

.field public df:I

.field public dg:Z

.field public dh:F

.field public di:F

.field public dj:F

.field public dk:F

.field public dl:F

.field public dm:F

.field public do:F

.field public dp:F

.field public dq:F

.field public dr:F

.field public ds:F

.field public dt:I

.field public du:I

.field public dv:I

.field public dw:I

.field public dx:I

.field public dy:I

.field public dz:F

.field public horizontalWeight:F

.field public leftMargin:I

.field public orientation:I

.field public rightMargin:I

.field public topMargin:I

.field public verticalWeight:F

.field public visibility:I


# direct methods
.method private constructor <init>()V
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Landroid/support/constraint/c$a;->da:Z

    iput v1, p0, Landroid/support/constraint/c$a;->bM:I

    iput v1, p0, Landroid/support/constraint/c$a;->bN:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/c$a;->bO:F

    iput v1, p0, Landroid/support/constraint/c$a;->bP:I

    iput v1, p0, Landroid/support/constraint/c$a;->bQ:I

    iput v1, p0, Landroid/support/constraint/c$a;->bR:I

    iput v1, p0, Landroid/support/constraint/c$a;->bS:I

    iput v1, p0, Landroid/support/constraint/c$a;->bT:I

    iput v1, p0, Landroid/support/constraint/c$a;->bU:I

    iput v1, p0, Landroid/support/constraint/c$a;->bV:I

    iput v1, p0, Landroid/support/constraint/c$a;->bW:I

    iput v1, p0, Landroid/support/constraint/c$a;->bX:I

    iput v1, p0, Landroid/support/constraint/c$a;->cb:I

    iput v1, p0, Landroid/support/constraint/c$a;->cc:I

    iput v1, p0, Landroid/support/constraint/c$a;->cd:I

    iput v1, p0, Landroid/support/constraint/c$a;->ce:I

    iput v5, p0, Landroid/support/constraint/c$a;->cl:F

    iput v5, p0, Landroid/support/constraint/c$a;->cm:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/c$a;->cn:Ljava/lang/String;

    iput v1, p0, Landroid/support/constraint/c$a;->bY:I

    iput v3, p0, Landroid/support/constraint/c$a;->bZ:I

    iput v2, p0, Landroid/support/constraint/c$a;->ca:F

    iput v1, p0, Landroid/support/constraint/c$a;->cA:I

    iput v1, p0, Landroid/support/constraint/c$a;->cB:I

    iput v1, p0, Landroid/support/constraint/c$a;->orientation:I

    iput v1, p0, Landroid/support/constraint/c$a;->leftMargin:I

    iput v1, p0, Landroid/support/constraint/c$a;->rightMargin:I

    iput v1, p0, Landroid/support/constraint/c$a;->topMargin:I

    iput v1, p0, Landroid/support/constraint/c$a;->bottomMargin:I

    iput v1, p0, Landroid/support/constraint/c$a;->de:I

    iput v1, p0, Landroid/support/constraint/c$a;->df:I

    iput v3, p0, Landroid/support/constraint/c$a;->visibility:I

    iput v1, p0, Landroid/support/constraint/c$a;->cf:I

    iput v1, p0, Landroid/support/constraint/c$a;->cg:I

    iput v1, p0, Landroid/support/constraint/c$a;->ch:I

    iput v1, p0, Landroid/support/constraint/c$a;->ci:I

    iput v1, p0, Landroid/support/constraint/c$a;->ck:I

    iput v1, p0, Landroid/support/constraint/c$a;->cj:I

    iput v2, p0, Landroid/support/constraint/c$a;->verticalWeight:F

    iput v2, p0, Landroid/support/constraint/c$a;->horizontalWeight:F

    iput v3, p0, Landroid/support/constraint/c$a;->cq:I

    iput v3, p0, Landroid/support/constraint/c$a;->cr:I

    iput v4, p0, Landroid/support/constraint/c$a;->alpha:F

    iput-boolean v3, p0, Landroid/support/constraint/c$a;->dg:Z

    iput v2, p0, Landroid/support/constraint/c$a;->dh:F

    iput v2, p0, Landroid/support/constraint/c$a;->di:F

    iput v2, p0, Landroid/support/constraint/c$a;->dj:F

    iput v2, p0, Landroid/support/constraint/c$a;->dk:F

    iput v4, p0, Landroid/support/constraint/c$a;->dl:F

    iput v4, p0, Landroid/support/constraint/c$a;->dm:F

    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Landroid/support/constraint/c$a;->do:F

    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Landroid/support/constraint/c$a;->dp:F

    iput v2, p0, Landroid/support/constraint/c$a;->dq:F

    iput v2, p0, Landroid/support/constraint/c$a;->dr:F

    iput v2, p0, Landroid/support/constraint/c$a;->ds:F

    iput-boolean v3, p0, Landroid/support/constraint/c$a;->cC:Z

    iput-boolean v3, p0, Landroid/support/constraint/c$a;->cD:Z

    iput v1, p0, Landroid/support/constraint/c$a;->dt:I

    iput v1, p0, Landroid/support/constraint/c$a;->du:I

    iput v1, p0, Landroid/support/constraint/c$a;->dv:I

    iput v1, p0, Landroid/support/constraint/c$a;->dw:I

    iput v1, p0, Landroid/support/constraint/c$a;->dx:I

    iput v1, p0, Landroid/support/constraint/c$a;->dy:I

    iput v4, p0, Landroid/support/constraint/c$a;->dz:F

    iput v4, p0, Landroid/support/constraint/c$a;->dA:F

    iput v1, p0, Landroid/support/constraint/c$a;->dB:I

    iput v1, p0, Landroid/support/constraint/c$a;->dC:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Landroid/support/constraint/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a(ILandroid/support/constraint/d$a;)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/c$a;->dd:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    iput v0, p0, Landroid/support/constraint/c$a;->bP:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    iput v0, p0, Landroid/support/constraint/c$a;->bQ:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    iput v0, p0, Landroid/support/constraint/c$a;->bR:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    iput v0, p0, Landroid/support/constraint/c$a;->bS:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bT:I

    iput v0, p0, Landroid/support/constraint/c$a;->bT:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bU:I

    iput v0, p0, Landroid/support/constraint/c$a;->bU:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bV:I

    iput v0, p0, Landroid/support/constraint/c$a;->bV:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bW:I

    iput v0, p0, Landroid/support/constraint/c$a;->bW:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    iput v0, p0, Landroid/support/constraint/c$a;->bX:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    iput v0, p0, Landroid/support/constraint/c$a;->cb:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    iput v0, p0, Landroid/support/constraint/c$a;->cc:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    iput v0, p0, Landroid/support/constraint/c$a;->cd:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    iput v0, p0, Landroid/support/constraint/c$a;->ce:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cl:F

    iput v0, p0, Landroid/support/constraint/c$a;->cl:F

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cm:F

    iput v0, p0, Landroid/support/constraint/c$a;->cm:F

    iget-object v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/c$a;->cn:Ljava/lang/String;

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bY:I

    iput v0, p0, Landroid/support/constraint/c$a;->bY:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bZ:I

    iput v0, p0, Landroid/support/constraint/c$a;->bZ:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->ca:F

    iput v0, p0, Landroid/support/constraint/c$a;->ca:F

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cA:I

    iput v0, p0, Landroid/support/constraint/c$a;->cA:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cB:I

    iput v0, p0, Landroid/support/constraint/c$a;->cB:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->orientation:I

    iput v0, p0, Landroid/support/constraint/c$a;->orientation:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    iput v0, p0, Landroid/support/constraint/c$a;->bO:F

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    iput v0, p0, Landroid/support/constraint/c$a;->bM:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    iput v0, p0, Landroid/support/constraint/c$a;->bN:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iput v0, p0, Landroid/support/constraint/c$a;->db:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->height:I

    iput v0, p0, Landroid/support/constraint/c$a;->dc:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    iput v0, p0, Landroid/support/constraint/c$a;->leftMargin:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    iput v0, p0, Landroid/support/constraint/c$a;->rightMargin:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iput v0, p0, Landroid/support/constraint/c$a;->topMargin:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iput v0, p0, Landroid/support/constraint/c$a;->bottomMargin:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->verticalWeight:F

    iput v0, p0, Landroid/support/constraint/c$a;->verticalWeight:F

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->horizontalWeight:F

    iput v0, p0, Landroid/support/constraint/c$a;->horizontalWeight:F

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cr:I

    iput v0, p0, Landroid/support/constraint/c$a;->cr:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cq:I

    iput v0, p0, Landroid/support/constraint/c$a;->cq:I

    iget-boolean v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cC:Z

    iput-boolean v0, p0, Landroid/support/constraint/c$a;->cC:Z

    iget-boolean v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cD:Z

    iput-boolean v0, p0, Landroid/support/constraint/c$a;->cD:Z

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cs:I

    iput v0, p0, Landroid/support/constraint/c$a;->dt:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->ct:I

    iput v0, p0, Landroid/support/constraint/c$a;->du:I

    iget-boolean v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cC:Z

    iput-boolean v0, p0, Landroid/support/constraint/c$a;->cC:Z

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cw:I

    iput v0, p0, Landroid/support/constraint/c$a;->dv:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cx:I

    iput v0, p0, Landroid/support/constraint/c$a;->dw:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cu:I

    iput v0, p0, Landroid/support/constraint/c$a;->dx:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cv:I

    iput v0, p0, Landroid/support/constraint/c$a;->dy:I

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cy:F

    iput v0, p0, Landroid/support/constraint/c$a;->dz:F

    iget v0, p2, Landroid/support/constraint/ConstraintLayout$a;->cz:F

    iput v0, p0, Landroid/support/constraint/c$a;->dA:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/support/constraint/ConstraintLayout$a;->getMarginEnd()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/c$a;->de:I

    invoke-virtual {p2}, Landroid/support/constraint/ConstraintLayout$a;->getMarginStart()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/c$a;->df:I

    :cond_0
    iget v0, p2, Landroid/support/constraint/d$a;->alpha:F

    iput v0, p0, Landroid/support/constraint/c$a;->alpha:F

    iget v0, p2, Landroid/support/constraint/d$a;->di:F

    iput v0, p0, Landroid/support/constraint/c$a;->di:F

    iget v0, p2, Landroid/support/constraint/d$a;->dj:F

    iput v0, p0, Landroid/support/constraint/c$a;->dj:F

    iget v0, p2, Landroid/support/constraint/d$a;->dk:F

    iput v0, p0, Landroid/support/constraint/c$a;->dk:F

    iget v0, p2, Landroid/support/constraint/d$a;->dl:F

    iput v0, p0, Landroid/support/constraint/c$a;->dl:F

    iget v0, p2, Landroid/support/constraint/d$a;->dm:F

    iput v0, p0, Landroid/support/constraint/c$a;->dm:F

    iget v0, p2, Landroid/support/constraint/d$a;->do:F

    iput v0, p0, Landroid/support/constraint/c$a;->do:F

    iget v0, p2, Landroid/support/constraint/d$a;->dp:F

    iput v0, p0, Landroid/support/constraint/c$a;->dp:F

    iget v0, p2, Landroid/support/constraint/d$a;->dq:F

    iput v0, p0, Landroid/support/constraint/c$a;->dq:F

    iget v0, p2, Landroid/support/constraint/d$a;->dr:F

    iput v0, p0, Landroid/support/constraint/c$a;->dr:F

    iget v0, p2, Landroid/support/constraint/d$a;->ds:F

    iput v0, p0, Landroid/support/constraint/c$a;->ds:F

    iget v0, p2, Landroid/support/constraint/d$a;->dh:F

    iput v0, p0, Landroid/support/constraint/c$a;->dh:F

    iget-boolean v0, p2, Landroid/support/constraint/d$a;->dg:Z

    iput-boolean v0, p0, Landroid/support/constraint/c$a;->dg:Z

    return-void
.end method

.method public final a(Landroid/support/constraint/ConstraintLayout$a;)V
    .locals 2

    iget v0, p0, Landroid/support/constraint/c$a;->bP:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    iget v0, p0, Landroid/support/constraint/c$a;->bQ:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    iget v0, p0, Landroid/support/constraint/c$a;->bR:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    iget v0, p0, Landroid/support/constraint/c$a;->bS:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    iget v0, p0, Landroid/support/constraint/c$a;->bT:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bT:I

    iget v0, p0, Landroid/support/constraint/c$a;->bU:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bU:I

    iget v0, p0, Landroid/support/constraint/c$a;->bV:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bV:I

    iget v0, p0, Landroid/support/constraint/c$a;->bW:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bW:I

    iget v0, p0, Landroid/support/constraint/c$a;->bX:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    iget v0, p0, Landroid/support/constraint/c$a;->cb:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    iget v0, p0, Landroid/support/constraint/c$a;->cc:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    iget v0, p0, Landroid/support/constraint/c$a;->cd:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    iget v0, p0, Landroid/support/constraint/c$a;->ce:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    iget v0, p0, Landroid/support/constraint/c$a;->leftMargin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    iget v0, p0, Landroid/support/constraint/c$a;->rightMargin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    iget v0, p0, Landroid/support/constraint/c$a;->topMargin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iget v0, p0, Landroid/support/constraint/c$a;->bottomMargin:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iget v0, p0, Landroid/support/constraint/c$a;->cj:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cj:I

    iget v0, p0, Landroid/support/constraint/c$a;->ck:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->ck:I

    iget v0, p0, Landroid/support/constraint/c$a;->cl:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cl:F

    iget v0, p0, Landroid/support/constraint/c$a;->cm:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cm:F

    iget v0, p0, Landroid/support/constraint/c$a;->bY:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bY:I

    iget v0, p0, Landroid/support/constraint/c$a;->bZ:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bZ:I

    iget v0, p0, Landroid/support/constraint/c$a;->ca:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->ca:F

    iget-object v0, p0, Landroid/support/constraint/c$a;->cn:Ljava/lang/String;

    iput-object v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    iget v0, p0, Landroid/support/constraint/c$a;->cA:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cA:I

    iget v0, p0, Landroid/support/constraint/c$a;->cB:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cB:I

    iget v0, p0, Landroid/support/constraint/c$a;->verticalWeight:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->verticalWeight:F

    iget v0, p0, Landroid/support/constraint/c$a;->horizontalWeight:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->horizontalWeight:F

    iget v0, p0, Landroid/support/constraint/c$a;->cr:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cr:I

    iget v0, p0, Landroid/support/constraint/c$a;->cq:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cq:I

    iget-boolean v0, p0, Landroid/support/constraint/c$a;->cC:Z

    iput-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cC:Z

    iget-boolean v0, p0, Landroid/support/constraint/c$a;->cD:Z

    iput-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cD:Z

    iget v0, p0, Landroid/support/constraint/c$a;->dt:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cs:I

    iget v0, p0, Landroid/support/constraint/c$a;->du:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->ct:I

    iget v0, p0, Landroid/support/constraint/c$a;->dv:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cw:I

    iget v0, p0, Landroid/support/constraint/c$a;->dw:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cx:I

    iget v0, p0, Landroid/support/constraint/c$a;->dx:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cu:I

    iget v0, p0, Landroid/support/constraint/c$a;->dy:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cv:I

    iget v0, p0, Landroid/support/constraint/c$a;->dz:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cy:F

    iget v0, p0, Landroid/support/constraint/c$a;->dA:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->cz:F

    iget v0, p0, Landroid/support/constraint/c$a;->orientation:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->orientation:I

    iget v0, p0, Landroid/support/constraint/c$a;->bO:F

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    iget v0, p0, Landroid/support/constraint/c$a;->bM:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    iget v0, p0, Landroid/support/constraint/c$a;->bN:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    iget v0, p0, Landroid/support/constraint/c$a;->db:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iget v0, p0, Landroid/support/constraint/c$a;->dc:I

    iput v0, p1, Landroid/support/constraint/ConstraintLayout$a;->height:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/c$a;->df:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout$a;->setMarginStart(I)V

    iget v0, p0, Landroid/support/constraint/c$a;->de:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout$a;->setMarginEnd(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout$a;->ak()V

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Landroid/support/constraint/c$a;

    invoke-direct {v0}, Landroid/support/constraint/c$a;-><init>()V

    iget-boolean v1, p0, Landroid/support/constraint/c$a;->da:Z

    iput-boolean v1, v0, Landroid/support/constraint/c$a;->da:Z

    iget v1, p0, Landroid/support/constraint/c$a;->db:I

    iput v1, v0, Landroid/support/constraint/c$a;->db:I

    iget v1, p0, Landroid/support/constraint/c$a;->dc:I

    iput v1, v0, Landroid/support/constraint/c$a;->dc:I

    iget v1, p0, Landroid/support/constraint/c$a;->bM:I

    iput v1, v0, Landroid/support/constraint/c$a;->bM:I

    iget v1, p0, Landroid/support/constraint/c$a;->bN:I

    iput v1, v0, Landroid/support/constraint/c$a;->bN:I

    iget v1, p0, Landroid/support/constraint/c$a;->bO:F

    iput v1, v0, Landroid/support/constraint/c$a;->bO:F

    iget v1, p0, Landroid/support/constraint/c$a;->bP:I

    iput v1, v0, Landroid/support/constraint/c$a;->bP:I

    iget v1, p0, Landroid/support/constraint/c$a;->bQ:I

    iput v1, v0, Landroid/support/constraint/c$a;->bQ:I

    iget v1, p0, Landroid/support/constraint/c$a;->bR:I

    iput v1, v0, Landroid/support/constraint/c$a;->bR:I

    iget v1, p0, Landroid/support/constraint/c$a;->bS:I

    iput v1, v0, Landroid/support/constraint/c$a;->bS:I

    iget v1, p0, Landroid/support/constraint/c$a;->bT:I

    iput v1, v0, Landroid/support/constraint/c$a;->bT:I

    iget v1, p0, Landroid/support/constraint/c$a;->bU:I

    iput v1, v0, Landroid/support/constraint/c$a;->bU:I

    iget v1, p0, Landroid/support/constraint/c$a;->bV:I

    iput v1, v0, Landroid/support/constraint/c$a;->bV:I

    iget v1, p0, Landroid/support/constraint/c$a;->bW:I

    iput v1, v0, Landroid/support/constraint/c$a;->bW:I

    iget v1, p0, Landroid/support/constraint/c$a;->bX:I

    iput v1, v0, Landroid/support/constraint/c$a;->bX:I

    iget v1, p0, Landroid/support/constraint/c$a;->cb:I

    iput v1, v0, Landroid/support/constraint/c$a;->cb:I

    iget v1, p0, Landroid/support/constraint/c$a;->cc:I

    iput v1, v0, Landroid/support/constraint/c$a;->cc:I

    iget v1, p0, Landroid/support/constraint/c$a;->cd:I

    iput v1, v0, Landroid/support/constraint/c$a;->cd:I

    iget v1, p0, Landroid/support/constraint/c$a;->ce:I

    iput v1, v0, Landroid/support/constraint/c$a;->ce:I

    iget v1, p0, Landroid/support/constraint/c$a;->cl:F

    iput v1, v0, Landroid/support/constraint/c$a;->cl:F

    iget v1, p0, Landroid/support/constraint/c$a;->cm:F

    iput v1, v0, Landroid/support/constraint/c$a;->cm:F

    iget-object v1, p0, Landroid/support/constraint/c$a;->cn:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/constraint/c$a;->cn:Ljava/lang/String;

    iget v1, p0, Landroid/support/constraint/c$a;->cA:I

    iput v1, v0, Landroid/support/constraint/c$a;->cA:I

    iget v1, p0, Landroid/support/constraint/c$a;->cB:I

    iput v1, v0, Landroid/support/constraint/c$a;->cB:I

    iget v1, p0, Landroid/support/constraint/c$a;->cl:F

    iput v1, v0, Landroid/support/constraint/c$a;->cl:F

    iget v1, p0, Landroid/support/constraint/c$a;->cl:F

    iput v1, v0, Landroid/support/constraint/c$a;->cl:F

    iget v1, p0, Landroid/support/constraint/c$a;->cl:F

    iput v1, v0, Landroid/support/constraint/c$a;->cl:F

    iget v1, p0, Landroid/support/constraint/c$a;->cl:F

    iput v1, v0, Landroid/support/constraint/c$a;->cl:F

    iget v1, p0, Landroid/support/constraint/c$a;->cl:F

    iput v1, v0, Landroid/support/constraint/c$a;->cl:F

    iget v1, p0, Landroid/support/constraint/c$a;->orientation:I

    iput v1, v0, Landroid/support/constraint/c$a;->orientation:I

    iget v1, p0, Landroid/support/constraint/c$a;->leftMargin:I

    iput v1, v0, Landroid/support/constraint/c$a;->leftMargin:I

    iget v1, p0, Landroid/support/constraint/c$a;->rightMargin:I

    iput v1, v0, Landroid/support/constraint/c$a;->rightMargin:I

    iget v1, p0, Landroid/support/constraint/c$a;->topMargin:I

    iput v1, v0, Landroid/support/constraint/c$a;->topMargin:I

    iget v1, p0, Landroid/support/constraint/c$a;->bottomMargin:I

    iput v1, v0, Landroid/support/constraint/c$a;->bottomMargin:I

    iget v1, p0, Landroid/support/constraint/c$a;->de:I

    iput v1, v0, Landroid/support/constraint/c$a;->de:I

    iget v1, p0, Landroid/support/constraint/c$a;->df:I

    iput v1, v0, Landroid/support/constraint/c$a;->df:I

    iget v1, p0, Landroid/support/constraint/c$a;->visibility:I

    iput v1, v0, Landroid/support/constraint/c$a;->visibility:I

    iget v1, p0, Landroid/support/constraint/c$a;->cf:I

    iput v1, v0, Landroid/support/constraint/c$a;->cf:I

    iget v1, p0, Landroid/support/constraint/c$a;->cg:I

    iput v1, v0, Landroid/support/constraint/c$a;->cg:I

    iget v1, p0, Landroid/support/constraint/c$a;->ch:I

    iput v1, v0, Landroid/support/constraint/c$a;->ch:I

    iget v1, p0, Landroid/support/constraint/c$a;->ci:I

    iput v1, v0, Landroid/support/constraint/c$a;->ci:I

    iget v1, p0, Landroid/support/constraint/c$a;->ck:I

    iput v1, v0, Landroid/support/constraint/c$a;->ck:I

    iget v1, p0, Landroid/support/constraint/c$a;->cj:I

    iput v1, v0, Landroid/support/constraint/c$a;->cj:I

    iget v1, p0, Landroid/support/constraint/c$a;->verticalWeight:F

    iput v1, v0, Landroid/support/constraint/c$a;->verticalWeight:F

    iget v1, p0, Landroid/support/constraint/c$a;->horizontalWeight:F

    iput v1, v0, Landroid/support/constraint/c$a;->horizontalWeight:F

    iget v1, p0, Landroid/support/constraint/c$a;->cq:I

    iput v1, v0, Landroid/support/constraint/c$a;->cq:I

    iget v1, p0, Landroid/support/constraint/c$a;->cr:I

    iput v1, v0, Landroid/support/constraint/c$a;->cr:I

    iget v1, p0, Landroid/support/constraint/c$a;->alpha:F

    iput v1, v0, Landroid/support/constraint/c$a;->alpha:F

    iget-boolean v1, p0, Landroid/support/constraint/c$a;->dg:Z

    iput-boolean v1, v0, Landroid/support/constraint/c$a;->dg:Z

    iget v1, p0, Landroid/support/constraint/c$a;->dh:F

    iput v1, v0, Landroid/support/constraint/c$a;->dh:F

    iget v1, p0, Landroid/support/constraint/c$a;->di:F

    iput v1, v0, Landroid/support/constraint/c$a;->di:F

    iget v1, p0, Landroid/support/constraint/c$a;->dj:F

    iput v1, v0, Landroid/support/constraint/c$a;->dj:F

    iget v1, p0, Landroid/support/constraint/c$a;->dk:F

    iput v1, v0, Landroid/support/constraint/c$a;->dk:F

    iget v1, p0, Landroid/support/constraint/c$a;->dl:F

    iput v1, v0, Landroid/support/constraint/c$a;->dl:F

    iget v1, p0, Landroid/support/constraint/c$a;->dm:F

    iput v1, v0, Landroid/support/constraint/c$a;->dm:F

    iget v1, p0, Landroid/support/constraint/c$a;->do:F

    iput v1, v0, Landroid/support/constraint/c$a;->do:F

    iget v1, p0, Landroid/support/constraint/c$a;->dp:F

    iput v1, v0, Landroid/support/constraint/c$a;->dp:F

    iget v1, p0, Landroid/support/constraint/c$a;->dq:F

    iput v1, v0, Landroid/support/constraint/c$a;->dq:F

    iget v1, p0, Landroid/support/constraint/c$a;->dr:F

    iput v1, v0, Landroid/support/constraint/c$a;->dr:F

    iget v1, p0, Landroid/support/constraint/c$a;->ds:F

    iput v1, v0, Landroid/support/constraint/c$a;->ds:F

    iget-boolean v1, p0, Landroid/support/constraint/c$a;->cC:Z

    iput-boolean v1, v0, Landroid/support/constraint/c$a;->cC:Z

    iget-boolean v1, p0, Landroid/support/constraint/c$a;->cD:Z

    iput-boolean v1, v0, Landroid/support/constraint/c$a;->cD:Z

    iget v1, p0, Landroid/support/constraint/c$a;->dt:I

    iput v1, v0, Landroid/support/constraint/c$a;->dt:I

    iget v1, p0, Landroid/support/constraint/c$a;->du:I

    iput v1, v0, Landroid/support/constraint/c$a;->du:I

    iget v1, p0, Landroid/support/constraint/c$a;->dv:I

    iput v1, v0, Landroid/support/constraint/c$a;->dv:I

    iget v1, p0, Landroid/support/constraint/c$a;->dw:I

    iput v1, v0, Landroid/support/constraint/c$a;->dw:I

    iget v1, p0, Landroid/support/constraint/c$a;->dx:I

    iput v1, v0, Landroid/support/constraint/c$a;->dx:I

    iget v1, p0, Landroid/support/constraint/c$a;->dy:I

    iput v1, v0, Landroid/support/constraint/c$a;->dy:I

    iget v1, p0, Landroid/support/constraint/c$a;->dz:F

    iput v1, v0, Landroid/support/constraint/c$a;->dz:F

    iget v1, p0, Landroid/support/constraint/c$a;->dA:F

    iput v1, v0, Landroid/support/constraint/c$a;->dA:F

    iget v1, p0, Landroid/support/constraint/c$a;->dB:I

    iput v1, v0, Landroid/support/constraint/c$a;->dB:I

    iget v1, p0, Landroid/support/constraint/c$a;->dC:I

    iput v1, v0, Landroid/support/constraint/c$a;->dC:I

    iget-object v1, p0, Landroid/support/constraint/c$a;->dD:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/c$a;->dD:[I

    iget-object v2, p0, Landroid/support/constraint/c$a;->dD:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/c$a;->dD:[I

    :cond_0
    iget v1, p0, Landroid/support/constraint/c$a;->bY:I

    iput v1, v0, Landroid/support/constraint/c$a;->bY:I

    iget v1, p0, Landroid/support/constraint/c$a;->bZ:I

    iput v1, v0, Landroid/support/constraint/c$a;->bZ:I

    iget v1, p0, Landroid/support/constraint/c$a;->ca:F

    iput v1, v0, Landroid/support/constraint/c$a;->ca:F

    return-object v0
.end method
