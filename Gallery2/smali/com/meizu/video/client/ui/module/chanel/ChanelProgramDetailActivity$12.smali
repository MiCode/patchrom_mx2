.class Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$12;
.super Landroid/database/ContentObserver;
.source "ChanelProgramDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$12;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 2237
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2238
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$12;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVideoDataChange:Z
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3902(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z

    .line 2239
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 2242
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2243
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$12;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVideoDataChange:Z
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3902(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z

    .line 2244
    return-void
.end method
