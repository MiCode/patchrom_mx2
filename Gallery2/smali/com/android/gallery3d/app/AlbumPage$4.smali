.class Lcom/android/gallery3d/app/AlbumPage$4;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->onLongTap(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;

.field final synthetic val$path:Lcom/android/gallery3d/data/Path;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumPage$4;->val$path:Lcom/android/gallery3d/data/Path;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 506
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 515
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 509
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onDragEnd()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1200(Lcom/android/gallery3d/app/AlbumPage;)V

    goto :goto_0

    .line 512
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$4;->val$path:Lcom/android/gallery3d/data/Path;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onDragStarted(Lcom/android/gallery3d/data/Path;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->access$1300(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 506
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
