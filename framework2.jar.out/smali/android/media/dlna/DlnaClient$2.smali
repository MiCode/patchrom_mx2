.class Landroid/media/dlna/DlnaClient$2;
.super Ljava/lang/Object;
.source "DlnaClient.java"

# interfaces
.implements Landroid/media/dlna/DlnaClient$RemoteCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/dlna/DlnaClient;->pause(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z
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
    .line 261
    iput-object p1, p0, Landroid/media/dlna/DlnaClient$2;->this$0:Landroid/media/dlna/DlnaClient;

    iput-object p2, p0, Landroid/media/dlna/DlnaClient$2;->val$listener:Landroid/media/dlna/DlnaClient$RemoteCallListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionEnd(ILjava/lang/String;)V
    .locals 2
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 264
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$2;->this$0:Landroid/media/dlna/DlnaClient;

    const/4 v1, 0x0

    #setter for: Landroid/media/dlna/DlnaClient;->mTryingToPause:Z
    invoke-static {v0, v1}, Landroid/media/dlna/DlnaClient;->access$102(Landroid/media/dlna/DlnaClient;Z)Z

    .line 265
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$2;->val$listener:Landroid/media/dlna/DlnaClient$RemoteCallListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$2;->val$listener:Landroid/media/dlna/DlnaClient$RemoteCallListener;

    invoke-interface {v0, p1, p2}, Landroid/media/dlna/DlnaClient$RemoteCallListener;->onActionEnd(ILjava/lang/String;)V

    .line 268
    :cond_0
    return-void
.end method
