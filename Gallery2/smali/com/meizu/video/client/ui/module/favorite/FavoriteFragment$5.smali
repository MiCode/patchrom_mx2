.class Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$5;
.super Landroid/database/ContentObserver;
.source "FavoriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 608
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$5;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 611
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 612
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$5;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteDataChange:Z
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1402(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Z)Z

    .line 613
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 617
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 618
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$5;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteDataChange:Z
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1402(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Z)Z

    .line 619
    return-void
.end method
