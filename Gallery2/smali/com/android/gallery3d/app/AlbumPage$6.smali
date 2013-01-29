.class Lcom/android/gallery3d/app/AlbumPage$6;
.super Lcom/android/gallery3d/ui/SlotView$SimpleListener;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->initializeViews(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$1900(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 742
    return-void
.end method

.method public onLongTap(III)V
    .locals 1
    .parameter "slotIndex"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/app/AlbumPage;->onLongTap(III)V

    .line 757
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onSingleTapUp(I)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$2100(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 752
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .parameter "followedByLongPress"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;Z)V

    .line 747
    return-void
.end method
