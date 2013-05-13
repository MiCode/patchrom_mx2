.class Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$6;
.super Ljava/lang/Object;
.source "SelectDownloadActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
.method constructor <init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$6;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

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
    .line 899
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$6;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    #setter for: Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->mCurrentStartListPosition:I
    invoke-static {v0, p2}, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;->access$1002(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;I)I

    .line 900
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 895
    return-void
.end method
