.class Landroid/media/dlna/DlnaClient$SeekListener3;
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
    name = "SeekListener3"
.end annotation


# instance fields
.field private final mParams:[Ljava/lang/String;

.field final synthetic this$0:Landroid/media/dlna/DlnaClient;


# direct methods
.method public constructor <init>(Landroid/media/dlna/DlnaClient;J)V
    .locals 9
    .parameter
    .parameter "position"

    .prologue
    .line 364
    iput-object p1, p0, Landroid/media/dlna/DlnaClient$SeekListener3;->this$0:Landroid/media/dlna/DlnaClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 365
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

    const-string v2, "%02d:%02d:%02d.000"

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

    iput-object v0, p0, Landroid/media/dlna/DlnaClient$SeekListener3;->mParams:[Ljava/lang/String;

    .line 370
    return-void
.end method

.method static synthetic access$500(Landroid/media/dlna/DlnaClient$SeekListener3;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 360
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$SeekListener3;->mParams:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActionEnd(ILjava/lang/String;)V
    .locals 3
    .parameter "code"
    .parameter "msg"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$SeekListener3;->this$0:Landroid/media/dlna/DlnaClient;

    #setter for: Landroid/media/dlna/DlnaClient;->mSeeking:Z
    invoke-static {v0, v1}, Landroid/media/dlna/DlnaClient;->access$302(Landroid/media/dlna/DlnaClient;Z)Z

    .line 375
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$SeekListener3;->this$0:Landroid/media/dlna/DlnaClient;

    #getter for: Landroid/media/dlna/DlnaClient;->mSeekFormat:I
    invoke-static {v0}, Landroid/media/dlna/DlnaClient;->access$200(Landroid/media/dlna/DlnaClient;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 376
    if-eqz p1, :cond_0

    .line 377
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$SeekListener3;->this$0:Landroid/media/dlna/DlnaClient;

    #setter for: Landroid/media/dlna/DlnaClient;->mSeekFormat:I
    invoke-static {v0, v1}, Landroid/media/dlna/DlnaClient;->access$202(Landroid/media/dlna/DlnaClient;I)I

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    if-nez p1, :cond_0

    .line 381
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$SeekListener3;->this$0:Landroid/media/dlna/DlnaClient;

    #setter for: Landroid/media/dlna/DlnaClient;->mSeekFormat:I
    invoke-static {v0, v2}, Landroid/media/dlna/DlnaClient;->access$202(Landroid/media/dlna/DlnaClient;I)I

    goto :goto_0
.end method
