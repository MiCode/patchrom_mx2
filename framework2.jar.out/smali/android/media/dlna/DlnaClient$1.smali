.class Landroid/media/dlna/DlnaClient$1;
.super Ljava/lang/Object;
.source "DlnaClient.java"

# interfaces
.implements Landroid/media/dlna/DlnaClient$RemoteCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/dlna/DlnaClient;->play(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlna/DlnaClient;

.field final synthetic val$listener:Landroid/media/dlna/DlnaClient$RemoteCallListener;


# direct methods
.method constructor <init>(Landroid/media/dlna/DlnaClient;Landroid/media/dlna/DlnaClient$RemoteCallListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Landroid/media/dlna/DlnaClient$1;->this$0:Landroid/media/dlna/DlnaClient;

    iput-object p2, p0, Landroid/media/dlna/DlnaClient$1;->val$listener:Landroid/media/dlna/DlnaClient$RemoteCallListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionEnd(ILjava/lang/String;)V
    .locals 2
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 322
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$1;->this$0:Landroid/media/dlna/DlnaClient;

    const/4 v1, 0x0

    #setter for: Landroid/media/dlna/DlnaClient;->mTryingToPlay:Z
    invoke-static {v0, v1}, Landroid/media/dlna/DlnaClient;->access$002(Landroid/media/dlna/DlnaClient;Z)Z

    .line 323
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$1;->val$listener:Landroid/media/dlna/DlnaClient$RemoteCallListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$1;->val$listener:Landroid/media/dlna/DlnaClient$RemoteCallListener;

    invoke-interface {v0, p1, p2}, Landroid/media/dlna/DlnaClient$RemoteCallListener;->onActionEnd(ILjava/lang/String;)V

    .line 326
    :cond_0
    if-nez p1, :cond_1

    .line 327
    const-string v0, "DlnaClient"

    const-string v1, "DLNA PLAY OK !!!!!!!!!!!!!!!!!!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$100()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Landroid/media/dlna/DlnaClient;->access$102(I)I

    .line 329
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$100()I

    move-result v0

    if-gez v0, :cond_1

    .line 330
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/dlna/DlnaClient;->access$102(I)I

    .line 332
    :cond_1
    return-void
.end method
