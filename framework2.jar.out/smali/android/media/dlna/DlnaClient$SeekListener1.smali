.class Landroid/media/dlna/DlnaClient$SeekListener1;
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
    name = "SeekListener1"
.end annotation


# instance fields
.field public final mParams:[Ljava/lang/String;

.field public final mSeekPos:J

.field final synthetic this$0:Landroid/media/dlna/DlnaClient;


# direct methods
.method public constructor <init>(Landroid/media/dlna/DlnaClient;J)V
    .locals 9
    .parameter
    .parameter "position"

    .prologue
    .line 291
    iput-object p1, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->this$0:Landroid/media/dlna/DlnaClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-wide p2, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->mSeekPos:J

    .line 293
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

    iput-object v0, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->mParams:[Ljava/lang/String;

    .line 298
    return-void
.end method


# virtual methods
.method public onActionEnd(ILjava/lang/String;)V
    .locals 5
    .parameter "code"
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 302
    iget-object v1, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->this$0:Landroid/media/dlna/DlnaClient;

    #getter for: Landroid/media/dlna/DlnaClient;->mSeekFormat:I
    invoke-static {v1}, Landroid/media/dlna/DlnaClient;->access$200(Landroid/media/dlna/DlnaClient;)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 303
    if-nez p1, :cond_1

    .line 304
    iget-object v1, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->this$0:Landroid/media/dlna/DlnaClient;

    #setter for: Landroid/media/dlna/DlnaClient;->mSeeking:Z
    invoke-static {v1, v2}, Landroid/media/dlna/DlnaClient;->access$302(Landroid/media/dlna/DlnaClient;Z)Z

    .line 316
    :goto_0
    iget-object v1, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->this$0:Landroid/media/dlna/DlnaClient;

    #getter for: Landroid/media/dlna/DlnaClient;->mSeekFormat:I
    invoke-static {v1}, Landroid/media/dlna/DlnaClient;->access$200(Landroid/media/dlna/DlnaClient;)I

    move-result v1

    if-nez v1, :cond_0

    .line 317
    new-instance v0, Landroid/media/dlna/DlnaClient$SeekListener2;

    iget-object v1, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->this$0:Landroid/media/dlna/DlnaClient;

    iget-wide v2, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->mSeekPos:J

    invoke-direct {v0, v1, v2, v3}, Landroid/media/dlna/DlnaClient$SeekListener2;-><init>(Landroid/media/dlna/DlnaClient;J)V

    .line 318
    .local v0, l:Landroid/media/dlna/DlnaClient$SeekListener2;
    iget-object v1, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->this$0:Landroid/media/dlna/DlnaClient;

    const-string v2, "AVTransport"

    const-string v3, "Seek"

    iget-object v4, v0, Landroid/media/dlna/DlnaClient$SeekListener2;->mParams:[Ljava/lang/String;

    #calls: Landroid/media/dlna/DlnaClient;->callAction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3, v4, v0}, Landroid/media/dlna/DlnaClient;->access$400(Landroid/media/dlna/DlnaClient;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Z

    .line 320
    .end local v0           #l:Landroid/media/dlna/DlnaClient$SeekListener2;
    :cond_0
    return-void

    .line 306
    :cond_1
    iget-object v1, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->this$0:Landroid/media/dlna/DlnaClient;

    #setter for: Landroid/media/dlna/DlnaClient;->mSeekFormat:I
    invoke-static {v1, v2}, Landroid/media/dlna/DlnaClient;->access$202(Landroid/media/dlna/DlnaClient;I)I

    goto :goto_0

    .line 309
    :cond_2
    if-nez p1, :cond_3

    .line 310
    iget-object v1, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->this$0:Landroid/media/dlna/DlnaClient;

    #setter for: Landroid/media/dlna/DlnaClient;->mSeeking:Z
    invoke-static {v1, v2}, Landroid/media/dlna/DlnaClient;->access$302(Landroid/media/dlna/DlnaClient;Z)Z

    .line 311
    iget-object v1, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->this$0:Landroid/media/dlna/DlnaClient;

    #setter for: Landroid/media/dlna/DlnaClient;->mSeekFormat:I
    invoke-static {v1, v3}, Landroid/media/dlna/DlnaClient;->access$202(Landroid/media/dlna/DlnaClient;I)I

    goto :goto_0

    .line 313
    :cond_3
    iget-object v1, p0, Landroid/media/dlna/DlnaClient$SeekListener1;->this$0:Landroid/media/dlna/DlnaClient;

    #setter for: Landroid/media/dlna/DlnaClient;->mSeekFormat:I
    invoke-static {v1, v2}, Landroid/media/dlna/DlnaClient;->access$202(Landroid/media/dlna/DlnaClient;I)I

    goto :goto_0
.end method
