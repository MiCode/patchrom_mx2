.class Landroid/media/dlna/DlnaClient$SeekListener;
.super Ljava/lang/Object;
.source "DlnaClient.java"

# interfaces
.implements Landroid/media/dlna/DlnaClient$RemoteCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlna/DlnaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekListener"
.end annotation


# instance fields
.field public final mParams:[Ljava/lang/String;

.field final synthetic this$0:Landroid/media/dlna/DlnaClient;


# direct methods
.method public constructor <init>(Landroid/media/dlna/DlnaClient;J)V
    .locals 9
    .parameter
    .parameter "position"

    .prologue
    .line 376
    iput-object p1, p0, Landroid/media/dlna/DlnaClient$SeekListener;->this$0:Landroid/media/dlna/DlnaClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "InstanceID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Unit"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "REL_TIME"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Target"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "%d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v5, 0xe10

    div-long v5, p2, v5

    const-wide/16 v7, 0xa

    rem-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-wide/16 v5, 0x3c

    div-long v5, p2, v5

    const-wide/16 v7, 0x3c

    rem-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-wide/16 v5, 0x3c

    rem-long v5, p2, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/media/dlna/DlnaClient$SeekListener;->mParams:[Ljava/lang/String;

    .line 382
    return-void
.end method


# virtual methods
.method public onActionEnd(ILjava/lang/String;)V
    .locals 2
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 387
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$SeekListener;->this$0:Landroid/media/dlna/DlnaClient;

    const/4 v1, 0x0

    #setter for: Landroid/media/dlna/DlnaClient;->mSeeking:Z
    invoke-static {v0, v1}, Landroid/media/dlna/DlnaClient;->access$302(Landroid/media/dlna/DlnaClient;Z)Z

    .line 389
    :cond_0
    return-void
.end method
