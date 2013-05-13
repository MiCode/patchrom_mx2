.class Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$8;
.super Landroid/database/ContentObserver;
.source "SelectDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 929
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$8;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 932
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 933
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$8;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadDataChange:Z
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1602(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Z)Z

    .line 934
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 937
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 938
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$8;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mDownloadDataChange:Z
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1602(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;Z)Z

    .line 939
    return-void
.end method
