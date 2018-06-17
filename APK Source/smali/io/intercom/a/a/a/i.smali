.class public final Lio/intercom/a/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final cGg:Lio/intercom/a/a/a/g/g;


# instance fields
.field private final cFG:Lio/intercom/a/a/a/g/g;

.field private final cFo:Lio/intercom/a/a/a/c;

.field public final cFu:Lio/intercom/a/a/a/e;

.field private final cGh:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected cGi:Lio/intercom/a/a/a/g/g;

.field private cGj:Lio/intercom/a/a/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/k",
            "<*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private cGk:Ljava/lang/Object;

.field public cGl:Lio/intercom/a/a/a/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/g/f",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private cGm:Lio/intercom/a/a/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private cGn:Lio/intercom/a/a/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private cGo:Ljava/lang/Float;

.field private cGp:Z

.field private cGq:Z

.field private cGr:Z

.field private final context:Landroid/content/Context;

.field private final requestManager:Lio/intercom/a/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/intercom/a/a/a/g/g;

    invoke-direct {v0}, Lio/intercom/a/a/a/g/g;-><init>()V

    sget-object v1, Lio/intercom/a/a/a/c/b/i;->cKd:Lio/intercom/a/a/a/c/b/i;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    sget-object v1, Lio/intercom/a/a/a/g;->cFU:Lio/intercom/a/a/a/g;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/g;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->Jx()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/i;->cGg:Lio/intercom/a/a/a/g/g;

    return-void
.end method

.method protected constructor <init>(Lio/intercom/a/a/a/c;Lio/intercom/a/a/a/j;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c;",
            "Lio/intercom/a/a/a/j;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/i;->cGp:Z

    iput-object p1, p0, Lio/intercom/a/a/a/i;->cFo:Lio/intercom/a/a/a/c;

    iput-object p2, p0, Lio/intercom/a/a/a/i;->requestManager:Lio/intercom/a/a/a/j;

    iput-object p3, p0, Lio/intercom/a/a/a/i;->cGh:Ljava/lang/Class;

    iget-object v0, p2, Lio/intercom/a/a/a/j;->cGi:Lio/intercom/a/a/a/g/g;

    iput-object v0, p0, Lio/intercom/a/a/a/i;->cFG:Lio/intercom/a/a/a/g/g;

    iput-object p4, p0, Lio/intercom/a/a/a/i;->context:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lio/intercom/a/a/a/j;->y(Ljava/lang/Class;)Lio/intercom/a/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/i;->cGj:Lio/intercom/a/a/a/k;

    iget-object v0, p0, Lio/intercom/a/a/a/i;->cFG:Lio/intercom/a/a/a/g/g;

    iput-object v0, p0, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v0, p1, Lio/intercom/a/a/a/c;->cFu:Lio/intercom/a/a/a/e;

    iput-object v0, p0, Lio/intercom/a/a/a/i;->cFu:Lio/intercom/a/a/a/e;

    return-void
.end method

.method private HA()Lio/intercom/a/a/a/g/g;
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/i;->cFG:Lio/intercom/a/a/a/g/g;

    iget-object v1, p0, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    goto :goto_0
.end method

.method private HB()Lio/intercom/a/a/a/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/a/a/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/i;

    iget-object v1, v0, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    invoke-virtual {v1}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v1

    iput-object v1, v0, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v1, v0, Lio/intercom/a/a/a/i;->cGj:Lio/intercom/a/a/a/k;

    invoke-virtual {v1}, Lio/intercom/a/a/a/k;->HD()Lio/intercom/a/a/a/k;

    move-result-object v1

    iput-object v1, v0, Lio/intercom/a/a/a/i;->cGj:Lio/intercom/a/a/a/k;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/g/a/h;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lio/intercom/a/a/a/g/a/h",
            "<TTranscodeType;>;>(TY;",
            "Lio/intercom/a/a/a/g/f",
            "<TTranscodeType;>;",
            "Lio/intercom/a/a/a/g/g;",
            ")TY;"
        }
    .end annotation

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/intercom/a/a/a/i;->cGq:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Lio/intercom/a/a/a/g/g;->JA()Lio/intercom/a/a/a/g/g;

    move-result-object v8

    const/4 v3, 0x0

    iget-object v4, p0, Lio/intercom/a/a/a/i;->cGj:Lio/intercom/a/a/a/k;

    iget-object v5, v8, Lio/intercom/a/a/a/g/g;->cJg:Lio/intercom/a/a/a/g;

    iget v6, v8, Lio/intercom/a/a/a/g/g;->cPX:I

    iget v7, v8, Lio/intercom/a/a/a/g/g;->cPW:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/d;Lio/intercom/a/a/a/k;Lio/intercom/a/a/a/g;IILio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/g/c;

    move-result-object v0

    invoke-interface {p1}, Lio/intercom/a/a/a/g/a/h;->getRequest()Lio/intercom/a/a/a/g/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/g/c;->a(Lio/intercom/a/a/a/g/c;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->recycle()V

    const-string v0, "Argument must not be null"

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Lio/intercom/a/a/a/g/c;->begin()V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    iget-object v1, p0, Lio/intercom/a/a/a/i;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v1, p1}, Lio/intercom/a/a/a/j;->b(Lio/intercom/a/a/a/g/a/h;)V

    invoke-interface {p1, v0}, Lio/intercom/a/a/a/g/a/h;->setRequest(Lio/intercom/a/a/a/g/c;)V

    iget-object v1, p0, Lio/intercom/a/a/a/i;->requestManager:Lio/intercom/a/a/a/j;

    iget-object v2, v1, Lio/intercom/a/a/a/j;->cGB:Lio/intercom/a/a/a/d/p;

    iget-object v2, v2, Lio/intercom/a/a/a/d/p;->cPA:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lio/intercom/a/a/a/j;->cGz:Lio/intercom/a/a/a/d/n;

    iget-object v2, v1, Lio/intercom/a/a/a/d/n;->cPu:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v1, Lio/intercom/a/a/a/d/n;->cPw:Z

    if-nez v2, :cond_3

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->begin()V

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lio/intercom/a/a/a/d/n;->cPv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lio/intercom/a/a/a/i;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;)Lio/intercom/a/a/a/g/a/h;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;)Lio/intercom/a/a/a/g/a/h;

    move-result-object v0

    return-object v0
.end method

.method private a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/d;Lio/intercom/a/a/a/k;Lio/intercom/a/a/a/g;IILio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/g/c;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g/a/h",
            "<TTranscodeType;>;",
            "Lio/intercom/a/a/a/g/f",
            "<TTranscodeType;>;",
            "Lio/intercom/a/a/a/g/d;",
            "Lio/intercom/a/a/a/k",
            "<*-TTranscodeType;>;",
            "Lio/intercom/a/a/a/g;",
            "II",
            "Lio/intercom/a/a/a/g/g;",
            ")",
            "Lio/intercom/a/a/a/g/c;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/i;->cGn:Lio/intercom/a/a/a/i;

    if-eqz v3, :cond_8

    new-instance v2, Lio/intercom/a/a/a/g/a;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lio/intercom/a/a/a/g/a;-><init>(Lio/intercom/a/a/a/g/d;)V

    move-object v12, v2

    move-object/from16 p3, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/i;->cGm:Lio/intercom/a/a/a/i;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lio/intercom/a/a/a/i;->cGr:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/i;->cGm:Lio/intercom/a/a/a/i;

    iget-object v2, v2, Lio/intercom/a/a/a/i;->cGj:Lio/intercom/a/a/a/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/i;->cGm:Lio/intercom/a/a/a/i;

    iget-boolean v3, v3, Lio/intercom/a/a/a/i;->cGp:Z

    if-eqz v3, :cond_7

    move-object/from16 v13, p4

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/i;->cGm:Lio/intercom/a/a/a/i;

    iget-object v2, v2, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lio/intercom/a/a/a/g/g;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/i;->cGm:Lio/intercom/a/a/a/i;

    iget-object v2, v2, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v2, v2, Lio/intercom/a/a/a/g/g;->cJg:Lio/intercom/a/a/a/g;

    move-object v14, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/i;->cGm:Lio/intercom/a/a/a/i;

    iget-object v2, v2, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget v3, v2, Lio/intercom/a/a/a/g/g;->cPX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/i;->cGm:Lio/intercom/a/a/a/i;

    iget-object v2, v2, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget v2, v2, Lio/intercom/a/a/a/g/g;->cPW:I

    invoke-static/range {p6 .. p7}, Lio/intercom/a/a/a/i/i;->aR(II)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/i;->cGm:Lio/intercom/a/a/a/i;

    iget-object v4, v4, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    invoke-virtual {v4}, Lio/intercom/a/a/a/g/g;->JC()Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p8

    iget v3, v0, Lio/intercom/a/a/a/g/g;->cPX:I

    move-object/from16 v0, p8

    iget v2, v0, Lio/intercom/a/a/a/g/g;->cPW:I

    move v15, v2

    move/from16 v16, v3

    :goto_3
    new-instance v6, Lio/intercom/a/a/a/g/j;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lio/intercom/a/a/a/g/j;-><init>(Lio/intercom/a/a/a/g/d;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p8

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/g;Lio/intercom/a/a/a/g/d;Lio/intercom/a/a/a/k;Lio/intercom/a/a/a/g;II)Lio/intercom/a/a/a/g/c;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lio/intercom/a/a/a/i;->cGr:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/i;->cGm:Lio/intercom/a/a/a/i;

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/i;->cGm:Lio/intercom/a/a/a/i;

    iget-object v11, v4, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v7, v13

    move-object v8, v14

    move/from16 v9, v16

    move v10, v15

    invoke-direct/range {v3 .. v11}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/d;Lio/intercom/a/a/a/k;Lio/intercom/a/a/a/g;IILio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/g/c;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lio/intercom/a/a/a/i;->cGr:Z

    invoke-virtual {v6, v2, v3}, Lio/intercom/a/a/a/g/j;->a(Lio/intercom/a/a/a/g/c;Lio/intercom/a/a/a/g/c;)V

    move-object v11, v6

    :goto_4
    if-nez v12, :cond_4

    move-object v12, v11

    :goto_5
    return-object v12

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g;)Lio/intercom/a/a/a/g;

    move-result-object v2

    move-object v14, v2

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/i;->cGo:Ljava/lang/Float;

    if-eqz v2, :cond_3

    new-instance v6, Lio/intercom/a/a/a/g/j;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lio/intercom/a/a/a/g/j;-><init>(Lio/intercom/a/a/a/g/d;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p8

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/g;Lio/intercom/a/a/a/g/d;Lio/intercom/a/a/a/k;Lio/intercom/a/a/a/g;II)Lio/intercom/a/a/a/g/c;

    move-result-object v11

    invoke-virtual/range {p8 .. p8}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/i;->cGo:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lio/intercom/a/a/a/g/g;->C(F)Lio/intercom/a/a/a/g/g;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g;)Lio/intercom/a/a/a/g;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/g;Lio/intercom/a/a/a/g/d;Lio/intercom/a/a/a/k;Lio/intercom/a/a/a/g;II)Lio/intercom/a/a/a/g/c;

    move-result-object v2

    invoke-virtual {v6, v11, v2}, Lio/intercom/a/a/a/g/j;->a(Lio/intercom/a/a/a/g/c;Lio/intercom/a/a/a/g/c;)V

    move-object v11, v6

    goto :goto_4

    :cond_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p8

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/g;Lio/intercom/a/a/a/g/d;Lio/intercom/a/a/a/k;Lio/intercom/a/a/a/g;II)Lio/intercom/a/a/a/g/c;

    move-result-object v6

    move-object v11, v6

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/i;->cGn:Lio/intercom/a/a/a/i;

    iget-object v2, v2, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget v8, v2, Lio/intercom/a/a/a/g/g;->cPX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/i;->cGn:Lio/intercom/a/a/a/i;

    iget-object v2, v2, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget v9, v2, Lio/intercom/a/a/a/g/g;->cPW:I

    invoke-static/range {p6 .. p7}, Lio/intercom/a/a/a/i/i;->aR(II)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/i;->cGn:Lio/intercom/a/a/a/i;

    iget-object v2, v2, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    invoke-virtual {v2}, Lio/intercom/a/a/a/g/g;->JC()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p8

    iget v8, v0, Lio/intercom/a/a/a/g/g;->cPX:I

    move-object/from16 v0, p8

    iget v9, v0, Lio/intercom/a/a/a/g/g;->cPW:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/i;->cGn:Lio/intercom/a/a/a/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/i;->cGn:Lio/intercom/a/a/a/i;

    iget-object v6, v3, Lio/intercom/a/a/a/i;->cGj:Lio/intercom/a/a/a/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/i;->cGn:Lio/intercom/a/a/a/i;

    iget-object v3, v3, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v7, v3, Lio/intercom/a/a/a/g/g;->cJg:Lio/intercom/a/a/a/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/i;->cGn:Lio/intercom/a/a/a/i;

    iget-object v10, v3, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v12

    invoke-direct/range {v2 .. v10}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/d;Lio/intercom/a/a/a/k;Lio/intercom/a/a/a/g;IILio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/g/c;

    move-result-object v2

    iput-object v11, v12, Lio/intercom/a/a/a/g/a;->cPJ:Lio/intercom/a/a/a/g/c;

    iput-object v2, v12, Lio/intercom/a/a/a/g/a;->cPK:Lio/intercom/a/a/a/g/c;

    goto/16 :goto_5

    :cond_6
    move v15, v2

    move/from16 v16, v3

    goto/16 :goto_3

    :cond_7
    move-object v13, v2

    goto/16 :goto_1

    :cond_8
    move-object v12, v2

    goto/16 :goto_0
.end method

.method private a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/g;Lio/intercom/a/a/a/g/d;Lio/intercom/a/a/a/k;Lio/intercom/a/a/a/g;II)Lio/intercom/a/a/a/g/c;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g/a/h",
            "<TTranscodeType;>;",
            "Lio/intercom/a/a/a/g/f",
            "<TTranscodeType;>;",
            "Lio/intercom/a/a/a/g/g;",
            "Lio/intercom/a/a/a/g/d;",
            "Lio/intercom/a/a/a/k",
            "<*-TTranscodeType;>;",
            "Lio/intercom/a/a/a/g;",
            "II)",
            "Lio/intercom/a/a/a/g/c;"
        }
    .end annotation

    iget-object v1, p0, Lio/intercom/a/a/a/i;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/intercom/a/a/a/i;->cFu:Lio/intercom/a/a/a/e;

    iget-object v3, p0, Lio/intercom/a/a/a/i;->cGk:Ljava/lang/Object;

    iget-object v4, p0, Lio/intercom/a/a/a/i;->cGh:Ljava/lang/Class;

    iget-object v11, p0, Lio/intercom/a/a/a/i;->cGl:Lio/intercom/a/a/a/g/f;

    iget-object v5, p0, Lio/intercom/a/a/a/i;->cFu:Lio/intercom/a/a/a/e;

    iget-object v13, v5, Lio/intercom/a/a/a/e;->cFq:Lio/intercom/a/a/a/c/b/j;

    move-object/from16 v0, p5

    iget-object v14, v0, Lio/intercom/a/a/a/k;->cGG:Lio/intercom/a/a/a/g/b/e;

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    invoke-static/range {v1 .. v14}, Lio/intercom/a/a/a/g/i;->a(Landroid/content/Context;Lio/intercom/a/a/a/e;Ljava/lang/Object;Ljava/lang/Class;Lio/intercom/a/a/a/g/g;IILio/intercom/a/a/a/g;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/d;Lio/intercom/a/a/a/c/b/j;Lio/intercom/a/a/a/g/b/e;)Lio/intercom/a/a/a/g/i;

    move-result-object v1

    return-object v1
.end method

.method private a(Lio/intercom/a/a/a/g;)Lio/intercom/a/a/a/g;
    .locals 3

    sget-object v0, Lio/intercom/a/a/a/i$2;->cGv:[I

    invoke-virtual {p1}, Lio/intercom/a/a/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown priority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v2, v2, Lio/intercom/a/a/a/g/g;->cJg:Lio/intercom/a/a/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lio/intercom/a/a/a/g;->cFT:Lio/intercom/a/a/a/g;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lio/intercom/a/a/a/g;->cFS:Lio/intercom/a/a/a/g;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lio/intercom/a/a/a/g;->cFR:Lio/intercom/a/a/a/g;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;)Lio/intercom/a/a/a/g/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lio/intercom/a/a/a/g/a/h",
            "<TTranscodeType;>;>(TY;",
            "Lio/intercom/a/a/a/g/f",
            "<TTranscodeType;>;)TY;"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/a/a/i;->HA()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/g/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g/g;",
            ")",
            "Lio/intercom/a/a/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Lio/intercom/a/a/a/i;->HA()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    :goto_0
    iget-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPS:F

    iput v1, v0, Lio/intercom/a/a/a/g/g;->cPS:F

    :cond_1
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lio/intercom/a/a/a/g/g;->cQd:Z

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cQd:Z

    :cond_2
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lio/intercom/a/a/a/g/g;->cKC:Z

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cKC:Z

    :cond_3
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lio/intercom/a/a/a/g/g;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    iput-object v1, v0, Lio/intercom/a/a/a/g/g;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    :cond_4
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lio/intercom/a/a/a/g/g;->cJg:Lio/intercom/a/a/a/g;

    iput-object v1, v0, Lio/intercom/a/a/a/g/g;->cJg:Lio/intercom/a/a/a/g;

    :cond_5
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lio/intercom/a/a/a/g/g;->cPT:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lio/intercom/a/a/a/g/g;->cPT:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPU:I

    iput v1, v0, Lio/intercom/a/a/a/g/g;->cPU:I

    :cond_7
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p1, Lio/intercom/a/a/a/g/g;->bOV:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lio/intercom/a/a/a/g/g;->bOV:Landroid/graphics/drawable/Drawable;

    :cond_8
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPV:I

    iput v1, v0, Lio/intercom/a/a/a/g/g;->cPV:I

    :cond_9
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p1, Lio/intercom/a/a/a/g/g;->cIM:Z

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cIM:Z

    :cond_a
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPX:I

    iput v1, v0, Lio/intercom/a/a/a/g/g;->cPX:I

    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPW:I

    iput v1, v0, Lio/intercom/a/a/a/g/g;->cPW:I

    :cond_b
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p1, Lio/intercom/a/a/a/g/g;->cIX:Lio/intercom/a/a/a/c/h;

    iput-object v1, v0, Lio/intercom/a/a/a/g/g;->cIX:Lio/intercom/a/a/a/c/h;

    :cond_c
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p1, Lio/intercom/a/a/a/g/g;->cJb:Ljava/lang/Class;

    iput-object v1, v0, Lio/intercom/a/a/a/g/g;->cJb:Ljava/lang/Class;

    :cond_d
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p1, Lio/intercom/a/a/a/g/g;->cPZ:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lio/intercom/a/a/a/g/g;->cPZ:Landroid/graphics/drawable/Drawable;

    :cond_e
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p1, Lio/intercom/a/a/a/g/g;->cQa:I

    iput v1, v0, Lio/intercom/a/a/a/g/g;->cQa:I

    :cond_f
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const v2, 0x8000

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p1, Lio/intercom/a/a/a/g/g;->cQb:Landroid/content/res/Resources$Theme;

    iput-object v1, v0, Lio/intercom/a/a/a/g/g;->cQb:Landroid/content/res/Resources$Theme;

    :cond_10
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p1, Lio/intercom/a/a/a/g/g;->cPY:Z

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cPY:Z

    :cond_11
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p1, Lio/intercom/a/a/a/g/g;->cJh:Z

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cJh:Z

    :cond_12
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lio/intercom/a/a/a/g/g;->cJd:Ljava/util/Map;

    iget-object v2, p1, Lio/intercom/a/a/a/g/g;->cJd:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v1, p1, Lio/intercom/a/a/a/g/g;->cJi:Z

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cJi:Z

    :cond_13
    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, p1, Lio/intercom/a/a/a/g/g;->cJu:Z

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cJu:Z

    :cond_14
    iget-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cPY:Z

    if-nez v1, :cond_15

    iget-object v1, v0, Lio/intercom/a/a/a/g/g;->cJd:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget v1, v0, Lio/intercom/a/a/a/g/g;->cPR:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v0, Lio/intercom/a/a/a/g/g;->cPR:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cJh:Z

    iget v1, v0, Lio/intercom/a/a/a/g/g;->cPR:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Lio/intercom/a/a/a/g/g;->cPR:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cJi:Z

    :cond_15
    iget v1, v0, Lio/intercom/a/a/a/g/g;->cPR:I

    iget v2, p1, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/2addr v1, v2

    iput v1, v0, Lio/intercom/a/a/a/g/g;->cPR:I

    iget-object v1, v0, Lio/intercom/a/a/a/g/g;->cIZ:Lio/intercom/a/a/a/c/j;

    iget-object v2, p1, Lio/intercom/a/a/a/g/g;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/j;)V

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    return-object p0
.end method

.method public final a(Lio/intercom/a/a/a/k;)Lio/intercom/a/a/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/k",
            "<*-TTranscodeType;>;)",
            "Lio/intercom/a/a/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/k;

    iput-object v0, p0, Lio/intercom/a/a/a/i;->cGj:Lio/intercom/a/a/a/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/i;->cGp:Z

    return-object p0
.end method

.method public final aq(Ljava/lang/Object;)Lio/intercom/a/a/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/intercom/a/a/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/a/a/a/i;->cGk:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/i;->cGq:Z

    return-object p0
.end method

.method public final c(Landroid/widget/ImageView;)Lio/intercom/a/a/a/g/a/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lio/intercom/a/a/a/g/a/i",
            "<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/a/a/a/i;->cGi:Lio/intercom/a/a/a/g/g;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/g/g;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cPY:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lio/intercom/a/a/a/i$2;->cGu:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lio/intercom/a/a/a/i;->cGh:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lio/intercom/a/a/a/g/a/b;

    invoke-direct {v1, p1}, Lio/intercom/a/a/a/g/a/b;-><init>(Landroid/widget/ImageView;)V

    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/g/a/h;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g/a/i;

    return-object v0

    :pswitch_0
    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    sget-object v1, Lio/intercom/a/a/a/c/d/a/j;->cNG:Lio/intercom/a/a/a/c/d/a/j;

    new-instance v2, Lio/intercom/a/a/a/c/d/a/g;

    invoke-direct {v2}, Lio/intercom/a/a/a/c/d/a/g;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/intercom/a/a/a/g/g;->a(Lio/intercom/a/a/a/c/d/a/j;Lio/intercom/a/a/a/c/m;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->Jz()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    sget-object v1, Lio/intercom/a/a/a/c/d/a/j;->cNF:Lio/intercom/a/a/a/c/d/a/j;

    new-instance v2, Lio/intercom/a/a/a/c/d/a/n;

    invoke-direct {v2}, Lio/intercom/a/a/a/c/d/a/n;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/d/a/j;Lio/intercom/a/a/a/c/m;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->Jz()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lio/intercom/a/a/a/g/a/c;

    invoke-direct {v1, p1}, Lio/intercom/a/a/a/g/a/c;-><init>(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/a/a/i;->HB()Lio/intercom/a/a/a/i;

    move-result-object v0

    return-object v0
.end method
