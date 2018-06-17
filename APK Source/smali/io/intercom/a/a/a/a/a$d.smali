.class public final Lio/intercom/a/a/a/a/a$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field final synthetic cGK:Lio/intercom/a/a/a/a/a;

.field public final cGO:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J


# direct methods
.method private constructor <init>(Lio/intercom/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 1

    iput-object p1, p0, Lio/intercom/a/a/a/a/a$d;->cGK:Lio/intercom/a/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/intercom/a/a/a/a/a$d;->key:Ljava/lang/String;

    iput-wide p3, p0, Lio/intercom/a/a/a/a/a$d;->sequenceNumber:J

    iput-object p5, p0, Lio/intercom/a/a/a/a/a$d;->cGO:[Ljava/io/File;

    iput-object p6, p0, Lio/intercom/a/a/a/a/a$d;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lio/intercom/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[JB)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lio/intercom/a/a/a/a/a$d;-><init>(Lio/intercom/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method
