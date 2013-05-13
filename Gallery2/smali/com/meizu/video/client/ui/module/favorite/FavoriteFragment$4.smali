.class Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$4;
.super Ljava/lang/Object;
.source "FavoriteFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
.method constructor <init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$4;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$4;->this$0:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;

    #setter for: Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mCurrentStartListPosition:I
    invoke-static {v0, p2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->access$1302(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;I)I

    .line 589
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 584
    return-void
.end method
